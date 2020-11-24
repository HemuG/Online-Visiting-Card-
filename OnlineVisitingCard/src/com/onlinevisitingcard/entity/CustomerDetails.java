package com.onlinevisitingcard.entity;

public class CustomerDetails {
	private String name;
	private String email;
	private String address;
	private String mobileno;
	private String company;
	private int copise;
	private int price;
	private String website;
	private String work;
	private String age;
	private String weight;
	private String height;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getCopise() {
		return copise;
	}
	public void setCopise(int copise) {
		this.copise = copise;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "CustomerDetails [name=" + name + ", email=" + email + ", address=" + address + ", mobileno=" + mobileno
				+ ", company=" + company + ", copise=" + copise + ", price=" + price + ", website=" + website
				+ ", work=" + work + ", age=" + age + ", weight=" + weight + ", height=" + height + "]";
	}
	
	
	
}
