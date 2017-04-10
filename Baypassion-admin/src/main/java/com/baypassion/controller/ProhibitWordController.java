package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.ProhibitWord;
import com.baypassion.service.ProhibitWordService;

@RestController
public class ProhibitWordController {

    @Autowired
    private ProhibitWordService wordService;

    /**
     * Ad new prohibit word.
     * 
     * @param prohibitWord
     */
    @RequestMapping(value = "/adWords", method = RequestMethod.POST)
    public void adProhibitWord(@RequestBody ProhibitWord prohibitWord) {
        wordService.adProhibitWord(prohibitWord);
    }

    /**
     * View prohibit words list.
     * 
     * @return
     */
    @RequestMapping(value = "/prohibitWords", method = RequestMethod.GET)
    public List<ProhibitWord> getWordsList() {
        return wordService.getWordsList();
    }

    /**
     * Get object for edit prohibit word.
     * 
     * @return
     */
    @RequestMapping(value = "/editWord", method = RequestMethod.PUT)
    public ProhibitWord editWord(@RequestParam(required = false) Integer wordId) {
        return wordService.editWord(wordId);
    }

    /**
     * Delete prohibit word.
     * 
     * @return
     */
    @RequestMapping(value = "/deleteWord", method = RequestMethod.DELETE)
    public Boolean deleteWord(@RequestParam(required = false) Integer wordId) {
        return wordService.deleteWord(wordId);
    }

}
