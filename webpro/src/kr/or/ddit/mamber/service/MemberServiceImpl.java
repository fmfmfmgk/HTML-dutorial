package kr.or.ddit.mamber.service;

import kr.or.ddit.mamber.dao.MemberDaoImpl;
import kr.or.ddit.mamber.vo.MemberVo;

public class MemberServiceImpl implements IMemberService {
	private static MemberServiceImpl instance = null;

	private MemberServiceImpl() {
	}

	public static MemberServiceImpl getInstance() {
		if (instance == null) {
			instance = new MemberServiceImpl();
		}
		return instance;
	}
	MemberDaoImpl dao = MemberDaoImpl.getInstance();

	@Override
	public void insertuser(MemberVo in) {
		dao.insertuser(in);
	}

	@Override
	public MemberVo selectaddr(MemberVo memddr) {
		return dao.selectaddr(memddr);
	}

	@Override
	public MemberVo selectid(MemberVo memid) {
		return dao.selectid(memid);
	}
}
