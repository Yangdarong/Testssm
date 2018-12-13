package com.testssm.service.test;

import com.testssm.pojo.User;
import com.testssm.service.PaperService;
import com.testssm.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 测试远程数据库连接
 */
public class Demo1 {

    @Autowired
    private UserService userService;

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://120.78.218.188:3306/db_ssm", "root", "Yxr960924!");

            System.out.println(conn);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
