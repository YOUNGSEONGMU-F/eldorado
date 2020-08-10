package com.eldorado.khr.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class KhrDAOImpl implements KhrDAO{

   @Resource(name="sqlSession")
   private SqlSession session;

   //로그인(임시)
   @Override
   public String getPass(Map<String, Object> map) {
      // TODO Auto-generated method stub
      return session.selectOne("khr.getPass", map);
   }
   
   
   
   @Override
   public int updateMember(Map<String, Object> user) {
      
      System.out.println("dao update : " + user);
      
      return session.update("khr.updateMember", user);
   }


   @Override
   public int deleteMember(Map<String, Object> user) {
      
      System.out.println("dao delete : " + user);
      
      return session.delete("khr.deleteMember", user);
   }


   
   @Override public Map<String, Object> getMember(String id) {
     
     
     return session.selectOne("khr.selectMember", id); 
    }
    
   @Override
   public int insertReserve(Map<String, Object> reserve) {
      
      return session.insert("khr.insertReserve", reserve);
   }



   @Override
   public int insertGift(Map<String, Object> giftOrder) {
      // TODO Auto-generated method stub
      return session.insert("khr.insertGift", giftOrder);
   }



   @Override
   public Map<String, Object> getName(String id) {
      // TODO Auto-generated method stub
      return session.selectOne("khr.selectName", id);
   }



   @Override
   public List<Map<String, Object>> bringMovieGift(String id) {
      
      System.out.println("무비기프트 결제내역 dao: " + id);
      
      return session.selectList("khr.bringMovieGift", id);
   }


   


   
   

   
   
   
   
}
