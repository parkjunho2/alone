create table member(
member_id varchar2(20),
member_pw varchar2(16),
member_nickname varchar2(30),
member_birth char(10),
member_contact char(11)
);
drop table member;


create table orders(
orders_name varchar2(60) not null unique,
orders_type char(6) not null,
orders_price number default 0 not null,
orders_discount number(3) default 0,
orders_count number default 1 not null,
orders_early char(1),
check(orders_price>=0),
check(orders_count>0),
check(orders_discount>=0 and orders_discount<=100),
-- check(order_discount between 0 and 100)
check(orders_type='라면' or orders_type='제과'),
--check(order_type in ('라면','제과'))
check(orders_early = 'Y'),
check(regexp_like(orders_name, '^[가-힣A-Za-z0-9]{1,20}$'))
);
drop table orders;
INSERT into orders(
orders_name, orders_type, orders_price, orders_discount, orders_count, orders_early
)
values ('비김면','라면',16800,0,2,'Y');
select * from orders;



drop table phone;
create table phone(
phone_name varchar2(60) not null,
phone_type char(2) not null,
phone_price number default 0 not null,
phone_period number(2) default 0,
check(regexp_like(phone_name, '^[가-힣A-Za-z0-9\s]+$')),
check(phone_type in('KT','LG','SK')),
check(phone_price >=0),
check(phone_period in(0,24,36))
);
insert into phone(phone_name,phone_type,phone_price)
values('갤럭시Fold4','SK',1800000);
insert into phone(phone_name,phone_type,phone_price,phone_period)
values('갤럭시Fold4','KT',1750000,24);
insert into phone(phone_name,phone_type,phone_price,phone_period)
values('아이폰15','LG',2000000,36);
insert into phone(phone_name,phone_type,phone_price)
values('아이폰15','SK',1990000);

SELECT * from phone;




drop table poketmon;
create table poketmon(
poketmon_no number primary key,
poketmon_name varchar2(30) not null,
poketmon_type varchar2(12) not null
);
create sequence poketmon_seq cycle ;
drop sequence poketmon_seq;
select * from USER_SEQUENCES;

insert into poketmon(poketmon_no,poketmon_name,poketmon_type)
values(poketmon_seq.nextval,'피카츄','전기');
commit;
SELECT *  from poketmon;




drop table board;
create table board(
board_no number primary key,
board_title varchar2(300) not null,
board_content varchar2(4000) not null,
board_writer varchar2(20),
board_count number default 0 not null,
check(board_count>=0),
board_time date default sysdate not null,
check(regexp_like(board_writer, '^[a-z][a-z0-9]{4,19}$'))
);
drop sequence board_seq;
create sequence board_seq;

insert into board(
board_no, board_title, board_content, board_writer
)
values(board_seq.nextval,'제목테스트','내용테스트','test1234');

SELECT * from board;





