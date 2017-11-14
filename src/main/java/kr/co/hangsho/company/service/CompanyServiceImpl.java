package kr.co.hangsho.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.hangsho.company.mappers.CompanyMapper;
import kr.co.hangsho.company.vo.Company;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	@Override
	public void addNewCompany(Company company) {
		companyMapper.addCompany(company);
	}

	@Override
	public void modifyCompanyInfo(int companyId) {
		companyMapper.modifyCompany(companyId);
	}

	@Override
	public List<Company> getAllCompanies() {
		return companyMapper.getCompanies();
	}
}
