-- id, password, name, ssn regdate

CREATE SEQUENCE article_seq
	START WITH		1000
	INCREMENT BY 	1
	NOCACHE
	NOCYCLE;

CREATE SEQUENCE grade_seq
	START WITH		1000
	INCREMENT BY 	1
	NOCACHE
	NOCYCLE;


ALTER TABLE Member ADD phone VARCHAR2(13);
ALTER TABLE Member ADD email VARCHAR2(20);


CREATE TABLE Member(
	name VARCHAR2(20),
	id VARCHAR2(10), 
	password VARCHAR2(10),
	ssn VARCHAR2(15),
	regdate DATE,
	PRIMARY KEY(id)
);

CREATE TABLE Board(
	article_seq NUMBER,
	id VARCHAR2(20),
	title VARCHAR2(20),
	content VARCHAR2(20),
	hitcount VARCHAR2(20),
	regdate DATE,
	PRIMARY KEY(article_seq),
	FOREIGN KEY (id) REFERENCES Member(id)
		ON DELETE CASCADE
);

ALTER TABLE Member
DROP CONSTRAINT member_fk_major


ALTER TABLE Member ADD major_id VARCHAR2(10);
ALTER TABLE Member
ADD CONSTRAINT member_fk_major
FOREIGN KEY (major_id)
REFERENCES Major (major_id)
ON DELETE CASCADE;

CREATE TABLE Major(
	major_id VARCHAR2(10),
	title VARCHAR2(10),
	PRIMARY KEY(major_id)
	
)

ALTER TABLE Subject ADD major_id VARCHAR2(10);
ALTER TABLE Subject
ADD CONSTRAINT subject_fk_major
FOREIGN KEY (major_id)
REFERENCES Major (major_id);
ON DELETE CASCADE;


ALTER TABLE Grade ADD id VARCHAR2(10);
ALTER TABLE Grade
ADD CONSTRAINT grade_fk_member
FOREIGN KEY (id)
REFERENCES member(id)
ON DELETE CASCADE;


CREATE TABLE Grade(
	grade_seq VARCHAR2(10),
	score VARCHAR2(10),
	exam_date VARCHAR2(10),
	PRIMARY KEY(grade_seq)
)
CREATE TABLE Subject(
	subj_id VARCHAR2(10),
	title VARCHAR2(10),
	PRIMARY KEY(subj_id) 
)


SELECT * FROM MEMBER WHERE name='홍길동';
Alter Table Board Modify(content VARCHAR2(100));

INSERT INTO MAJOR(major_id,title)
VALUES('economics','경제학');

INSERT INTO subject(subj_id,title)
VALUES('python','파이썬');

UPDATE SUBJECT SET major_id ='computer'

UPDATE Member SET major_id ='computer'
UPDATE Member SET PROFILE ='defaultIMG.jpg'
ALTER TABLE Member ADD PROFILE VARCHAR2(30);



SELECT * FROM tab;
SELECT * FROM MAJOR;
SELECT * FROM Board;
SELECT * FROM Member;
SELECT * FROM Grade;
SELECT * FROM subject;

DROP TABLE Major;
