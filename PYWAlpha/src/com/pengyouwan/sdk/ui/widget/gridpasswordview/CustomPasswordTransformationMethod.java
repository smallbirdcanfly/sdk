package com.pengyouwan.sdk.ui.widget.gridpasswordview;

import android.text.method.PasswordTransformationMethod;
import android.view.View;

/**
 * 描述：自定义密码输入框工具类
 * @author Hanson
 * @version 创建时间：2016-7-2 上午10:36:36
 * 
 */
public class CustomPasswordTransformationMethod extends PasswordTransformationMethod {
    String transformation;

    public CustomPasswordTransformationMethod(String transformation) {
        this.transformation = transformation;
    }

    @Override
    public CharSequence getTransformation(CharSequence source, View view) {
        return new PasswordCharSequence(source);
    }

    private class PasswordCharSequence implements CharSequence {
        private CharSequence mSource;

        public PasswordCharSequence(CharSequence source) {
            mSource = source;
        }

        @Override
        public int length() {
            return mSource.length();
        }

        @Override
        public char charAt(int index) {
            return transformation.charAt(0);
        }

        @Override
        public CharSequence subSequence(int start, int end) {
            return mSource.subSequence(start, end);
        }
    }

}
