-- 도서정보 테이블 생성
-- 구입한 도서 정보를 기록
CREATE TABLE tbl_books (

    B_CODE	    VARCHAR2(20)	PRIMARY KEY, -- 도서코드
    B_NAME	    nVARCHAR2(125)	NOT NULL,    -- 도서명
    B_COMP	    nVARCHAR2(125),              -- 출판사
    B_AUTHER	nVARCHAR2(125)	NOT NULL,    -- 저자
    B_TRANS	    nVARCHAR2(125),              -- 역자
    B_PAGE	    NUMBER,		                 -- 페이지
    B_YEAR	    VARCHAR2(10),                -- 구입일자
    B_IPRICE	NUMBER		                 -- 구입가격

);

-- 로그인정보 테이블 생성
-- 도서를 대여할 회원정보 테이블
CREATE TABLE tbl_member (

    M_ID	        VARCHAR2(20)	NOT NULL	PRIMARY KEY, -- ID
    M_PASSWORD	    nVARCHAR2(125)	NOT NULL,                -- 비밀번호
    M_LOGIN_DATE	VARCHAR2(10),                            -- 최종로그인
    M_REM	        nVARCHAR2(125)                           -- 기타

);

-- 독서록 테이블 생성
-- 구입한 도서의 독서한 기록을 관리
CREATE TABLE tbl_read_book (

    RB_SEQ	    NUMBER	        NOT NULL	PRIMARY KEY, -- 일련번호
    RB_BCODE	VARCHAR2(20)	NOT NULL,                -- 도서코드
    RB_DATE	    VARCHAR2(10)	NOT NULL,                -- 독서일자
    RB_STIME	VARCHAR2(10),                            -- 독서시작시각
    RB_RTIME	NUMBER(10,3),                            -- 독서시간
    RB_SUBJECT	nVARCHAR2(20),                           -- 한줄소감
    RB_TEXT	    nVARCHAR2(400),                          -- 긴줄소감
    RB_STAR 	NUMBER                                   -- 독서느낌(별점)

);

DELETE FROM tbl_books;

SELECT * FROM tbl_books;

COMMIT;


-- readbook seq
CREATE SEQUENCE SEQ_RB
START WITH 1 INCREMENT BY 1;

-- Foreign Key가 다른 테이블의 기본 키 칼럼을 가리키는 데이터의 참조 무결성을 확인하기 위하여 사용. 허용된 데이터값만 저장
ALTER TABLE tbl_read_book -- 연동되는 TABLE
ADD CONSTRAINT FK_BOOK
FOREIGN KEY(rb_bcode) -- 연동되는 칼럼
REFERENCES tbl_books(b_code); -- PK 키로 설정된 부분




SELECT * FROM tbl_read_book;
SELECT * FROM tbl_member;













