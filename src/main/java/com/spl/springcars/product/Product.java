package com.spl.springcars.product;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.spl.springcars.image.Image;
import com.spl.springcars.user.User;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.lang.reflect.Type;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@Entity
@RequiredArgsConstructor
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private LocalDateTime date;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(
            nullable = false,
            name = "user",
            unique = true
    )
    private User user;
    private String description;
    private String color;
    private int price;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "`release`")
    private LocalDate release;
    private String model;
    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(
            nullable = false,
            name = "image",
            unique = true
    )
    private Image image;

    public Product(String name, LocalDateTime date, User user,
                   String description, String color, int price,
                   String model, LocalDate release) {
        this.name = name;
        this.date = date;
        this.user = user;
        this.description = description;
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
