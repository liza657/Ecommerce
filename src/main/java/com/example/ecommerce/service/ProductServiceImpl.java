package com.example.ecommerce.service;

import com.example.ecommerce.model.Product;
import com.example.ecommerce.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;


    @Override
    public List<Product> findAllProducts(String title) {
        if (title != null) productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    @Override
    public Product findProduct(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public Product addProduct(Product product) {
        log.info("Adding new {}", product);
        return productRepository.save(product);
    }

    @Override
    public Product updateProduct(Product product) {
        return null;
    }


    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}