SELECT * FROM member;
drop table product;
create table product(
no number primary key,
name varchar2(30) not null,
type varchar2(15) check(type in ('과자','아이스크림','주류','사탕','초콜릿')),
price number,
made date,
expire date
);
INSERT INTO product VALUES (1, '스크류바', '아이스크림', 1200, TO_DATE('2022-05-01', 'YYYY-MM-DD'), TO_DATE('2022-10-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (2, '마이쮸', '사탕', 900, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (3, '초코파이', '과자', 3000, TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (4, '맛동산', '과자', 2200, TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2022-10-20', 'YYYY-MM-DD'));
INSERT INTO product VALUES (5, '참이슬', '주류', 1000, TO_DATE('2022-01-05', 'YYYY-MM-DD'), TO_DATE('2022-04-05', 'YYYY-MM-DD'));
INSERT INTO product VALUES (6, '처음처럼', '주류', 1000, TO_DATE('2022-03-15', 'YYYY-MM-DD'), TO_DATE('2022-08-15', 'YYYY-MM-DD'));
INSERT INTO product VALUES (7, '바나나킥', '과자', 1500, TO_DATE('2022-05-03', 'YYYY-MM-DD'), TO_DATE('2022-06-03', 'YYYY-MM-DD'));
INSERT INTO product VALUES (8, '빠삐코', '아이스크림', 1000, TO_DATE('2023-12-01', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (9, '멘토스', '사탕', 1200, TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));
INSERT INTO product VALUES (10, '오레오', '과자', 2100, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (11, '포카칩', '과자', 1500, TO_DATE('2022-05-05', 'YYYY-MM-DD'), TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO product VALUES (12, '칸쵸', '과자', 1000, TO_DATE('2022-06-10', 'YYYY-MM-DD'), TO_DATE('2023-06-10', 'YYYY-MM-DD'));
INSERT INTO product VALUES (13, '허니버터칩', '과자', 1700, TO_DATE('2022-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (14, '새우깡', '과자', 1200, TO_DATE('2022-08-01', 'YYYY-MM-DD'), TO_DATE('2023-08-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (15, '칙촉', '과자', 2500, TO_DATE('2022-09-01', 'YYYY-MM-DD'), TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (16, '가나초콜릿', '초콜릿', 2000, TO_DATE('2022-10-01', 'YYYY-MM-DD'), TO_DATE('2023-10-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (17, '빼빼로', '과자', 1500, TO_DATE('2022-11-11', 'YYYY-MM-DD'), TO_DATE('2023-11-11', 'YYYY-MM-DD'));
INSERT INTO product VALUES (18, '파이리', '사탕', 1000, TO_DATE('2022-12-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (19, '초코송이', '과자', 1200, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (20, '빈츠', '과자', 1300, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2024-02-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (21, '죠리퐁', '과자', 1400, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (22, '오징어집', '과자', 1500, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (23, '누네띠네', '과자', 1200, TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (24, '포테토칩', '과자', 1600, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (25, '새콤달콤', '사탕', 1000, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (26, '카라멜콘', '과자', 1100, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (27, '오징어땅콩', '과자', 1500, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2024-09-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (28, '스니커즈', '초콜릿', 2000, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (29, '트윅스', '초콜릿', 2000, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'));
INSERT INTO product VALUES (30, '킷캣', '초콜릿', 2100, TO_DATE('2023-12-01', 'YYYY-MM-DD'), TO_DATE('2024-12-01', 'YYYY-MM-DD'));
-- product 전체조회
select * from product;
--상품명과 가격만 조회
select name, price from product;
-- 계산 결과를 항목으로 조회하는 것도 가능
-- (Q) 상품별로 유통기한이 얼마나 되는지 조회( 마이너스 해서 남은 일 수 계산)
select name, expire-made from product;
--별칭을 줄 수 있다
select name 이름, expire-made 유통기간 from product;
--(Q)전부다 출력하면서 유통기간을 출력하려면?
--select *,exprie-made 유통기간 from product; [error]
select product.*, expire-made 유통기간 from product;

--조건(where)
--데이터를 전부 다 조회하는 것이 아니라 원하는 값만 필터링
--숫자,문자, 날짜에 따라 자주 쓰는 조건이 달라짐

--숫자 조건
select * from product where price>=2000;

-- 2000 이상 3000 이하
select * from product where price>=1000 and price<=2000;
select * from product where price between 1000 and 2000; --미만은 안됌
--(Q) 7번 상품 정보를 조회
select * from product where no = 7;
select * from product where no in(11,13,15); --no=11 or no=13 or no=15;

-- 문자 조건
-- 문자도 부등호 사용이 가능하지만 잘 안씀
-- 일치하는지 비슷한지로 조회하는 경우가 많다
select * from product where type ='아이스크림';
select * from product where type in('아이스크림','과자');

-- 상품명이 '오'로 시작하는 정보를 조회
--[1] like 검색
select * from product  where name like '오%'; --(시작검색 특화)
--[2] INSRT 함수 - 자바의 indexOf() 처럼 위치를 찾는 방식
select * from product where instr(name, '오') =1; --(전반적으로 무난)

--(Q) '이' 가 상품명에 포함된 상품조회
select * from product where name like '%이%';
select * from product where instr(name,'이') >0;
--(Q) '이' 로 상품명이 끝나는 상품 조회
select * from product where name like '이%';
select * from product where instr(name,'이') = length(name);

-- 정규표현식을 조건에 사용: regexp_like
select * from product where regexp_like(name,'(초코|버터)');

--날짜 조건
--비교가 가능하다(어제보다 오늘이 더 큼)
--문자열처럼 조회도 가능하다
--날짜 전용 명령도 존재

--ex) 2022년에 생상된 제품 조회
--[1] 제조년도가 2022인 제품 조회
select * from product where extract(year from made) = 2022;
--[2] 제조일자가 2022로 시작(비추천)
select * from product where made like '22%';
--[3] 제조일자가 2022-01-01 ~2022-12-31인 제품 조회
select * from PRODUCT
WHERE
made >= to_date('2022-01-01 00:00:00', 'yyyy-mm-dd hh24:mi;ss')
AND 
made <= to_date('2022-12-31 23:59:59', 'yyyy-mm-dd hh24:mi;ss');
select * from product where made between to_date('2022-01-01','yyyy-mm-dd') and ('2022-12-31','yyyy-mm-dd');

--(Q) 여름에 제조한 상품 목록 조회
select * from product  where extract(month from made) in (6,7,8);
--(추가) 날짜를 문자열로 바꿀 수 있다(to_char 함수)
select * from product 
where to_char(made, 'mm') in ('06','07','08');

select * from product where
extract(year from made) = 2023
AND 
extract(month from made) >=7;

select * from product where 
extract(year from made) >= 2023
and
made < sysdate;

select * from product WHERE
made between sysdate-365 and sysdate;

--정렬(order by)
--데이터를 원한느 순서대로 나열하는 것
--asc(ascending, 오름차순), desc(descending, 내림차순)
select * from product order by no asc; --번호 오름차순
select * from product order by no desc; --번호 내림차순
--콤마(,)를 이용하여 정렬방식을 계속 지정할 수 있음
select * from product order by price asc, no asc;

--(Q) 상품을 최신 제조순으로 출력
SELECT * from product order by made desc, no asc;
--(Q) 상품을 이름순으로 출력
SELECT * FROM product order by name asc, no asc;
--(Q) 상품을 유통기간이 짧은 순으로 출력
SELECT * FROM product order by expire-made asc, no asc;

SELECT product.*, expire-made 유통기간 from PRODUCT
order by 유통기간 asc, no asc;
--ex) 가격이 2천원 이상인 제품들을 저렴한 가격순으로 출력
SELECT * FROM  product
where price >= 2000
order by price asc, no asc;

-- 수정(update)
-- 이미 존재하는 데이터의 값을 다른 값으로 교체하는 것
-- 회원정보변경, 게시글수정, 조회수증가, 팔로우설정/해제
-- update 테이블명 set 바꿀항목에 대한설정 [where 조건식]
--조건은 사실상 100% 사용한다고 봐야 한다(pk 조건을 주로 사용)

--ex)모든 상품의 가격을 0원으로 변경
update product set price = 0;
--ex) 모든 상품의 종류를 과자로, 가격을 100원으로 변경
update product set type ='과자', price= 100;
--ex) 1번 상품의 가격을 1000원으로 변경(가장 많이 쓰는 형태)
update product set price=1000 where no=1;
--주의)없는 대상도 실행은 된다
update product set price=1000 where no=999;

--(Q) 7번 상품의 이름을 '처음처럼', 가격을 1200, 분류를 '주류'로 변경
update product set name='처음처럼',price=1200,type='주류' where no=7;
--(Q) 분류가 '과자'인 모든 상품의 가격을 200원 할인
update product set price= price-200 where type = '과자';
--(Q) 분류가 '아이스크림'인 모든 상품의 가격을 10% 인상
update product set price = price+price/10 where type='아이스크림';
-- 삭제(delete)
-- 기존에 존재하는 데이터를 제거하는 것
-- delete [from] 테이블명 [where 조건];

--ex) 전부 다 삭제
delete product;

--(Q) 11번 상품 삭제
delete from product where no=11;
--(Q) 과자와 아이스크림 삭제
delete from product where type in('과자','아이스크림');
--(Q) 2022년 1/4분기 생산된 제품 정보 삭제
delete product where made between 
to_date('2022-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss') 
and 
to_date('2022-03-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss');
select * from product;
rollback;


drop table book;
create table book(
book_no number primary key,
book_name varchar2(30) not null,
book_out varchar2(20) not null,
book_in varchar2(20) not null,
book_price number not null,
check(book_price >=0)
);
drop sequence book_sqe;
create sequence book_sqe;

insert into book(
    book_no, book_name, book_out, book_in, book_price
)
values(
    book_sqe.nextval,
    '집없는 아이',
    '2024-06-21',  -- 날짜 문자열 포맷
    '2024-06-23',  -- 날짜 문자열 포맷
    500
);
commit;
SELECT * from book;


drop table emps;
create table emps(
emps_no number primary key,
emps_name varchar2(21) not null,
emps_dept char(9) not null,
emps_date date default sysdate not null,
emps_rank varchar2(9) not null,
emps_sal number not null,
check(regexp_like(emps_name, '^[가-힣]{2,7}$')),
check(emps_dept in ('기획팀','영업팀','총무팀')),
check(emps_rank in ('인턴','사원','주임','대리','과장')),
check(emps_sal>=0)
);
drop sequence emps_seq;
create sequence emps_seq;

insert into emps(
emps_no,emps_name,emps_dept,emps_rank,emps_sal
)
values(emps_seq.nextval,'박준호','기획팀','사원',3000000);
commit;
select * from emps;



DROP TABLE member;

CREATE TABLE member (
    member_id VARCHAR2(20) PRIMARY KEY,
    member_pw VARCHAR2(16) NOT NULL,
    member_nick VARCHAR2(30) NOT NULL unique,
    member_birth CHAR(10),
    member_contact CHAR(11),
    member_email VARCHAR2(60) NOT NULL,
    member_level VARCHAR2(12) DEFAULT '일반회원' NOT NULL,
    member_point NUMBER DEFAULT 0,
    member_post VARCHAR2(6),
    member_address1 VARCHAR2(300),
    member_address2 VARCHAR2(300),
    member_join DATE DEFAULT SYSDATE NOT NULL,
    member_login DATE,
    CHECK (REGEXP_LIKE(member_id, '^[a-z][a-z0-9]{4,19}$')),
    CHECK (
        REGEXP_LIKE(member_pw, '.*[a-z].*') AND
        REGEXP_LIKE(member_pw, '.*[A-Z].*') AND
        REGEXP_LIKE(member_pw, '.*[0-9].*') AND
        REGEXP_LIKE(member_pw, '.*[!@#$].*') AND
        LENGTH(member_pw) >= 8 AND LENGTH(member_pw) <= 16
    --REGEXP_LIKE(MEMBER_PW,'^[A-Za-z0-9!@#$]{8,16}$')AND
    --REGEXP_LIKE(MEMBER_PW,'[A-Z]+')AND
    --REGEXP_LIKE(MEMBER_PW,'[a-Z]+')AND
    --REGEXP_LIKE(MEMBER_PW,'[0-9]+')AND
    --REGEXP_LIKE(MEMBER_PW,'[!@#$]+')AND
    ),
    CHECK (REGEXP_LIKE(member_nick, '^[가-힣0-9]{2,10}$')),
    CHECK (REGEXP_LIKE(member_birth, '^([0-9]{4})-([0-9]{2})-([0-9]{2})$')),
    CHECK (REGEXP_LIKE(member_contact, '^010[1-9][0-9]{7}$')),
    CHECK (member_level IN ('일반회원', '우수회원', '관리자')),
    CHECK (member_point >=0),
    CHECK (REGEXP_LIKE(member_post, '^[0-9]{6}$')),
    CHECK (
        (member_post is null and member_address1 is null and member_address2 is null)
        or
        (member_post is not null and member_address1 is not null and member_address2 is not null)
    )
);

-- drop sequence member_seq;
-- create sequence member_seq;

INSERT INTO member (
    member_id, member_pw, member_nick, member_email, member_post,member_address1, member_address2
) VALUES (
    'abcd123', 'Qa1234567!', '도라에몽', 'starpull91@naver.com','123456', '서울시 영등포구 여의도동', '서울시 여의나루로'
);

SELECT * FROM member;
