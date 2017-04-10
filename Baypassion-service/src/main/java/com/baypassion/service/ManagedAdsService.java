package com.baypassion.service;

import com.baypassion.model.AutoRepost;
import com.baypassion.model.MoveAd;

public interface ManagedAdsService {

    MoveAd getMoveAdDetails(Integer moveAdId);

    AutoRepost getAutoRepostAdDetails(Integer autoRepostId);

    AutoRepost updateAutoRepostAdDetails(AutoRepost autoRepost);

    MoveAd updateMoveAdDetails(MoveAd moveAd);

}
