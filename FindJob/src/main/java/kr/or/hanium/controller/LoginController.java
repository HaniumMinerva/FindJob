package kr.or.hanium.controller;

import kr.or.hanium.model.LoginDTO;
import kr.or.hanium.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/login")
public class LoginController {

    @Autowired
    private UserService userService;

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @GetMapping(value="")
    public String login() throws Exception
    {
        return "login";
    }

    @PostMapping(value="")
    public String loginPost(LoginDTO loginDTO, HttpSession httpSession) throws Exception
    {
        try
        {
            LoginDTO logindto = userService.login(loginDTO);
            if (logindto.getUemail().equals(loginDTO.getUemail()) && logindto.getUpasswd().equals(loginDTO.getUpasswd()))
            {
                httpSession.setAttribute("loginDTO", logindto);
                return "redirect:/";
            }
            else
                return "login";
        }
        catch(Exception e)
        {
            return "login";
        }
    }
}
