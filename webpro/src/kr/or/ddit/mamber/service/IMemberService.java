package kr.or.ddit.mamber.service;

import kr.or.ddit.mamber.vo.MemberVo;

public interface IMemberService {
	
	public void insertuser(MemberVo in);
	
	public MemberVo selectaddr(MemberVo memaddr);
	
	public MemberVo selectid(MemberVo memid);
	
}
