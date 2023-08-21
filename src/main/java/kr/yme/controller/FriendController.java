package kr.yme.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.yme.entity.Friend;
import kr.yme.entity.M_character;
import kr.yme.entity.Member;
import kr.yme.mapper.FriendMapper;
import kr.yme.mapper.M_characterMapper;

@Controller
public class FriendController {
	
	@Autowired
	private FriendMapper fmapper;
	
	@Autowired
	private M_characterMapper cmapper;
	
	@RequestMapping("/insertfriend.do")
	public @ResponseBody int insertFriend(HttpSession session, Model model,Friend fvo,String value1, String value2, String value3, String value4, String value5) {
		Member mvo = (Member) session.getAttribute("mvo");
		String id = mvo.getId();
		
		
		 String f_id = value1; 
		 String f_ani_name = value2; 
		 String f_nick =value3; 
		 String f_mbti = value4; 
		 String f_univ = value5;
		 
		 fvo.setId(id);
		
		 fvo.setF_univ(f_univ);
		 fvo.setF_id(f_id);
		 fvo.setF_nick(f_nick);
		 fvo.setF_ani_name(f_ani_name);
		 fvo.setF_mbti(f_mbti);
		 
		fmapper.insert_Friend_info(fvo);
		f_id = fvo.getF_id();
		
	
		String ani_name = cmapper.animalname(id);
		
		
		String univ = mvo.getUniv();
		String nick = mvo.getNick();
		String mbti = mvo.getMbti();
		
		fvo.setId(f_id);
		fvo.setF_univ(univ);
		fvo.setF_id(id);
		fvo.setF_nick(nick);
		fvo.setF_ani_name(ani_name);
		fvo.setF_mbti(mbti);

		fmapper.insert_Friend_info_x(fvo);
		
		return 1;
	}
	
}
