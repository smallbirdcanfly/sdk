package com.pyw.common;

public class BehaviorConstants {
	/**
	 * 页面编号
	 */
	public static class PAGE {
		public static final int REGISTRATION_LOGIN_PAGE = 1;// 注册登录页面
		public static final int QUICK_REGISTRATION_PAGE = 2;// 快速注册页面
		public static final int BIND_PHONE_DIALOG = 3;// 绑定手机窗口
		public static final int BIND_PHONE_PAGE_BIND_PHONE = 4;// 绑定手机页面_绑定手机
		public static final int BIND_PHONE_PAGE_VERIFY_PHONE = 5;// 绑定手机页面_验证手机
		public static final int BIND_PHONE_PAGE_SET_PASSWORD = 6;// 绑定手机页面_设置密码
		public static final int PHONE_REGISTRATION_1 = 7;// 手机注册页面_1
		public static final int PHONE_REGISTRATION_2 = 8;// 手机注册页面_2
		public static final int PHONE_REGISTRATION_3 = 9;// 手机注册页面_3
	}

	/**
	 * 行为编号
	 */
	public static class BEHAVIORA {
		public static final int ENTER_PAGE = 1;// 进入页面
		public static final int EXIT_PAGE = 2;// 退出页面
		public static final int ENTER_GAME = 3;// 进入游戏
		public static final int QUICK_REGISTRATION = 4;// 快速注册
		public static final int PHONE_REGISTRATION = 5;// 手机注册
		public static final int RETRIEVE_PASSWORD = 6;// 找回密码
		public static final int RETURN = 7;// 返回
		public static final int CLOSE = 8;// 关闭
		public static final int BIND_IMMEDIATELY = 9;// 立即绑定
		public static final int GET_VERIFICATION_CODE = 10;// 获取验证码
		public static final int NEXT_STEP = 11;// 下一步
		public static final int GET_VERIFICATION_CODE_AGAIN = 12;// 重新获取验证码
		public static final int DETERMINE = 13;// 确定
		public static final int REGISTRATION_AND_LOGIN = 14;//注册并登录
	}

	/**
	 * 类型编号
	 */
	public static class TYPE {
		public static final int TYPE_ENTER_PAGE = 1;// 进入页面
		public static final int TYPE_EXIT_PAGE = 2;// 退出页面
		public static final int TYPE_CLICK_BUTTON = 3;// 点击按钮
	}

}
