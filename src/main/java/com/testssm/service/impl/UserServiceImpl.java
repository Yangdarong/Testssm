package com.testssm.service.impl;

import com.testssm.dao.UserDao;
import com.testssm.pojo.User;
import com.testssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public User userLogin(User user) {

        return userDao.userLogin(user);
    }
}
