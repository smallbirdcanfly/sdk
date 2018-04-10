package com.pengyouwan.sdk.ui.dialog;

import java.util.ArrayList;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.pengyouwan.framework.base.BaseDialog;
import com.pengyouwan.framework.v4.PagerAdapter;
import com.pengyouwan.framework.v4.ViewPager;
import com.pengyouwan.framework.v4.ViewPager.OnPageChangeListener;
import com.pengyouwan.sdk.utils.ResIdManager;
import com.pengyouwan.sdk.utils.Rx;

public class PushDialog extends BaseDialog implements OnPageChangeListener {
	
	private ViewPager viewPager;
	private Activity act;
	private PagerAdapter pagerAdapter;
	private LinearLayout indicatorLayout;
	private ArrayList<View> views;
	private ImageView[] indicators = null;
	private ArrayList<String> datas;
	private LayoutInflater layoutInflater;

	public PushDialog(Activity activity) {
		super(activity, ResIdManager.getStyleId(activity,
				Rx.style.PYWTheme_Widget_Dialog));
		this.act = activity;
		layoutInflater = LayoutInflater.from(act);
	}

	public void setDatas(ArrayList<String> datas) {
		this.datas = datas;
		initView();
	}

	void initView() {
		setContentView(ResIdManager.getLayoutId(getContext(),
				Rx.layout.pyw_dialog_push));
		viewPager = (ViewPager) findViewById((ResIdManager.getId(getContext(),
				Rx.id.pyw_dialog_viewPager)));
		indicatorLayout = (LinearLayout) findViewById(ResIdManager.getId(
				getContext(), Rx.id.pyw_dialog_indicator));
		views = new ArrayList<View>();
		indicators = new ImageView[datas.size()];
		for (int i = 0; i < datas.size(); i++) {
			View view = layoutInflater.inflate(ResIdManager.getLayoutId(
				getContext(), Rx.layout.pyw_dialog_information), null);
			TextView textView = (TextView) view.findViewById(ResIdManager.getId(
				getContext(), Rx.id.pyw_tv_information));
			textView.setText(datas.get(i));
//			TextView textView = new TextView(act);
//			textView.setText(datas.get(i));
//			textView.setMovementMethod(ScrollingMovementMethod.getInstance());
//			textView.setTextSize(16);
//			textView.setLayoutParams(new LayoutParams(
//					LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
			views.add(view);
			indicators[i] = new ImageView(act);

			indicators[i].setBackgroundResource(ResIdManager.getDrawableId(
					getContext(), Rx.drawable.pyw_img_indicators_default));
			if (i == 0) {
				indicators[i].setBackgroundResource(ResIdManager.getDrawableId(
						getContext(), Rx.drawable.pyw_img_indicators_now));
			}
			indicatorLayout.addView(indicators[i]);
		}
		pagerAdapter = new BasePagerAdapter();
		viewPager.setAdapter(pagerAdapter);
		viewPager.setOnPageChangeListener(this);
	}

	public class BasePagerAdapter extends PagerAdapter {

		@Override
		public boolean isViewFromObject(View arg0, Object arg1) {
			return arg0 == arg1;
		}

		@Override
		public int getCount() {
			return views.size();
		}

		@Override
		public void destroyItem(View container, int position, Object object) {
			((ViewPager) container).removeView(views.get(position));
		}

		@Override
		public Object instantiateItem(View container, int position) {
			((ViewPager) container).addView(views.get(position));
			return views.get(position);
		}
	}

	@Override
	public void onPageScrollStateChanged(int arg0) {
	}

	@Override
	public void onPageScrolled(int arg0, float arg1, int arg2) {
	}

	@Override
	public void onPageSelected(int arg0) {

		for (int i = 0; i < indicators.length; i++) {
			indicators[arg0].setBackgroundResource(ResIdManager.getDrawableId(
					getContext(), Rx.drawable.pyw_img_indicators_now));
			if (arg0 != i) {
				indicators[i].setBackgroundResource(ResIdManager.getDrawableId(
						getContext(), Rx.drawable.pyw_img_indicators_default));
			}
		}
	}
}
