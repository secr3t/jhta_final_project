package kr.co.hangsho.company.service;

import java.util.List;

import kr.co.hangsho.company.vo.Company;

public interface CompanyService {
	
	void addNewCompany(Company company);
	void modifyCompanyInfo(int companyId);
	List<Company> getAllCompanies();
}
