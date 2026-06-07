package com.app.service;

import java.util.List;

import com.app.entity.Member;

public interface MemberService {
	
	public List<Member> getMembers();
	public void saveMember(Member member);
	public Member getMember(int theId);
	public void deleteMember(int theId);
}
