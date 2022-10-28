create table member(id varchar2(16) primary key, pw varchar2(20) not null, name varchar2(50) not null, 
                    email varchar2(100), tel varchar2(13), regdate date default sysdate);

create table board(no number primary key, title varchar2(100) not null, content varchar2(600), 
                    author varchar2(16), resdate date default sysdate,
                    constraint fk_board foreign key(author) references member(id));

--질문 및 답변 테이블 생성(비밀글)                    
create table qnaa(no number primary key, title varchar2(100) not null, content varchar2(600), 
                    author varchar2(16), resdate date default sysdate,
                    lev number not null, parno number not null, sec char(1));
create sequence qaeq;
select*from qnaa;

DELETE FROM qnaa WHERE author = 'admin';

drop sequence qaeq;
drop table qnaa;

--질문
--y가 비밀글,n이 비밀글 아닐경우
insert into qnaa values(qaeq.nextval, '비밀글', '비밀글테스트1', 'kbs', sysdate, 0, qaeq.currval, 'Y');
insert into qnaa values(qaeq.nextval, '비밀글2', '비밀글테스트', 'kbs', sysdate, 0, qaeq.currval, 'Y');
insert into qnaa values(qaeq.nextval, '공개글', '공개글테스트', 'dingo5587', sysdate, 0, qaeq.currval, 'N');
insert into qnaa values(qaeq.nextval, '공개글2', '공개글테스트', 'dingo5587', sysdate, 0, qaeq.currval, 'N');

--답변
insert into qnaa values(qaeq.nextval, '비밀글 답변', '답변테스트', 'admin', sysdate, 1, 1, 'Y');
insert into qnaa values(qaeq.nextval, '비밀글 답변2', '답변테스트', 'admin', sysdate, 1, 2, 'Y');
insert into qnaa values(qaeq.nextval, '공개글 답변', '답변테스트', 'admin', sysdate, 1, 3, 'N');
insert into qnaa values(qaeq.nextval, '공개글 답변2', '답변테스트','admin',sysdate,1,4,'N');


select no from (select * from faqa order by rownum desc) where rownum=1;
select no from (select*from qnaa order by rownum desc) where rownum=1;



select*from qnaa order by parno asc, lev asc;

delete from qnaa where parno=12;

commit;

    