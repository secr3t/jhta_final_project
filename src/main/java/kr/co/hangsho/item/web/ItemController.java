package kr.co.hangsho.item.web;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.hangsho.item.service.ItemService;
import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.item.web.form.ItemForm;

@Controller
@RequestMapping("/item")
public class ItemController {

	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/form.do")
	public String form() {
		return "register";
	}
	
	public String add(ItemForm itemForm) {
		
		Item item= new Item();
		BeanUtils.copyProperties(itemForm, item);
		
		return "redirect:/list.do";
	}
}
