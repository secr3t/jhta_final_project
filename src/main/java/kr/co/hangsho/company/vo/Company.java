package kr.co.hangsho.company.vo;

public class Company {

	private int no;
	private String name;
	private String id;
	private String password;
	private String mainaddress;
	private String detailaddress;
	private String ceonumber;
	private String phonenumber;

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getCeonumber() {
		return ceonumber;
	}
	public void setCeonumber(String ceonumber) {
		this.ceonumber = ceonumber;
	}
	@Override
	public String toString() {
		return "Company [no=" + no + ", name=" + name + ", id=" + id + ", password=" + password + ", mainaddress="
				+ mainaddress + ", detailaddress=" + detailaddress + ", ceonumber=" + ceonumber + ", phonenumber="
				+ phonenumber + "]";
	}

}
