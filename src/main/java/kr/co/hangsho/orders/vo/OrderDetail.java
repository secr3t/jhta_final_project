package kr.co.hangsho.orders.vo;

import kr.co.hangsho.deliveries.vo.Delivery;
import kr.co.hangsho.products.vo.ProductDetail;

public class OrderDetail {

	private Order order;
	private ProductDetail productDetail;
	private int orderQuantity;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public ProductDetail getProductDetail() {
		return productDetail;
	}
	public void setProductDetail(ProductDetail productDetail) {
		this.productDetail = productDetail;
	}
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	@Override
	public String toString() {
		return "OrderDetail [order=" + order + ", productDetail=" + productDetail + ", orderQuantity=" + orderQuantity
				+ "]";
	}
	
	
}
