package kr.or.ddit.mamber.dao;

import kr.or.ddit.mamber.vo.MemberVo;

public class MemberDaoImpl implements IMemberDao {
	private static MemberDaoImpl instance = null;

	private MemberDaoImpl() {
	}

	public static MemberDaoImpl getInstance() {
		if (instance == null) {
			instance = new MemberDaoImpl();
		}
		return instance;
	}

	@Override
	public void insertuser(MemberVo in) {
		
	}

	@Override
	public MemberVo selectaddr(MemberVo memaddr) {
		return null;
	}

	@Override
	public MemberVo selectid(MemberVo memid) {
		return null;
	}
	

	
	
}
