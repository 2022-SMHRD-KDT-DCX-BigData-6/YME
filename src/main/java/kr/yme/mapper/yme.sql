-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- t_member Table Create SQL
-- 테이블 생성 SQL - t_member
CREATE TABLE t_member
(
    `id`           VARCHAR(30)    NOT NULL    COMMENT '아이디. 아이디', 
    `pw`           VARCHAR(30)    NOT NULL    COMMENT '비밀번호. 비밀번호', 
    `name`         VARCHAR(40)    NOT NULL    COMMENT '이름. 이름', 
    `nick`         VARCHAR(25)    NOT NULL    COMMENT '닉네임. 닉네임', 
    `phone`        VARCHAR(20)    NOT NULL    COMMENT '전화번호. 전화번호', 
    `univ`         VARCHAR(30)    NOT NULL    COMMENT '소속 대학교. 소속 대학교', 
    `circle_from`  VARCHAR(30)    NOT NULL    COMMENT '소속 동아리. 소속 동아리', 
    `preference`   TEXT           NOT NULL    COMMENT '성향분석태그. 성향분석태그', 
    `region`       VARCHAR(50)    NOT NULL    COMMENT '지역. 지역', 
    `mbti`         VARCHAR(20)    NOT NULL    COMMENT 'MBTI. MBTI', 
    `brithdate`    DATE           NOT NULL    COMMENT '생년월일. 생년월일', 
    `created_at`   DATETIME       NOT NULL    COMMENT '가입일자. 가입일자', 
     PRIMARY KEY (id)
);

select * from t_member;

insert into t_member values('test01','1234','테스트','테스트','010-1111-1111','SMHRD','smhrd','#내향,#집콕','광주','ISTP','2000-05-30',now());
insert into t_member values('test02','1234','테스트2','테스트2','010-2222-2222','SMHRD','smhrd','#외향,#집콕','담양','ESTP','1999-06-30',now());



-- 테이블 Comment 설정 SQL - t_member
ALTER TABLE t_member COMMENT '회원. 회원';


-- t_circle Table Create SQL
-- 테이블 생성 SQL - t_circle
CREATE TABLE t_circle
(
    `circle_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '동아리 순번. 동아리 순번', 
    `circle_name`      VARCHAR(60)     NOT NULL    COMMENT '동아리 명. 동아리 명', 
    `circle_logo`      VARCHAR(600)    NOT NULL    COMMENT '동아리 로고. 동아리 로고', 
    `circle_univ`      VARCHAR(60)     NOT NULL    COMMENT '소속 대학교. 소속 대학교', 
    `circle_at`        DATE            NOT NULL    COMMENT '개설일자. 개설일자', 
    `circle_category`  VARCHAR(30)     NOT NULL    COMMENT '동아리 카테고리. 동아리 카테고리', 
    `id`               VARCHAR(30)     NOT NULL    COMMENT '개설자 아이디. 개설자 아이디', 
     PRIMARY KEY (circle_seq)
);

-- 테이블 Comment 설정 SQL - t_circle
ALTER TABLE t_circle COMMENT '동아리. 동아리';

-- Foreign Key 설정 SQL - t_circle(id) -> t_member(id)
ALTER TABLE t_circle
    ADD CONSTRAINT FK_t_circle_id_t_member_id FOREIGN KEY (id)
        REFERENCES t_member (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_circle(id)
-- ALTER TABLE t_circle
-- DROP FOREIGN KEY FK_t_circle_id_t_member_id;


-- t_meeting Table Create SQL
-- 테이블 생성 SQL - t_meeting
CREATE TABLE t_meeting
(
    `meeting_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '모임 순번. 모임 순번', 
    `meeting_name`      VARCHAR(60)     NOT NULL    COMMENT '모임 이름. 모임 이름', 
    `meeting_at`        DATE            NOT NULL    COMMENT '모임 개설일자. 모임 개설일자', 
    `meeting_period`    VARCHAR(60)     NOT NULL    COMMENT '모임 기간. 모임 기간', 
    `meeting_limit`     INT             NOT NULL    COMMENT '모임 인원수. 모임 인원수', 
    `meeting_category`  VARCHAR(30)     NOT NULL    COMMENT '모임 카테고리. 모임 카테고리', 
     PRIMARY KEY (meeting_seq)
);

