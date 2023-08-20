package kr.yme.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.M_character;
import kr.yme.entity.Member;

@Mapper
public interface LoginMapper {
	public Member login(Member vo);
	public M_character getProfile(String id);
	public int ajaxLogin(Member vo);
}
