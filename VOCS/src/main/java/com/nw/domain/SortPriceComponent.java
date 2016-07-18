package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_sort_price_component", identifierColumn = "sort_price_component_id", identifierField = "sortPriceComponentId", table = "sort_price_component")
public class SortPriceComponent {

    /**
     */
    @Column(name = "sort_price_component_name")
    private String sortPriceComponentName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
