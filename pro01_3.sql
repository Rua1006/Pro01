create table faqa (no number primary key, title varchar2(100) not null, content varchar2(600), 
                    author varchar2(16), resdate date default sysdate,
                    gubun number not null,
                    parno number not null);
                    
create sequence fseq;

insert into faqa values (fseq.nextval, '�����ϴ�����1', '�����ϴ�����1 �׽�Ʈ','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '�����ϴ�����2', '�����ϴ�����2 �׽�Ʈ','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '�����ϴ�����3', '�����ϴ�����3 �׽�Ʈ','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '�����ϴ�����4', '�����ϴ�����4 �׽�Ʈ','admin',sysdate,0,fseq.currval);
insert into faqa values (fseq.nextval, '�����ϴ�����5', '�����ϴ�����5 �׽�Ʈ','admin',sysdate,0,fseq.currval);

insert into faqa values (fseq.nextval, '�����ϴ�����1�� ���� �亯', '�亯1 �׽�Ʈ','admin',sysdate,1, 1);
insert into faqa values (fseq.nextval, '�����ϴ�����2�� ���� �亯', '�亯2 �׽�Ʈ','admin',sysdate,1, 2);
insert into faqa values (fseq.nextval, '�����ϴ�����3�� ���� �亯', '�亯3 �׽�Ʈ','admin',sysdate,1, 3);
insert into faqa values (fseq.nextval, '�����ϴ�����4�� ���� �亯', '�亯4 �׽�Ʈ','admin',sysdate,1, 4);
insert into faqa values (fseq.nextval, '�����ϴ�����5�� ���� �亯', '�亯5 �׽�Ʈ','admin',sysdate,1, 5);

select*from faqa order by parno asc, gubun asc;
select * from faqa order by parno asc, gubun asc;

commit;