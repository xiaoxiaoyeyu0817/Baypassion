package com.baypassion.service;

import java.util.List;

import com.baypassion.model.ProhibitWord;

public interface ProhibitWordService {

    /** Add new prohibit word. **/
    void adProhibitWord(ProhibitWord prohibitWord);

    /** View prohibit words list **/
    List<ProhibitWord> getWordsList();

    /** Get object for edit prohibit word. **/
    ProhibitWord editWord(Integer wordId);

    /** Delete prohibit word. **/
    Boolean deleteWord(Integer wordId);

    /** View prohibit words list in admin **/
    List<ProhibitWord> getAllWords();

}
