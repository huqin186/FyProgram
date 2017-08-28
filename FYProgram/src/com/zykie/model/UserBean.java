package com.zykie.model;

import java.sql.Timestamp;

public class UserBean {
	
	private int UserId;
	private String UserCode;
	private String UserName;
	private String UPassword;
	private int RoleId;
	private int Sex;
	private String Telephone;
	private int CreatedId;
	private Timestamp CreatedDate;
	private int ModifiedId;
	private Timestamp ModifiedDate;
	private int Status;
	private String Remark;
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserCode() {
		return UserCode;
	}
	public void setUserCode(String userCode) {
		UserCode = userCode;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUPassword() {
		return UPassword;
	}
	public void setUPassword(String uPassword) {
		UPassword = uPassword;
	}
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public int getSex() {
		return Sex;
	}
	public void setSex(int sex) {
		Sex = sex;
	}
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String telephone) {
		Telephone = telephone;
	}
	public int getCreatedId() {
		return CreatedId;
	}
	public void setCreatedId(int createdId) {
		CreatedId = createdId;
	}
	public Timestamp getCreatedDate() {
		return CreatedDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		CreatedDate = createdDate;
	}
	public int getModifiedId() {
		return ModifiedId;
	}
	public void setModifiedId(int modifiedId) {
		ModifiedId = modifiedId;
	}
	public Timestamp getModifiedDate() {
		return ModifiedDate;
	}
	public void setModifiedDate(Timestamp modifiedDate) {
		ModifiedDate = modifiedDate;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	
	
	

}
