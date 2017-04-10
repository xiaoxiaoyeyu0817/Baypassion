package com.baypassion.utils;

import static com.baypassion.utils.IConstant.AWS_PASSWORD_KEY;
import static com.baypassion.utils.IConstant.AWS_USER_KEY;
import static com.baypassion.utils.IConstant.BUCKET_NAME;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class ImageUploadUtils {

    /**
     * Save multiple images on aws.
     * 
     * @param files
     * @return
     */
    public static List<String> saveImage(MultipartFile[] files,Integer postId) {
        List<String> imageList = new ArrayList<String>();
        String fileName = null;
        if (files.length != 0) {
            AWSCredentials credentials = new BasicAWSCredentials(AWS_USER_KEY, AWS_PASSWORD_KEY);
            AmazonS3 s3client = new AmazonS3Client(credentials);
            ObjectMetadata metadata = new ObjectMetadata();
            try {
                for (MultipartFile multipartFile : files) {
                    fileName = multipartFile.getOriginalFilename();
                    byte[] bytes = multipartFile.getBytes();
                    String contentType = multipartFile.getContentType();
                    InputStream inputStream = new ByteArrayInputStream(bytes);
                    metadata.setContentType(contentType);
                    s3client.putObject(new PutObjectRequest(BUCKET_NAME, postId+"_"+fileName, inputStream, metadata)
                                    .withCannedAcl(CannedAccessControlList.PublicRead));
                    imageList.add(postId+"_"+fileName);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return imageList;
    }

    /**
     * Upload vedio.
     * 
     * @param file
     * @return
     */
    public static String saveVideo(MultipartFile file) {
        String videoName = "";
        AWSCredentials credentials = new BasicAWSCredentials(AWS_USER_KEY, AWS_PASSWORD_KEY);
        AmazonS3 s3client = new AmazonS3Client(credentials);
        ObjectMetadata metadata = new ObjectMetadata();
        try {
            videoName = file.getOriginalFilename();
            byte[] bytes = file.getBytes();
            String contentType = file.getContentType();
            InputStream inputStream = new ByteArrayInputStream(bytes);
            metadata.setContentType(contentType);
            s3client.putObject(new PutObjectRequest(BUCKET_NAME, videoName, inputStream, metadata)
                            .withCannedAcl(CannedAccessControlList.PublicRead));
        } catch (Exception ex) {
            System.out.println("You failed to upload=");
            ex.printStackTrace();
        }
        return videoName;
    }

}
