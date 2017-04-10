package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.ProhibitWord;
import com.baypassion.repository.ProhibitWordsRepository;
import com.baypassion.service.ProhibitWordService;
import com.baypassion.utils.IConstant;

@Service
public class ProhibitWordServiceImpl implements ProhibitWordService {

	@Autowired
	private ProhibitWordsRepository prohibitWordsRepository;

	/**
	 * Add new prohibit word.
	 * 
	 */
	public void adProhibitWord(ProhibitWord prohibitWord) {
		prohibitWordsRepository.save(prohibitWord);
	}

	/**
	 * View prohibit words list
	 * 
	 */
	public List<ProhibitWord> getAllWords(){
		return prohibitWordsRepository.findAllWordsByIsDeleted();
	}

	/**
	 * Get object for edit prohibit word.
	 * 
	 */
	public ProhibitWord editWord(Integer wordId) {
		ProhibitWord prohibitWord = prohibitWordsRepository.findOne(wordId);
		if (prohibitWord != null) {
			return prohibitWord;
		}
		return null;
	}

	/**
	 * Delete prohibit word
	 * 
	 */
	public Boolean deleteWord(Integer wordId) {
		ProhibitWord prohibitWord = prohibitWordsRepository.findOne(wordId);
		if (prohibitWord != null) {
			prohibitWord.setIsDeleted(IConstant.ONE);
			prohibitWordsRepository.save(prohibitWord);
			return Boolean.TRUE;
		}
		return Boolean.FALSE;
	}

	/**
     * View prohibit words list in admin.
     * 
     */
    public List<ProhibitWord> getWordsList() {
        return prohibitWordsRepository.findByIsDeleted(IConstant.ZERO);
    }

}
