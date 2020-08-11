package com.dusk.www.user.mapper;


import com.dusk.www.user.domain.Permission;
import com.dusk.www.user.domain.Role;
import com.dusk.www.user.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.Set;

/**
 * 有关user、role、permission的相关查询
 */
@Repository
public interface UserMapper  {

    User getById(Integer id);

    User getByLoginName(String loginName);

    Set<Role> getRoleSetByUserId(Integer userId);

    Set<Permission> getPermissionSetByUserId(Integer userId);

}
