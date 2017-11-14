package kr.co.hangsho.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.products.mappers.ProductQueMapper;
import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

@Service
public class ProductQueServiceImpl implements ProductQueService {

	@Autowired
	ProductQueMapper productQueMapper;
	
	@Override
	public void addProductQue(ProductQue productQue) {
		productQueMapper.addProductQue(productQue);
	}
	
	@Override
	public List<ProductQue> getAllProductQues(Criteria criteria) {
		return productQueMapper.getProductQues(criteria);
	}
	
	@Override
	public ProductQue getProductQueDetail(int id) {
		return productQueMapper.getProductQueById(id);
	}
	
}
