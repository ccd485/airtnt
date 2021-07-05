package com.airtnt.airtnt.model;

import java.sql.Date;
import java.util.*;

public class PropertyTypeDTO {
	
	private int id;
	private String name;
	private char isUse;
	private Date regDate;
	private Date modDate;
	private List<SubPropertyTypeDTO> subPropertyTypes;
	
	// 검색 필터 input 태그 내에 속성을 설정하기 위한 필드. db랑 상관없음
	// 태그 속성값 하나만 넣을 때 사용
	private String tagAttribute;
	private String tagAttributeValue;
	
	// 태그 속성값 여러개 넣을 때 사용
	private Hashtable<String, String> tagAttributeMap;
	
	public PropertyTypeDTO() {};
	public PropertyTypeDTO(String name, String isUse) {
		this.name = name;
		this.isUse = isUse.charAt(0);
	}
	public PropertyTypeDTO(String id, String name, String isUse) {
		this.id = Integer.parseInt(id);
		this.name = name;
		this.isUse = isUse.charAt(0);
	}
	
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
	public char getIsUse() {
		return isUse;
	}
	public void setIsUse(char isUse) {
		this.isUse = isUse;
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
	
	public List<SubPropertyTypeDTO> getSubPropertyTypes() {
		return subPropertyTypes;
	}
	public void setSubPropertyTypes(List<SubPropertyTypeDTO> subPropertyTypes) {
		this.subPropertyTypes = subPropertyTypes;
	}
	
	// 태그 속성값 하나만 넣을 때 사용
	public String getTagAttribute() {
		return tagAttribute;
	}
	public void setTagAttribute(String tagAttribute) {
		this.tagAttribute = tagAttribute;
		this.tagAttributeValue = tagAttribute;
	}
	public void setTagAttribute(String tagAttribute, String tagAttributeValue) {
		this.tagAttribute = tagAttribute;
		this.tagAttributeValue = tagAttributeValue;
	}
	public String getTagAttributeValue() {
		return tagAttributeValue;
	}
	public void setTagAttributeValue(String tagAttributeValue) {
		this.tagAttributeValue = tagAttributeValue;
	}
	
	// 태그 속성값 여러개 넣을 때 사용
	public Hashtable<String, String> getTagAttributeMap() {
		return tagAttributeMap;
	}
	public void setTagAttributeMap(Hashtable<String, String> tagAttributeMap) {
		this.tagAttributeMap = tagAttributeMap;
	}
	public void putTagAttributeMapValue(String attribute, String value) {
		if(tagAttributeMap == null) {
			tagAttributeMap = new Hashtable<>();
		}
		tagAttributeMap.put(attribute, value);
	}
	public void putTagAttributeMapValue(String attribute) {
		putTagAttributeMapValue(attribute, attribute);
	}
	// el에선 ~~Type.tagAttributes로 forEach문 items를 설정하면 됨
	public Enumeration<String> getTagAttributes(){
		if(tagAttributeMap == null) {
			return null;
		}
		return tagAttributeMap.keys();
	}
	public String getTagAttributeMapValue(String attribute) {
		if(tagAttributeMap == null) {
			return null;
		}
		return tagAttributeMap.get(attribute);
	}
	public void removeTagAttributeMapValue(String attribute) {
		if(tagAttributeMap != null) {
			tagAttributeMap.remove(attribute);
			if(tagAttributeMap.size() < 1) {
				tagAttributeMap = null;
			}
		}
	}
	public void removeTagAttributeMap() {
		this.tagAttributeMap = null;
	}
	
	
	@Override
	public String toString() {
		return "PropertyTypeDTO [id=" + id + ", name=" + name + ", isUse=" + isUse + ", regDate=" + regDate
				+ ", modDate=" + modDate + ", subPropertyTypes=" + subPropertyTypes + "]";
	}
}