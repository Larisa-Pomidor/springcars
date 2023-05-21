package com.spl.springcars.image;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.spl.springcars.product.Product;
import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@JsonIdentityInfo(generator= ObjectIdGenerators.PropertyGenerator.class, property = "id")
@Table(name = "image")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "`filename`")
    private String fileName;
    private Long size;
    @Column(name = "`contenttype`")
    private String contentType;
    @Lob
    private byte[] bytes;
    @OneToOne
    private Product product;

    public Image(String fileName, Long size, String contentType, byte[] bytes) {
        this.fileName = fileName;
        this.size = size;
        this.contentType = contentType;
        this.bytes = bytes;
    }
}
