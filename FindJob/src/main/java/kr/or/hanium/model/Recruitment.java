package kr.or.hanium.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@ToString
public class Recruitment {

    @NotNull
    private int recruit_id;
    private String recruit_name;
    private int company_id;
    private String recruitment_form;  // 공고 형태
    private String recruit_category;  // 공고 직종
    private String recruitment_school;  // 학력
    private String work_location;  // 근무지역
    private String pay;  // 급여
    private String position;  // 직급
    private String start_day;  // 모집 시작일
    private String finish_day; // 모집 마감일
    private String require_documents;  // 필요서류
    private int status;  // 상태
    private String require_how_many; // 모집인원

}
