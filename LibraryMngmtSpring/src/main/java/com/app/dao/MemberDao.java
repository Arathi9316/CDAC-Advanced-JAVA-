package com.app.dao;

import java.util.List;

import com.app.entity.Member;

public interface MemberDao {
	public List<Member> getMembers();
	public void saveMember(Member member);
	public Member getMember(int theId);
	public void deleteMember(int theId);
}
