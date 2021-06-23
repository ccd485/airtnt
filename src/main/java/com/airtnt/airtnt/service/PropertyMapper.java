package com.airtnt.airtnt.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airtnt.airtnt.model.AmenityDTO;
import com.airtnt.airtnt.model.PropertyDTO;
import com.airtnt.airtnt.model.PropertyImageDTO;

@Service
public class PropertyMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PropertyDTO> searchPropertiesByAddress(String addressKey) {
		addressKey = "%" + addressKey + "%";
		return sqlSession.selectList("selectPropertiesByAddress", addressKey);
	}
	
	public PropertyDTO selectPropertyById(int id) {
		return sqlSession.selectOne("selectPropertyById", id);
	}
	
	public List<AmenityDTO> selectAmenities(int propertyId){
		List<AmenityDTO> amenities = sqlSession.selectList("selectAmenities", propertyId);
		for(AmenityDTO amenity : amenities) {
			System.out.println(amenity);
		}
		return amenities;
	}
	
	public List<PropertyImageDTO> selectPropertyImages(int propertyId){
		List<PropertyImageDTO> images = sqlSession.selectList("selectPropertyImages", propertyId);
		for(PropertyImageDTO image : images) {
			System.out.println(image);
		}
		return images;
	}
}
