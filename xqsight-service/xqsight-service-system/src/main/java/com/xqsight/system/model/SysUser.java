/**
 * 新启工作室
 * Copyright (c) 1994-2015 All Rights Reserved.
 */
package com.xqsight.system.model;

import com.xqsight.common.model.Model;

import java.io.Serializable;


/**
 * <p>用户信息表实体类</p>
 * <p>Table: sys_user - --> SysUser</p>
 * <p>用户信息表</p>
 * @since 2017-01-07 11:58:17
 * @author wangganggang
 */
public class SysUser extends Model{

	/** 主键 */
    private Long id;

    /** user_code - 用户编号 */
    private String userCode;
    /** cell_phone - 电话 */
    private String cellPhone;
    /** email - 邮箱 */
    private String email;
    /** qq - Qq */
    private String qq;
    /** wecaht - 微信 */
    private String wecaht;
    /** alipay - 支付宝 */
    private String alipay;
    /** interest - 兴趣 */
    private String interest;
    /** country - 国家 */
    private Integer country;
    /** province - 省份 */
    private Integer province;
    /** city - 县 */
    private Integer city;
    /** address - 详细地址 */
    private String address;

    public Long getId(){
        return this.id;
    }
    public void setId(Long id){
        this.id = id;
    }
	public String getUserCode(){
        return this.userCode;
    }
    public void setUserCode(String userCode){
        this.userCode = userCode;
    }
	public String getCellPhone(){
        return this.cellPhone;
    }
    public void setCellPhone(String cellPhone){
        this.cellPhone = cellPhone;
    }
	public String getEmail(){
        return this.email;
    }
    public void setEmail(String email){
        this.email = email;
    }
	public String getQq(){
        return this.qq;
    }
    public void setQq(String qq){
        this.qq = qq;
    }
	public String getWecaht(){
        return this.wecaht;
    }
    public void setWecaht(String wecaht){
        this.wecaht = wecaht;
    }
	public String getAlipay(){
        return this.alipay;
    }
    public void setAlipay(String alipay){
        this.alipay = alipay;
    }
	public String getInterest(){
        return this.interest;
    }
    public void setInterest(String interest){
        this.interest = interest;
    }
	public Integer getCountry(){
        return this.country;
    }
    public void setCountry(Integer country){
        this.country = country;
    }
	public Integer getProvince(){
        return this.province;
    }
    public void setProvince(Integer province){
        this.province = province;
    }
	public Integer getCity(){
        return this.city;
    }
    public void setCity(Integer city){
        this.city = city;
    }
	public String getAddress(){
        return this.address;
    }
    public void setAddress(String address){
        this.address = address;
    }

    @Override
    public Serializable getPK() {
        return this.id;
    }
}