package kr.or.hanium.repository;

import kr.or.hanium.model.Recruitment;
import kr.or.hanium.model.SearchRecruitmentDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecruitmentRepository {

    @Autowired
    private SqlSession sqlSession;

    private static final String namespace = "kr.or.hanium.mapper.RecruitmentMapper";

    public List<Recruitment> getRecruitmentList() throws Exception {
        return sqlSession.selectList(namespace + ".select");
    }

    public List<Recruitment> getRecruitmentMainList() throws Exception {
        return sqlSession.selectList(namespace + ".selectMain");
    }

    public List<Recruitment> getSearchRecruitmentList(SearchRecruitmentDTO search) throws Exception {
        return sqlSession.selectList(namespace + ".selectSearch", search);
    }
}
