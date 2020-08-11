package com.dusk.www.login.controller;

import com.dusk.www.login.service.LoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/loginController")
public class LoginController {

    @RequestMapping(value="/login.do")
    public String login(){
        return "/login/login";
    }

    @RequestMapping(value="/toLogin.do")
    public String toLogin(String loginName,String password,String rememberMe){
        System.out.println(loginName+","+password+","+rememberMe);
        UsernamePasswordToken token = new UsernamePasswordToken(loginName, password, rememberMe);
        try {
            SecurityUtils.getSubject().login(token);
            return "redirect:/indexController/index.do";
        }catch (UnknownAccountException e){
            System.out.println(LoginService.UNKNOW_ACCOUNT_MESSAGE);
        }catch (IncorrectCredentialsException e){
            System.out.println(LoginService.INCORRECT_CREDENTIALS_MESSAGE);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "/login/login";
    }

}
