package kr.co.hangsho.products.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.categories.service.MiddleCategoryService;
import kr.co.hangsho.categories.vo.MiddleCategory;

@Controller
@RequestMapping("/product")
public class ProductAjaxController {

	@Autowired
	MiddleCategoryService middleCategoryService;
	
	@RequestMapping("/getMidCate.do")
	@ResponseBody
	public List<MiddleCategory> getMidCategoryByBigCaNum(int bigCateNum) {
		List<MiddleCategory> middleCategories = middleCategoryService.getMidCategoryByBigNum(bigCateNum);
		return middleCategories;
	}
}
