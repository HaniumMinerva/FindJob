package kr.or.hanium.repository;

import kr.or.hanium.model.LoginDTO;
import kr.or.hanium.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository
{
    @Autowired
    private SqlSession sqlSession;

    private static final String namespace="kr.or.hanium.mapper.UserMapper";

    public void addUser(User user) throws Exception
    {
        sqlSession.insert(namespace + ".insert", user);
    }

    public LoginDTO login(LoginDTO loginDTO) throws Exception
    {
        return sqlSession.selectOne(namespace + ".login", loginDTO.getUemail());
    }
}