-- 테이블 Comment 설정 SQL - t_meeting
ALTER TABLE t_meeting COMMENT '소모임. 소모임';


-- t_circle_chatroom Table Create SQL
-- 테이블 생성 SQL - t_circle_chatroom
CREATE TABLE t_circle_chatroom
(
    `room_seq`     INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '방 순번. 방 순번', 
    `room_opener`  VARCHAR(30)     NOT NULL    COMMENT '방 개설자. 방 개설자', 
    `room_title`   VARCHAR(600)    NOT NULL    COMMENT '방 제목. 방 제목', 
    `room_desc`    TEXT            NOT NULL    COMMENT '방 소개. 방 소개', 
    `room_limit`   INT             NOT NULL    COMMENT '방 인원수. 방 인원수', 
    `room_status`  CHAR(1)         NOT NULL    COMMENT '방 상태. 방 상태', 
    `room_at`      DATETIME        NOT NULL    COMMENT '방 개설일자. 방 개설일자', 
    `circle_seq`   INT UNSIGNED    NOT NULL    COMMENT '동아리 순번. 동아리 순번', 
     PRIMARY KEY (room_seq)
);

-- 테이블 Comment 설정 SQL - t_circle_chatroom
ALTER TABLE t_circle_chatroom COMMENT '채팅방. 채팅방';

