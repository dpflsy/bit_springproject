package com.kboard.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.kboard.domain.MemberVO;

@Service
public class MemberDAOImpl implements MemberDAO {
	//마이바티스
	@Inject
	private SqlSession sql;
	
	//Mapper
	private static String namespace="com.kboard.mappers.memberMapper";
	
	//Register
	@Override
	public void register(MemberVO vo) throws Exception{
		sql.insert(namespace+".register",vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne(namespace+".login",vo);
	}

	@Override
	public void modify(MemberVO vo) throws Exception {
		sql.update(namespace+".modify",vo);
	}

	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.delete(namespace+".withdrawal",vo);
	}

	@Override
	public MemberVO idCheck(String userid) throws Exception {
		return sql.selectOne(namespace+".idCheck",userid);
	}
}
