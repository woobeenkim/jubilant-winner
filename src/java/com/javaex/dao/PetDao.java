package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.DogVo;

@Repository
public class PetDao {
	
	@Autowired
	private SqlSession sqlSession;

//-----------------------------------------------------------------------	마이펫 리스트
	
	public List<DogVo> getList(int userNo) {
		List<DogVo> pList = sqlSession.selectList("dog.getList", userNo);
		System.out.println("dao-UserNo:: " + userNo);
		return pList;
	}
	
	
//-----------------------------------------------------------------------	마이펫 추가
	
	public int add(DogVo DogVo) {
		return sqlSession.insert("dog.insert", DogVo);
	}
	
//-----------------------------------------------------------------------	마이펫 수정

	public DogVo petSelect(String userNo) {
		return sqlSession.selectOne("dog.selectOne", userNo);
	}
	


}
