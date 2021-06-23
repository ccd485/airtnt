package com.airtnt.airtnt.model;

public class AmenityDTO {
	
	private int id;
	private int propertyId;
	private int amenityTypeId;
	private String name;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}
	public int getAmenityTypeId() {
		return amenityTypeId;
	}
	public void setAmenityTypeId(int amenityTypeId) {
		this.amenityTypeId = amenityTypeId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "AmenityDTO [id=" + id + ", propertyId=" + propertyId + ", amenityTypeId=" + amenityTypeId + ", name="
				+ name + "]";
	}
}