package kr.or.hanium.controller;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.Recruitment;
import kr.or.hanium.service.CompanyService;
import kr.or.hanium.service.RecruitmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value="/recruitment")
public class RecruitmentController {

    private static final Logger logger = LoggerFactory.getLogger(RecruitmentController.class);

    @Autowired
    private RecruitmentService recruitmentService;

    @Autowired
    private CompanyService companyService;

    @GetMapping(value="")
    public String getRecruitments(Model model) throws Exception {
        List<Recruitment> recruitmentList = recruitmentService.getRecruitmentList();
        List<Company> companyList = companyService.getCompanyList();

        model.addAttribute("recruitmentList",recruitmentList);
        model.addAttribute("companyList", companyList);

        logger.info(recruitmentList.toString());
        return "recruitment";
    }
}
