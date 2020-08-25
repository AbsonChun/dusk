package com.dusk.www.article.mapper;

import com.dusk.www.article.domain.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 文章article的查询
 */
@Repository
public interface ArticleMapper {

    Article getArticleById(@Param("id") Integer id,@Param("type") Integer type,@Param("user_id") Integer user_id);

    /**
     * @param status 状态
     * @param pageNum 页数 从0 开始
     * @param pageCount 每页条数
     * @return
     */
    List<Article> getArticleListByStatusAndPageNum(@Param("status") Integer status, @Param("pageNum") Integer pageNum, @Param("pageCount") Integer pageCount);

}
