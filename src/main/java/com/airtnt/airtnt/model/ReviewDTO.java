package com.airtnt.airtnt.model;


import java.sql.Date;

public class ReviewDTO {
	private Integer id;
	private Integer property_id;
	private Integer booking_id;
	private String writer_id;
	private Integer rating;
	private String content;
	private String content_host;
	private Date content_host_date;
	private Date reg_date;
	private Date mod_date;
	
	//view에서 담을 데이터
	private String property_name;
	private String property_address;
	private Integer price;
	private Date check_in_date;
	private Date check_out_date;
	private String path;
	private String num;
	
	// mybatis result map 쓸거
	private MemberDTO writer;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getProperty_id() {
		return property_id;
	}
	public void setProperty_id(Integer property_id) {
		this.property_id = property_id;
	}
	public Integer getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public Integer getRating() {
		return rating;
	}
	public void setRating(Integer rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent_host() {
		return content_host;
	}
	public void setContent_host(String content_host) {
		this.content_host = content_host;
	}
	public Date getContent_host_date() {
		return content_host_date;
	}
	public void setContent_host_date(Date content_host_date) {
		this.content_host_date = content_host_date;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getMod_date() {
		return mod_date;
	}
	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
	public String getProperty_name() {
		return property_name;
	}
	public void setProperty_name(String property_name) {
		this.property_name =property_name;
	}
	public String getProperty_address() {
		return property_address;
	}
	public void setProperty_address(String property_address) {
		this.property_address = property_address;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Date getCheck_in_date() {
		return check_in_date;
	}
	public void setCheck_in_date(Date check_in_date) {
		this.check_in_date = check_in_date;
	}
	public Date getCheck_out_date() {
		return check_out_date;
	}
	public void setCheck_out_date(Date check_out_date) {
		this.check_out_date = check_out_date;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	public MemberDTO getWriter() {
		return writer;
	}
	public void setMember(MemberDTO writer) {
		this.writer = writer;
	}
}
