use app;

create table tbl_product(
                            id bigint unsigned auto_increment primary key,
                            product_name varchar(255) not null ,
                            product_price int not null ,
                            product_quantity varchar(255) not null ,
                            product_title_image_url varchar(255) not null ,
                            product_info_image_url varchar(255) not null ,
                            product_min_number int not null,
                            product_status enum('active','inactive') default 'active',
                            sub_category_name varchar(255),
                            member_id bigint unsigned not null,
                            main_category_id bigint unsigned not null,
                            created_date datetime default current_timestamp,
                            updated_date datetime default current_timestamp,
                            constraint fk_product_member foreign key (member_id)
                                references tbl_member(id),
                            constraint fk_product_main_category foreign key (main_category_id)
                                references tbl_main_category(id)
);



-- 채소 (main_category_id = 1)
insert into tbl_product (product_name, product_price, product_quantity, product_title_image_url, product_info_image_url, product_min_number, sub_category_name, member_id, main_category_id)
values
    ('신선한 아삭아삭 시금치', 1200, '1단', '/images/product/spinach_title.jpeg', '/images/product/spinach_info.jpg', 3, '잎채소', 1, 1),
    ('무농약 어린 상추', 900, '1포기', '/images/product/lettuce_title.jpg', '/images/product/lettuce_info.jpg', 4, '잎채소', 1, 1),
    ('국내산 깻잎', 700, '1단', '/images/product/perilla_title.jpg', '/images/product/perilla_info.jpg', 5, '잎채소', 1, 1),
    ('아삭한 당근', 800, '1개', '/images/product/carrot_title.jpeg', '/images/product/carrot_info.jpg', 6, '뿌리채소', 1, 1),
    ('신선한 감자', 600, '1개', '/images/product/potato_title.jpg', '/images/product/potato_info.jpg', 2, '뿌리채소', 1, 1),
    ('달콤한 고구마', 1200, '1개', '/images/product/sweetpotato_title.jpg', '/images/product/sweetpotato_info.jpg', 8, '뿌리채소', 1, 1),
    ('탱탱한 토마토', 1100, '1개', '/images/product/tomato_title.jpg', '/images/product/tomato_info.jpg', 4, '과채류', 1, 1),
    ('신선한 오이', 900, '1개', '/images/product/cucumber_title.jpeg', '/images/product/cucumber_info.jpg', 3, '과채류', 1, 1),
    ('국산 애호박', 1000, '1개', '/images/product/zucchini_title.jpg', '/images/product/zucchini_info.jpg', 7, '과채류', 1, 1);

-- 과일·견과·쌀 (main_category_id = 2)
insert into tbl_product (product_name, product_price, product_quantity, product_title_image_url, product_info_image_url, product_min_number, sub_category_name, member_id, main_category_id)
values
    ('새콤달콤 제철 딸기', 3800, '1개', '//images/product/strawberry_title.jpg', '/images/product/strawberry_info.jpg', 6, '제철과일', 1, 2),
    ('아삭한 사과', 2500, '1개', '/images/product/apple_title.jpg', '/images/product/apple_info.jpg', 5, '제철과일', 1, 2),
    ('상큼한 감귤', 900, '1개', '/images/product/mandarin_title.jpg', '/images/product/mandarin_info.jpg', 3, '제철과일', 1, 2),
    ('달콤한 바나나', 2200, '1개', '/images/product/banana_title.jpg', '/images/product/banana_info.jpg', 4, '열대과일', 1, 2),
    ('향긋한 파인애플', 4500, '1개', '/images/product/pineapple_title.jpg', '/images/product/pineapple_info.jpg', 8, '열대과일', 1, 2),
    ('신선한 망고', 3800, '1개', '/images/product/mango_title.jpeg', '/images/product/mango_info.jpg', 2, '열대과일', 1, 2),
    ('고소한 아몬드', 1200, '1g', '/images/product/almond_title.jpg', '/images/product/almond_info.jpg', 7, '견과류', 1, 2),
    ('영양 가득 호두', 1500, '1g', '/images/product/walnut_title.jpg', '/images/product/walnut_info.jpg', 9, '견과류', 1, 2),
    ('국산 찹쌀', 2500, '1g', '/images/product/glutinousrice_title.jpg', '/images/product/glutinousrice_info.jpg', 3, '쌀', 1, 2),
    ('고시히카리 쌀', 2700, '1g', '/images/product/koshihikari_title.jpg', '/images/product/koshihikari_info.jpg', 4, '쌀', 1, 2);

