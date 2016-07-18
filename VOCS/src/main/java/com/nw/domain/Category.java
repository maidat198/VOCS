package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_category", identifierColumn = "category_id", identifierField = "categoryId", table = "category")
public class Category {

    /**
     */
    @Column(name = "category_type")
    private Integer categoryType;

    /**
     */
    @Column(name = "category_name")
    private String categoryName;

    /**
     */
    @Column(name = "category_parent_id")
    private Integer categoryParentId;
}
