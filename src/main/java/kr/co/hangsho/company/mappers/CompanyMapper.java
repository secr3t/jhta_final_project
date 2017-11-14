package kr.co.hangsho.company.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.company.vo.Company;

@Mapper
public interface CompanyMapper {

	//int getSeq();
	void addCompany(Company company);
	void modifyCompany(int companyIds);
	List<Company> getCompanies();
	
}
