package kr.yme.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.yme.entity.Circle;
import kr.yme.entity.Member;
import kr.yme.entity.Tendency;
import kr.yme.mapper.LoginMapper;
import kr.yme.mapper.RecommendMapper;

@Controller
public class LoginController {

	@Autowired
	private LoginMapper mapper;
	@Autowired
	private RecommendMapper r_mapper;
	
	@RequestMapping("/ajaxLogin.do")
	public @ResponseBody int ajaxLogin(Member vo) {
		int a =mapper.ajaxLogin(vo);
		return a;
	}
	
	@RequestMapping("/login.do")
	public String Login(Member vo, HttpSession session) {
		Member mvo = mapper.login(vo);
		
		if (mvo != null) {
			Tendency tvo = r_mapper.selTendency(mvo.getId());
			session.setAttribute("mvo", mvo);
			List<Circle> t_list1 =r_mapper.recoCircle1(tvo);
			List<Circle> t_list2 =r_mapper.recoCircle2(tvo);
			List<Circle> t_list3 =r_mapper.recoCircle3(tvo);
			 
			session.setAttribute("t_list1", t_list1);
			session.setAttribute("t_list2", t_list2);
			session.setAttribute("t_list3", t_list3);
		}
		return "redirect:/main.do";
	}
	@RequestMapping("/login_board.do")
	public String Login_board(Member vo, HttpSession session,Model model ,int circle_seq) {
		Member mvo = mapper.login(vo);
		model.addAttribute("circle_seq", circle_seq);
		if (mvo != null) {
			session.setAttribute("mvo", mvo);
		}
		return "redirect:/c_board.do";
	}

	@RequestMapping("/ajaxLogout.do")
		public String search_logout(HttpSession session) {
			session.invalidate();
			return "redirect:/circle_search.do";
		}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main.do";
	}
}
