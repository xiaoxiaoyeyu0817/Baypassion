package com.baypassion.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "prohibit_Words")
public class ProhibitWord implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PROHIBIT_WORD_ID")
    private Integer prohibitWordId;

    @Column(name = "WORD_NAME")
    private String wordName;

    @Column(name = "IS_DELETED")
    private Integer isDeleted;

    public Integer getProhibitWordId() {
        return prohibitWordId;
    }

    public void setProhibitWordId(Integer prohibitWordId) {
        this.prohibitWordId = prohibitWordId;
    }

    public String getWordName() {
        return wordName;
    }

    public void setWordName(String wordName) {
        this.wordName = wordName;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
