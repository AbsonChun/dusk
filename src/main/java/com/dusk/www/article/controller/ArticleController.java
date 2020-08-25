package com.dusk.www.article.controller;

import com.dusk.www.article.domain.Article;
import com.dusk.www.article.service.ArticleService;
import com.dusk.www.user.domain.User;
import com.dusk.www.utils.shiro.ShiroUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/articleController")
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "/getArticleById.do")
    public String getArticleById(HttpServletRequest request,ModelMap modelMap, Integer id,Integer type){
        if (id != null ){
            User user = (User) SecurityUtils.getSubject().getPrincipal();
            Article article = articleService.getArticleById(id,type,user.getId());
            modelMap.put("article",article);
            return "/article/articleDetail";
        }
        return "/error";
    }
}
