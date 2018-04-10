package com.pyw.plugin.huawei;

public class GlobalParam
{
    /**
     * 联盟为应用分配的应用ID
     */
    /**
     * APP ID
     */
    public static final String APP_ID = "100049063";
    
    /**
     * 浮标密钥，CP必须存储在服务端，然后通过安全网络（如https）获取下来，存储到内存中，否则存在私钥泄露风险
     */
    /**
     * private key for buoy, the CP need to save the key value on the server for security
     */
    /**************TODO:DELETE*******************/
    public static String BUOY_SECRET = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCQTRSqZ05WaE8hSmw7dQYX/gVZo8XxFqt2kr/39sfFcInLwr+klBrQrw3fxYkbJNbGUXVR7g0iCEsxkA2a1/xEbc+iF/hPA0B2Pe8//GsKEq2p5YQHp+abFy3MtMrR3vavfl+vG8aTtHNmI4OwPDP8m680fExrGZkEAwUbWzoJfO1fpA+f1uR8JqWQoHtz0oZ53LdZ600FDZSu0/ZsdhYL8vnBKfut0xhoi9E/3H/KJIitAINQ6GpyjxLN7bfykmEDJB5JAcBszFtemsW2xZ3pg4CwB+3ZXMBHQdjqx3fbCf87zonknGqwAEVv2tyHJFZ0ga5+yLbWoCKb8Arz/Ve9AgMBAAECggEAGPf9d27gszrhVlVWXQNmxogBzPz1pz3Q9Xd3GCTvdE6AyW0tVAD8ktd3gxzfGH9LWo2Fy2Nxik39FNpkQELXN8/4eYfEQ4fAg7U7zMqUiu2odxlruxdmY7ejCSTPY3k9Hiizzcz0k2JKBYZnpvsD09Xsfxxy7KVFQNh07cLfS/y7YmHYW3xjJfM7GsStki9R20r9k2gjyWvZPgl488AJkTqJ7VpFLd4ow6nZ7/gbwnLR0JmfYAjIpjh2fQR+f6AwpCuAmPQRWfttpLV1Eyo2GHMxvp1vD74Fedy+X1iuJirC4YHaRemzeUxwG5Vju+xg42JOtarsOVizMkzDLm4YUQKBgQDAfx4Uldtkm2bi3iJE+SRxTgFMhyGIb6ohhMchPDTCU76kyfk75TJTDk3izglh/r4MhCQGQztVx+VLmvo05J4C8FOANf1rb9fHw9grGhFdGT0wEamxx2IFHFOXEp7CC/b/fwSkiplSBMeeg/ORevZP515/9f7FjufuNsebcoPmewKBgQC/57g3PSplXggRH2ZGlAi+J1KvCTNBnRJ7KItGfLd/8Bj9d67AJEwZvd+2auprfCYvghcX+HO5k5yUDk/9aHbvW5fkUTfuc5d8ZPY3FnHDmRKGCQfew5MhNYk01tNu8xVSt4jijr9uNJG/B/PzVjkdONDH9EyQSsTVmlhxDyBBJwKBgAg8aBkRYFWpoHlMb8LrtfdzEvMnRPQFcw4EFFEDtm4qDxoV2igJ4mFTV1nA3v3mXFNExBXQgpVk/BaEBviEX45Yofn2VWVnX6AYbQNLFjsZfVi1KMGGelclox3vmgNLZ8H+uUAg/fZYZgIOOzmaPTel+pEXAVOKjbnPdjLcb3BJAoGAKvflRWkKnxvIzpyrN85ZjsobN1nmAiD7TFwtoyC1rY3C6q3rkNYPvAvJlXym9F4d5rFIHnPg5YJporT5sBG936Ywgky1K0zydEXe40LBQjx5600GWBiOTvc/u3cGbGc9NQInQiMYNcLLh2xucOOzchmQldTbd8tl+zXN67KpVC0CgYEAmWWfrBSDKUnNSqoEyUwD/M/a97ptBMSQw/A6WG2cxiefo4OXSHiHjNX3Cf+DPwvKvBvAlugrJO5TyUnF9CSA7fBlWDXABgU9YHpmSyHzCyU0hstg+8JRbf4bOMxtafrrTjiWvXDarRQ6QCyGraS0umCHic6Y0c2AsLmINVN9qww=";
    
    
    /**
     * 支付ID
     */
	 /**
     * Pay ID
     */
    public static final String PAY_ID = "890086000102068411";
    
