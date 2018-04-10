package com.pyw.plugin.pyw;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import org.apache.http.util.EncodingUtils;

import android.content.Context;
import android.os.Environment;

/**
 * 文件读写工具类（记录调用接口）
 * 
 * @author CJ
 * 
 */
public class FileUtil {

	private String fileName = "PywApiLog.txt";// 保存文件名

	/**
	 * sdcard
	 */
	public static final String SDCARD_FOLDER = Environment
			.getExternalStorageDirectory().toString();

	/**
	 * 应用目录
	 */
	public static final String ROOT_FOLDER = SDCARD_FOLDER + "/pywSDK/";

	private static FileUtil mManager = new FileUtil();

	private FileUtil() {
	}

	public static FileUtil getInstance() {
		if (mManager == null) {
			mManager = new FileUtil();
		}
		return mManager;
	}
	
	/**
	 * 工具初始化（清除旧数据）
	 * @param context
	 */
	public void init(Context context){
		File file = new File(ROOT_FOLDER + fileName);
		if (file.exists()) {
			file.delete();
		}
	}

	/**
	 * 写文件
	 * 
	 * @param content
	 */
	public void write(Context context, String content) {
		try {
			File file = new File(ROOT_FOLDER + fileName);
			if (!file.exists()) {
				file.getParentFile().mkdirs();
				file.createNewFile();
			}
			BufferedWriter out = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(file, true)));
			if (!read().contains(content)) {//去重
				out.write(content + "\r\n");
				out.close();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取文本
	 * 
	 * @return
	 */
	private String read() {
		String s = "";
		try {

			FileInputStream fin = new FileInputStream(ROOT_FOLDER + fileName);

			int length = fin.available();

			byte[] buffer = new byte[length];

			fin.read(buffer);

			s = EncodingUtils.getString(buffer, "UTF-8");

			fin.close();

		}

		catch (Exception e) {

			e.printStackTrace();

		}
		return s;
	}
	
}
