package com.spl.springcars.product;

import com.spl.springcars.image.Image;
import com.spl.springcars.user.User;
import com.spl.springcars.user.UserRepository;
import com.spl.springcars.user.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;
    private final UserService userService;

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

    public List<Product> getBestProducts() {
        return productRepository.findBestProducts(5);
    }

    public void addProduct(Product product, MultipartFile file, Principal principal) throws IOException {
        Image image = imageToEntity(file);
        product.setImage(image);
        product.setUser(userService.getUserByPrincipal(principal));
        productRepository.save(product);
    }

    private Image imageToEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setFileName(file.getOriginalFilename());
        image.setSize(file.getSize());
        image.setContentType(file.getContentType());
        image.setBytes(file.getBytes());
        return image;
    }

    public List<Product> getUserProducts(String email) {
        return productRepository.getUserProducts(email);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}

