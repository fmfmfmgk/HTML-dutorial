package kr.or.ddit.mamber.dao;

import kr.or.ddit.mamber.vo.MemberVo;

public interface IMemberDao {
	
	
	public void insertuser(MemberVo in);
	
	public MemberVo selectaddr(MemberVo memaddr);
	
	public MemberVo selectid(MemberVo memid);
	
	
}
