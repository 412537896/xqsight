/**
 * 新启工作室
 * Copyright (c) 1994-2015 All Rights Reserved.
 */
package com.xqsight.system.model;

import com.xqsight.common.model.UserBaseModel;

import java.io.Serializable;
import java.time.LocalDateTime;


/**
 * <p>用户登陆表实体类</p>
 * <p>Table: sys_login - --> SysLogin</p>
 * <p>用户登陆表</p>
 * @since 2017-01-07 11:57:26
 * @author wangganggang
 */
public class SysLogin extends UserBaseModel{

	/** 主键 */
    private Long id;

    /** 所属部门 */
    private Long departmentId;
    /** login_id - 登陆名称 */
    private String loginId;
    /** user_name - 昵称 */
    private String userName;
    /** real_name - 真实姓名 */
    private String realName;
    /** password - 登陆密码 */
    private String password;
    /** sex - 性别 0:未知 1:男 2:女 */
    private Integer sex;
    /** user_born - 生日 */
    private LocalDateTime userBorn;
    /** age - 年龄 */
    private Integer age;
    /** from_source - 来源 WECHAT  PC  MOBILE */
    private String fromSource;
    /** img_url - 图片地址 */
    private String imgUrl;
    /** salt - 随机数 */
    private String salt;

    public Long getId(){
        return this.id;
    }
    public void setId(Long id){
        this.id = id;
    }
    public Long getDepartmentId() {
        return departmentId;
    }
    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }
    public String getLoginId(){
        return this.loginId;
    }
    public void setLoginId(String loginId){
        this.loginId = loginId;
    }
	public String getUserName(){
        return this.userName;
    }
    public void setUserName(String userName){
        this.userName = userName;
    }
	public String getRealName(){
        return this.realName;
    }
    public void setRealName(String realName){
        this.realName = realName;
    }
	public String getPassword(){
        return this.password;
    }
    public void setPassword(String password){
        this.password = password;
    }
	public Integer getSex(){
        return this.sex;
    }
    public void setSex(Integer sex){
        this.sex = sex;
    }
	public LocalDateTime getUserBorn(){
        return this.userBorn;
    }
    public void setUserBorn(LocalDateTime userBorn){
        this.userBorn = userBorn;
    }
	public Integer getAge(){
        return this.age;
    }
    public void setAge(Integer age){
        this.age = age;
    }
	public String getFromSource(){
        return this.fromSource;
    }
    public void setFromSource(String fromSource){
        this.fromSource = fromSource;
    }
	public String getImgUrl(){
        return this.imgUrl;
    }
    public void setImgUrl(String imgUrl){
        this.imgUrl = imgUrl;
    }
	public String getSalt(){
        return this.salt;
    }
    public void setSalt(String salt){
        this.salt = salt;
    }

    @Override
    public Serializable getPK() {
        return this.id;
    }
}