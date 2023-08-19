package kr.yme.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String myCircle(String circle_at, HttpSession session) {
		int a = mapper.sel_c_seq(circle_at);
		session.setAttribute("circle_seq", a);
		return "view_circleBoard";
	}
}
