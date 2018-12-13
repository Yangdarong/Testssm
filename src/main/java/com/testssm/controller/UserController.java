package com.testssm.controller;

import com.testssm.pojo.User;
import com.testssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String userLogin(User user) {
        User u = userService.userLogin(user);
        //System.out.println(u.getUserNickName());

        if(u != null) {
            //
            return "redirect:/paper/allPaper";
        } else {
            return "user/loginFail";
        }

    }

    @RequestMapping("/register")
    public String userRegister(User user) {
        userService.addUser(user);
        return "redirect:/paper/allPaper";
    }
}
