package kr.co.hangsho.products.web.form;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm {

	private String packagename;
	private String bigcategory;
	private String middlecategory;
	private String smallcategory;
	private int deliveryfee;
	private long productdescription;
	private int discountratio;
	private MultipartFile imagefile;
	
	public String getPackagename() {
		return packagename;
	}
	public void setPackagename(String packagename) {
		this.packagename = packagename;
	}
	public String getBigcategory() {
		return bigcategory;
	}
	public void setBigcategory(String bigcategory) {
		this.bigcategory = bigcategory;
	}
	public String getMiddlecategory() {
		return middlecategory;
	}
	public void setMiddlecategory(String middlecategory) {
		this.middlecategory = middlecategory;
	}
	public String getSmallcategory() {
		return smallcategory;
	}
	public void setSmallcategory(String smallcategory) {
		this.smallcategory = smallcategory;
	}
	public int getDeliveryfee() {
		return deliveryfee;
	}
	public void setDeliveryfee(int deliveryfee) {
		this.deliveryfee = deliveryfee;
	}
	public long getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(long productdescription) {
		this.productdescription = productdescription;
	}
	public int getDiscountratio() {
		return discountratio;
	}
	public void setDiscountratio(int discountratio) {
		this.discountratio = discountratio;
	}
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}
	@Override
	public String toString() {
		return "ProductForm [packageName=" + packagename + ", bigcategory=" + bigcategory + ", middlecategory="
				+ middlecategory + ", smallcategory=" + smallcategory + ", deliveryfee=" + deliveryfee
				+ ", productdescription=" + productdescription + ", discountratio=" + discountratio + ", imagefile="
				+ imagefile + "]";
	}
}
