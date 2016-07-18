package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_price_rate_map", identifierColumn = "price_rate_map_id", identifierField = "priceRateMapId", table = "price_rate_map")
public class PriceRateMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "price_component_id")
    private PriceComponent priceComponentId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_id")
    private RateTable rateTableId;
}
