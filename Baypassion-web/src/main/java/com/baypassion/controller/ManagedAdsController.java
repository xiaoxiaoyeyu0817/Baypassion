package com.baypassion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.AutoRepost;
import com.baypassion.model.MoveAd;
import com.baypassion.service.ManagedAdsService;

@RestController
public class ManagedAdsController {

    @Autowired
    private ManagedAdsService managedAdsService;

    @RequestMapping(value = "/getMoveAdDetails")
    public MoveAd getMoveAdDetails(@RequestParam Integer moveAdId) {
        return managedAdsService.getMoveAdDetails(moveAdId);

    }

    @RequestMapping(value = "/getAutoRepostAdDetails")
    public AutoRepost getAutoRepostAdDetails(@RequestParam Integer autoRepostId) {
        return managedAdsService.getAutoRepostAdDetails(autoRepostId);
    }
    
    
    @RequestMapping(value = "/updateAutoRepostAdDetails",method=RequestMethod.POST)
    public AutoRepost updateAutoRepostAdDetails(@RequestBody AutoRepost autoRepost) {
        return managedAdsService.updateAutoRepostAdDetails(autoRepost);
    }
    
    @RequestMapping(value = "/updateMoveAdDetails",method=RequestMethod.POST)
    public MoveAd updateMoveAdDetails(@RequestBody MoveAd moveAd) {
        return managedAdsService.updateMoveAdDetails(moveAd);
    }

}
