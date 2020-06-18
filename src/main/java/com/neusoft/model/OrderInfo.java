package com.neusoft.model;

public class OrderInfo {
	
	private String roomName;
	
	private String startTime;
	
	private String endTime;
	
	private String subscriber;
	
	private String reason;
	
	private String phone;

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getSubscriber() {
		return subscriber;
	}

	public void setSubscriber(String subscriber) {
		this.subscriber = subscriber;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "OrderInfo [roomName=" + roomName + ", startTime=" + startTime + ", endTime=" + endTime + ", subscriber="
				+ subscriber + ", reason=" + reason + ", phone=" + phone + "]";
	}


}
