package kr.yme.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class M_character {
	private int profile_seq;
	private String id;
	private String ani_name;
	private Date profile_at;
		
}
