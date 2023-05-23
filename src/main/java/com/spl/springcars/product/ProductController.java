package com.spl.springcars.product;

import com.spl.springcars.user.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;
    private final UserService userService;

    @GetMapping("/product/add")
    String getAllProducts(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("products", productService.getAllProducts());
        return "test";
    }

    @GetMapping("/product/{id}")
    String getProductInfo(@PathVariable Long id, Principal principal, Model model) throws Exception {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("product", productService.getProductsById(id));
        return "product";
    }

    @PostMapping("/product")
    String addProducts(@RequestParam("file") MultipartFile file, Product product, Principal principal, Model model) throws IOException {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        productService.addProduct(product, file, principal);
        return "redirect:/account";
    }
}
