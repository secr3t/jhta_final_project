package kr.co.hangsho.company.web;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.hangsho.company.service.CompanyService;
import kr.co.hangsho.company.vo.Company;
import kr.co.hangsho.company.vo.CompanyForm;
import kr.co.hangsho.company.vo.CompanyInfoForm;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;

	@RequestMapping("/index.do")
	public String main() {
		return "/company/index";
	}
	
	@RequestMapping("/register.do")
	public String form() {		
		return "/company/register";
	}
	
	@RequestMapping("/add.do")
	public String add(CompanyForm companyForm) {
		
		
		Company company = new Company();
		BeanUtils.copyProperties(companyForm, company);
		/*
		String encryptPassword = DigestUtils.md5DigestAsHex(company.getPassword().getBytes());
		company.setPassword(encryptPassword);
		*/
		companyService.addNewCompany(company);
		
		return "redirect:/index.do";
	}
	
	@RequestMapping("/modify.do")
	public String modify(CompanyInfoForm infoForm) {
		
		
		return "redirect:/index.do";
	}
	
}
