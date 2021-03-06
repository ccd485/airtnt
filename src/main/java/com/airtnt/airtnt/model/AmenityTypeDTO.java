package com.airtnt.airtnt.model;

public class AmenityTypeDTO extends AbstractTypeDTO{
	private static final long serialVersionUID = 1L;
	
	private Integer propertyId;
	private Integer amenityId;
	
	public AmenityTypeDTO() {}
	public AmenityTypeDTO(String name, String isUse) {
		super(name, isUse);
	}
	public AmenityTypeDTO(String id, String name, String isUse) {
		super(id, name, isUse);
	}
	
	public Integer getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(Integer propertyId) {
		this.propertyId = propertyId;
	}
	public Integer getAmenityId() {
		return amenityId;
	}
	public void setAmenityId(Integer amenityId) {
		this.amenityId = amenityId;
	}
}
