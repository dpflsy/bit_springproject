package com.kboard.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kboard.dao.MemberDAO;
import com.kboard.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	//MyBatis
	@Inject
	private MemberDAO dao;
	//Register
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	//login
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	//modify
	@Override
	public void modify(MemberVO vo) throws Exception {
		dao.modify(vo);
	}
	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		dao.withdrawal(vo);
	}
	@Override
	public MemberVO idCheck(String userid) throws Exception {
		return dao.idCheck(userid);
	}

}
