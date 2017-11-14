package kr.co.hangsho.coupons.vo;

import java.util.Date;

import kr.co.hangsho.customers.vo.Customer;

public class Coupon {

	private int id;
	private String code;
	private boolean used;
	private int discount;
	private Date expireDate;
	private Customer customer;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public boolean isUsed() {
		return used;
	}
	public void setUsed(boolean used) {
		this.used = used;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Coupon [id=" + id + ", code=" + code + ", used=" + used + ", discount=" + discount + ", expireDate="
				+ expireDate + ", customer=" + customer + "]";
	}

	
	
}
