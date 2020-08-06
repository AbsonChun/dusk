package com.dusk.www.index.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/indexController")
public class IndexController {

    @Value("${com.dusk.name}")
    private String name;

        @RequestMapping(value="/index.do")
    public String index(ModelMap map){
        map.put("name",name);
        return "/index";
    }

    @RequestMapping(value="/getIndexMap.do")
    @ResponseBody
    public String getIndexMap(){
        Map<String,String> map = new HashMap<String,String>();
        map.put("id","0001");
        map.put("name","张三");
        map.put("age","18");
        return JSON.toJSONString(map);
    }

}
