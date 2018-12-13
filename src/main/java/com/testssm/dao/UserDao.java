package com.testssm.dao;

import com.testssm.pojo.User;

public interface UserDao {

    User userLogin(User user);

    int addUser(User user);

}
