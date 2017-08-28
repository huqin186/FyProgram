package com.zykie.model;

import java.sql.Timestamp;

public class CustomerBean {
	
	private int customerId;
	private String telephone;
	private String customerName;
	private int sourceId;
	private String address;
	private String remark;
	private int ReceiverId;
	private String ReceiverName;
	private int createdId;
	private Timestamp createdDate;
	private int modifiedId;
	private Timestamp modifiedDate;
	private Timestamp deletedDate;
	private Timestamp dueDate;
	private int status;
	private int hospitalId;
	private String hospitalName;
	private Timestamp contactTime;
	
	
	public Timestamp getContactTime() {
		return contactTime;
	}
	public void setContactTime(Timestamp contactTime) {
		this.contactTime = contactTime;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getSourceId() {
		return sourceId;
	}
	public void setSourceId(int sourceId) {
		this.sourceId = sourceId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getReceiverId() {
		return ReceiverId;
	}
	public void setReceiverId(int receiverId) {
		ReceiverId = receiverId;
	}
	public String getReceiverName() {
		return ReceiverName;
	}
	public void setReceiverName(String receiverName) {
		ReceiverName = receiverName;
	}
	public int getCreatedId() {
		return createdId;
	}
	public void setCreatedId(int createdId) {
		this.createdId = createdId;
	}
	public Timestamp getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	public int getModifiedId() {
		return modifiedId;
	}
	public void setModifiedId(int modifiedId) {
		this.modifiedId = modifiedId;
	}
	public Timestamp getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Timestamp modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public Timestamp getDeletedDate() {
		return deletedDate;
	}
	public void setDeletedDate(Timestamp deletedDate) {
		this.deletedDate = deletedDate;
	}
	public Timestamp getDueDate() {
		return dueDate;
	}
	public void setDueDate(Timestamp dueDate) {
		this.dueDate = dueDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getHospitalId() {
		return hospitalId;
	}
	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	@Override
	public String toString() {
		return "CustomerBean [customerId=" + customerId + ", telephone="
				+ telephone + ", customerName=" + customerName + ", sourceId="
				+ sourceId + ", address=" + address + ", remark=" + remark
				+ ", ReceiverId=" + ReceiverId + ", ReceiverName="
				+ ReceiverName + ", createdId=" + createdId + ", createdDate="
				+ createdDate + ", modifiedId=" + modifiedId
				+ ", modifiedDate=" + modifiedDate + ", deletedDate="
				+ deletedDate + ", dueDate=" + dueDate + ", status=" + status
				+ ", hospitalId=" + hospitalId + ", hospitalName="
				+ hospitalName + "]";
	}
	

}
