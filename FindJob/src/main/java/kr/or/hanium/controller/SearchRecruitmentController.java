package kr.or.hanium.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/searchRecruitment")
public class SearchRecruitmentController {

    @Autowired
    private RecruitmentService recruitmentService;

    private static final Logger logger = LoggerFactory.getLogger(SearchRecruitmentController.class);

    @GetMapping(value="")
    public String getSearchRecruitment() {
        return "searchRecruitment";
    }

    @GetMapping(value="/result")
    public String getResultSearchRecruitment(@ModelAttribute(value="search") SearchRecruitmentDTO search, Model model) throws Exception {

        if(search.getWork_location().equals("전체") || search.getWork_location().equals(""))
            model.addAttribute("All", search);

        else {
            result = recruitmentService.getSearchRecruitmentList(search);
            if result.getWork_location().equals("")
                model.addAttribute("All", search);
            else:
                model.addAttribute("Part", search);
        }

        return "searchRecruitment";
    }
}
