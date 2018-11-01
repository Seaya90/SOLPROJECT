CREATE TABLE FREEBOOK (
    IDX NUMBER PRIMARY KEY,
    NAME VARCHAR2(30),
    SUBJECT VARCHAR2(100),
    CONTENT VARCHAR2(4000),
    PWD VARCHAR2(50),
    REGDATE DATE 
    );
    
    SELECT * FROM FREEBOOK;
    
    
 CREATE SEQUENCE FREEBOOK_SEQ NOCACHE;
 
INSERT INTO FREEBOOK (IDX,NAME,SUBJECT,CONTENT,PWD,REGDATE)
VALUES (FREEBOOK_SEQ.NEXTVAL, '장만옥','하이','반갑다', '0000', SYSDATE - 3);