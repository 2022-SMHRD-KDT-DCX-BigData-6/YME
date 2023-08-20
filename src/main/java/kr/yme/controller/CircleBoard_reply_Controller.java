package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import kr.yme.entity.Criteria;
import kr.yme.entity.Circle_board;
import kr.yme.entity.Circle_board_reply;
import kr.yme.mapper.CircleBoard_reply_mapper;

@Controller
public class CircleBoard_reply_Controller {

	@Autowired
	private CircleBoard_reply_mapper mapper;
	
	//1.1 답글 UI 요청 처리
	@GetMapping("/c_reply.do")
	public String reply(int board_seq, Model model) {
	    
	    Circle_board pvo = mapper.boardGet(board_seq); // 부모글
	    model.addAttribute("pvo", pvo); // 메서드 이름 수정
	    
	    return "view_circleBoard_albumDetail"; // view_circleBoardDetail.jsp
	}
	
	//1.2 답글저장 요청처리
	@PostMapping("/c_reply.do") 
	public String reply(@ModelAttribute("vo") Circle_board vo, Circle_board_reply rvo) {
		//1. 부모글의 정보 가져오기
		Circle_board pvo = mapper.boardGet(rvo.getR_group());
		
		
		//5. 답글저장`
		mapper.replyInsert(rvo);
		
		return "redirect:/c_Adetail.do?board_seq=" + rvo.getR_group()+"&circle_seq="+pvo.getCircle_seq();
	}
	@PostMapping("/c_treply.do") 
	public String replyT(@ModelAttribute("vo") Circle_board vo, Circle_board_reply rvo) {
		//1. 부모글의 정보 가져오기
		Circle_board pvo = mapper.boardGet(rvo.getR_group());
		
		
		//5. 답글저장`
		mapper.replyInsert(rvo);
		
		return "redirect:/c_Tdetail.do?board_seq=" + rvo.getR_group()+"&circle_seq="+pvo.getCircle_seq();
	}
	

	  // 댓글 좋아요
	  @GetMapping("/c_like_reply.do")
	  public String likeReply( @RequestParam("circle_seq") Integer circle_seq,@RequestParam("board_seq") Integer board_seq, @RequestParam("r_seq") Integer r_seq) {
		  	mapper.recommendReply(r_seq);
			return "redirect:/c_Adetail.do?circle_seq="+circle_seq+"&board_seq=" + board_seq;
	  }
	  // 댓글 좋아요
	  @GetMapping("/c_like_Treply.do")
	  public String likeTReply( @RequestParam("circle_seq") Integer circle_seq,@RequestParam("board_seq") Integer board_seq, @RequestParam("r_seq") Integer r_seq) {
		  mapper.recommendReply(r_seq);
		  return "redirect:/c_Tdetail.do?circle_seq="+circle_seq+"&board_seq=" + board_seq;
	  }

	  // 댓글 삭제    본인 댓글인지 확인하는 로직 필요
	  @RequestMapping("/c_remove_reply.do")
	  public String removeReply(int board_seq, int r_seq, int circle_seq) {
		  	mapper.removeReply(r_seq);
			return "redirect:/c_Adetail.do?board_seq=" + board_seq+"&circle_seq="+circle_seq;
	  }
	  @RequestMapping("/c_remove_Treply.do")
	  public String removeTReply(int board_seq, int r_seq, int circle_seq) {
		  mapper.removeReply(r_seq);
		  return "redirect:/c_Tdetail.do?board_seq=" + board_seq+"&circle_seq="+circle_seq;
	  }
}
