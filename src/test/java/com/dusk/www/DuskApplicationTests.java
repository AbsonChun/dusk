package com.dusk.www;

import com.dusk.www.utils.shiro.ShiroUtils;
import org.apache.shiro.subject.Subject;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DuskApplicationTests {

    @Test
    void contextLoads() {
    }

    @Test
    public void testPermission() throws Exception {
        Subject subject = ShiroUtils.login("classpath:myRealm.ini", "admin", "123456");
    }

}
