package com.spl.springcars.image;

import lombok.AllArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.InputStreamSource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.print.attribute.standard.Media;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

@RestController
@AllArgsConstructor
public class ImageController {
    private final ImageRepository imageRepository;

    /**
     Method returns image from db by its id.
     Since all product images are stored in db method provide us an opportunity
     to display pictures on website.
     */
    @GetMapping("/images/{id}")
    private ResponseEntity<?> getImage(@PathVariable Long id) {
        Image image = imageRepository.findById(id).orElseThrow(() -> new IllegalStateException("Image is not found"));
        return ResponseEntity.ok()
                .header("filename", image.getFileName())
                .contentType(MediaType.valueOf(image.getContentType()))
                .contentLength(image.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(image.getBytes())));
    }
}
