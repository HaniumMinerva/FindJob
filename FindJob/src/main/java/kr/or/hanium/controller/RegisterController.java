package kr.or.hanium.controller;

import kr.or.hanium.model.Company;
import kr.or.hanium.model.Recruitment;
import kr.or.hanium.model.User;
import kr.or.hanium.service.CompanyService;
import kr.or.hanium.service.RecruitmentService;
import kr.or.hanium.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(value="/register")
public class RegisterController {

    @Autowired
    private UserService userService;

    @Autowired
    RecruitmentService recruitmentService;

    @Autowired
    CompanyService companyService;

    private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);

    @GetMapping(value = "")
    public String registerUser() throws Exception
    {
        return "registerUser";
    }

    @PostMapping(value = "")
    public String registerUserPost(@ModelAttribute("user") @Valid User user, BindingResult bindingResult) throws Exception
    {
        if (bindingResult.hasErrors())
            return "registerUser";

        user.setAuthority("ROLE_USER");
        userService.addUser(user);

        return "redirect:/";
    }
}


