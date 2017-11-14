package kr.co.hangsho.products.service;

import java.util.List;

import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

public interface ProductQueService {

	void addProductQue(ProductQue productQue);
	List<ProductQue> getAllProductQues(Criteria criteria);
	ProductQue getProductQueDetail(int id);
}
