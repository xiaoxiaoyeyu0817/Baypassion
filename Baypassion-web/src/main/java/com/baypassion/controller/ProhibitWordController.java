package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.ProhibitWord;
import com.baypassion.service.ProhibitWordService;

@RestController
public class ProhibitWordController {

	@Autowired
	private ProhibitWordService wordService;


    /**
     * View prohibit words list.
     * 
     * @return
     */
    @RequestMapping(value = "/getProhibitWords", method = RequestMethod.GET)
    public List<ProhibitWord> getProhibitWords() {
        return wordService.getAllWords();
    }
}
