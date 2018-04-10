-dontshrink
-dontpreverify
-dontoptimize
-dontusemixedcaseclassnames

-flattenpackagehierarchy
-allowaccessmodification
-printmapping map.txt

-optimizationpasses 7
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,LocalVariable*Table,*Annotation*,Synthetic,EnclosingMethod,JavascriptInterface
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-ignorewarnings

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends java.lang.Throwable {*;}
-keep public class * extends java.lang.Exception {*;}

-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}
-keep class com.alipay.mobilesecuritysdk.*
-keep class com.alipay.**{*;}
-keep class com.ta.**{*;}
-keep class com.ut.*
-keep class org.json.alipay.**{*;}

-keep class com.tencent.**{*;}

-keep public class com.pengyouwan.sdk.web.H5SDKEventListener
-keep public class com.pengyouwan.sdk.web.PYWH5Plamform

#--银联start ---
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-keep public class com.android.vending.licensing.ILicensingService
-keep public class * extends android.preference.Preference
-keep public class * extends android.app.backup.BackupAgentHelper

-keep class cn.gov.pbc.tsm.**{*;}
-keep class com.unionpay.**{*;}
-keep class com.UCMobile.**{*;}
#--银联end-----

#银联支付 start------
-keep  public class com.unionpay.uppay.net.HttpConnection {
	public <methods>;
}
-keep  public class com.unionpay.uppay.net.HttpParameters {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.BankCardInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.PAAInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.ResponseInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.PurchaseInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.util.DeviceInfo {
	public <methods>;
}
-keep  public class java.util.HashMap {
	public <methods>;
}
-keep  public class java.lang.String {
	public <methods>;
}
-keep  public class java.util.List {
	public <methods>;
}
-keep  public class com.unionpay.uppay.util.PayEngine {
	public <methods>;
	native <methods>;
}

-keep  public class com.unionpay.utils.UPUtils {
	native <methods>;
}
#银联支付 end------
##---------------Begin: proguard configuration for Gson  ----------
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature

# For using GSON @Expose annotation
-keepattributes *Annotation*

-keep class com.google.gson.stream.** { *; }
-keepattributes EnclosingMethod
-keep class org.xz_sale.entity.**{*;}

# Application classes that will be serialized/deserialized over Gson
# Application classes that will be serialized/deserialized over Gson

# ------------------ 第三方、通用库防混淆 ------------------

-dontwarn javax.annotation.**
-dontwarn javax.inject.**

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keep class com.pyw.open.**{
    *;
}

-keep class com.pengyouwan.sdk.open.**{
	*;
}

-keep class * extends com.pyw.plugin.PYWPlugin{
	*;
}

-keep class com.pyw.entity.**{
	*;
}

-keep class com.tencent.tmgp.**{
	*;
}

-keep class com.pengyouwan.sdk.widget.**{
	*;
}

-keep class com.pengyouwan.sdk.utils.FloatViewTool{
	*;
}

-keepclassmembers class com.pengyouwan.sdk.activity.H5Activity$InnerJSInterface {
  public *;
}

-keep public class android.net.http.SslError

-dontwarn android.webkit.WebView
-dontwarn android.net.http.SslError
-dontwarn Android.webkit.WebViewClient