    /**
     * 支付私钥，CP必须存储在服务端，然后通过安全网络（如https）获取下来，存储到内存中，否则存在私钥泄露风险
     */
    /**
     * private key for pay, the CP need to save the key value on the server for security
     */
    /**************TODO:DELETE*******************/
    public static String PAY_RSA_PRIVATE = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDM5OhkQQul3c1Gh/6f0MFgkZQ7S9TY76+blvt8r+GHxaQh52criqPadIZnTVaCnwCcN94GDrIabvC7UtF2Dq0a4o0l58SGAahw2b4XiEk125+D/JCM/e1WzWSf9OnGC8iyWPBrs4mrfe2kwEeRQ/So4IOxTEj5jXjbLm3PB7/mhi6lbfqSfbTxi1ULNz/NrMACYGAgfALAV37uBXENx5Xdjduy2/PMkAk9PeJPYeG+Glo63tj11gJ/7Hd2oo6Oy69q3p8iPwXYLXk50Ki3IlkYQAX+jTKE7mAHP+gl1kU8MPCgzqU7Nk2LTgMrkJuSqX3Lg/OTvXejY6xYpuuRfRJZAgMBAAECggEAHamTAjaPeOEKL4iPInRelnwk5Uu2YfybI++A831j7Vu9xgHB5CITVBQ0A/8Eg+8Ab90/qYlVm/GNLNVRySFZSq/bJs5tm0fgqou/UxlSHfewWXOGOr8lLcCY7XZPpLH+iWFKVxE8IEVgEs6aXcukfxFXx2JnmycxxKttTsBMthLayM4GNvx07okdhJXHHw4LnvaZqUHIVpnF2qg4sQw7vHyoHXTYlWlLmqkVGvVSUfJxAnRr/le3OOBF7CcIVjuhWPQJ1kPjtKeEQbZdaggB8WvIys1PHezB81A2V6U8yhuG72dRiKQvRXGp0VcqpoK5+he281HFWLHAnngH8mSjjQKBgQD85ff/PNxrLaWQQcAcWzkN4y38uJFL+ns1os336BROO4c88bPeMxqsnhGLfSH/nWtVTAmWv/7j/cyKjqZaxIDYVoPYirEWRRw+QTtDMg/RSEqr5Skwcqh7BeLSxQzqX5KHb0AjYBLPUvAMCeQuV32SeDh5ERuFzVKDGL6VBi/nDQKBgQDPaDgeLoINQE3kM8mQOuzGA6Re/4mycEwMMdFUYHZ2CwQup3GRt5nNAPAigHSBJz1yHnqIUrSgolCGlckEdowfDxUpIttzGsZbdUdCciBTajdN2NHSKIJ8ghyBFoQX7hMPdaOpt2v/GNVat0GeOB6AsKQlw+BQ8wJtWneraW4FfQKBgQDM0R8RmuPU9aoR8/43uPWzNptnAr/B7gHdRZZUQaQ4W+PCSupmebMPvBDvjI99aquj8CoP6jzvvvvp92/pMR48l4y+UkzrgVtHXCM335KJ52d6YeUC9MlYoUK7epVkN7T/dO1X+RYizMPWrCgeFAOCHVV3T5Cfw9Mgk2i+Xr1q/QKBgQCY4cWb2cRbaC8CK3pEKmslesHKlKo3MbectYwLmh832971VM/ODXv9NNfNVsqJ+Ra96+F+Yxhp37tjuT03YPrgWgnLDLqeGfpkqAoi3GUfl4e0hkIDm4CzrmS8cpBj40WBe8Fr9JxSqUd7WuGvcsZpLcuRWtUaVkZPvQPBAjHrMQKBgCLIRwvlZGshg4aV4GRUS0nOy4bi59/AHDjWgmBa5vn+nKQMRm+pmB3vw1JkIzF5WO2YaRXqmJZh9Z6vspLfr8s9v0rG82udjYVf54/XKfzr02v17B+XJWcNz5pV56sH2z0n6O95D7wf6ubMTlkSF9Kfkw1NsXJwPbRIQ60XErMx";
    
