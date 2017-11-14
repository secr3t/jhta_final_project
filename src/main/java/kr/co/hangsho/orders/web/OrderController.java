package kr.co.hangsho.orders.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.deliveries.vo.Delivery;
import kr.co.hangsho.orders.service.OrderService;
import kr.co.hangsho.orders.vo.Order;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping("/orderPage.do")
	public String orderPage(Model model) {
		
		//List<> aa =  xxxService.getDeliveryByUserId();
		//model.addAttribute("aa", aa);

//		model.addAttribute("orders", orderService.getAllOrders());
		return "/order";
	}
	
	@RequestMapping("/addOrder.do")
	public String addOrder(String name, String phonenumber, String address, String memo, int deliveryId) {
		
		Order order = new Order();
		
		//Delivery address1 = xxxService.getDeliveryById(deliveryId);
		
		
		
		
		order.setCondition("배송대기");
		//order.setCustomer(customer);
		//order.setDelivery(address1);
		
		return null;
	}
	
	
}
