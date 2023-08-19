package kr.yme.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class Circle_board_reply {
	
	private int reply_seq;		//댓글 자동증가 
	private String id;			//게시글 작성자 ID
	private String reply_id;	//댓글 작성자 ID
	private String reply_content;//댓글 내용
	private int likes;			 //좋아요 수
	private int r_group;		 //게시글의 board_seq 번호(게시글 고유값)	
	private int r_seq;			 //댓글 순서
	private int r_delete;  // 0(정상), 1(삭제된 글)
	private Date reply_at;		//댓글 작성시간	
	private String nick;		//댓글 작성시간	
	
	
	public String getReplyDate() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(reply_at);
	}
}
