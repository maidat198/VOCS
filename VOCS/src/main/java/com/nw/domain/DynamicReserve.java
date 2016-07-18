package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_dynamic_reserve", identifierColumn = "dynamic_reserve_id", identifierField = "dynamicReserveId", table = "dynamic_reserve")
public class DynamicReserve {

    /**
     */
    private String dynamicReserveName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
