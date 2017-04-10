package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baypassion.model.UploadedImage;

public interface ImageRepository extends JpaRepository<UploadedImage, Integer> {

}
