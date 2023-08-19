package kr.yme.mapper;

import java.util.List;

import kr.yme.entity.Circle;

public interface CircleMapper {

	public List<Circle> s_circleSearch(Circle s_vo);
	public List<Circle> c_circleSearch(Circle c_vo);
}
