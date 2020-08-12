package com.dusk.www.article.controller;

import com.dusk.www.article.domain.Article;
import com.dusk.www.article.service.ArticleService;
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
    public String getArticleById(HttpServletRequest request,ModelMap modelMap, Integer id){
        if (id != null ){
            Article article = articleService.getArticleById(id);
            modelMap.put("article",article);
            return "/article/articleDetail";
        }
        return "/error";
    }
}
