package kr.or.hanium.model;

import com.sun.istack.internal.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class User {

    @NotNull
    private int uid;
    private String uname;
    private String uemail;
    private String upasswd;
    private String ubirth;
    private String uaddress;
    private String utel;
    private String interest_duty;
    private int hope_salary;
    private String authority;

}
