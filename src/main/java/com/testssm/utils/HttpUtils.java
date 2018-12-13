package com.testssm.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Properties;

/**
 * Http 工具
 */
public abstract class HttpUtils {
    public static final String CHARACTER_ENCODING = "UTF-8";
    public static final String METHOD_POST = "POST";
    public static final String CONTENT_TYPE = "Content-Type";

    /**
     * 打印数据
     * @param response
     * @param data
     */
    public static void responseWrite(HttpServletResponse response, byte[] data) throws IOException {
        if (data != null) {
            response.setContentLength(data.length);
            DataOutputStream out = new DataOutputStream(response
                    .getOutputStream());
            out.write(data);
            out.flush();
            out.close();
        }
    }

    /**
     * 从请求中读取字节流
     * @param request
     * @return
     * @throws IOException
     */
    public static byte[] requestRead(HttpServletRequest request) throws IOException {
        int contentLength = request.getContentLength();
        byte[] data = null;
        if(contentLength > 0) {
            data = new byte[contentLength];
            InputStream in = request.getInputStream();
            DataInputStream dis = new DataInputStream(in);
            dis.readFully(data);
            dis.close();
        }
        return data;
    }

    /**
     * 以POST方式向指定地址发送数据包请求，并取得返回的数据包
     * @param urlString
     * @param requestData
     * @return
     * @throws Exception
     */
    public static byte[] postRequest(String urlString, byte[] requestData) throws Exception {
        Properties requestProperties = new Properties();
        requestProperties.setProperty(CONTENT_TYPE, "application/octet-stream;charset="
                + CHARACTER_ENCODING);
        return postRequest(urlString, requestData, requestProperties);
    }

    /**
     * 以POST方式向指定地址发送数据包请求，并取得返回的数据包
     * @param urlString
     * @param requestData
     * @param requestProperties
     * @return
     * @throws Exception
     */
    public static byte[] postRequest(String urlString, byte[] requestData, Properties requestProperties) throws Exception {
        byte[] responseData = null;
        HttpURLConnection con = null;
        try {
            URL url = new URL(urlString);
            con = (HttpURLConnection) url.openConnection();
            if ((requestProperties != null) && (requestProperties.size() > 0)) {
               for (Map.Entry<Object, Object> entry : requestProperties.entrySet()) {
                   String key = String.valueOf(entry.getKey());
                   String value = String.valueOf(entry.getValue());
                   con.setRequestProperty(key, value);
               }
            }
            con.setRequestMethod(METHOD_POST);
            con.setDoOutput(true);
            con.setDoInput(true);
            DataOutputStream dos = new DataOutputStream(con.getOutputStream());
            if (requestData != null) {
                dos.write(requestData);
            }
            dos.flush();;
            dos.close();
            DataInputStream dis = new DataInputStream(con.getInputStream());
            int length = con.getContentLength();
            if (length > 0) {
                responseData = new byte[length];
                dis.readFully(responseData);
            }
            dis.close();
        } finally {
            // 关闭流
            if (con != null) {
                con.disconnect();
                con = null;
            }
        }
        return responseData;
    }
}
