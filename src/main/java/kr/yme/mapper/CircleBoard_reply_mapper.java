package kr.yme.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;


import kr.yme.entity.Circle_board;
import kr.yme.entity.Circle_board_reply;


public interface CircleBoard_reply_mapper {
	
	//부모 글 번호 
	public Circle_board boardGet(int board_seq);
	
	//닉네임 값 가져오기 
	
	
	//좋아요 누적 메서드
	@Update("update reply set count=count+1 where r_group=2")
	public void likes(int likes);
	
	//답글의 r_group+1
	//public void replySeqUpdate(Circle_board_reply pvo);
	
	//답글저장 메서드
	public void replyInsert(Circle_board_reply rvo);
	
	//게시글 좋아요 메서드
	public void recommendReply(int reply_seq);
	
	
	public void removeReply(int reply_seq);
	

	//댓글 리스트로 가져와 목록 보여주기 
	public List<Circle_board_reply> getReplies(int board_seq);
	

	
	
}
