package com.fuyuan.entity;

public class ServiceBean extends Page{
	
	private int serviceId;
	private String serviceName;
	private String centerType;
	
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getCenterType() {
		return centerType;
	}
	public void setCenterType(String centerType) {
		this.centerType = centerType;
	}
	
	
}
