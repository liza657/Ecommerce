package com.example.ecommerce.service;

import com.example.ecommerce.model.Image;
import com.example.ecommerce.model.Product;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ProductService {
    List<Product> findAllProducts(String title);
    public Product findProduct(Long id);


    public void addProduct(Product product, MultipartFile image1, MultipartFile image2, MultipartFile image3) throws IOException;

    public Product updateProduct(Product product);


    public void deleteProduct(Long id);
}
