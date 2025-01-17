-- iouser : tbl_todolist

CREATE TABLE tbl_todolist (
    td_seq	    NUMBER		    PRIMARY KEY,
    td_date 	VARCHAR2(10)	NOT NULL,
    td_time	    VARCHAR2(8)	    NOT NULL,
    td_subject	nVARCHAR2(125)	NOT NULL,
    td_text	    nVARCHAR2(1000),
    
    -- insert를 수행할 때 값을 추가하지  않으면 기본값으로 칼럼을 채워라
    -- DEFAULT 항목이 설정되면 오라클에서는 NOT NULL 로 설정이 된다.
    td_flag	    VARCHAR2(1)	    DEFAULT'1',
    td_complete	VARCHAR2(1)	    DEFAULT'N',
    td_alarm	VARCHAR2(1)	    DEFAULT'N'	
);

CREATE SEQUENCE SEQ_TODO
START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_todolist(td_seq, td_date, td_time, td_subject)
VALUES(0, '2019-12-31', '10:00:00', '망년회');

SELECT * FROM tbl_todolist;

COMMIT;