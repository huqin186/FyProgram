package com.zykie.model;

import java.sql.Timestamp;

public class RoleBean {

	private int RoleId;
	private String RoleName;
	private int Status;
	private String Remark;
	private int CreatedId;
	private Timestamp CreatedDate;
	private int ModifiedId;
	private Timestamp ModifiedDate;
	private Timestamp DeletedDate;
	public int getRoleId() {
		return RoleId;
	}
	public void setRoleId(int roleId) {
		RoleId = roleId;
	}
	public String getRoleName() {
		return RoleName;
	}
	public void setRoleName(String roleName) {
		RoleName = roleName;
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
	public Timestamp getDeletedDate() {
		return DeletedDate;
	}
	public void setDeletedDate(Timestamp deletedDate) {
		DeletedDate = deletedDate;
	}
	
	
	
}
