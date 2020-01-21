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

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value="/logout")
public class LogoutController {

    @Autowired
    RecruitmentService recruitmentService;

    @Autowired
    CompanyService companyService;

    private static final Logger logger = LoggerFactory.getLogger(LogoutController.class);

    @GetMapping(value="")
    public String logout(HttpSession httpSession, Model model) throws Exception
    {
        httpSession.invalidate();

        List<Recruitment> recruitmentList = recruitmentService.getRecruitmentMainList();
        List<Company> companyList = companyService.getCompanyMainList();

        model.addAttribute("recruitmentMainList",recruitmentList);
        model.addAttribute("companyMainList",companyList);

        return "index";
    }
}
