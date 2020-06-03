package com.neusoft.model;

import java.util.Date;

public class Record {
	private int recordId;
	
	private String roomId;
	
	private Date date;
	
	private int startTime;
	
	private int endTime;
	
	private String subscriber;
	
	private String phone;
	
	private String email;
	
	private int reason;
	
	private String remarks;
	
	private String registerId;
	
	private String updateId;
	
	private Date registerDate;
	
	private Date updateDate;

	public int getRecordId() {
		return recordId;
	}

	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getStartTime() {
		return startTime;
	}

	public void setStartTime(int startTime) {
		this.startTime = startTime;
	}

	public int getEndTime() {
		return endTime;
	}

	public void setEndTime(int endTime) {
		this.endTime = endTime;
	}

	public String getSubscriber() {
		return subscriber;
	}

	public void setSubscriber(String subscriber) {
		this.subscriber = subscriber;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getReason() {
		return reason;
	}

	public void setReason(int reason) {
		this.reason = reason;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getRegisterId() {
		return registerId;
	}

	public void setRegisterId(String registerId) {
		this.registerId = registerId;
	}

	public String getUpdateId() {
		return updateId;
	}

	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "Record [recordId=" + recordId + ", roomId=" + roomId + ", date=" + date + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", subscriber=" + subscriber + ", phone=" + phone + ", email=" + email
				+ ", reason=" + reason + ", remarks=" + remarks + ", registerId=" + registerId + ", updateId="
				+ updateId + ", registerDate=" + registerDate + ", updateDate=" + updateDate + "]";
	}
	
	

}
