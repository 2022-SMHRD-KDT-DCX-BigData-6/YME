package kr.yme.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void insertMember(Member vo);
	
	public int checkId(String id);
	
	public int checkNick(String nick);
	
	public List<Member> searchFriend(Member vo);
}
