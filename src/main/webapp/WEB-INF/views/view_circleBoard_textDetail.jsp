<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/* Basic styling for the comment section */
.comment_section {
	display: flex;
	flex-direction: row;
	align-items: center;
	font-size: 12px;
	color: #777777;
}

/* Styling for the heart icon */
.heart_icon {
	width: 12px;
	height: 12px;
	l display: inherit;
	padding-bottom: 2px;
	padding-left: 25px;
	background-repeat: no-repeat;
	background-size: contain;
	background-image:
		url(http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/heart.png);
	margin-right: 5px;
	cursor: pointer;
}

/* Styling for the reply button */
.reply_button {
	display: flex;
	flex-direction: row;
	align-items: center;
	margin-right: 20px;
	cursor: pointer;
}

/* Styling for the comment icon */
.comment_icon {
	margin-right: 5px;
	cursor: pointer;
}

/* Styling for the "답글달기" text */
.reply_text {
	cursor: pointer;
}

/* Styling for the like count */
.like_count {
	margin-right: 5px;
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	color: #8E8E8E;
}

/* Basic styling for the fixed comment box */
.fixed_comment_box {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background-color: #FFFFFF;
	border-top: 1px dashed #ccc;
	box-shadow: 0px -2px 6px rgba(0, 0, 0, 0.1);
	padding: 15px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

/* Adjust the height of the reply_input_box */
.reply_input_box {
	height: 24px; /* You can adjust the height as needed */
	max-height: 70px; /* Adjust the maximum height as needed */
}

/* Adjust the styles of the send_btn */
.send_btn {
	line-height: 24px; /* Match the height of the reply_input_box */
	width: 70px;
	background: #AAAAAA;
	color: #ffffff;
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
}

.all_univ_history {
	width: 49%;
	margin-bottom: 20px;
}

.club_image {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 10px;
}

.main_board_pc {
	height: 180px;
	border-radius: 20px;
	margin-bottom: 10px;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.25);
}

.main_club_logo {
	width: 22px;
	height: 22px;
	background: #904A4A;
	border: 1px solid #F5F5F5;
	border-radius: 8px;
	margin-right: 5px;
}

.main_univ_history_club_name {
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #AAAAAA;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.main_univ_history_content {
	font-weight: 600;
	font-size: 14px;
	line-height: 17px;
	letter-spacing: -0.02em;
	color: #444444;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 10px;
}

.item_name {
	display: inline-block;
	width: 100%;
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #AAAAAA;
}

.board_list_item .board_content {
	padding: 0 0 5px;
	font-size: 13px;
	color: #b7b7b7;
}

.board_list_item {
	padding: 10px 5px;
	border-bottom: 1px solid #eeeeee;
}

#search_txt {
	display: flex;
	align-items: center;
	width: 90%;
	height: 40px;
	background: #f5f5f5;
	color: #999999;
	font-weight: 400;
	font-size: 13px;
	line-height: 16px;
	letter-spacing: -0.02em;
	padding: 12px 15px;
}

#search_txt:focus {
	border: 0; /* 클릭할 때 테두리 없애기 */
	outline: none; /* 포커스 테두리 제거 */
}

.common_top_nav_header {
	text-align: center;
	padding: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #565656;
	background: white;
	width: 100%;
	z-index: 98;
	top: 55px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}

.mv_write {
	background-color: #FFFFFF;
	border-radius: 16px;
	margin: 20px 10px;
	padding-top: 15px;
	text-align: center;
	width: 60px;
	height: 60px;
	font-size: 20px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.clicked {
	color: gold;
}

.swiper-pagination-bullets { -
	-swiper-theme-color: #4cbcaf;
}

.ytp-cued-thumbnail-overlay-image {
	background-size: contain;
}

.page-bg {
	display: none;
}

.video-container {
	position: relative;
	padding: 30%;
	height: 0;
}

.video-container iframe {
	position: absolute;
	top: 0;
	left: 50%;
	width: 90%;
	height: 90%;
	transform: translate(-50%, 0%);
}

.fa-user {
	font-size: 12px;
}

.vote_border {
	display: flex;
	width: 100%;
}

#barChart {
	height: 250px !important;
	width: calc(100% - 99px) !important;
	display: inline-block !important;
	padding-top: 5px;
}

.vote_count_box {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	width: 100px;
	text-align: center;
}

.vote_count_box .count_box {
	color: #8E8E8E;
	margin-bottom: 10px;
}

.vote_answer_box {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	color: #ffffff;
	padding-left: 20px;
	width: calc(100% - 100px);
}

