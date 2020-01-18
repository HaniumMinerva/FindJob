package kr.or.hanium.service;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.Recruitment;
import kr.or.hanium.model.SearchRecruitmentDTO;
import kr.or.hanium.repository.CompanyRepository;
import kr.or.hanium.repository.RecruitmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    public List<Company> getCompanyList() throws Exception {
        return companyRepository.getCompanyList();
    }

    public List<Company> getCompanyMainList() throws Exception {
        return companyRepository.getCompanyMainList();
    }

    public List<Company> getSearchCompanyList(SearchRecruitmentDTO search) throws Exception {
        return companyRepository.getSearchCompanyList(search);
    }
}
