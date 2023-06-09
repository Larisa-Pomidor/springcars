package com.spl.springcars.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Collection;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query(value = "SELECT * FROM product order by id desc limit :limit", nativeQuery = true)
    List<Product> findBestProducts(@Param("limit") int limit);

    /**
     Returns list of products of current user.
     */
    @Query(value = "SELECT * FROM product INNER JOIN user ON product.user = user.user_id WHERE user.email = :email", nativeQuery = true)
    List<Product> getUserProducts(@Param("email") String email);
}