-- 수산·해산·건어물 (main_category_id = 3)
insert into tbl_product (product_name, product_price, product_quantity, product_title_image_url, product_info_image_url, product_min_number, sub_category_name, member_id, main_category_id)
values
    ('싱싱한 고등어', 3200, '1마리', '/images/product/mackerel_title.jpg', '/images/product/mackerel_info.jpg', 4, '생선', 1, 3),
    ('국산 갈치', 4200, '1마리', '/images/product/hairtail_title.jpg', '/images/product/hairtail_info.jpg', 7, '생선', 1, 3),
    ('제철 꽁치', 2900, '1마리', '/images/product/pacificsaury_title.jpg', '/images/product/pacificsaury_info.jpg', 2, '생선', 1, 3),
    ('탱글탱글 새우', 3000, '1미', '/images/product/shrimp_title.jpg', '/images/product/shrimp_info.jpg', 5, '해산물', 1, 3),
    ('쫄깃한 오징어', 2500, '1미', '/images/product/squid_title.jpg', '/images/product/squid_info.jpg', 8, '해산물', 1, 3),
    ('싱싱한 전복', 3700, '1미', '/images/product/abalone_title.jpg', '/images/product/abalone_info.jpg', 9, '해산물', 1, 3),
    ('쫄깃한 오징어채', 1800, '1g', '/images/product/squidstrip_title.jpg', '/images/product/squidstrip_info.jpg', 3, '건어물', 1, 3),
    ('고소한 멸치', 1500, '1g', '/images/product/anchovy_title.jpeg', '/images/product/anchovy_info.jpg', 6, '건어물', 1, 3),
    ('바삭한 김', 1000, '1장', '/images/product/seaweed_title.jpg', '/images/product/seaweed_info.jpg', 2, '건어물', 1, 3);

-- 정육·가공육·달걀 (main_category_id = 4)
insert into tbl_product (product_name, product_price, product_quantity, product_title_image_url, product_info_image_url, product_min_number, sub_category_name, member_id, main_category_id)
values
    ('한우 등심', 8900, '1g', '/images/product/beef_title.jpeg', '/images/product/beef_info.jpg', 9, '소고기', 1, 4),
    ('한우 불고기감', 6500, '1g', '/images/product/bulgogi_title.jpg', '/images/product/bulgogi_info.jpg', 5, '소고기', 1, 4),
    ('국내산 삼겹살', 3800, '1g', '/images/product/porkbelly_title.jpg', '/images/product/porkbelly_info.jpg', 6, '돼지고기', 1, 4),
    ('국내산 목살', 4000, '1g', '/images/product/porkneck_title.jpg', '/images/product/porkneck_info.jpg', 4, '돼지고기', 1, 4),
    ('프리미엄 훈제 햄', 2300, '1팩', '/images/product/ham_title.jpg', '/images/product/ham_info.jpg', 2, '가공육', 1, 4),
    ('비엔나 소시지', 1900, '1팩', '/images/product/sausage_title.jpeg', '/images/product/sausage_info.jpg', 8, '가공육', 1, 4),
    ('친환경 달걀', 2200, '1개', '/images/product/egg_title.jpg', '/images/product/egg_info.jpg', 4, '달걀', 1, 4),
    ('유정란 달걀', 2400, '1개', '/images/product/organic_egg_title.jpg', '/images/product/organic_egg_info.jpg', 7, '달걀', 1, 4);

-- 기타 (main_category_id = 5)
insert into tbl_product (product_name, product_price, product_quantity, product_title_image_url, product_info_image_url, product_min_number, sub_category_name, member_id, main_category_id)
values
    ('국산 재래식 된장', 2200, '1g', '/images/product/soybeanpaste_title.jpg', '/images/product/soybeanpaste_info.jpg', 3, '장류', 1, 5),
    ('고소한 청국장', 2500, '1g', '/images/product/cheonggukjang_title.jpg', '/images/product/cheonggukjang_info.jpg', 5, '장류', 1, 5),
    ('국산 고춧가루', 2500, '1g', '/images/product/chilipowder_title.jpg', '/images/product/chilipowder_info.jpg', 7, '분말류', 1, 5),
    ('매콤한 카레가루', 2000, '1g', '/images/product/curry_title.jpg', '/images/product/curry_info.jpg', 4, '분말류', 1, 5),
    ('건강한 올리브유', 4800, '1ml', '/images/product/oliveoil_title.jpg', '/images/product/oliveoil_info.jpg', 5, '기타상품', 1, 5),
    ('고소한 참기름', 5200, '1ml', '/images/product/sesameoil_title.jpg', '/images/product/sesameoil_info.jpg', 6, '기타상품', 1, 5),
    ('유기농 꿀', 6800, '1ml', '/images/product/honey_title.jpg', '/images/product/honey_info.jpg', 2, '기타상품', 1, 5);
