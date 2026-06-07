package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.entity.Member;
@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Member> getMembers() {
		Session session=sessionFactory.getCurrentSession();
		Query<Member> query=session.createQuery("from Member",Member.class);
		List<Member> list=query.getResultList();
		return list;
	}

	@Override
	public void saveMember(Member member) {
		Session session=sessionFactory.getCurrentSession();
		session.merge(member);
	}

	@Override
	public Member getMember(int theId) {
		Session session=sessionFactory.getCurrentSession();
		Member member=session.get(Member.class, theId);
		return member;
	}

	@Override
	public void deleteMember(int theId) {
		Session session=sessionFactory.getCurrentSession();
		Member member=session.get(Member.class, theId);
		session.remove(member);
		
	}

}
