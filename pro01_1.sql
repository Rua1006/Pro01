insert into Member values ('kbs','1234','강병수','kbs@gmail.com','010-0000-1111',sysdate);
insert into Member values ('admin','1111','관리자','admin@gmail.com','010-7777-7777',sysdate);
select*from Member;


insert into board values (bseq.nextval, '테스트글1','테스트글1 내용','kbs',sysdate);
insert into board values (bseq.nextval, '테스트글2','테스트글2 내용','admin',sysdate);
insert into board values (bseq.nextval, '테스트글4','테스트글4 내용','kbs',sysdate);
insert into board values (bseq.nextval, '테스트글5','테스트글5 내용','admin',sysdate);

insert into board values (bseq.nextval, '테스트글7','테스트글7 내용','kbs',sysdate);
insert into board values (bseq.nextval, '테스트글8','테스트글8 내용','admin',sysdate);

insert into board values (bseq.nextval, '테스트글10','테스트글10 내용','admin',sysdate);


select*from board;

create sequence bseq;
