package kr.or.hanium.controller;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.Recruitment;
import kr.or.hanium.model.SearchRecruitmentDTO;
import kr.or.hanium.service.CompanyService;
import kr.or.hanium.service.RecruitmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value="/searchRecruitment")
public class SearchRecruitmentController {

    @Autowired
    private RecruitmentService recruitmentService;

    @Autowired
    private CompanyService companyService;

    private static final Logger logger = LoggerFactory.getLogger(SearchRecruitmentController.class);

    @GetMapping(value="")
    public String getSearchRecruitment() {
        return "searchRecruitment";
    }

    @PostMapping(value="")
    public String postSearchRecruitment(@ModelAttribute(value="search") SearchRecruitmentDTO search, Model model) throws Exception {

        if(search.getWork_location().equals("전국")) { search.setWork_location(null); }

        if(search.getRecruitment_school().equals("전체")) { search.setRecruitment_school(null); }

        if(search.getCompany_scale().equals("전체")) { search.setCompany_scale(null); }

        if(search.getRecruitment_form().equals("전체")) { search.setRecruitment_form(null); }

        List<Recruitment> recruitmentList = recruitmentService.getSearchRecruitmentList(search);
        List<Company> companyList = companyService.getSearchCompanyList(search);

        model.addAttribute("searchRecruitmentList", recruitmentList);
        model.addAttribute("searchCompanyList", companyList);

        return "searchRecruitment";
    }
}
