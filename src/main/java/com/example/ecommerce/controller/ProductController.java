package com.example.ecommerce.controller;

import com.example.ecommerce.model.Product;
import com.example.ecommerce.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/")
    public String products(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("products", productService.findAllProducts(title));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.findProduct(id));
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(Product product) {
        productService.addProduct(product);
        return "redirect:/";
    }

    @DeleteMapping
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/";

    }
}
