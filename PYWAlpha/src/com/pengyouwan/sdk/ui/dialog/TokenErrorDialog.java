/**
 * 
 */
package com.pengyouwan.sdk.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.sdk.manager.SDKEventDispatcher;
import com.pengyouwan.sdk.open.ISDKEventCode;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

/**
 * 描述:token异常弹出的提示框
 * 
 * @author Hanson
 * @since 2016-7-7 下午3:38:48
 */
public class TokenErrorDialog extends BaseDialog {

	private View bindBtn;

	private Activity mActivity;

	public TokenErrorDialog(Activity mActivity) {
		super(mActivity, ResIdManager.getStyleId(mActivity,
				Rx.style.PYWTheme_Widget_Dialog));
		this.mActivity = mActivity;
		initView();
	}

	private void initView() {
		this.setCancelable(false);// 设置这个对话框不能被用户按[返回键]而取消掉,但测试发现如果用户按了KeyEvent.KEYCODE_SEARCH,对话框还是会Dismiss掉
		// 由于设置alertDialog.setCancelable(false);
		// 发现如果用户按了KeyEvent.KEYCODE_SEARCH,对话框还是会Dismiss掉,这里的setOnKeyListener作用就是屏蔽用户按下KeyEvent.KEYCODE_SEARCH
		this.setOnKeyListener(new DialogInterface.OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode,
					KeyEvent event) {
				if (keyCode == KeyEvent.KEYCODE_SEARCH) {
					return true;
				} else {
					return false; // 默认返回 false
				}
			}
		});
		setContentView(ResIdManager.getLayoutId(mActivity,
				Rx.layout.pyw_dialog_token_error));
		bindBtn = findViewById(ResIdManager.getId(getContext(),
				Rx.id.pyw_btn_bind));
		bindBtn.setOnClickListener(mListener);

	}

	public View.OnClickListener mListener = new View.OnClickListener() {

		@Override
		public void onClick(View v) {
			// TODO Auto-generated method stub
			if (v == bindBtn) {
				SDKEventDispatcher
						.sendEventNow(ISDKEventCode.CODE_LOGOUT, null);
				mActivity.finish();
			}
		}
	};

}
