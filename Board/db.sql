
---------컬럼 변경----------
--컬럼추가
ALTER TABLE tblCommunity ADD stuseq number default '1' not null;
--컬럼삭제
ALTER TABLE tblqnaanswer DROP COLUMN qasubject;
--자료형 사이즈
ALTER TABLE dbo.emp ALTER COLUMN email VARCHAR(100)
--데이터 타입변경
ALTER TABLE dbo.emp ALTER COLUMN email TEXT
-- NOT NULL 설정
ALTER TABLE dbo.emp ALTER COLUMN email VARCHAR(25) NOT NULL
-- NOT NULL 제거
ALTER TABLE dbo.emp ALTER COLUMN email VARCHAR(25)
-- DEFAULT값 설정
ALTER TABLE tblCommuComment ADD CONSTRAINT commucomment_default DEFAULT sysdate FOR ccregdate;
-- DEFAULT값 제거
ALTER TABLE dbo.emp DROP CONSTRAINT df_emp_email
-- 컬럼 추가 (NOT NULL 설정)
ALTER TABLE dbo.emp ADD email VARCHAR(25) NOT NULL
-- 컬럼 추가 (DEFAULT 값 설정)
ALTER TABLE dbo.emp ADD email VARCHAR(25) DEFAULT 'None'
-- 컬럼 추가 (NOT NULL 설정 + DEFAULT 값 설정)
ALTER TABLE dbo.emp ADD email VARCHAR(25) NOT NULL DEFAULT 'None'
--외래키 컬럼추가
ALTER TABLE tblcommunity
ADD CONSTRAINT fk_stuseq foreign KEY(stuseq) references tblstudent (stuseq);


create table tblBoard( 
    bseq number primary key,
    subject varchar2(1000) not null,
    content varchar2(3000) not null,
    regdate date default sysdate null ,
    mseq number not null references tblMember(mseq)
);


create table tblMember( 
    mseq number primary key,
    id varchar2(100) not null unique,
    pw varchar2(100) not null,
    name varchar2(30) not null,
    email varchar2(100) not null,
    active char(1) default 'y' not null
);

select * from tblmember;
select * from tblboard;
create sequence seqmember;
insert into tblmember(mseq,id,pw,name,email,active) values(seqmember.nextVal,'aaa','1111','유동환','dong@gmail.com',default);
insert into tblmember(mseq,id,pw,name,email,active) values(seqmember.nextVal,'bbb','1111','성윤진','dong2@gmail.com',default);
insert into tblmember(mseq,id,pw,name,email,active) values(seqmember.nextVal,'ccc','1111','송진표','dong3@gmail.com',default);
commit;