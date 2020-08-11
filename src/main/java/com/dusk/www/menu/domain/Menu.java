package com.dusk.www.menu.domain;

public class Menu {
    public final static Integer MENU_LEVEL_ONE = 1;
    public final static Integer MENU_LEVEL_TWO = 2;
    public final static Integer MENU_LEVEL_THREE = 3;

    public final static Integer MENU_STATUS_NORMAL = 1;
    public final static Integer MENU_STATUS_DISABLE = 0;

    private Integer id;
    private String name;
    private String code;
    private Integer level;
    private Integer parentId;
    private String url;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
