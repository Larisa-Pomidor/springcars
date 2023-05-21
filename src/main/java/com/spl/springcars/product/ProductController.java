package com.spl.springcars.product;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping("/")
    String getAllProducts(Model model) {
        model.addAttribute("products", productService.getAllProducts());
        return "test";
    }

    @GetMapping("/product/{id}")
    String getProductInfo(@PathVariable Long id, Model model) throws Exception {
        model.addAttribute("product", productService.getProductsById(id));
        return "product-info";
    }
}
