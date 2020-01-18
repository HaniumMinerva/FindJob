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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private RecruitmentService recruitmentService;

    @Autowired
    private CompanyService companyService;

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String home(Model model) throws Exception{
        List<Recruitment> recruitmentList = recruitmentService.getRecruitmentMainList();
        List<Company> companyList = companyService.getCompanyMainList();

        model.addAttribute("recruitmentMainList",recruitmentList);
        model.addAttribute("companyMainList",companyList);

        logger.info(companyList.toString());

        return "index";
    }
}
