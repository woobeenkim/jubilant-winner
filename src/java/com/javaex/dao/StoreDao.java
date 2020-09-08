package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.DogVo;
import com.javaex.vo.ReservationVo;
import com.javaex.vo.ShopVo;
import com.javaex.vo.StorereservationVo;
import com.javaex.vo.UserVo;

@Repository
public class StoreDao {
	@Autowired
	SqlSession sqlSession;
	
	public ShopVo StoreSelect(String shopDomain) {
		return sqlSession.selectOne("store.selectOne", shopDomain);
	}
	
	public int adminreser(StorereservationVo storereservationvo) {
		return sqlSession.insert("storeres.adminreser", storereservationvo);
	}
	
	public List<StorereservationVo> restime(StorereservationVo storereservationvo) {
		List<StorereservationVo> reserList = sqlSession.selectList("storeres.restime", storereservationvo);
		System.out.println(reserList.toString());
		return reserList;
	}
	public int insertres(ReservationVo reservationvo) {
		return sqlSession.insert("reservation.insertres",reservationvo);
	}
	
	public void taken(ReservationVo reservationvo) {
		sqlSession.delete("storeres.taken", reservationvo);
	}
	
	public UserVo getuser(int userNo) {
		return sqlSession.selectOne("user.getuser", userNo);
	}
	public List<DogVo> getdList(int userNo){
		System.out.println(userNo);
		return sqlSession.selectList("dog.getdList", userNo);
	}
	public DogVo getdog(DogVo dogvo) {
		return sqlSession.selectOne("dog.getdog", dogvo);
	}
	public List<ReservationVo> getRList(int shopNo){
		return sqlSession.selectList("reservation.getRList",shopNo);
	}
}
