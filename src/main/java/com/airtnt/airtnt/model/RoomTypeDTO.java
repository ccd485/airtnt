package com.airtnt.airtnt.model;

public class RoomTypeDTO {
	private int id;	// fk
	private String name;
	private String isUse;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIsUse() {
		return isUse;
	}
	public void setIsUSe(String isUse) {
		this.isUse = isUse;
	}
	@Override
	public String toString() {
		return "RoomTypeDTO [id=" + id + ", name=" + name + "]";
	}
}
