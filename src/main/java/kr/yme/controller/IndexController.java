package kr.yme.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Circle;
import kr.yme.entity.Member;
import kr.yme.entity.Tendency;
import kr.yme.mapper.Circle_board_mapper;
import kr.yme.mapper.RecommendMapper;

@Controller
public class IndexController {
	@Autowired
	private Circle_board_mapper cmapper;
	@Autowired
	private RecommendMapper r_mapper;
	
	@RequestMapping("/ajax.do")
	public String index() {

		return "view_login"; // main.jsp
	}

	@RequestMapping("/main.do")
	public String goMain(HttpSession session) {
		Member mvo = (Member) session.getAttribute("mvo");
		if(mvo !=null) {
			int chk_t = r_mapper.chk_Tendency(mvo.getId());
			session.setAttribute("chk_t", chk_t);
		}
		
		 List<Circle> r_1 = new ArrayList<Circle>(); 
		  
		 List<Integer> rank_list = cmapper.c_rank(); 
			
			 for(int i = 0; i<rank_list.size(); i++) { 
				 int a =rank_list.get(i).intValue();
				 Circle cvo =  cmapper.rank_data(a);
				 
				 r_1.add(cvo);
			 
			  }
			 session.setAttribute("r_list", r_1);
		 
		return "main";

	}

	@RequestMapping("/myPage.do")
	public String goMy() {
		return "view_mypage";
	}

	@RequestMapping("/circle_board.do")
	public String goCboard() {
		return "view_circleBoard";
	}

	@RequestMapping("/circle_search.do")
	public String goSearch() {
		return "view_circleSearch";
	}



}
