package kr.yme.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Circle;
import kr.yme.entity.Member;
import kr.yme.mapper.CircleMapper;
import kr.yme.mapper.MemberMapper;


@Controller
public class CircleSearchController {
	
	@Autowired
	private CircleMapper mapper;

	@RequestMapping("/view_circleSearch.do")
	public String view_circleSearch() {
		
		return "view_circleSearch";
	}
	
	@PostMapping("/setCircleData.do")

    public String setCircleData(String value1, String value2, HttpSession session, Model model, Circle c_vo, Circle s_vo) {
		List<Circle> list = null;	
		
		if(value1 != null) {
			String circle_univ = value1;
			s_vo.setCircle_univ(circle_univ);
			list = mapper.s_circleSearch(s_vo);
			
		} else {
			String circle_name = value2;
			c_vo.setCircle_name(circle_name);
			list = mapper.c_circleSearch(c_vo);
			System.out.println(list);
		}
		

		//value 변수를 처리
		model.addAttribute("list", list);
	    /*
		 * session.setAttribute("f_list", list); System.out.println(list);
		 */
	    System.out.println(list);
	    return "circle_List";
	}	
	
	
	
	
}
