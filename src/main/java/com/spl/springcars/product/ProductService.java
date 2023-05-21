package com.spl.springcars.product;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductsById(Long id) throws Exception {
        return productRepository.findById(id).orElseThrow(
                () -> new IllegalStateException("Product is not found")
        );
    }

    public void deleteProductsById(Long id) {
        productRepository.deleteById(id);
    }

    public void addProduct(Product product) {
        productRepository.save(product);
    }
}

