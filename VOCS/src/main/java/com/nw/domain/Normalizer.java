package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_normalizer", identifierColumn = "normalizer_id", identifierField = "normalizerId", table = "normalizer")
public class Normalizer {

    /**
     */
    @Column(name = "normalizer_name")
    private String normalizerName;

    /**
     */
    @Column(name = "normalizer_type")
    private Integer normalizerType;

    /**
     */
    @Column(name = "state")
    private Integer normalizerState;

    /**
     */
    @Column(name = "default_value")
    private Integer defaultValue;

    /**
     */
    @Column(name = "value_if_null")
    private Integer valueIfNull;

    /**
     */
    private String inputField;

    /**
     */
    @Column(name = "special_fields")
    private String specialFields;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    /**
     */
    @Column(name = "query_state")
    private Integer queryState;
}
