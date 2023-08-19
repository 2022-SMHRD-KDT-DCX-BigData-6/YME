package kr.yme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.yme.entity.Member;
import kr.yme.mapper.MemberMapper;

@Controller
public class JoinController {
	@Autowired
	private MemberMapper mapper;
	
	@RequestMapping("/registerPage.do")
	public String Page() {
		return "view_join";
	}
	
	@RequestMapping("/register.do")
	public String Join(Member vo) {
		mapper.insertMember(vo);
		
		return "main";
	}
	
	@RequestMapping("/id_check.do")
	public @ResponseBody int IdCheck(String userid) {
		int a = mapper.checkId(userid);
		
		return a;
	}
	
	@RequestMapping("/nick_check.do")
	public @ResponseBody int NickCheck(String nick) {
		
		int a = mapper.checkNick(nick);
		return a;
	}
}