-- Foreign Key 설정 SQL - t_circle_chatroom(circle_seq) -> t_circle(circle_seq)
ALTER TABLE t_circle_chatroom
    ADD CONSTRAINT FK_t_circle_chatroom_circle_seq_t_circle_circle_seq FOREIGN KEY (circle_seq)
        REFERENCES t_circle (circle_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_circle_chatroom(circle_seq)
-- ALTER TABLE t_circle_chatroom
-- DROP FOREIGN KEY FK_t_circle_chatroom_circle_seq_t_circle_circle_seq;


-- t_meeting_chatroom Table Create SQL
-- 테이블 생성 SQL - t_meeting_chatroom
CREATE TABLE t_meeting_chatroom
(
    `room_seq`     INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '방 순번. 방 순번', 
    `room_opener`  VARCHAR(30)     NOT NULL    COMMENT '방 개설자. 방 개설자', 
    `room_title`   VARCHAR(600)    NOT NULL    COMMENT '방 제목. 방 제목', 
    `room_desc`    TEXT            NOT NULL    COMMENT '방 소개. 방 소개', 
    `room_limit`   INT             NOT NULL    COMMENT '방 인원수. 방 인원수', 
    `room_status`  CHAR(1)         NOT NULL    COMMENT '방 상태. 방 상태', 
    `room_at`      DATETIME        NOT NULL    COMMENT '방 개설일자. 방 개설일자', 
    `meeting_seq`  INT UNSIGNED    NOT NULL    COMMENT '모임 순번. 모임 순번', 
     PRIMARY KEY (room_seq)
);

-- 테이블 Comment 설정 SQL - t_meeting_chatroom
ALTER TABLE t_meeting_chatroom COMMENT '채팅방. 채팅방';

-- Foreign Key 설정 SQL - t_meeting_chatroom(meeting_seq) -> t_meeting(meeting_seq)
ALTER TABLE t_meeting_chatroom
    ADD CONSTRAINT FK_t_meeting_chatroom_meeting_seq_t_meeting_meeting_seq FOREIGN KEY (meeting_seq)
        REFERENCES t_meeting (meeting_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_meeting_chatroom(meeting_seq)
-- ALTER TABLE t_meeting_chatroom
-- DROP FOREIGN KEY FK_t_meeting_chatroom_meeting_seq_t_meeting_meeting_seq;


-- t_tendency Table Create SQL
-- 테이블 생성 SQL - t_tendency
CREATE TABLE t_tendency
(
    `tendency_seq`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '분석 순번. 분석 순번', 
    `id`              VARCHAR(30)     NOT NULL    COMMENT '회원 아이디. 회원 아이디', 
    `question`        TEXT            NOT NULL    COMMENT '질문번호. 질문번호', 
    `answer`          TEXT            NOT NULL    COMMENT '답변내용. 답변내용', 
    `answer_at`       DATETIME        NOT NULL    COMMENT '답변시간. 답변시간', 
    `question_order`  INT             NULL        COMMENT '질문순번. 질문순번', 
     PRIMARY KEY (tendency_seq)
);

-- 테이블 Comment 설정 SQL - t_tendency
ALTER TABLE t_tendency COMMENT '성향 분석. 성향 분석';

-- Foreign Key 설정 SQL - t_tendency(id) -> t_member(id)
ALTER TABLE t_tendency
    ADD CONSTRAINT FK_t_tendency_id_t_member_id FOREIGN KEY (id)
        REFERENCES t_member (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_tendency(id)
-- ALTER TABLE t_tendency
-- DROP FOREIGN KEY FK_t_tendency_id_t_member_id;


-- t_meeting_join Table Create SQL
-- 테이블 생성 SQL - t_meeting_join
CREATE TABLE t_meeting_join
(
    `join_seq`     INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '가입 순번. 가입 순번', 
    `meeting_seq`  INT UNSIGNED    NOT NULL    COMMENT '모임 순번. 모임 순번', 
    `id`           VARCHAR(30)     NOT NULL    COMMENT '회원 아이디. 회원 아이디', 
    `joined_at`    DATETIME        NOT NULL    COMMENT '가입 일자. 가입 일자', 
     PRIMARY KEY (join_seq)
);

-- 테이블 Comment 설정 SQL - t_meeting_join
ALTER TABLE t_meeting_join COMMENT '소모임 가입. 소모임 가입';

-- Foreign Key 설정 SQL - t_meeting_join(id) -> t_member(id)
ALTER TABLE t_meeting_join
    ADD CONSTRAINT FK_t_meeting_join_id_t_member_id FOREIGN KEY (id)
        REFERENCES t_member (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_meeting_join(id)
-- ALTER TABLE t_meeting_join
-- DROP FOREIGN KEY FK_t_meeting_join_id_t_member_id;

-- Foreign Key 설정 SQL - t_meeting_join(meeting_seq) -> t_meeting(meeting_seq)
ALTER TABLE t_meeting_join
    ADD CONSTRAINT FK_t_meeting_join_meeting_seq_t_meeting_meeting_seq FOREIGN KEY (meeting_seq)
        REFERENCES t_meeting (meeting_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_meeting_join(meeting_seq)
-- ALTER TABLE t_meeting_join
-- DROP FOREIGN KEY FK_t_meeting_join_meeting_seq_t_meeting_meeting_seq;


-- t_circle_talk Table Create SQL
-- 테이블 생성 SQL - t_circle_talk
CREATE TABLE t_circle_talk
(
    `talk_seq`  INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '채팅 순번. 채팅 순번', 
    `talker`    VARCHAR(30)     NOT NULL    COMMENT '발화자. 발화자', 
    `talk`      TEXT            NULL        COMMENT '발화내용. 발화내용', 
    `emoticon`  VARCHAR(600)    NULL        COMMENT '이모티콘. 이모티콘', 
    `talk_at`   DATETIME        NOT NULL    COMMENT '발화시간. 발화시간', 
    `room_seq`  INT UNSIGNED    NOT NULL    COMMENT '방 순번. 방 순번', 
     PRIMARY KEY (talk_seq)
);

-- 테이블 Comment 설정 SQL - t_circle_talk
ALTER TABLE t_circle_talk COMMENT '채팅내용. 채팅내용';

-- Foreign Key 설정 SQL - t_circle_talk(room_seq) -> t_circle_chatroom(room_seq)
ALTER TABLE t_circle_talk
    ADD CONSTRAINT FK_t_circle_talk_room_seq_t_circle_chatroom_room_seq FOREIGN KEY (room_seq)
        REFERENCES t_circle_chatroom (room_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_circle_talk(room_seq)
-- ALTER TABLE t_circle_talk
-- DROP FOREIGN KEY FK_t_circle_talk_room_seq_t_circle_chatroom_room_seq;


-- t_circle_join Table Create SQL
-- 테이블 생성 SQL - t_circle_join
CREATE TABLE t_circle_join
(
    `join_seq`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '가입 순번. 가입 순번', 
    `circle_seq`  INT UNSIGNED    NOT NULL    COMMENT '동아리 순번. 동아리 순번', 
    `id`          VARCHAR(30)     NOT NULL    COMMENT '회원 아이디. 회원 아이디', 
    `joined_at`   DATETIME        NOT NULL    COMMENT '가입 일자. 가입 일자', 
     PRIMARY KEY (join_seq)
);

-- 테이블 Comment 설정 SQL - t_circle_join
ALTER TABLE t_circle_join COMMENT '동아리 가입. 동아리 가입';

-- Foreign Key 설정 SQL - t_circle_join(circle_seq) -> t_circle(circle_seq)
ALTER TABLE t_circle_join
    ADD CONSTRAINT FK_t_circle_join_circle_seq_t_circle_circle_seq FOREIGN KEY (circle_seq)
        REFERENCES t_circle (circle_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_circle_join(circle_seq)
-- ALTER TABLE t_circle_join
-- DROP FOREIGN KEY FK_t_circle_join_circle_seq_t_circle_circle_seq;

-- Foreign Key 설정 SQL - t_circle_join(id) -> t_member(id)
ALTER TABLE t_circle_join
    ADD CONSTRAINT FK_t_circle_join_id_t_member_id FOREIGN KEY (id)
        REFERENCES t_member (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_circle_join(id)
-- ALTER TABLE t_circle_join
-- DROP FOREIGN KEY FK_t_circle_join_id_t_member_id;


-- t_meeting_talk Table Create SQL
-- 테이블 생성 SQL - t_meeting_talk
CREATE TABLE t_meeting_talk
(
    `talk_seq`  INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '채팅 순번. 채팅 순번', 
    `talker`    VARCHAR(30)     NOT NULL    COMMENT '발화자. 발화자', 
    `talk`      TEXT            NULL        COMMENT '발화내용. 발화내용', 
    `emoticon`  VARCHAR(600)    NULL        COMMENT '이모티콘. 이모티콘', 
    `talk_at`   DATETIME        NOT NULL    COMMENT '발화시간. 발화시간', 
    `room_seq`  INT UNSIGNED    NOT NULL    COMMENT '방 순번. 방 순번', 
     PRIMARY KEY (talk_seq)
);

-- 테이블 Comment 설정 SQL - t_meeting_talk
ALTER TABLE t_meeting_talk COMMENT '채팅내용. 채팅내용';

-- Foreign Key 설정 SQL - t_meeting_talk(room_seq) -> t_meeting_chatroom(room_seq)
ALTER TABLE t_meeting_talk
    ADD CONSTRAINT FK_t_meeting_talk_room_seq_t_meeting_chatroom_room_seq FOREIGN KEY (room_seq)
        REFERENCES t_meeting_chatroom (room_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Foreign Key 삭제 SQL - t_meeting_talk(room_seq)
-- ALTER TABLE t_meeting_talk
-- DROP FOREIGN KEY FK_t_meeting_talk_room_seq_t_meeting_chatroom_room_seq;


