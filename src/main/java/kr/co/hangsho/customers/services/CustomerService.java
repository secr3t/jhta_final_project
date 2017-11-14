package kr.co.hangsho.customers.services;


import kr.co.hangsho.customers.vo.Customer;

public interface CustomerService {

	void addNewCustomer(Customer customer);
//	void updateCustomerInfo(Customer customer);
	Customer getCustomerById(String id);
}
