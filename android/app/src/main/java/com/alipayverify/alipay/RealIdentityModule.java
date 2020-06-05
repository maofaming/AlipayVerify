package com.alipayverify.alipay;

import android.app.Activity;
import android.util.Log;

import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.uimanager.IllegalViewOperationException;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.android.verify.sdk.ServiceFactory;
import com.alipay.mobile.android.verify.sdk.interfaces.ICallback;

import java.util.Map;

public class RealIdentityModule extends ReactContextBaseJavaModule {
    private static final String TAG = RealIdentityModule.class.getSimpleName();
    private final ReactApplicationContext reactContext;

    public RealIdentityModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;

    }

    @Override
    public String getName() {
        return "Alipay";
    }

    @ReactMethod
    public void start(String url, String certifyId, Promise promise) {
// 封装认证数据
        JSONObject requestInfo = new JSONObject();
        requestInfo.put("url", url);
        requestInfo.put("certifyId", certifyId);
        Log.d(TAG, url + certifyId);
        // 发起认证
        ServiceFactory.build().startService(getCurrentActivity(), requestInfo, new ICallback() {
            @Override
            public void onResponse(Map<String, String> response) {
                Log.d(TAG, JSON.toJSONString(response));
                // 回调处理
//                Toast.makeText(MainActivity.this, "调用者获得的数据: " +
//                        JSON.toJSONString(response), Toast.LENGTH_SHORT).show();
            }
        });

    }
}
