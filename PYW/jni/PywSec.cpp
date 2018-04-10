#include <android/log.h>
#include <jni.h>
#include <string.h>

#include "com_pengyouwan_sdk_utils_SecretUtil.h"

#ifdef __cplusplus
extern "C" {
#endif

static char *APPKEY = "PYW_Secret_Str";

static char *APPPASSNOKEY = "ky_mempay_";

JNIEXPORT jbyteArray JNICALL Java_com_pengyouwan_sdk_utils_SecretUtil_doB(
		JNIEnv * env, jclass, jbyteArray byarray) {
	jsize length = env->GetArrayLength(byarray);
	jbyte* p = env->GetByteArrayElements(byarray, NULL);

	char *data = NULL;
	if (length > 0) {
		data = (char*) malloc(length);
		memcpy(data, p, length);
	}
	char *tmpBuf = (char*) malloc(length);
	for (int i = 0, j = length - 1, k = 0;; i++, j--) {

		if (i == j) {
			tmpBuf[k] = data[i];
			break;
		} else if (i > j) {
			break;
		}

		tmpBuf[k++] = data[i];
		tmpBuf[k++] = data[j];
	}
	jbyteArray bytes = env->NewByteArray(length);
	env->SetByteArrayRegion(bytes, 0, length, (jbyte*) tmpBuf);
	return bytes;

}
JNIEXPORT jbyteArray JNICALL Java_com_pengyouwan_sdk_utils_SecretUtil_doA(
		JNIEnv * env, jclass, jbyteArray byarray) {
	jsize length = env->GetArrayLength(byarray);
	jbyte* p = env->GetByteArrayElements(byarray, NULL);

	char *tmpBuf = NULL;
	if (length > 0) {
		tmpBuf = (char*) malloc(length);
		memcpy(tmpBuf, p, length);
	}
	char *result = (char*) malloc(length);
	for (int i = 0, j = 0, k = length - 1; i < length;) {
		result[j++] = tmpBuf[i++];
		if (i == length)
			break;
		result[k--] = tmpBuf[i++];
	}

	jbyteArray bytes = env->NewByteArray(length);
	env->SetByteArrayRegion(bytes, 0, length, (jbyte*) result);
	return bytes;

}
JNIEXPORT jstring JNICALL Java_com_pengyouwan_sdk_utils_SecretUtil_getA(
		JNIEnv * env, jclass) {
	jstring encoding = env->NewStringUTF(APPKEY);
	return encoding;
}

JNIEXPORT jstring JNICALL Java_com_pengyouwan_sdk_utils_SecretUtil_getB(
		JNIEnv * env, jclass) {
	jstring encoding = env->NewStringUTF(APPPASSNOKEY);
	return encoding;
}

#ifdef __cplusplus
}
#endif
