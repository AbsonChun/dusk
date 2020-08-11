package com.dusk.www.user.service;

import com.dusk.www.user.domain.Permission;
import com.dusk.www.user.domain.Role;
import com.dusk.www.user.domain.User;
import com.dusk.www.user.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public User getById(Integer id){
        return userMapper.getById(id);
    }

    public Set<Role> getRoleSetByUserId(Integer userId){return userMapper.getRoleSetByUserId(userId);}

    public Set<Permission> getPermissionSetByUserId(Integer userId){return userMapper.getPermissionSetByUserId(userId);}

}
