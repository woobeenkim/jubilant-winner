package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.SessionVo;
import com.javaex.vo.ShopVo;
import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//회원가입
	public int join(UserVo userVo) {
		System.out.println(userVo);
		return sqlsession.insert("user.insert",userVo);
		
	}
	
	//로그인
	public SessionVo login(UserVo userVo) {
		return sqlsession.selectOne("user.selectOne",userVo);
	}
	//매장등록
	public int storeAdd(ShopVo shopVo) {
		return 	sqlsession.insert("user.storeInsert",shopVo);
	}
	
	//매장조회
	public SessionVo storeSelect(int userNo) {
		return sqlsession.selectOne("user.storeSelect",userNo);
	}
	
}