.vote_answer_select_box {
	color: #8E8E8E;
	background: #ebebeb;
	border-radius: 10px;
	margin-bottom: 10px;
	padding: 10px;
}

.my_selected_vote {
	color: white !important;
	background: #4cbcaf;
}

.vote_title {
	font-weight: 600;
	display: inline-block;
}

.vote_answer {
	background-color: #f1f1f1;
	padding-left: 3px;
	margin-bottom: 4px;
}

.vote_now {
	display: inline-block;
	color: white !important;
	background-color: #4cbcaf;
	border-radius: 10px;
	padding: 10px;
	padding-left: 25px;
	padding-right: 25px;
	margin-left: 20px;
}

.vote_date {
	padding-right: 15px;
}

.vote_answer_box .count_box {
	color: #8E8E8E;
	background: #ebebeb;
	border-radius: 10px;
	overflow: hidden;
	margin-bottom: 10px;
}

.vote_answer_place {
	padding: 10px;
	white-space: nowrap;
}

.answer_voted {
	background: #c8c8c8;
}

.vote_count_box .count_box {
	color: #8E8E8E;
}

.club_menu {
	cursor: pointer;
	font-weight: 500;
	font-size: 16px;
	line-height: 19px;
	letter-spacing: -0.02em;
	color: #555555;
	padding: 15px;
	margin-right: 10px;
	margin-left: 10px;
}

.page {
	max-width: 100vw;
	text-align: center;
}

.rate {
	margin-top: 5px;
	margin-bottom: 10px;
}

.fas.fa-star {
	color: #ffc107;
}

.far.fa-star {
	color: grey;
}

.board {
	padding: 0 10px;
	font-size: 14px;
}

.board .title {
	font-weight: 700;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: -0.02em;
	color: #181818;
	word-break: keep-all;
	margin-bottom: 10px;
}

.board .board_option {
	margin-bottom: 15px;
	padding-left: 45px;
}

.board .board_option span {
	color: #a0a0a0;
	margin-right: 0px;
	/*border-right: 1px solid #a9a9a9;*/
	padding-right: 5px;
	font-size: 12px;
}

.board .board_option span:last-child {
	border-right: 0;
}

.board .reg_reply_form {
	padding: 10px;
	border: 1px solid #eeeeee;
	margin: 10px 0;
	padding-bottom: 5px;
	border-radius: 3px;
	height: 195px;
}

.board .reg_reply_form textarea {
	width: 100%;
	height: 130px;
	border: 0;
	font-size: 15px;
	margin-bottom: 10px;
	border-bottom: 1px solid #eeeeee;
	resize: none;
}

.board .reg_reply_form textarea::placeholder {
	color: #c7c7c7;
	font-size: 14px;
}

.board .reg_reply_form .user_image img {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	display: inline-block;
	object-fit: cover;
	box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.25);
}

.board .reg_reply_form .reg_btn {
	float: right;
	font-size: 13px;
	padding: 5px 8px;
	background-color: #288bac;
	color: #ffffff;
	font-weight: 500;
	border-radius: 3px;
}

.board .reg_reply_form .reg_user_nick {
	margin-left: 10px;
	margin-top: 7px;
	font-size: 13px;
	color: #848484;
	display: inline-block;
	margin-bottom: 10px;
}

.board .reply_count_box {
	color: #7d7d7d;
	font-size: 14px;
	/*padding-top: 10px;*/
	/*margin-top: 10px;*/
	display: inline-block;
}

.heart {
	display: inline-block;
	background: url(/s/front/images/icons/heart.png) no-repeat center;
	background-size: 22px;
	height: 30px;
	width: 30px;
	margin-bottom: 5px;
}

.heart_act {
	display: inline-block;;
	background: url(/s/front/images/icons/heart_act.png) no-repeat center;
	background-size: 22px;
	height: 30px;
	width: 30px;
	margin-bottom: 5px;
}

.board_share {
	display: inline-block;;
	background: url(/s/front/images/icons/share.svg) no-repeat center;
	background-size: 22px;
	height: 30px;
	width: 30px;
	margin-bottom: 5px;
}

.bookmark {
	display: inline-block;
	background: url(/s/front/images/icons/subscribe.svg) no-repeat center;
	background-size: 20px;
	height: 30px;
	width: 30px;
	margin-bottom: 5px;
}

.act {
	display: inline-block;
	background: url(/s/front/images/icons/subscribe_act.svg) no-repeat
		center;
	background-size: 20px;
	height: 30px;
	width: 30px;
}

.board_report {
	margin-right: 5px;
	background: url(/s/front/images/siren.png) no-repeat left;
	background-size: 11px;
	display: inline-block;
	padding-left: 16px;
	color: #7d7d7d;
}

