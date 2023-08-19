package kr.yme.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.Circle;
import kr.yme.entity.Member;
import kr.yme.entity.Tendency;

@Mapper
public interface RecommendMapper {
	public Tendency selTendency(String id);
	public List<Circle> recoCircle1(Tendency vo);
	public List<Circle> recoCircle2(Tendency vo);
	public List<Circle> recoCircle3(Tendency vo);
	
	public int chk_Tendency(String id);
}
