package kr.or.hanium.service;

import kr.or.hanium.model.LoginDTO;
import kr.or.hanium.model.User;
import kr.or.hanium.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService
{
    @Autowired
    private UserRepository userRepository;

    public void addUser(User user) throws Exception {
        userRepository.addUser(user);
    }

    public LoginDTO login(LoginDTO loginDTO) throws Exception {
        return userRepository.login(loginDTO);
    }
}
