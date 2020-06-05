# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-ignorewarnings
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

#system
-keep public class * extends android.app.Activity{
    !private <fields>;
    !private <methods>;
}
-keep public class * extends android.app.Application{
    !private <fields>;
    !private <methods>;
}
-keep public class * extends android.app.Service{
    !private <fields>;
    !private <methods>;
}
-keep public class * extends android.view.View{
    !private <fields>;
    !private <methods>;
}
-keep public class * extends android.content.BroadcastReceiver{
    !private <fields>;
    !private <methods>;
}
-keep public class * extends android.content.ContentProvider{
    !private <fields>;
    !private <methods>;
}
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}
-keep class * extends android.os.IInterface{
    !private <fields>;
    !private <methods>;
}
-keep class * extends android.os.Binder{
    !private <fields>;
    !private <methods>;
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    !private <fields>;
    !private <methods>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
-keep public class com.android.vending.licensing.ILicensingService

-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepnames class com.alibaba.fastjson.**

#classes may be referenced in xml
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

#zoloz 混淆配置
-keep public class com.alipay.mobile.security.zim.api.**{
    public <fields>;
    public <methods>;
}

-keep class com.alipay.mobile.security.zim.biz.ZIMFacadeBuilder {
  !private <fields>;
   !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.logger.AlipayMonitorLogService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.rpc.AlipayRpcService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.apsecurity.AlipayApSecurityService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.bean.ToygerMetaInfo {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.algorithm.** { *; }

-keep class com.alipay.zoloz.toyger.blob.** {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.face.** {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.hardware.camera.impl.** {
    !private <fields>;
    !private <methods>;
}


-keep public class com.alipay.mobile.security.zim.plugin.**{
    public <fields>;
    public <methods>;
}

-keep class * extends com.alipay.mobile.security.zim.gw.BaseGwService{
    !private <fields>;
    !private <methods>;
}

-keep class * extends com.alipay.mobile.security.bio.service.BioMetaInfo{
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.workspace.FaceRemoteConfig{
    *;
}

-keep public class com.alipay.zoloz.toyger.**{
    *;
}
-keep public class com.alipay.mobile.security.zim.gw.**{
    *;
}