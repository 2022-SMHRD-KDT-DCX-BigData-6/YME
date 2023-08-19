package kr.yme.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.yme.entity.Circle;
import kr.yme.entity.Member;
import kr.yme.entity.Tendency;
import kr.yme.mapper.RecommendMapper;

@Controller
public class PreferenceController {
	@Autowired
	private RecommendMapper mapper;
	
		@RequestMapping("/researchPage.do")
		public String researchPage(Model model, HttpSession session) {
			Member mvo = (Member)session.getAttribute("mvo");
			String id = mvo.getId();
			Tendency tvo = mapper.selTendency(id);
			if(tvo == null) {
				model.addAttribute("update", "X");
			}else {
				model.addAttribute("update", "O");
			}
			return "view_research";
		}
		
		@RequestMapping("/researchResult.do")
		public String researchResult(Model request,HttpSession session) {
			 Member mvo = (Member)session.getAttribute("mvo");
			 String id = mvo.getId();
			 Tendency tvo = mapper.selTendency(id);
			 
			 String tendency_1 = tvo.getTendency_1();
			 tendency_1 = tendency_1.replace("/", "");
			 List<Circle> t_list1 =mapper.recoCircle1(tvo);
			 List<Circle> t_list2 =mapper.recoCircle2(tvo);
			 List<Circle> t_list3 =mapper.recoCircle3(tvo);
			 
			session.setAttribute("t_list1", t_list1);
			session.setAttribute("t_list2", t_list2);
			session.setAttribute("t_list3", t_list3);
			request.addAttribute("t_1", tendency_1);
			
			return "view_result_profile";
		}
		
}
