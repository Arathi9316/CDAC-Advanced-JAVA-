package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.MemberDao;
import com.app.entity.Member;


@Service
@Transactional
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public List<Member> getMembers() {
			System.out.println("inside servicce getMemberrs");
		return memberDao.getMembers();
	}

	@Override
	
	public void saveMember(Member member) {

			memberDao.saveMember(member);
	}

	@Override
	public Member getMember(int theId) {
		Member member=memberDao.getMember(theId);
		return member;
	}

	@Override
	public void deleteMember(int theId) {

		memberDao.deleteMember(theId);
	}

}
