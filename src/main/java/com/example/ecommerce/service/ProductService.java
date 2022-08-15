package com.example.ecommerce.service;

import com.example.ecommerce.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAllProducts(String title);
    public Product findProduct(Long id);


    public Product addProduct(Product product);

    public Product updateProduct(Product product);


    public void deleteProduct(Long id);
}