.board .ben {
	color: #7d7d7d;
	font-size: 14px;
}

.board .edit {
	font-size: 19px;
	float: right;
	color: #5C6576;
	padding: 2px 4px;
}

.edit_menu {
	padding: 7px 8px;
	font-size: 13px;
	background: #eaeaea;
	margin-right: 6px;
	border-radius: 10px;
}

.edit_menu a:first-child {
	border-right: 1px solid #dddddd;
	margin-right: 3px;
	padding-right: 5px;
	padding-left: 3px;
	color: #7d7d7d;
}

.board .user_img {
	position: relative;
	width: 35px;
	height: 35px;
	border-radius: 12px;
	object-fit: cover;
	z-index: 10;
	box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.25);
	background: #FFFFFF;
}

.img_35_12 {
	position: relative;
	width: 35px;
	height: 35px;
	border-radius: 12px;
	object-fit: cover;
	z-index: 10;
	background: #FFFFFF;
}

.board .user_name {
	font-weight: 600;
	font-size: 16px;
	line-height: 19px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
}

.board .board_file {
	padding-top: 10px;
	padding-bottom: 0px;
	background-image: url(/s/front/images/file.png);
	padding-left: 27px;
	background-repeat: no-repeat;
	background-size: 20px;
	background-position-y: 10px;
	margin-bottom: 0px;
}

.board .board_file a {
	text-decoration: underline;
	text-underline-position: under;
}

.owl-height {
	height: inherit;
	min-height: 100px !important;
}

.board_created {
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	text-align: right;
	letter-spacing: -0.02em;
	color: #8E8E8E;
	white-space: nowrap;
}

.list_new {
	display: inline;
	color: #ff5d51;
	font-size: 20px;
	margin-left: 3px;
	vertical-align: top;
	line-height: 10px;
	padding-bottom: 18px;
}

.right-order2 {
	margin-top: 10px;
	border-radius: 10px;
	margin-right: 5px;
	width: 150px;
	height: 150px;
	overflow: hidden;
	margin-bottom: 10px;
	background-size: cover;
}

.swiper-no-swiping::-webkit-scrollbar {
	height: 5px;
	display: block;
}

.swiper-no-swiping::-webkit-scrollbar-thumb {
	background-color: #4cbcaf;
	border-radius: 10px;
}

.swiper-no-swiping::-webkit-scrollbar-track {
	background-color: #ffffff;;
}

.right-order2 {
	margin-top: 10px;
	border-radius: 10px;
	margin-right: 5px;
	width: 150px;
	height: 150px;
	overflow: hidden;
	margin-bottom: 10px;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.user_image {
	position: absolute;
	left: 0;
	width: 40px;
	height: 40px;
	margin-top: 33px;
	border-radius: 50%;
	box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.25);
}

.writer_info span {
	padding-left: 5px !important;
}

.writer_info strong {
	padding-left: 5px !important;
}

.board_settings {
	color: #6b6b6b !important;
	margin-top: -17px;
	font-size: 11px !important;
}

.text-warning {
	color: #DA4453 !important;
}

.board_options {
	position: absolute;
	margin-top: -45px;
	padding-left: 15px;
	width: 100%;
	color: #b3b3b3 !important;
}

.board_options_2 {
	padding: 5px 10px;
	margin-bottom: 10px;
	color: #b3b3b3 !important;
	font-size: 16px;
}

.board_options_2 i {
	font-size: 17px;
}

.comment-wrapper {
	width: 100%;
	border: 0 !important;
	margin-bottom: 10px;
}

.comment_reply_box {
	width: 100%;
	border: 0 !important;
	margin-bottom: 5px;
}

.comment-wrapper td {
	border: 0 !important;
	text-align: left;
}

.comment_reply_box td {
	border: 0 !important;
	text-align: left;
	padding-top: 0;
}

.image_box {
	width: 40px;
	padding-right: 10px;
	vertical-align: top;
	padding-top: 7px;
}

.image_box img {
	width: 35px;
	height: 35px;
	border-radius: 50%;
}

.user_info {
	margin-bottom: 3px;
}

.user_info span:first-child {
	font-size: 13px;
	font-weight: 500;
}

.user_info .date {
	font-weight: normal;
	font-size: 12px;
	float: right;
}

.user_info .date a {
	margin-right: 5px;
}

.comment_options {
	margin-top: 15px;
}

.comment_options a {
	display: inline;
	margin-right: 5px;
	color: #0d5aa7;
	display: inline-block;
}

.board_title {
	font-size: 14px;
	font-weight: 600;
	padding: 15px 15px 15px 20px;
}

