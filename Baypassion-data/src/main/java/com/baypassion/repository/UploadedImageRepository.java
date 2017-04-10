package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.baypassion.model.UploadedImage;

public interface UploadedImageRepository extends JpaRepository<UploadedImage, Integer> {

}
