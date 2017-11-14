package kr.co.hangsho.products.vo;

import java.util.Date;

import kr.co.hangsho.customers.vo.Customer;

public class ProductQue {

	private int id;
	private String question;
	private Product product;
	private Customer customer;
	private Date createDate;
	private String deleted;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	@Override
	public String toString() {
		return "productQue [id=" + id + ", question=" + question + ", productId=" + product + ", customer=" + customer
				+ ", createDate=" + createDate + ", deleted=" + deleted + "]";
	}
}
