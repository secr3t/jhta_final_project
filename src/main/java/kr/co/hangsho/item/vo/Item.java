package kr.co.hangsho.item.vo;

import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.products.vo.Product;

public class Item {

	private int id;
	private String option;
	private int initialQuantity;
	private int saledQuantity;
	private Product product;
	private int salePrice;
	private Integer originPrice;
	private Image image;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public int getInitialQuantity() {
		return initialQuantity;
	}
	public void setInitialQuantity(int initialQuantity) {
		this.initialQuantity = initialQuantity;
	}
	public int getSaledQuantity() {
		return saledQuantity;
	}
	public void setSaledQuantity(int saledQuantity) {
		this.saledQuantity = saledQuantity;
	}
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public Integer getOriginPrice() {
		return originPrice;
	}
	public void setOriginPrice(Integer originPrice) {
		this.originPrice = originPrice;
	}
	public Image getImage() {
		return image;
	}
	public void setImage(Image image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", option=" + option + ", initialQuantity=" + initialQuantity + ", saledQuantity="
				+ saledQuantity + ", product=" + product + ", salePrice=" + salePrice + ", originPrice=" + originPrice
				+ ", image=" + image + "]";
	}
	
}
