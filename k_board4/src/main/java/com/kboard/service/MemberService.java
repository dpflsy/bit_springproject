package com.kboard.service;

import com.kboard.domain.MemberVO;

public interface MemberService {
	public void register(MemberVO vo) throws Exception;

	public MemberVO login(MemberVO vo) throws Exception;

	// modify
	public void modify(MemberVO vo) throws Exception;

	public void withdrawal(MemberVO vo) throws Exception;

	public MemberVO idCheck(String userid) throws Exception;
}