.board_views {
	position: absolute;
	right: 15px;
	margin-top: -25px;
	font-size: 12px;
	color: #adadad;
}

.comment_box {
	padding-bottom: 0;
	padding-top: 0;
}

.re_reply_input_form {
	display: none;
}

.re_reply_div {
	display: none;
}

.more_reply_btn {
	cursor: pointer;
}

.board .d_day {
	display: inline;
	white-space: nowrap;
	background: #4DE2D1;
	padding: 2px 10px;
	border-radius: 15px;
	color: #ffffff;
	line-height: 16px;
	font-weight: 700;
	font-size: 14px;
}

.activity_info_content {
	font-weight: 400;
	font-size: 13px;
	line-height: 18px;
	letter-spacing: -0.02em;
	color: #181818;
}

.board_title_icon {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	width: fit-content;
	background: #F5F5F5;
	border-radius: 10px;
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	white-space: nowrap;
	padding: 10px;
	margin-bottom: 10px;
}

.vote_title {
	font-size: 18px;
	margin-left: 10px;
}

.top_icon_home {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	width: fit-content;
	height: 30px;
	background: #F5F5F5;
	border-radius: 10px;
	padding: 8px 10px;
	margin-right: 6px;
	white-space: nowrap;
}

.board_event_dday {
	width: fit-content;
	background: #47D2C2;
	border-radius: 5px;
	font-weight: 300;
	font-size: 13px;
	line-height: 16px;
	text-align: center;
	letter-spacing: -0.02em;
	color: #FFFFFF;
	white-space: nowrap;
	padding: 2px 13px;
	margin-bottom: 10px;
}

.board_date_title {
	font-weight: 700;
	font-size: 15px;
	line-height: 18px;
	letter-spacing: -0.02em;
	color: #181818;
	margin-bottom: 20px;
}

.board_date_content {
	font-weight: 400;
	font-size: 13px;
	line-height: 16px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	margin-left: 15px;
}

.fw400_12_14_3A {
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	white-space: nowrap;
}

.heart {
	display: inline-block;
	background: url(./resources/images/heart.png) no-repeat center;
	background-size: 22px;
	height: 30px;
	width: 30px;
	margin-bottom: 5px;
}

.menu-box-bottom {
	transform: translate3d(0, 125%, 0);
}

.re_img {
	width: 35px;
	height: 35px;
	margin-top: 3px;
	border-radius: 12px;
	object-fit: cover;
}

.reply_input_tbl {
	width: 100%;
	margin: 0;
	display: flex;
}

.reply_input_tbl td {
	padding: 3px;
	vertical-align: bottom;
}

.reply_input_tbl .col_01 {
	
}

.reply_input_tbl .col_02 {
	width: 30px;
	height: 30px;
	text-align: center;
	border-radius: 50%;
}

.total_div {
	display: flex;
	justify-content: space-between;
	padding: 15px;
	align-items: center;
}

