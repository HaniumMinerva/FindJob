package kr.or.hanium.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/streamRecruitment")
public class StreamRecruitmentController {

    @GetMapping(value="")
    public String getStreamRecruitment() {
        return "streamRecruitment";
    }
}
