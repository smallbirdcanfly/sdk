/**
 * 
 */

package com.pengyouwan.sdk.entity;

/**
 * 描述:基本常量类
 * 
 * @author CJ
 * @since 2016-7-2 下午2:51:34
 */
public class Constants {
    /**
     * 用户相关常量
     */
    public class UserContants {
        /**
         * 用户类型为通行证
         */
        public static final int USER_TYPE_PASSPORT = 1;

        /**
         * 用户类型为游戏账号
         */
        public static final int USER_TYPE_ACCOUNT = 2;

        /**
         * 用户无交易密码
         */
        public static final int USER_NO_PAY_PSW = 0;

        /**
         * 用户含有交易密码
         */
        public static final int USER_HAVE_PAY_PSW = 1;

    }

    /**
     * 验证码类型
     */
    public class CodeConstants {
        /**
         * 注册
         */
        public static final int CODE_REGISTER = 1;

        /**
         * 忘记密码--未登录
         */
        public static final int CODE_FORGET_PWD_NOLOGIN = 2;

        /**
         * 绑定手机
         */
        public static final int CODE_BIND_PHONE = 3;

        /**
         * 解绑账号
         */
        public static final int CODE_UNBIND_PHONE = 4;

        /**
         * 忘记密码--登录
         */
        public static final int CODE_FORGET_PWD_LOGIN = 5;

        /**
         * 用户已经注册
         */
        public static final int USER_IS_REG = 1;

        /**
         * 用户未注册
         */
        public static final int USER_NO_REG = 0;
    }

}
