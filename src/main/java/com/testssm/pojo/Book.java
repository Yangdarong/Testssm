package com.testssm.pojo;

import java.sql.Timestamp;

/**
 *  图书实体
 */
public class Book {
    private String bookIsbn;            // ISBN
    private String bookName;            // 书名
    private String bookAuthor;          // 作者
    private String bookPress;           // 出版社
    private Timestamp bookPublicDate;   // 出版时间
    private String bookBrief;           // 简介
    private String bookRemarks;         // 备注

    public String getBookIsbn() {
        return bookIsbn;
    }

    public void setBookIsbn(String bookIsbn) {
        this.bookIsbn = bookIsbn;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookPress() {
        return bookPress;
    }

    public void setBookPress(String bookPress) {
        this.bookPress = bookPress;
    }

    public Timestamp getBookPublicDate() {
        return bookPublicDate;
    }

    public void setBookPublicDate(Timestamp bookPublicDate) {
        this.bookPublicDate = bookPublicDate;
    }

    public String getBookBrief() {
        return bookBrief;
    }

    public void setBookBrief(String bookBrief) {
        this.bookBrief = bookBrief;
    }

    public String getBookRemarks() {
        return bookRemarks;
    }

    public void setBookRemarks(String bookRemarks) {
        this.bookRemarks = bookRemarks;
    }
}
