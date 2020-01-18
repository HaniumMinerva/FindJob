package kr.or.hanium.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class LoginDTO {

    private String uemail;
    private String upasswd;
}
