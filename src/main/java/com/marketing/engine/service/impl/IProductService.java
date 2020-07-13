package com.marketing.engine.service.impl;


import java.util.List;

import com.marketing.engine.domain.Product;


/**
 * created by niraj on Sep, 2018
 */
public interface IProductService {

    List<Product> listAllProducts();

    Product getProductById(Integer id);

    Product saveProduct(Product product);

    void deleteProduct(Integer id);
}
