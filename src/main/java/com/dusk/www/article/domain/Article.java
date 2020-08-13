package com.dusk.www.article.domain;


import java.util.Date;

public class Article {

    public final static Integer ARTICLE_STATUS_NORMAL = 1;
    public final static Integer ARTICLE_STATUS_DISABLE = 0;

    private Integer id;  //id
    private String title;//文章标题
    private String key;//文章关键词
    private String content;//文章内容
    private Integer click;//点击量
    private Integer status;//状态
    private Integer createUser;//创建人id
    private String author;//创建人姓名
    private Date createTime;//创建时间
    private Date modifyTime;//修改时间


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getClick() {
        return click;
    }

    public void setClick(Integer click) {
        this.click = click;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
