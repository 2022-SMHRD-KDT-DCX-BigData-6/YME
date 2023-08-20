package kr.yme.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.yme.entity.Circle;
import kr.yme.entity.Circle_board;
import kr.yme.entity.Circle_board_reply;
import kr.yme.entity.Circle_join;
import kr.yme.entity.Member;
import kr.yme.mapper.CircleBoard_reply_mapper;
import kr.yme.mapper.Circle_board_mapper;

@Controller
public class Circle_board_Controller {

	@Autowired
	private Circle_board_mapper mapper;
	
	@Autowired
	private CircleBoard_reply_mapper replyMapper;

	// 1.메인 게시판 리스트 요청
	@RequestMapping("/c_board.do")
	public String circle_main_board(int circle_seq,Model request, HttpSession session) {
		Circle circle_detail = mapper.selectDetail(circle_seq);
		request.addAttribute("circle_detail", circle_detail); // 화면에 출력시키는 부분

		Member member_name = mapper.selectName(circle_seq);
		request.addAttribute("member_name", member_name);

		List<Circle_board> circle_A_board = mapper.select_A_Board(circle_seq);
		request.addAttribute("circle_A_board", circle_A_board);
		List<Circle_board> circle_T_board = mapper.select_T_Board(circle_seq);
		request.addAttribute("circle_T_board", circle_T_board);
		
		Member mvo = (Member)session.getAttribute("mvo");
		
		int c_joined = mapper.sel_c_member(mvo);
		
		request.addAttribute("c_joined", c_joined);
		
		return "view_circleBoard";
	}

	// 2.앨범 상세보기 요청
	@RequestMapping("/c_Adetail.do")
	public String circle_album_detail(Model request,int board_seq, int circle_seq) {

		Circle_board detail_album = mapper.selectAdetail(board_seq);
		request.addAttribute("detail_album", detail_album);
		
		Member detail_name = mapper.selectAname(circle_seq);
		request.addAttribute("detail_name", detail_name);
		
		List<Circle_board_reply> replies = replyMapper.getReplies(board_seq);
		request.addAttribute("replies", replies == null ? new ArrayList() : replies);
		
		mapper.addHit(board_seq);

		// 조회수 누적
		// 좋아요 누적
		return "view_circleBoard_albumDetail";
	}

	
	  // 3.자유게시판 상세보기 요청
	  
	  @RequestMapping("/c_Tdetail.do") 
	  public String circle_text_detail(Model request, int board_seq, int circle_seq) {
	  
	  Circle_board detail_text = mapper.selectTdetail(board_seq);
	  request.addAttribute("detail_text", detail_text);
	  
	  Member detail_name = mapper.selectAname(circle_seq);
	  request.addAttribute("detail_name", detail_name);
	  List<Circle_board_reply> replies = replyMapper.getReplies(board_seq);
		request.addAttribute("replies", replies == null ? new ArrayList() : replies);
	  
	  //조회수 누적 //좋아요 누적 
	  return "view_circleBoard_textDetail"; 
	  }
	 
	  
	  //4.1 게시글 등록(get방식)
	  @GetMapping("/c_register.do")
	  public String register() {
		  // GET 요청 처리 로직
		  return "view_insertBoard"; 
	  }
	  
	  //4.2 게시글 등록(post방식)
	  @PostMapping("/c_register.do")
	  public String register(Circle_board vo , @RequestParam("fileName") String fileName, HttpSession session, Model model) {
		  // 세션에서 id 가져오기
		  Member mvo = (Member) session.getAttribute("mvo");
		  String id = mvo.getId();
		  // Circle_board vo에 가져온 아이디값 담기
		  vo.setId(id);
		  model.addAttribute("circle_seq", vo.getCircle_seq());
		  if(vo.getBoard_type()=="X") {
			  
			  mapper.insertBoard(vo);
		  }else {
			  String route = vo.getBoard_img();
			  // 경로 새로 할당
			  route = "./resources/images/"+route;
			  // Circle_board vo에 img 경로 담기
			  vo.setBoard_img(route);
			  // mapper에 이미지 경로 담긴 vo 전달
			  mapper.insertImageBoard(vo);
			  // 경로 잘라서 이름만 추출
			  // mapper에 새로운 함수 만들어서 이미지 파일 등록하기 
			  
		  }
		  return "redirect:c_board.do";
	  }
	  
	
	  // 게시판 좋아요 기능
	  @GetMapping("/c_like_board.do")
	  public String likeBoard(@RequestParam("board_seq") Integer board_seq, @RequestParam("circle_seq") Integer circle_seq) {
		  mapper.recommendReply(board_seq);
		  return "redirect:/c_Adetail.do?board_seq=" + board_seq+"&circle_seq="+circle_seq;
	  }
	  @GetMapping("/c_like_tboard.do")
	  public String liketBoard(@RequestParam("board_seq") Integer board_seq, @RequestParam("circle_seq") Integer circle_seq) {
		  mapper.recommendReply(board_seq);
		  return "redirect:/c_Tdetail.do?board_seq=" + board_seq+"&circle_seq="+circle_seq;
	  }
	  
	  @RequestMapping("/joinCircle.do")
	  public String joinCircle(int circle_seq, Model model, HttpSession session) {
		  Member mvo = (Member) session.getAttribute("mvo");
		  String id = mvo.getId();
		  Circle_join cjvo = new Circle_join();
		  cjvo.setId(id);
		  cjvo.setCircle_seq(circle_seq);
		  mapper.joinCircle(cjvo);
		  
		  
		  model.addAttribute("circle_seq", circle_seq);
		  return "redirect:/c_board.do";
	  }
	  
	  
	  
	  
	  

}
