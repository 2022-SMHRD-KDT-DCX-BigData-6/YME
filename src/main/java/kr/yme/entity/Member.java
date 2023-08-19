package kr.yme.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String pw;
	private String name;
	private String nick;
	private String phone;
	private String univ;
	private String circle_at;
	private String preference;
	private String region;
	private String mbti;
	private String birthdate;
	private Date created_at;
	private String u_name;
	private String r_name;
	
	
	private String ani_name; 
}
