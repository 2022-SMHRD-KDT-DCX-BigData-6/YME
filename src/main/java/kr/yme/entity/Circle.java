package kr.yme.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Circle {
	private int circle_seq ;        //동아리 순번
	private String circle_name;     //동아리 이름
	private String circle_logo;		//동아리 로고
	private String circle_univ;		//대학교
	private Date circle_at;			//동아리 개설일자
	private String circle_category;	//동아리 카테고리
	private String id;				//동아리 개설인(회장)
	private String circle_intro;	//동아리 설명
	private String circle_main;		//중앙동아리 소속 유무
	private String u_name;
	private String univ;
}
