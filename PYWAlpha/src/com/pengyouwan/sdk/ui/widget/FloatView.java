
package com.pengyouwan.sdk.ui.widget;

import java.lang.ref.WeakReference;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.PixelFormat;
import android.os.AsyncTask;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;

import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述:悬浮窗
 * 
 * @author CJ
 * @since 2016-7-11 下午5:19:22
 */
public class FloatView {

    // 定义浮动窗口布局
    private RelativeLayout mFloatLayout;

    private Activity mActivity;

    // 设置参数
    private WindowManager.LayoutParams wmParams;

    // 浮动窗口
    private WindowManager mWindowManager;

    // 浮动图片
    private static ImageView mFloatView;

    // 屏幕宽高
    private int screenWidth = 0;

    private int screenHeight = 0;

    private SharedPreferences sp;

    // SharedPrefrences 保存的文件名
    private String POSITION = "position";

    // 保存的XY坐标
    private String VIEWX = "viewx";

    private String VIEWY = "viewy";

    // 正常状态
    private final int NORMAL = 1;

    // 透明状态
    private final int NORML_TRANSPARENT = 2;

    private int STATE = 0;

    // 贴边-左
    private final int STATE_LEFT = 3;

    // 贴边-右
    private final int STATE_RIGHT = 4;

    // 正常状态进入透明状态时间
    private long countTime = 6000;

    // 是否正常 状态
    private Boolean isNormal = true;

    // 是否拖动状态
    private boolean isMove = false;

    // 倒计时
    private MyCountTime myCountTime;

    private boolean isTransparent = false;// 是否透明

    WindowManagerHandler myhandler = new WindowManagerHandler(FloatView.this);

    public FloatView(Activity activity, WindowManager wm) {
        init(activity, wm);
    }

    private void init(Activity activity, WindowManager wm) {
        mWindowManager = wm;
        mActivity = activity;
        screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
        screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
        sp = mActivity.getSharedPreferences(POSITION, Context.MODE_PRIVATE);
        initLayoutParams();
        initView();
    }

    /**
     * 根据当前所处的横竖屏状态,重新校准缓存记录的屏幕宽高。 避免在初始化时刚好处于横竖屏变换状态而导致缓存有误
     */
    private void correctScreenWH() {
        if (AppUtil.isScreenLandscape(mActivity)) {
            // 横屏下，宽度要比高度大
            if (screenWidth < screenHeight) {
                changeWHValue();
            }
        } else {
            // 竖屏下，宽度要比高度小
            if (screenWidth > screenHeight) {
                changeWHValue();
            }
        }
    }

    // 缓存的宽高值调换
    private void changeWHValue() {
        int temp = screenHeight;
        screenHeight = screenWidth;
        screenWidth = temp;
    }

    // 初始化浮标参数项
    private void initLayoutParams() {
        wmParams = new WindowManager.LayoutParams();
        x = sp.getInt(VIEWX, screenWidth);
        y = sp.getInt(VIEWY, screenHeight / 2);
        wmParams.type = LayoutParams.TYPE_APPLICATION;
        wmParams.format = PixelFormat.RGBA_8888;
        wmParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE;
        wmParams.gravity = Gravity.LEFT | Gravity.TOP;
        wmParams.x = x;
        wmParams.y = y;
        wmParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wmParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        initWillHideState();
    }

    private void initWillHideState() {
        if (x < screenWidth / 2) {
            x = 0;
            STATE = STATE_LEFT;
        } else if (x > screenWidth / 2) {
            x = screenWidth;
            STATE = STATE_RIGHT;
        }
    }

