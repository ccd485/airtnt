package com.airtnt.airtnt.model;

import java.sql.Date;

public class ImageDTO {
	
	private Integer id;
	private Integer propertyId;
	private Character isMain;
	private String path;
	private Long fileSize;
	private Date regDate;
	private Date modDate;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(Integer propertyId) {
		this.propertyId = propertyId;
	}
	public Character getIsMain() {
		return isMain;
	}
	public void setIsMain(Character isMain) {
		this.isMain = isMain;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	
	@Override
	public String toString() {
		return "ImageDTO [id=" + id + ", propertyId=" + propertyId + ", isMain=" + isMain + ", path=" + path
				+ ", fileSize=" + fileSize + ", regDate=" + regDate + ", modDate=" + modDate + "]";
	}
}
