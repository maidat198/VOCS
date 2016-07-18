package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_price_component", identifierColumn = "price_component_id", identifierField = "priceComponentId", table = "price_component")
public class PriceComponent {

    /**
     */
    @Column(name = "price_component_name")
    private String priceComponentName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
