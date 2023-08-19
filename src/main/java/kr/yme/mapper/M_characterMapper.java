package kr.yme.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.yme.entity.M_character;

@Mapper
public interface M_characterMapper {
	public M_character insertId(M_character cvo);
}
