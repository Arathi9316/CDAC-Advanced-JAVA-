package com.app.entity;

import java.util.HashSet;
import java.util.Set;


import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@Table(name="book")
public class Book {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String title;
	@Column
	private String author;
	@Column
	private int count;
	
	@ManyToMany(cascade=CascadeType.PERSIST,fetch=FetchType.EAGER)
	@JoinTable(name="library",joinColumns = @JoinColumn(name="book_id"),
	inverseJoinColumns = @JoinColumn(name="member_id"))
	private Set<Member> members;
	
	public void add(Member member) {
		if(members==null) {
			members=new HashSet<Member>();
		}
		members.add(member);
	}
	public Book(String title, String author, int count) {
		super();
		this.title = title;
		this.author = author;
		this.count = count;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", author=" + author + ", count=" + count + "]";
	}
	
	
	
}
