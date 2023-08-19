package kr.yme.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Circle_board {
	
	private int board_seq;
	private int circle_seq;
	private String id;
	private String board_title;
	private String board_content;
	private int count;
	private String board_img;
	private String board_type;
	private Date board_at;
	private int likes;
	private String nick;
}
