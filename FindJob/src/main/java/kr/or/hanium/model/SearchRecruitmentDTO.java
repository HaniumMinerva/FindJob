package kr.or.hanium.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class SearchRecruitmentDTO {

    private String work_location;
    private String recruitment_school;
    private String company_scale;
    private String recruitment_form;
}
