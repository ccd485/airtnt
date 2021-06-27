package com.airtnt.airtnt.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airtnt.airtnt.model.AmenityDTO;
import com.airtnt.airtnt.model.BookingDTO;
import com.airtnt.airtnt.model.PropertyDTO;
import com.airtnt.airtnt.model.ImageDTO;

@Service
public class PropertyMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PropertyDTO> searchPropertiesByAddress(String addressKey) {
		addressKey = "%" + addressKey + "%";
		List<PropertyDTO> properties = sqlSession.selectList("searchPropertiesByAddress", addressKey);
		for(PropertyDTO property : properties) {
			int propertyId = property.getId();
			
//			List<ImageDTO> images = selectRoomImages(propertyId);
//			property.setImages(images);
			
//			List<AmenityDTO> amenities = selectAmenities(propertyId);
//			property.setAmenities(amenities);
		}
		return properties;
	}
	
	public PropertyDTO selectPropertyById(int propertyId) {
		PropertyDTO property = sqlSession.selectOne("selectPropertyById", propertyId);
		
//		List<ImageDTO> images = selectRoomImages(propertyId);
//		property.setImages(images);
		
//		List<AmenityDTO> amenities = selectAmenities(propertyId);
//		property.setAmenities(amenities);
		for(ImageDTO image : property.getImages()) {
			System.out.println(image);
		}
		for(AmenityDTO amenity : property.getAmenities()) {
			System.out.println(amenity);
		}
		
		return property;
	}
	
	public List<ImageDTO> selectRoomImages(int propertyId){
		List<ImageDTO> images = sqlSession.selectList("selectRoomImages", propertyId);
		for(ImageDTO image : images) {
			System.out.println(image);
		}
		return images;
	}
	
	public List<AmenityDTO> selectAmenities(int propertyId){
		List<AmenityDTO> amenities = sqlSession.selectList("selectAmenities", propertyId);
		for(AmenityDTO amenity : amenities) {
			System.out.println(amenity);
		}
		return amenities;
	}
	
	public int insertBooking(BookingDTO booking) {
		return sqlSession.insert("insertBooking", booking);
	}
	
}
