package kr.or.hanium.repository;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.SearchRecruitmentDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CompanyRepository {

    @Autowired
    private SqlSession sqlSession;

    private static final String namespace = "kr.or.hanium.mapper.CompanyMapper";

    public List<Company> getCompanyList() throws Exception {
        return sqlSession.selectList(namespace + ".select");
    }

    public List<Company> getCompanyMainList() throws Exception {
        return sqlSession.selectList(namespace + ".selectMain");
    }

    public List<Company> getSearchCompanyList(SearchRecruitmentDTO search) throws Exception {
        return sqlSession.selectList(namespace + ".selectSearch", search);
    }
}
