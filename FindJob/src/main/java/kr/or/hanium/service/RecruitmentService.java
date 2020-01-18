package kr.or.hanium.service;

import kr.or.hanium.model.Recruitment;
import kr.or.hanium.model.SearchRecruitmentDTO;
import kr.or.hanium.repository.RecruitmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecruitmentService {

    @Autowired
    private RecruitmentRepository recruitmentRepository;

    public List<Recruitment> getRecruitmentList() throws Exception {
        return recruitmentRepository.getRecruitmentList();
    }

    public List<Recruitment> getRecruitmentMainList() throws Exception {
        return recruitmentRepository.getRecruitmentMainList();
    }

    public List<Recruitment> getSearchRecruitmentList(SearchRecruitmentDTO search) throws Exception {
        return recruitmentRepository.getSearchRecruitmentList(search);
    }
}