    /**
     * 支付公钥
     */
    /**
     * public key for pay
     */
    public static final String PAY_RSA_PUBLIC = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzOToZEELpd3NRof+n9DBYJGUO0vU2O+vm5b7fK/hh8WkIednK4qj2nSGZ01Wgp8AnDfeBg6yGm7wu1LRdg6tGuKNJefEhgGocNm+F4hJNdufg/yQjP3tVs1kn/TpxgvIsljwa7OJq33tpMBHkUP0qOCDsUxI+Y142y5tzwe/5oYupW36kn208YtVCzc/zazAAmBgIHwCwFd+7gVxDceV3Y3bstvzzJAJPT3iT2HhvhpaOt7Y9dYCf+x3dqKOjsuvat6fIj8F2C15OdCotyJZGEAF/o0yhO5gBz/oJdZFPDDwoM6lOzZNi04DK5Cbkql9y4Pzk713o2OsWKbrkX0SWQIDAQAB";
    
    /**
     * 登录签名公钥
     */
	
	public static final String LOGIN_RSA_PUBLIC = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmKLBMs2vXosqSR2rojMzioTRVt8oc1ox2uKjyZt6bHUK0u+OpantyFYwF3w1d0U3mCF6rGUnEADzXiX/2/RgLQDEXRD22er31ep3yevtL/r0qcO8GMDzy3RJexdLB6z20voNM551yhKhB18qyFesiPhcPKBQM5dnAOdZLSaLYHzQkQKANy9fYFJlLDo11I3AxefCBuoG+g7ilti5qgpbkm6rK2lLGWOeJMrF+Hu+cxd9H2y3cXWXxkwWM1OZZTgTq3Frlsv1fgkrByJotDpRe8SwkiVuRycR0AHsFfIsuZCFwZML16EGnHqm2jLJXMKIBgkZTzL8Z+201RmOheV4AQIDAQAB";

    /*
     * 支付页面横竖屏参数：1表示竖屏，2表示横屏，默认竖屏
     */
    // portrait view for pay UI
	public static final int PAY_ORI = 1;
	// landscape view for pay UI
	public static final int PAY_ORI_LAND = 2;
    
    /**
     * 支付签名类型：RSA256
     */
    public static final String SIGN_TYPE = "RSA256";
    

	/**
	 * 生成签名时需要使用RSA的私钥，安全考虑，必须放到服务端，通过此接口使用安全通道获取
	 */
	/**
	 * the server url for getting the pay private key.The CP need to modify the
	 * value for the real server.
	 */
	public static final String GET_PAY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getPayPrivate";

	/**
	 * 调用浮标时需要使用浮标的私钥，安全考虑，必须放到服务端，通过此接口使用安全通道获取
	 */
	/**
	 * the server url for getting the buoy private key.The CP need to modify the
	 * value for the real server.
	 */
	public static final String GET_BUOY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getBuoyPrivate";
	
	public static String PLAYID = "";
	
    public interface PayParams
    {
        public static final String USER_ID = "userID";
        
        public static final String APPLICATION_ID = "applicationID";
        
        public static final String AMOUNT = "amount";
        
        public static final String PRODUCT_NAME = "productName";
        
        public static final String PRODUCT_DESC = "productDesc";
        
        public static final String REQUEST_ID = "requestId";
        
        public static final String USER_NAME = "userName";
        
        public static final String SIGN = "sign";
        
        public static final String NOTIFY_URL = "notifyUrl";
        
        public static final String SERVICE_CATALOG = "serviceCatalog";
        
        public static final String SHOW_LOG = "showLog";
        
        public static final String SCREENT_ORIENT = "screentOrient";
        
        public static final String SDK_CHANNEL = "sdkChannel";
        
        public static final String URL_VER = "urlver";
        
        public static final String EXT_RESERVED = "extReserved";
        
        public static final String SIGN_TYPE = "signType";
    }
    
}