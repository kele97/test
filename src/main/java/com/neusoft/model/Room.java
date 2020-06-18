package com.neusoft.model;

public class Room {
	
	private String roomId;
	
	private String roomName;

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	@Override
	public String toString() {
		return "Room [roomId=" + roomId + ", roomName=" + roomName + "]";
	}
	
}
