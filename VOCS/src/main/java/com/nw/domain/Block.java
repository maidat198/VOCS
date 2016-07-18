package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_block", identifierColumn = "block_id", identifierField = "blockId", table = "block")
public class Block {

    /**
     */
    @Column(name = "block_type")
    private Integer blockType;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    /**
     */
    @Column(name = "block_name")
    private String blockName;

    /**
     */
    @Value("0")
    @Column(name = "is_use_special_method")
    private Boolean isUseSpecialMethod;

    /**
     */
    @Value("0")
    @Column(name = "is_create_new_balance")
    private Boolean isCreateNewBalance;

    /**
     */
    private Integer affectedObjType;

    /**
     */
    @Column(name = "affected_value")
    private Integer affectedValue;

    /**
     */
    @Column(name = "affected_field")
    private String affectedField;
}
