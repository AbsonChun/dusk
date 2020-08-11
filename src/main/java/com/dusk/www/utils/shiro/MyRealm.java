package com.dusk.www.utils.shiro;

import com.dusk.www.login.service.LoginService;
import com.dusk.www.user.domain.Permission;
import com.dusk.www.user.domain.Role;
import com.dusk.www.user.domain.User;
import com.dusk.www.user.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private LoginService loginService;

    @Autowired
    private UserService userService;

    public MyRealm(){
        super();
    }

    /**
     * 登录认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("MyRealm 中认证的方法！");
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String loginName = token.getUsername();
        String password = new String((char[]) authenticationToken.getCredentials());
        Map<String,Object> map = loginService.checkUserByLoginNameAndPassword(loginName,password);
        String code = (String)map.get("code");
        User user;
        if (LoginService.UNKNOW_ACCOUNT_MESSAGE.equals(code)){
            throw new UnknownAccountException(LoginService.UNKNOW_ACCOUNT_MESSAGE);
        }else if(LoginService.INCORRECT_CREDENTIALS_CODE.equals(code)){
            throw new IncorrectCredentialsException(LoginService.INCORRECT_CREDENTIALS_MESSAGE);
        }else if(LoginService.SUCCESS_CODE.equals(code)){
            user = (User) map.get("user");
            String passwordMd5 = (new Md5Hash(password, user.getLoginName())).toHex();
            System.out.println("----->>passwordMd5====" + passwordMd5);
            return new SimpleAuthenticationInfo(user, passwordMd5, user.getName());
        }
        return null;
    }

    /**
     * 验证权限
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("权限配置-->MyRealm.doGetAuthorizationInfo()");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        User user = (User) principalCollection.getPrimaryPrincipal();
        // 获取用户角色
        Set<Role> roleSet =  userService.getRoleSetByUserId(user.getId());
        Set<String> roleCodeSet = new HashSet<String>();
        for (Role r : roleSet){
            roleCodeSet.add(r.getCode());
            System.out.print("该用户有"+r.getName()+"的角色！");
        }
        info.setRoles(roleCodeSet);
        // 获取用户权限
        Set<Permission> permissionSet =  userService.getPermissionSetByUserId(user.getId());
        Set<String> permissionCodeSet = new HashSet<String>();
        for(Permission p : permissionSet){
            permissionCodeSet.add(p.getCode());
            System.out.print("该用户有"+p.getName()+"的权限！");
        }
        info.setStringPermissions(permissionCodeSet);
        return info;
    }
}