.logo_div {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.reply_div {
	width: calc(100% - 60px);
	border-radius: 10px;
	background: #F5F5F5;
	overflow: hidden;
	height: fit-content;
}

.reply_input_box {
	width: calc(100% - 70px);
	overflow-y: scroll;
	max-height: 200px;
	font-size: 12px;
	color: #777777;
	height: 35px !important;
	border-radius: 50px;
	background: #F5F5F5;
	line-height: 15px;
	padding: 10px;
}

.reply_name {
	display: none;
	margin-left: 10px;
}

.send_btn_div {
	width: 70px;
	background: #AAAAAA;
	color: #ffffff;
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
}

.send_btn {
	display: flex;
	align-items: center;
}

.reply_submit_btn {
	font-size: 17px;
	padding: 5px 3px;
}

.sub_desc {
	width: 100%;
	display: none;
	color: #6b6b6b;
	padding: 5px;
	padding-left: 21px;
	font-size: 12px;
	border-top: 1px solid #e8e8e8;
}

.reply_box {
	padding: 10px 5px 70px 5px;;
}

.reply_box .comment_item {
	width: 100%;
	padding: 0 20px 15px 15px;
}

.reply_box .comment_item .c_col_01 {
	display: inline-block;
	width: 35px;
	height: 35px;
	margin-right: 10px;
}

.reply_box .comment_item .c_col_01 .user_thumb {
	width: 35px;
	height: 35px;
	border-radius: 12px;
	object-fit: cover;
	display: inline-block;
}

.reply_box .comment_item .c_col_02 {
	display: inline-block;
	width: calc(100% - 40px);
}

.reply_box .comment_item .c_col_02 .rw {
	font-weight: bold;
	margin-right: 5px;
	margin-bottom: 3px;
	display: block;
}

.reply_box .comment_item .c_col_02 .rc {
	font-weight: normal;
	display: block;
	line-height: 20px;
}

.reply_box .comment_item .c_col_02 .rc a {
	font-weight: bold;
	color: #555555;
}

.reply_box .comment_item .c_col_03 {
	width: 20px;
	text-align: right;
}

.reply_box .comment_item table .c_col_02 .rw {
	font-weight: bold;
	margin-right: 5px;
}

.reply_box .comment_item table .c_col_02 .rc {
	font-weight: normal;
}

.reply_box .comment_item table .c_col_02 .rc a {
	font-weight: bold;
	color: #555555;
}

.reply_box .comment_item table .c_col_03 {
	width: 20px;
	text-align: right;
}

.reply_heart {
	width: 15px;
	height: 15px;
	display: inherit;
	background-repeat: no-repeat;
	background-size: contain;
	background-image: url("/s/front/images/icons/heart.png");
}

.reply_heart.fill {
	background-image: url("/s/front/images/icons/heart_act.png");
}

.f-bold {
	font-weight: 600;
}

.reply_input_box_div {
	position: fixed;
	bottom: 0px;
	width: 100%;
	z-index: 98;
	background: white;
	margin: 0;
	left: 0;
	border-top: 1px solid #ececec;
	;
}

.add_reply_div {
	padding-top: 5px !important;
	padding-left: 40px !important;
	padding-right: 0px !important;
}

.reply_more_btn {
	padding-left: 45px;
	color: #8E8E8E;
}

.friend_list_div {
	overflow-y: scroll;
	max-height: 320px;
}

.friend_item {
	border-bottom: 1px solid #eeeeee;
	padding: 10px 15px;
}

.friend_item span {
	position: absolute;
	margin-top: 6px;
	font-size: 14px;
	padding-left: 15px;
}

.friend_item img {
	width: 30px;
	height: 30px;
	display: inline-block;
	border-radius: 50%;
}

.friend_header {
	background-color: #f3f3f3;
	color: #6b6b6b;
	padding: 5px;
	padding-left: 21px;
	font-size: 12px;
	border-top: 1px solid #e8e8e8;
}

.friend_header i {
	float: right;
	margin-top: 5px;
	margin-right: 5px;
	color: #8a8a8a;
}

.comment_item .heart {
	width: 12px;
	height: 12px;
	display: inherit;
	padding-bottom: 2px;
	padding-left: 25px;
	background-repeat: no-repeat;
	background-size: contain;
	background-image: url("/s/front/images/icons/heart.png");
}

.comment_item .heart.fill {
	background-image: url("/s/front/images/icons/heart_act.png");
}

.reply_more {
	display: block;
	margin-top: 10px;
	padding-left: 40px;
}

.reply_more .l {
	width: 50px;
	height: 1px;
	display: inline-block;
	border-top: 1px solid #b7b7b7;
	position: absolute;
	margin-top: 12px;
}

.reply_more .b {
	display: inline-block;
	padding-left: 60px;
	font-size: 12px;
}

.none_f {
	padding: 10px 20px;
	color: #bbbbbb;
	font-size: 12px;
}

.re_reply_input_form {
	display: none;
}

.re_reply_div {
	display: none;
}

.more_reply_btn {
	cursor: pointer;
}

.comment-wrapper {
	width: 100%;
	border: 0 !important;
	margin-bottom: 6px;
}

.comment_reply_box {
	width: 100%;
	border: 0 !important;
	margin-bottom: 5px;
}

.comment-wrapper td {
	border: 0 !important;
	text-align: left;
}

.comment_reply_box td {
	border: 0 !important;
	text-align: left;
	padding-top: 0;
}

.image_box {
	width: 35px;
	padding-right: 10px;
	vertical-align: top;
	padding-top: 7px;
	padding-left: 5px;
}

.image_box img {
	width: 30px;
	height: 30px;
	border-radius: 50%;
}

.user_info {
	margin-bottom: 3px;
}

.user_info span:first-child {
	font-size: 13px;
	font-weight: 500;
}

.user_info .date {
	font-weight: normal;
	font-size: 12px;
	float: right;
}

.user_info .date a {
	margin-right: 5px;
	color: #ff4a4a;
}

.common_input_box .common_input_text {
	line-height: 40px;
	border: solid 1px rgba(0, 0, 0, 0.05);
	width: 100%;
	padding: 0px 10px 0px 10px;
	box-shadow: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: transparent !important;
	margin: 10px 0px 10px 0px;
	border-radius: 0 !important;
	-webkit-border-radius: 0px !important;
	display: inline-block;
	outline: none;
	position: relative;
}

.common_input_box .submit {
	position: absolute;
	right: 15px;
	z-index: 1;
	margin-top: 19px;
	color: #3F51B5;
}

.common_re_input_box .common_input_text {
	line-height: 40px;
	border: solid 1px rgba(0, 0, 0, 0.05);
	width: 100%;
	padding: 0px 45px 0px 10px;
	box-shadow: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: transparent !important;
	margin: 10px 0px 10px 0px;
	border-radius: 0 !important;
	-webkit-border-radius: 0px !important;
	display: inline-block;
	outline: none;
	position: relative;
}

.common_re_input_box .submit {
	position: absolute;
	right: 15px;
	z-index: 1;
	margin-top: 22px;
	color: #3F51B5;
}

.comment_options a {
	color: #0d5aa7;
	margin-top: 3px;
	display: inline-block;
}

.comment_box {
	padding-bottom: 0;
	padding-top: 0;
}

.edit_box {
	width: 100%;
	border: 1px solid #dddddd;
	padding: 10px;
	display: none;
}

.reply_span_div {
	display: flex;
	align-items: center;
	line-height: 12px;
	font-size: 12px;
	margin-top: 10px;
	justify-content: space-between;
	color: #8E8E8E;
	padding-left: 45px;
}

.reply_created_at {
	font-size: 12px;
	color: #8E8E8E;
}

.reply_right_div {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: center;
	width: calc(100% - 40px);
}

.tag_user {
	color: #4CBCAF !important;
	display: inline-block;
}

.under_group {
	background: #F5F5F5;
	border-radius: 10px;
	padding: 10px;
}

.deleted_msg {
	margin-top: 15px;
	line-height: 1.2;
	font-size: 12px;
	text-align: right
}

.loader_box_reply {
	display: none;
	padding: 20px 0px;
}

.loader_box_reply .loader {
	margin: 0 auto;
	border: 5px solid #f3f3f3;
	border-radius: 50%;
	border-top: 5px solid #4cbcaf;
	width: 40px;
	height: 40px;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
}
/* Add some basic styling to the total_div */
.total_div {
	position: relative;
	bottom: 0;
	left: auto;
	width: -webkit-fill-available;
}
/* Add any other styling you need */
.total_div textarea:focus {
	border: 0; /* 포커스 시 테두리 없애기 */
	outline: none; /* 포커스 테두리 제거 */
}

/* 댓글 좋아요 */
.comment_item .heart {
	width: 12px;
	height: 12px;
	display: inherit;
	padding-bottom: 2px;
	padding-left: 25px;
	background-repeat: no-repeat;
	background-size: contain;
	background-image: url(./resources/images/heart.png);
}
</style>


<meta name="description" content="">
<meta name="author" content="Tooplate">

<title>yme.com</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

<link href="./resources/css/apexcharts.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css"
	rel="stylesheet">
<script src=".\resources\js\swiper-bundle.min.js"></script>
<script src=".\resources\js\swiper-bundle.min2.js"></script>
<script src=".\resources\js\swiper-bundle.min3.js"></script>
</head>
<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="${cpath}/main.do"> <img
				src=".\resources\images\mainLogo.png" style="width: 10%;">&nbsp;10-Minutes
			</a>
		</div>

		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		
		<c:if test="${empty mvo}">
			<div class="dropdown px-3">
				<a class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"
					style="width: 115px; font-style: italic">Login/Join</a>

				<ul class="dropdown-menu bg-white shadow show"
					data-bs-popper="static">
					<div style="margin: 0 10px 0 10px;">
						<form id="lfrm" action="${cpath}/login.do" method="post">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="id" id="id"
									placeholder="ID"
									style="border-color: #A8DADC; border-style: solid;"><label
									for="id">ID</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class=" form-control" name="pw" id="pw"
									placeholder="Password"
									style="border-color: #A8DADC; border-style: solid;"> <label
									for="pw">Password</label>
							</div>
					</div>
					<li class="border-top mt-3 pt-2"><button type="button"
							class="dropdown-item ms-0 me-0" onclick="login()">
							<i class="bi-box-arrow-right me-2"></i> 로그인
						</button>
						</form>
						<button type="button" class="dropdown-item ms-0 me-0"
							onclick="joinPage()">
							<i class="bi-box-arrow-right me-2"></i> 회원가입
						</button></li>

				</ul>
			</div>
		</c:if>

		<!-- 회원 로그인바 -->
		<c:if test="${!empty mvo}">
			<div class="navbar-nav me-lg-2">
				<div class="nav-item text-nowrap d-flex align-items-center">
					<div class="dropdown ps-3">
						<a class="nav-link dropdown-toggle text-center" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"
							id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i> 
								<span class="visually-hidden">New alerts</span>
						</a>

					</div>

				
							<div class="dropdown px-3">
						<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							 <c:if test="${mc_vo eq 'x' }">
							 <img
							src="./resources/images/icons/i_noProfile.png"
							class="profile-image img-fluid" alt="">
							</c:if>
							<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
						</a>
						<ul class="dropdown-menu bg-white shadow">
							<li>
								<div class="dropdown-menu-profile-thumb d-flex">
								<c:if test="${mc_vo eq 'x' }">
									<img src="./resources/images/icons/i_noProfile.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
								<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>

									<div class="d-flex flex-column">
										<small>${mvo.nick}</small>
									</div>
								</div>
							</li>

							<li><a class="dropdown-item" href="${cpath}/myPage.do">
									<i class="bi-person me-2"></i> Profile
							</a></li>

							<li class="border-top mt-3 pt-2 mx-4"><a
								class="dropdown-item ms-0 me-0" href="${cpath }/logout.do"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:if>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="${cpath}/main.do"> <i
								class="bi-house-fill me-2"></i> 메인
						</a></li>

						<li class="nav-item"><a class="nav-link" href="${cpath }/circle_search.do">
								<i class="bi-wallet me-2"></i> 동아리 찾기
						</a></li>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link active" href="javascript:void(0);" onclick="my_circle()">
								<i class="bi-person me-2"></i> 내 동아리</a>
								<ul style="display: none" id="my_circle">
									<li class="nav-item" style="list-style-type: none">
									<a class="nav-link" href="${cpath}/myCircle.do?circle_at=${mvo.circle_at}">${mvo.circle_at}</a>
									</li>
								</ul>
						</li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="${cpath}/researchPage.do"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="${cpath}/make_profile.do"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link" href="${cpath }/myPage.do">
								<i class="bi-gear me-2"></i> 내 정보
						</a></li>
						</c:if>

						<c:if test="${!empty mvo}">
							<li class="nav-item border-top mt-auto pt-2"><a
								class="nav-link" href="${cpath}/logout.do"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-10 px-md-4 border-start">
				<div
					class="custom-block custom-block-profile-front custom-block-profile text-center bg-white"
					style="width: 70%; margin: 0 auto">

					<!-- 게시글 상세보기 -->
					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							 게시글 상세

						</div>
					</div>

					<div class="board" style="margin-bottom: 1rem;">
						<div class="board" style="padding: 20px;">
							<div class="mb-1">
								<!--상단 바로가기 아이콘-->
								<div
									style="display: flex; flex-direction: row; align-items: center; margin-bottom: 20px;">

									
									<!--동아리 홈 이동-->
									
								</div>
								<div>

									<div class="title"
										style="display: flex; align-items: center; justify-content: space-between;">
										<div>${detail_text.board_title} </div>
									<small>조회수 ${detail_text.count}</small>
									</div>

								</div>
								<div
									style="display: flex; align-items: center; padding-left: 5px;">


									<img class="user_img"
										onclick="show_loader();location.href='/web/user/26224'"
										src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/f32ef753-8517-43ff-a0e3-3a65a6390130.gif">


									<div
										style="display: flex; justify-content: space-between; align-items: center; width: 100%; line-height: 1rem;">
										<div style="margin-left: 10px;">


											<div onclick="show_loader();location.href='/web/user/26224'"
												style="display: inline-block">
												<div class="user_name"
													style="display: flex; align-items: center;">${detail_name.id}</div>
											</div>


										</div>
										<!--작성 날짜-->
										<div class="board_created">${detail_text.board_at}</div>
									</div>
								</div>
							</div>
						</div>


						<div class="board" style="padding: 0 40px; margin-bottom: 40px;">
							<div class="activity_info_content mb-5 mt-3"
								style="min-height: auto;">
								<div id="linktest"
									style="word-break: break-word; text-align: left;">${detail_text.board_content}</div>
							</div>
						</div>

						<div class="mt-4"
							style="display: flex; align-content: center; justify-content: center; align-items: center; width: 100%">
							<div
								style="display: flex; flex-direction: column; align-content: center; justify-content: center; align-items: center; width: 20%;">
								<div class="heart" id="like_icon"
									onclick="likeBoard(${detail_text.board_seq})"></div>
								<div id="like_cnt"
									style="font-weight: 300; font-size: 12px; line-height: 14px; text-align: center; letter-spacing: -0.02em; color: #8E8E8E;">
									${detail_text.likes}</div>
							</div>

						</div>


						<div class="reply_box" id="reply_box" style="padding-bottom: 2px">
							<div class="comment_item f-15"
								style="width: 830px; height: 38px; text-align: left;">
								댓글<span class="color-mc">${replies.size()}</span>
							</div>
							<c:forEach items="${replies}" var="reply">
							<div class="comment_item" id="comment_14266">
								<div>
									<div class=""
										style="display: flex; flex-direction: column; width: 100%; margin-bottom: 5px;">
										<div style="display: flex;">
											<div class="c_col_01" id="reply_01_14266"
												style="margin-right: 10px;">
												<img data-id="14266" class="user_thumb"
													src="./resources/images/icons/i_noProfile.png"
													width="35" height="35">
											</div>
											<div class="reply_right_div">
										<img alt="x" src="./resources/images/i_del.png" 
													style="width: 30px; height: 30px;float: right; position: absolute; right: 60px;"
													onclick="removeReply(${detail_text.board_seq}, ${reply.reply_seq})">
												<div class="c_col_02" style="line-height: 1;">
													<div id="reply_02_14266">
														<span class="rw"
															style="display: flex; align-items: center;"> <span
															class="fw600_13_16_3A"
															onclick="show_loader();location.href='/web/user/26146'"
															style="display: flex; align-items: center; font-weight: 700;">${reply.nick}
														</span>
														</span> <span class="rc"
															style="white-space: break-spaces; word-break: break-word; text-align: left;">${reply.reply_content}</span>
													</div>
												</div>
												<div>

													<i class="fa fa-ellipsis-h reply_report" id="14266"
														onclick="report_menu_option(this.id, 26146)"
														style="float: right; color: #a0a0a0; transform: rotate(90deg); font-size: 12px;"></i>
												</div>
											</div>
										</div>
										<div class="reply_span_div">
											<div
												onclick="likeReply(${reply.r_group},${reply.reply_seq})"
												style="display: flex; flex-direction: row; align-items: center;">
												<span
													style="display: flex; flex-direction: row; align-items: center; margin-right: 20px;">
													<span class="c_col_03" id="reply_03_14266"> 
													<span data-index="14266" data-like="0"
														class="heart"
														style="padding-left: 13px; margin-right: 5px; margin-bottom: 0;"></span>
												</span> <span class="fw400_12_14_8E r_cnt" id="14266_like_cnt">${reply.likes}</span>
												</span>


											</div>
											<div style="width: 100%; text-align: right;">
												<span class="fw400_10_12_8E"
													style="font-weight: 300; font-size: 10px; line-height: 12px; letter-spacing: -0.02em; color: #8E8E8E; white-space: nowrap;">${reply.replyDate}</span>
											</div>




										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<div>
							<div class="total_div" style="flex-direction: row;">
								<div class="reply_div" style="width: calc(100% - 0px);">

									<form action="${cpath}/c_treply.do" method="post">

										<input type="hidden" name="id" value="${detail_text.id}" />
											<input type="hidden" name="reply_id" value="${mvo.id}"/>
										<input type="hidden" name="r_group" value="${detail_text.board_seq}" />
										<input type="hidden" name="circle_seq" value="${detail_text.circle_seq }">
<div class="reply_input_tbl">
  <input type="text" class="form-control" placeholder="댓글 입력" aria-label="Recipient's username" name="reply_content" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="submit" id="button-addon2">등록</button>
</div>
										

									</form>

								</div>
							</div>
						</div>
					</div>



				</div>
			</main>
		</div>
		
		
		<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
		<script type="text/javascript">
			function show_loader(){
				
				
			}
		</script>
		
		<script type="text/javascript">
	 function my_circle(){
		 var con = document.getElementById("my_circle")
		 if(con.style.display == "none"){
		 $('#my_circle').css("display","block");
			 
		 }else{
			 $('#my_circle').css("display","none");
		 }
	 }
	</script>
		<script type="text/javascript">
			function likeReply(boardNo, replyNo) {
				if(confirm('이 댓글을 좋아요 하시겠습니까?')) {
					location.replace("${cpath}/c_like_Treply.do?circle_seq="+${detail_text.circle_seq}+"&board_seq="+boardNo+"&r_seq="+replyNo)
				}
			}
			

			function likeBoard(no) {

				location.replace("${cpath}/c_like_tboard.do?board_seq="+no+"&circle_seq="+${detail_text.circle_seq})
			}
			
			function removeReply(boardNo, replyNo) {

				if(confirm('댓글을 삭제 하시겠습니까?')) {
					location.replace("${cpath}/c_remove_Treply.do?board_seq="+boardNo+"&r_seq="+replyNo+"&circle_seq="+${detail_text.circle_seq})
				}
			}
		</script>
</body>
</html>