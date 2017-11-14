package kr.co.hangsho.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.orders.mappers.OrderMapper;
import kr.co.hangsho.orders.vo.Order;
import kr.co.hangsho.products.service.ProductService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public void addNewOrder(Order order) {
		order.setId(orderMapper.getSeq());
		
	}

	@Override
	public List<Order> getAllOrders() {
		return orderMapper.getOrders();
	}

	@Override
	public Order getOrderById(int id) {
		// TODO Auto-generated method stub
		return orderMapper.getOrder(id);
	}

	@Override
	public List<Order> getOrdersByCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return orderMapper.getOrdersByCustomer(customer);
	}
}
