package com.testssm.utils;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;

public abstract class AESCoder {

    /*
     * 密钥算法
     */
    public static final String ALGORITHM = "AES";

    /*
     * 加密/解密算法 / 工作模式 / 填充方式
     */
    //public static final String CIPHER_ALGORITHM = "AES/ECB/PKCS5Padding";

    /**
     * 转换密钥
     * @param key 二进制密钥
     * @return      密钥
     * @throws Exception
     */
    private static Key toKey(byte[] key) throws Exception {
        // 实例化AES密钥材料
        SecretKeySpec secreyKey = new SecretKeySpec(key, ALGORITHM);
        return secreyKey;
    }

    /**
     * 解密
     * @param data 待解密数据
     * @param key   密钥
     * @return  解密数据
     * @throws Exception
     */
    public static byte[] decrypt(byte[] data, byte[] key) throws Exception {
        // 还原密钥
        Key k = toKey(key);
        /*
         * 实例化
         */
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        // 初始化,设置为解密模式
        cipher.init(Cipher.DECRYPT_MODE, k);
        // 执行操作
        return cipher.doFinal(data);
    }

    /**
     * 解密
     * @param data
     * @param key
     * @return
     * @throws Exception
     */
    public static byte[] decrypt(byte[] data, String key) throws Exception {
        return decrypt(data, getKey(key));
    }

    /**
     * 加密
     * @param data      待加密数据
     * @param key       密钥
     * @return          加密数据
     * @throws Exception
     */
    public static byte[] encrypt(byte[] data, byte[] key) throws Exception {
        // 还原密钥
        Key k = toKey(key);
        /*
         * 实例化
         */
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        // 初始化，设置为加密模式
        cipher.init(Cipher.ENCRYPT_MODE, k);
        // 执行操作
        return cipher.doFinal(data);
    }

    /**
     * 加密
     * @param data  待加密数据
     * @param key   密钥
     * @return      加密数据
     * @throws Exception
     */
    public static byte[] encrypt(byte[] data, String key) throws Exception {
        return encrypt(data, getKey(key));
    }

    /**
     * 生成密钥
     * @return  二进制密钥
     * @throws Exception
     */
    public static byte[] initKey() throws Exception {
        // 实例化
        KeyGenerator kg = KeyGenerator.getInstance(ALGORITHM);
        // AES 要求密钥长度为 128位、192位、256位
        kg.init(256);
        // 生成私密密钥
        SecretKey secretKey = kg.generateKey();
        // 获取密钥的二进制编码形式
        return secretKey.getEncoded();
    }

    /**
     * 初始化密钥
     * @return Base64 编码密钥
     * @throws Exception
     */
    public static String initKeyString() throws Exception {
        return Base64.encodeBase64String(initKey());
    }

    /**
     * 获取密钥
     * @param key   密钥
     * @return  Base64编码的密钥
     * @throws Exception
     */
    public static byte[] getKey(String key) throws Exception {
        return Base64.decodeBase64(key);
    }

    /**
     * 数据摘要处理
     * @param data  待摘要数据
     * @return      摘要字符串
     */
    public static String shaHex(byte[] data) {
        return DigestUtils.md5Hex(data);
    }

    /**
     * 验证
     * @param data  待摘要数据
     * @param messageDigest 摘要字符串
     * @return 验证结果
     */
    public static boolean validate(byte[] data, String messageDigest) {
        return messageDigest.equals(shaHex(data));
    }
}