    // 初始化浮标img
    private void initView() {
        LayoutInflater inflater = LayoutInflater.from(mActivity);
        myCountTime = new MyCountTime(4100, 1000);
        mFloatLayout = (RelativeLayout) inflater.inflate(
                ResIdManager.getLayoutId(mActivity, Rx.layout.pyw_view_imageview), null);
        mFloatView = (ImageView) mFloatLayout.findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_imageView1));
        mFloatView.setOnTouchListener(mTouchListener);
        mFloatView.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                if (isNormal) {
                    PYWPlatform.openUsercenter(mActivity);
                } else {
                    myhandler.sendEmptyMessage(NORMAL);
                }
            }
        });
    }

    long startTime = 0, endTime;

    int x = 0, y = 0;

    public void showFloatView() {
        if (mWindowManager == null || mFloatLayout == null)
            return;
        correctScreenWH();// 校正宽高缓存值
        x = sp.getInt(VIEWX, screenWidth);
        y = sp.getInt(VIEWY, screenHeight / 2);
        initWillHideState();
        wmParams.x = x;
        wmParams.y = y;
        // mFloatView.setImageResource(ResIdManager
        // .getDrawableId(mActivity, Rx.drawable.pyw_img_float));
        mWindowManager.addView(mFloatLayout, wmParams);
        myhandler.sendEmptyMessageDelayed(STATE, countTime);
        myCountTime.cancel();
        myCountTime.start();// 倒计时 进入暗淡状态
    }

    private OnTouchListener mTouchListener = new OnTouchListener() {

        @SuppressLint("ClickableViewAccessibility")
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int action = event.getAction();
            switch (action) {
                case MotionEvent.ACTION_DOWN:
                    myhandler.removeMessages(STATE);// 防止coutTime时间类，再次改变状态
                    mFloatView.clearAnimation();
                    startTime = System.currentTimeMillis();
                    myCountTime.cancel();
                    break;
                case MotionEvent.ACTION_MOVE:
                    endTime = System.currentTimeMillis();
                    long time = endTime - startTime;
                    if (time < 200) {
                        return false;
                    }
                    isMove = true;
                    myhandler.sendEmptyMessage(NORMAL);
                    x = (int) event.getRawX() - mFloatView.getMeasuredWidth() / 2;
                    wmParams.x = x;
                    // 减25为状态栏的高度
                    y = (int) event.getRawY() - mFloatView.getMeasuredHeight() / 2 - 25;
                    wmParams.y = y;
                    mWindowManager.updateViewLayout(mFloatLayout, wmParams);
                    return true;
                case MotionEvent.ACTION_UP:
                    endTime = System.currentTimeMillis();
                    myCountTime.start();
                    long time2 = endTime - startTime;
                    if (time2 < 200) {
                        myhandler.sendEmptyMessageDelayed(STATE, countTime);
                        return false;
                    }
                    x = (int) event.getRawX() - mFloatView.getMeasuredWidth() / 2;
                    y = (int) event.getRawY() - mFloatView.getMeasuredHeight() / 2 - 25;
                    new moveTask().execute(x);// 启动移动task
                    Editor editor = sp.edit();
                    editor.putInt(VIEWX, x);
                    editor.putInt(VIEWY, y);
                    editor.commit();
                    myhandler.sendEmptyMessageDelayed(STATE, countTime);
                    isMove = false;
                    return true;
                default:
                    break;
            }
            return false;
        }
    };

    public void removeFloatView() {
        if (mWindowManager == null || mFloatLayout == null) {
            return;
        }
        initWillHideState();
        Editor editor = sp.edit();
        editor.putInt(VIEWX, x);
        editor.putInt(VIEWY, y);
        editor.commit();
        myCountTime.cancel();
        mWindowManager.removeView(mFloatLayout);
    }

    public void destroyView() {
        if (mWindowManager == null || mFloatLayout == null) {
            return;
        }
        mWindowManager.removeView(mFloatLayout);
        mWindowManager = null;
    }

    static class WindowManagerHandler extends Handler {
        private final WeakReference<FloatView> mActivityReference;

        public WindowManagerHandler(FloatView windowsManagerView) {
            mActivityReference = new WeakReference<FloatView>(windowsManagerView);
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (mActivityReference.get() != null) {
                mActivityReference.get().handleUiMessage(msg);
            }
        }

    }

    /**
     * 处理更新UI任务
     * 
     * @param msg
     */
    public void handleUiMessage(Message msg) {
        switch (msg.what) {
            case NORMAL:// 正常状态、宽高一致
                isNormal = true;
                ViewGroup.LayoutParams normalParams = mFloatView.getLayoutParams();
                normalParams.width = AppUtil.dip2px(mActivity, 50);
                normalParams.height = AppUtil.dip2px(mActivity, 50);
                mFloatView.setImageResource(ResIdManager.getDrawableId(mActivity,
                        Rx.drawable.pyw_img_float));
                if (!isMove) {
                    myhandler.sendEmptyMessageDelayed(STATE, countTime);
                }
                isTransparent = false;
                break;
            case NORML_TRANSPARENT:
                isNormal = false;
                showTransparentAnim();// 渐变透明
                break;
            case STATE_LEFT:// 贴边状态、靠左
                isNormal = false;
                slideView(0, -AppUtil.dip2px(mActivity, 39));
                break;
            case STATE_RIGHT:// 贴边状态、靠右
                isNormal = false;
                slideView(0, AppUtil.dip2px(mActivity, 39));
                break;
            default:
                break;
        }
    }

    /**
     * 倒计时
     */
    class MyCountTime extends CountDownTimer {

        public MyCountTime(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override
        public void onTick(long millisUntilFinished) {
        }

        @Override
        public void onFinish() {
            myhandler.sendEmptyMessage(NORML_TRANSPARENT);
        }
    }

    /**
     * 获取屏幕宽度
     * 
     * @return
     */
    public int getScreenWidth() {
        return screenWidth;
    }

    /**
     * 从右到左缓慢移动
     */
    class moveTask extends AsyncTask<Integer, Integer, Void> {
        protected Void doInBackground(Integer... params) {
            int x = params[0];// 位移值
            int speed = calSpeed(screenWidth);
            boolean isLeft = false;// 是否向左
            int middlex = (screenWidth - mFloatView.getWidth()) / 2;// 中间坐标
                                                                    // 去掉小球宽度
            if (x < middlex) {
                isLeft = true;
                STATE = STATE_LEFT;
            } else if (x > middlex) {
                isLeft = false;
                STATE = STATE_RIGHT;
            }
            if (isLeft) {// 从右往左
                while (x > 0) {
                    x = x - 10;
                    publishProgress(x);
                    try {
                        Thread.sleep(speed);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {// 从左往右
                while (x < screenWidth) {
                    x = x + 10;
                    publishProgress(x);
                    try {
                        Thread.sleep(speed);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            return null;
        }

        @Override
        protected void onProgressUpdate(Integer... values) {
            wmParams.x = values[0];
            mWindowManager.updateViewLayout(mFloatLayout, wmParams);
        }

        @Override
        protected void onPostExecute(Void result) {
            // 动画后，回归到悬浮窗状态
            mWindowManager.updateViewLayout(mFloatLayout, wmParams);
        }
    };

    /**
     * 根据屏幕分辨率 计算移动速度
     */
    private int calSpeed(int width) {
        int speed = 0;
        if (width < 720) {
            speed = 16;
        } else if (width > 720 && width < 1080) {
            speed = 14;
        } else if (width >= 1080 && width < 1280) {
            speed = 12;
        } else if (width >= 1280 && width < 1920) {
            speed = 10;
        } else if (width >= 1920) {
            speed = 8;
        }
        return speed;
    }

    /**
     * 渐变动画
     */
    private void showTransparentAnim() {
        // 图片渐变模糊度始终
        AlphaAnimation anim = new AlphaAnimation(1.0f, 0.4f);
        anim.setDuration(500);
        anim.setAnimationListener(new AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {
            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }

            @Override
            public void onAnimationEnd(Animation animation) {
                isTransparent = true;
                mFloatView.setImageResource(ResIdManager.getDrawableId(mActivity,
                        Rx.drawable.pyw_img_float_transparent));
                mFloatView.clearAnimation();
            }
        });
        mFloatView.startAnimation(anim);
    }

    /**
     * 贴边后缩进动画
     * 
     * @param p1 起始坐标
     * @param p2 结束坐标
     */
    public void slideView(final float p1, final float p2) {
        TranslateAnimation animation = new TranslateAnimation(p1, p2, 0, 0);// 位移动画
        animation.setFillEnabled(true);
        animation.setFillAfter(true);
        animation.setDuration(400);
        if (!isTransparent) {// 如果还没透明
            // 图片渐变模糊度始终
            AlphaAnimation anim = new AlphaAnimation(1.0f, 0.4f);
            anim.setDuration(500);
            anim.setAnimationListener(new AnimationListener() {
                @Override
                public void onAnimationStart(Animation animation) {
                }

                @Override
                public void onAnimationRepeat(Animation animation) {

                }

                @Override
                public void onAnimationEnd(Animation animation) {
                    isTransparent = true;
                    mFloatView.setImageResource(ResIdManager.getDrawableId(mActivity,
                            Rx.drawable.pyw_img_float_transparent));
                    mFloatView.clearAnimation();
                    // mFloatView.startAnimation(animation);
                    slideView(p1, p2);// 重新执行位移动画
                }
            });
            mFloatView.startAnimation(anim);
        } else {
            mFloatView.startAnimation(animation);
        }
    }

}
