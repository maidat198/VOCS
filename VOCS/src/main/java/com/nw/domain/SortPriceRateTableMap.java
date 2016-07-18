package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_sort_price_table_map", identifierColumn = "sort_price_rate_table_map_id", identifierField = "sortPriceRateTableMapId", table = "sort_price_rate_table_map")
public class SortPriceRateTableMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "sort_price_component_id")
    private SortPriceComponent sortPriceComponentId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_id")
    private RateTable rateTableId;

    /**
     */
    @Column(name = "rate_table_index")
    private Integer rateTableIndex;
}
