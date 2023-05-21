package com.spl.springcars.product;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.spl.springcars.image.Image;
import jakarta.persistence.*;
import lombok.*;

import java.lang.reflect.Type;
import java.time.LocalDateTime;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@JsonIdentityInfo(generator= ObjectIdGenerators.PropertyGenerator.class, property = "id")
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private LocalDateTime date;
    private long user;
    private String description;
    private String color;
    private int price;
    @Column(name = "`release`")
    private LocalDateTime release;
    private String model;
    @OneToOne(mappedBy = "product")
    @JoinColumn(
            nullable = false,
            name = "image"
    )
    private Image image;

    public Product(String name, LocalDateTime date, long user,
                   String description, Image image, String color, int price,
                   String model, LocalDateTime release) {
        this.name = name;
        this.date = date;
        this.user = user;
        this.description = description;
        this.image = image;
        this.color = color;
        this.price = price;
        this.model = model;
        this.release = release;
    }

    @PrePersist
    private void init() {
        date = LocalDateTime.now();
    }
}
