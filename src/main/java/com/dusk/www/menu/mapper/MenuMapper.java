package com.dusk.www.menu.mapper;

import com.dusk.www.menu.domain.Menu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 菜单查询
 */
@Repository
public interface MenuMapper {

        Menu getMenuById(Integer id);

        List<Menu> getMenuListByLevelAndStatus(@Param("level") Integer level, @Param("status")Integer status);

}
