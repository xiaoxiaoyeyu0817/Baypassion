package com.baypassion.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.AutoRepost;
import com.baypassion.model.MoveAd;
import com.baypassion.repository.AutoRepostRepository;
import com.baypassion.repository.MoveAdRepository;
import com.baypassion.service.ManagedAdsService;

@Service
public class ManagedAdsServiceImpl implements ManagedAdsService {

    @Autowired
    private MoveAdRepository adRepository;

    @Autowired
    private AutoRepostRepository autoRepostRepository;

    public MoveAd getMoveAdDetails(Integer moveAdId) {
        return adRepository.findOne(moveAdId);
    }

    public AutoRepost getAutoRepostAdDetails(Integer autoRepostId) {
        return autoRepostRepository.findOne(autoRepostId);
    }

    public AutoRepost updateAutoRepostAdDetails(AutoRepost autoRepost) {
        return autoRepostRepository.save(autoRepost);
    }

    public MoveAd updateMoveAdDetails(MoveAd moveAd) {
        return adRepository.save(moveAd);
    }

}
