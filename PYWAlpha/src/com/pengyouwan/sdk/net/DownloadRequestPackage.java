
package com.pengyouwan.sdk.net;

import org.apache.http.HttpEntity;


public class DownloadRequestPackage extends AbstractRequestPackage {
    private String reqUrl;

    public DownloadRequestPackage(String url) {
        this.reqUrl = url;
    }

    @Override
    public String getGetRequestParams() {
        return "";
    }

    @Override
    public HttpEntity getPostRequestEntity() {
        return null;
    }

    @Override
    public String getUrl() {
        return reqUrl;
    }

    @Override
    public int getRequestType() {
        return RequestPackage.TYPE_GET;
    }
}
