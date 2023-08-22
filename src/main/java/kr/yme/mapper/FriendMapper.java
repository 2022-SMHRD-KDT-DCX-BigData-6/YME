package kr.yme.mapper;

import java.util.List;

import kr.yme.entity.Friend;

public interface FriendMapper {

	// kyohoon
	public void insert_Friend_info(Friend fvo);
	public void insert_Friend_info_x(Friend fvo);
	public Friend ox(Friend fvo);
	public List<Friend> search_friend(Friend fvo);	
}
