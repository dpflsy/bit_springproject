package com.kboard.dao;

import com.kboard.domain.MemberVO;

public interface MemberDAO {

	public void register(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;

	public void modify(MemberVO vo) throws Exception;

	public void withdrawal(MemberVO vo) throws Exception;

	public MemberVO idCheck(String userid) throws Exception;
}
