package kr.co.hangsho.customers.vo;

public class Customer {

	private int id;
	private String name;
	private String customername;
	private String password;
	private String phonenumber;
	private String mainaddress;
	private String detailaddress;
	private Integer point;
	private String postalcode;
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
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getMainaddress() {
		return mainaddress;
	}
	public void setMainaddress(String mainaddress) {
		this.mainaddress = mainaddress;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", customername=" + customername + ", password=" + password
				+ ", phonenumber=" + phonenumber + ", mainaddress=" + mainaddress + ", detailaddress=" + detailaddress
				+ ", point=" + point + ", postalcode=" + postalcode + "]";
	}
	
	
	
}
