package com.baypassion.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.UploadedImage;
import com.baypassion.repository.ImageRepository;
import com.baypassion.service.ImageService;
import com.baypassion.utils.IConstant;

@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private ImageRepository imageRepository;

    /**
     * Remove image from database.
     * 
     */
    public Boolean removeImage(Integer imageId) {
        UploadedImage image = imageRepository.findOne(imageId);
        if (image != null) {
            image.setIsDeleted(IConstant.ONE);
            imageRepository.save(image);
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

}
