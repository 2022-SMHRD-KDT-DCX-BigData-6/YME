package kr.yme.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Circle;
import kr.yme.entity.Circle_board;
import kr.yme.entity.Member;
import kr.yme.mapper.Circle_board_mapper;

@Controller
public class SearchController {
	
	@Autowired
	Circle_board_mapper mapper;
	
	@RequestMapping("/f_search.do")
	public String searchPage() {
		
		return "view_friendSearch";
	}
	
	
	@RequestMapping("/myCircle.do")
	public String myCircle(String circle_at, Model model,HttpSession session) {
		int a = mapper.sel_c_seq(circle_at);
		model.addAttribute("circle_seq", a);
		
		Circle circle_detail = mapper.selectDetail(a);
		model.addAttribute("circle_detail", circle_detail); // 화면에 출력시키는 부분

		Member member_name = mapper.selectName(a);
		model.addAttribute("member_name", member_name);

		List<Circle_board> circle_board = mapper.selectBoard(a);
		model.addAttribute("circle_board", circle_board);
		
		Member mvo = (Member)session.getAttribute("mvo");
		
		int c_joined = mapper.sel_c_member(mvo);
		
		model.addAttribute("c_joined", c_joined);
		return "view_circleBoard";
	}
}
