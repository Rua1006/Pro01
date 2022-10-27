create table faqa (no number primary key, title varchar2(100) not null, content varchar2(600), 
                    author varchar2(16), resdate date default sysdate,
                    gubun number not null,
                    parno number not null);
                    
create sequence fseq;

insert into faqa values (fseq.nextval, '자주하는질문1', '자주하는질문1 테스트','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '자주하는질문2', '자주하는질문2 테스트','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '자주하는질문3', '자주하는질문3 테스트','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '자주하는질문4', '자주하는질문4 테스트','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '자주하는질문5', '자주하는질문5 테스트','admin',sysdate,0,fseq.currval);

insert into faqa values (fseq.nextval, '자주하는질문1에 대한 답변', '답변1 테스트','admin',sysdate,1, 1);
insert into faqa values (fseq.nextval, '자주하는질문2에 대한 답변', '답변2 테스트','admin',sysdate,1, 2);
insert into faqa values (fseq.nextval, '자주하는질문3에 대한 답변', '답변3 테스트','admin',sysdate,1, 3);
insert into faqa values (fseq.nextval, '자주하는질문4에 대한 답변', '답변4 테스트','admin',sysdate,1, 4);
insert into faqa values (fseq.nextval, '자주하는질문5에 대한 답변', '답변5 테스트','admin',sysdate,1, 5);

select*from faqa order by parno asc, gubun asc;
select * from faqa order by parno asc, gubun asc;

commit;