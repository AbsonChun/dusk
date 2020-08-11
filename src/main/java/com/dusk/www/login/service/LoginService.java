package com.dusk.www.login.service;

import com.dusk.www.user.domain.User;
import com.dusk.www.user.mapper.UserMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class LoginService {

    public final static  String SUCCESS_CODE = "200";
    public final static  String UNKNOW_ACCOUNT_CODE = "300";
    public final static  String INCORRECT_CREDENTIALS_CODE = "400";

    public final static  String SUCCESS_MESSAGE = "验证通过！";
    public final static  String UNKNOW_ACCOUNT_MESSAGE = "无效的用户名！";
    public final static  String INCORRECT_CREDENTIALS_MESSAGE = "用户名或密码输入有误！";


    @Autowired
    private UserMapper userMapper;

    public Map<String,Object> checkUserByLoginNameAndPassword(String loginName,String password){
        Map<String,Object> returnMap = new HashMap<>();
        User user = userMapper.getByLoginName(loginName);
        if (user !=null){
            if(StringUtils.isNotBlank(password)){
                if (password.equals(user.getPassword())){
                    returnMap.put("code",SUCCESS_CODE);
                    returnMap.put("message",SUCCESS_MESSAGE);
                    returnMap.put("user",user);
                }else{
                    returnMap.put("code",INCORRECT_CREDENTIALS_CODE);
                    returnMap.put("message",INCORRECT_CREDENTIALS_MESSAGE);
                }
            }else{
                returnMap.put("code",INCORRECT_CREDENTIALS_CODE);
                returnMap.put("message",INCORRECT_CREDENTIALS_MESSAGE);
            }
        }else{
            returnMap.put("code",UNKNOW_ACCOUNT_MESSAGE);
            returnMap.put("message",UNKNOW_ACCOUNT_CODE);
        }
        return returnMap;
    }
}
