package com.dusk.www.menu.service;

import com.dusk.www.menu.domain.Menu;
import com.dusk.www.menu.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuService {

    @Autowired
    private MenuMapper menuMapper;

    public Menu getMenuById(Integer id){
        return menuMapper.getMenuById(id);
    }

    public List<Menu> getMenuListByLevelAndStatus(Integer level, Integer status){
        return menuMapper.getMenuListByLevelAndStatus(level,status);
    }
}
