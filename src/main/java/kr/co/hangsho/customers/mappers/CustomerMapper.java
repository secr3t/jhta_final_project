package kr.co.hangsho.customers.mappers;


import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.customers.vo.Customer;

@Mapper
public interface CustomerMapper {
	
	Customer getCustomer(String customerId);
	void addCustomer(Customer customer);
//	void updateCustomer(Customer customer);
	int getSeq();
}
