package com.testssm.pojo;

import java.sql.Timestamp;

/**
 * 读者 实体
 */
public class Reader {
    private String readerId;            // 学号
    private String readerPwd;           // 密码
    private String readerName;          // 姓名
    private String readerSex;           // 性别
    private String readerLink;          // 联系电话
    private String readerDepartment;    // 所在系别
    private Timestamp effective_time;   // 生效时间
    private Timestamp failure_time;     // 失效时间
    private String readerPeccancy;      // 违章情况
    private int lendCount;              // 累计借书
    private String readerRemarks;       // 备注

    public String getReaderId() {
        return readerId;
    }

    public void setReaderId(String readerId) {
        this.readerId = readerId;
    }

    public String getReaderPwd() {
        return readerPwd;
    }

    public void setReaderPwd(String readerPwd) {
        this.readerPwd = readerPwd;
    }

    public String getReaderName() {
        return readerName;
    }

    public void setReaderName(String readerName) {
        this.readerName = readerName;
    }

    public String getReaderSex() {
        return readerSex;
    }

    public void setReaderSex(String readerSex) {
        this.readerSex = readerSex;
    }

    public String getReaderLink() {
        return readerLink;
    }

    public void setReaderLink(String readerLink) {
        this.readerLink = readerLink;
    }

    public String getReaderDepartment() {
        return readerDepartment;
    }

    public void setReaderDepartment(String readerDepartment) {
        this.readerDepartment = readerDepartment;
    }

    public Timestamp getEffective_time() {
        return effective_time;
    }

    public void setEffective_time(Timestamp effective_time) {
        this.effective_time = effective_time;
    }

    public Timestamp getFailure_time() {
        return failure_time;
    }

    public void setFailure_time(Timestamp failure_time) {
        this.failure_time = failure_time;
    }

    public String getReaderPeccancy() {
        return readerPeccancy;
    }

    public void setReaderPeccancy(String readerPeccancy) {
        this.readerPeccancy = readerPeccancy;
    }

    public int getLendCount() {
        return lendCount;
    }

    public void setLendCount(int lendCount) {
        this.lendCount = lendCount;
    }

    public String getReaderRemarks() {
        return readerRemarks;
    }

    public void setReaderRemarks(String readerRemarks) {
        this.readerRemarks = readerRemarks;
    }
}

