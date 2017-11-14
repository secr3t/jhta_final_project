package kr.co.hangsho.products.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.hangsho.products.service.ProductService;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.products.web.form.ProductForm;

@Controller
@RequestMapping("/product")
public class ProductController {
	/*
	@Resource(name="imagePathMap")
	Map<String, String> imagePathMap;
	*/
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/form.do")
	public String form() {
		return "/products/register";
	}
	
	@RequestMapping("/add.do")
	public String add(ProductForm productsForm) {
		
		Product products = new Product();
		BeanUtils.copyProperties(productsForm, products);
		return "redirect:/list.do";
	}

	@RequestMapping("/list.do")
	public String list(Model model) {
//		List<Product> productList = productService.getProductList();
//		model.addAttribute("productList", productList);
		return "/products/list";
	}
	
	@RequestMapping("detail.do")
	public String detail(int productNo, Model model) {
		Product product = productService.getProductByProductNo(productNo);
		model.addAttribute("product", product);
		
		return "/products/";
	}
}
