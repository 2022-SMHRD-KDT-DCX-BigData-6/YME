package kr.yme.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.Circle;
import kr.yme.entity.Circle_board;
import kr.yme.entity.Circle_join;
import kr.yme.entity.Member;

@Mapper
public interface Circle_board_mapper {
	public void joinCircle(Circle_join cjvo);
	public Circle selectDetail(int circle_seq);
	public Member selectName(int circle_seq);
	public List<Circle_board> select_A_Board(int circle_seq);
	public List<Circle_board> select_T_Board(int circle_seq);
	public int sel_c_member(Member mvo);
	
	public Circle_board selectAdetail(int board_seq);
	public Member selectAname(int circle_seq);
	
	public Circle_board selectTdetail(int board_seq);
	
	public void insertBoard(Circle_board vo);
	public void insertImageBoard(Circle_board vo);
	
	public int sel_c_seq(String circle_at);

	public List<Integer> c_rank();
	
	public Circle rank_data(int circle_seq);
	
	//게시글 좋아요 메서드
		public void recommendReply(int board_seq);
		
		public void addHit(int board_seq);
		
	// 나중에 매개변수 값 넘겨줄거 추가
}
