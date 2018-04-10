
package com.pengyouwan.sdk.ui.widget;

import com.pengyouwan.sdk.open.PYWPlatform;
import com.pengyouwan.sdk.utils.AppUtil;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.PixelFormat;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;

/**
 * 描述:悬浮窗
 * 
 * @author CJ
 * @since 2016-10-24 下午7:37:46
 */
public class FloatView1 implements OnTouchListener {

    private Activity mActivity;

    private WindowManager mWindowManager;

    public static  View mFloatView;// 悬浮窗控件

    private ViewGroup mFloatLayout;

    // 屏幕宽高
    private int screenWidth;

    private int screenHeight;

    // 中间宽度
    private int middleWidth;

    private int x;// 当前坐标

    private int y;

    // 当前位置状态
    private int STATE_LOCATION = 0;

    private int STATE_LEFT = 1;

    private int STATE_RIGHT = 2;

    private SharedPreferences sp;

    // SharedPrefrences 保存的文件名
    private String POSITION = "position";

    // 保存的XY坐标
    private String VIEWX = "viewx";

    private String VIEWY = "viewy";
    
    // 记录点击时间
    private long startTime = 0, endTime = 0;

    // 设置参数
    private WindowManager.LayoutParams wmParams;

    public FloatView1(Activity activity, WindowManager wm) {
        init(activity, wm);
    }

    private void init(Activity activity, WindowManager wm) {
        mActivity = activity;
        mWindowManager = wm;
        screenWidth = mActivity.getResources().getDisplayMetrics().widthPixels;
        screenHeight = mActivity.getResources().getDisplayMetrics().heightPixels;
        sp = mActivity.getSharedPreferences(POSITION, Context.MODE_PRIVATE);
        initParams();
        initView();
    }

    // 初始化布局属性
    private void initParams() {
        wmParams = new WindowManager.LayoutParams();
        x = sp.getInt(VIEWX, screenWidth);
        y = sp.getInt(VIEWY, screenHeight / 2);
        wmParams.width = WindowManager.LayoutParams.MATCH_PARENT;
        wmParams.height = WindowManager.LayoutParams.MATCH_PARENT;
        wmParams.type = LayoutParams.TYPE_APPLICATION;
        wmParams.format = PixelFormat.RGBA_8888;
        wmParams.flags = LayoutParams.FLAG_LAYOUT_IN_SCREEN | LayoutParams.FLAG_NOT_FOCUSABLE;
        // wmParams.gravity = Gravity.LEFT | Gravity.CENTER;
        wmParams.x = x;
        wmParams.y = y;
    }

    // 初始化控件
    private void initView() {
        LayoutInflater inflater = LayoutInflater.from(mActivity);
        mFloatLayout = (FrameLayout) inflater.inflate(
                ResIdManager.getLayoutId(mActivity, Rx.layout.pyw_view_imageview), null);
        mFloatView = (ImageView) mFloatLayout.findViewById(ResIdManager.getId(mActivity,
                Rx.id.pyw_imageView1));
        // mWindowManager.addView(mFloatLayout, wmParams);
        middleWidth = (screenWidth - mFloatView.getMeasuredWidth()) / 2;
        mFloatView.setOnTouchListener(this);
        // 初始化状态
        // updateStatus();
        // slideView(0, 0);
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        int action = event.getAction();
        switch (action) {
            case MotionEvent.ACTION_DOWN:
                startTime = System.currentTimeMillis();
                clearAnim();
                return true;
            case MotionEvent.ACTION_MOVE:
                clearAnim();
                x = (int) (event.getRawX() - mFloatView.getMeasuredWidth() / 2);
                // 减25为状态栏的高度
                y = (int) event.getRawY() - mFloatView.getMeasuredHeight() / 2 - 25;
                resetBroder();
                updateViewLayout(x, y);
                return true;
            case MotionEvent.ACTION_UP:
                // 拖动时间低于150ms判断为普通点击事件
                x = (int) (event.getRawX() - mFloatView.getMeasuredWidth() / 2);
                // 减25为状态栏的高度
                y = (int) event.getRawY() - mFloatView.getMeasuredHeight() / 2 - 25;
                endTime = System.currentTimeMillis();
                if (endTime - startTime < 150) {
                    PYWPlatform.openUsercenter(mActivity);
                    if(STATE_LOCATION == STATE_LEFT){
                        x = 0;
                    }else{
                        x = screenWidth - mFloatView.getMeasuredWidth();
                    }
                    updateViewLayout(x, y);
                }
                updateStatus();
                moveFloatView();
                return true;
        }
        return false;
    }

    /**
     * 重新计算边缘 防止超出边界
     */
    private void resetBroder() {
        if (x < 0) {
            x = 0;
        }
        if (x > (screenWidth - mFloatView.getMeasuredWidth())) {
            x = screenWidth - mFloatView.getMeasuredWidth();
        }
        if (y < 0) {
            y = 0;
        }
        if (y > (screenHeight - mFloatView.getMeasuredHeight())) {
            y = screenHeight - mFloatView.getMeasuredHeight();
        }
    }

    // 更新位置
    private void updateViewLayout(float x, float y) {
        // mWindowManager.updateViewLayout(mFloatLayout, wmParams);
        FrameLayout.LayoutParams fl = (android.widget.FrameLayout.LayoutParams) mFloatView
                .getLayoutParams();
        fl.leftMargin = (int) x;
        fl.topMargin = (int) y;
        mFloatView.setLayoutParams(fl);

    }

