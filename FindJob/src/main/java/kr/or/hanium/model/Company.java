package kr.or.hanium.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@ToString
public class Company {

    @NotNull
    private int company_id;
    private String company_name;
    private String company_founded_date;
    private String company_scale;
    private String company_sector;
    private String company_url;
    private String company_location;
}
