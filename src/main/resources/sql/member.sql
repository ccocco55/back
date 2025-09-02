use app;

create table tbl_member(
    id bigint unsigned auto_increment primary key,
    member_email varchar(255) unique,
    member_kakao_email varchar(255),
    member_password varchar(255),
    member_name varchar(255),
    member_birth DATE,
    member_phone varchar(255),

    member_verified boolean default false,
    member_provider enum('kakao', 'you_i') default 'you_i',
    member_gender enum('male','female', 'not') default 'not',
    member_role enum('buyer','seller','admin') not null ,
    member_status enum('active','inactive') default 'active' not null,
    member_last_login_date datetime default null,
    created_date datetime default current_timestamp,
    updated_date datetime default current_timestamp
);
<<<<<<< HEAD
ALTER TABLE tbl_member
    ADD COLUMN member_verified BOOLEAN DEFAULT FALSE;
select * from tbl_member;
Insert into tbl_member (member_email, member_password, member_name, member_birth, member_phone, member_verified, member_provider, member_gender, member_role, member_status)
values ("coals8745","coals8745","임채민","2000-12-02",01012341234,0,'you_i','female','admin','active');
=======
>>>>>>> da3b35227823a888d87e0505964a6c165e918e97

