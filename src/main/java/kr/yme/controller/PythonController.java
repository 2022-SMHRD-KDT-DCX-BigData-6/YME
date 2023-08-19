package kr.yme.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.M_character;
import kr.yme.entity.Member;
import kr.yme.mapper.FriendMapper;
import kr.yme.mapper.M_characterMapper;
import kr.yme.mapper.MemberMapper;

@Controller
public class PythonController {
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private FriendMapper fmapper;
	
	@Autowired
	private M_characterMapper cmapper;
	
	@PostMapping("/setMBTIData.do")

    public String setMBTIData(String value1 ,String value2 , HttpSession session, Member vo, Model model) {
		String f_mbti = value1;
		String f_ani_name = value2;
	    Member mvo = (Member)session.getAttribute("mvo");
	    String id = mvo.getId();
	    String nick = mvo.getNick();
	    String univ = mvo.getUniv();
	    vo.setAni_name(f_ani_name);
	    vo.setMbti(f_mbti);
	    vo.setUniv(univ);
	    List<Member> list = mapper.searchFriend(vo);
		model.addAttribute("list", list);
	    return "f_list";
	}
	

	

	@RequestMapping("/view_result_profile_animal.do")
	public String view_result_profile_animal(String ani_name, Model model) {
		model.addAttribute("ani_name", ani_name);
		return "view_result_profile_animal";
	}

	@RequestMapping("/make_profile.do")
	public String make_profile(HttpSession session, M_character cvo) {
		
		return "make_profile";
	}
	
	
	@RequestMapping("/view_friendSearch.do")
	public String view_friendSearch() {
		return "view_friendSearch";
	}
	
}
