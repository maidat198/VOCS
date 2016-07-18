package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_dynamic_reserve_rate_table_map", identifierColumn = "dynamic_rate_map_id", identifierField = "dynamicRateMapId", table = "dynamic_reserve_rate_table_map")
public class DynamicReserveRateTableMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_id")
    private RateTable rateTableId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "dynamic_reserve_id")
    private DynamicReserve dynamicReserveId;

    /**
     */
    @Column(name = "rate_table_index")
    private Integer rateTableIndex;
}
