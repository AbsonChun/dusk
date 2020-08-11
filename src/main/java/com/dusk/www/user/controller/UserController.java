package com.dusk.www.user.controller;

import com.dusk.www.user.domain.User;
import com.dusk.www.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/userController")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/getUserById.do")
    @ResponseBody
    public Map<String,Object>  getUserById(Integer id){
        Map<String,Object> returnMap = new HashMap<>();
        User user = userService.getById(id);
        returnMap.put("user",user);
        return  returnMap;
    }


}
