package com.example.youeatieat.mapper;


import com.example.youeatieat.dto.ProductDTO;
import com.example.youeatieat.util.Criteria;
import com.example.youeatieat.util.Search;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SpringBootTest
@Slf4j
public class ProductListMapperTests {
    @Autowired
    private ProductMapper productMapper;
    @Autowired
    private BestProductMapper bestProductMapper;
    @Autowired
    private CategoriesProductMapper  categoriesProductMapper;

    @Test
    public void testSelectAll() {
        Search search = new Search();
        search.setMainCategories(new ArrayList<>(Arrays.asList("vegetables")));
        productMapper.countProduct(search);
    }

    @Test
    public void testSelectAll2() {
        Criteria criteria = new Criteria(1, 9);
        Search search = new Search();

        System.out.println(bestProductMapper.selectList(criteria, search));
    }

    @Test
    public void testSelectAll3() {
        Search search = new Search();
        Criteria criteria = new Criteria(1, 9);
        search.setPriceKeyword("1000");
        System.out.println(search.getPriceKeyword());

        System.out.println(categoriesProductMapper.selectList(criteria, search, 1L));
    }

    @Test
    public void testSelectAll4() {
        Criteria criteria = new Criteria(5, 43);
        Search search = new Search();
        List<ProductDTO> products = productMapper.selectList(criteria, search);
        products.stream().map(ProductDTO::getId).forEach(System.out::println);
    }

//    @Autowired
//    private ProductListMapper productListMapper;

//    @Test
//    public void testSelectAll() {
//        productListMapper.selectList();
//        log.info(productListMapper.selectList().toString());
//    }

}
