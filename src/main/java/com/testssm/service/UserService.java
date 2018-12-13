package com.testssm.service;

import com.testssm.pojo.User;

public interface UserService {

    // 添加用户
    /*public abstract*/ int addUser(User user);

    // 验证用户
    User userLogin(User user);
}