    // 释放位置后更新状态
    private void updateStatus() {
        if (x <= middleWidth) {
            STATE_LOCATION = STATE_LEFT;
        } else {
            STATE_LOCATION = STATE_RIGHT;
        }
    }

    // 根据状态移动
    private void moveFloatView() {
        if (STATE_LOCATION == STATE_LEFT) {
            slideView(0, -x);
        } else {
            // 向右的话容器宽度需要满屏
            slideView(0, screenWidth - mFloatView.getWidth() - x);
        }
    }

    private TranslateAnimation animation;

    /**
     * 贴边后缩进动画
     * 
     * @param p1 起始坐标
     * @param p2 结束坐标
     */
    public void slideView(float p1, final float p2) {
        final FrameLayout.LayoutParams fl = (android.widget.FrameLayout.LayoutParams) mFloatView
                .getLayoutParams();
        final float total = fl.leftMargin;

        // 缩进动画
        if (STATE_LOCATION == STATE_LEFT) {
            animation = new TranslateAnimation(0, -AppUtil.dip2px(mActivity, 39), 0, 0);// 位移动画
        } else {
            animation = new TranslateAnimation(0, AppUtil.dip2px(mActivity, 39), 0, 0);// 位移动画
        }
        animation.setFillEnabled(true);
        animation.setFillAfter(true);
        animation.setDuration(400);

        final float[] indicators = calSpeed();

        // 位移动画
        Animation moveAnim = new Animation() {
            protected void applyTransformation(final float interpolatedTime, Transformation t) {
                super.applyTransformation(interpolatedTime, t);

                mFloatView.post(new Runnable() {
                    public void run() {
                        if(mFloatLayout.getVisibility() == View.GONE){
                            mFloatLayout.setVisibility(View.VISIBLE);
                        }
                        // 获取动画位移时间占用比例
                        float moveIndicator = indicators[1];
                        Log.i("FloatView1", "interpolatedTime = "+interpolatedTime + " moveIndicator = " + moveIndicator);
                        if (interpolatedTime < moveIndicator) {
                            int margin = (int) (total + (p2 * interpolatedTime / moveIndicator));
                            fl.leftMargin = margin;
                            mFloatView.setLayoutParams(fl);
                            Log.i("floatView1","margin = " + margin);
                        } else if (interpolatedTime >= moveIndicator) {
                            float diff = 1 / (1 - moveIndicator)
                                    * (interpolatedTime - moveIndicator);
                            mFloatView.setAlpha(1 - 0.6f * diff);
                        }
                    }
                });

            }
        };
        moveAnim.setDuration((long) (indicators[0] * 1000));
        moveAnim.setAnimationListener(new AnimationListener() {
            
            @Override
            public void onAnimationStart(Animation arg0) {
                // TODO Auto-generated method stub

            }

            @Override
            public void onAnimationRepeat(Animation arg0) {
                // TODO Auto-generated method stub

            }

            @Override
            public void onAnimationEnd(Animation arg0) {
                if(mFloatLayout.getVisibility() == View.GONE){
                    mFloatLayout.setVisibility(View.VISIBLE);
                }
                // 透明过后缩进
                mFloatView.startAnimation(animation);
            }
        });
        mFloatView.startAnimation(moveAnim);
    }

    /**
     * 计算速率，保证渐变时间为5S，并且根据屏幕宽度做速率变化
     * 
     * @return
     */
    private float[] calSpeed() {
        float[] indicators = new float[2];
        if (screenWidth < 720) {
            indicators[0] = 5.4f;
        } else if (screenWidth > 720 && screenWidth < 1080) {
            indicators[0] = 5.5f;
        } else if (screenWidth >= 1080 && screenWidth < 1280) {
            indicators[0] = 5.6f;
        } else if (screenWidth >= 1280 && screenWidth < 1920) {
            indicators[0] = 5.8f;
        } else if (screenWidth >= 1920) {
            indicators[0] = 6.0f;
        }
        indicators[1] = 1 - (5.0f / indicators[0]);
        return indicators;
    }

    // 清除动画 回归正常状态
    private void clearAnim() {
        mFloatView.setAlpha(1);
        mFloatView.clearAnimation();
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

    /**
     * 缓存的宽高值调换
     */
    private void changeWHValue() {
        int temp = screenHeight;
        screenHeight = screenWidth;
        screenWidth = temp;
    }

    /**
     * 显示悬浮窗
     */
    public void showFloatView() {
        if (mWindowManager == null || mFloatLayout == null)
            return;
        correctScreenWH();// 校正宽高缓存值
        x = sp.getInt(VIEWX, screenWidth - mFloatView.getMeasuredWidth());
        y = sp.getInt(VIEWY, screenHeight / 2);
        // wmParams.x = x;
        // wmParams.y = y;
        mWindowManager.addView(mFloatLayout, wmParams);
        updateStatus();
        if (STATE_LOCATION == STATE_LEFT) {
            x = 0;
        } else {
            x = screenWidth - mFloatView.getMeasuredWidth();
        }
        updateViewLayout(x, y);
        slideView(0, 0);
    }

    /**
     * 隐藏
     */
    public void removeFloatView() {
        if (mWindowManager == null || mFloatLayout == null) {
            return;
        }
        Editor editor = sp.edit();
        // 保存坐标
        int tempX = 0;
        if (STATE_LOCATION == STATE_LEFT) {
            tempX = 0;
        } else {
            tempX = x = screenWidth - mFloatView.getMeasuredWidth();
        }
        editor.putInt(VIEWX, tempX);
        editor.putInt(VIEWY, y);
        editor.commit();
        mWindowManager.removeView(mFloatLayout);
    }
}
