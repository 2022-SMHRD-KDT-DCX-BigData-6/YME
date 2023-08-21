package kr.yme.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Friend {
private int f_seq;
private String id;
private String univ;
private String f_id;
private String f_nick;
private String f_send;
private String f_accept;
private String f_ani_name;
private String f_mbti;
private Date f_at;
private String f_univ;

}
