package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_price_component_block_map", identifierColumn = "price_component_block_map_id", identifierField = "priceComponentBlockMapId", table = "price_component_block_map")
public class PriceComponentBlockMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "price_component_id")
    private PriceComponent priceComponentId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "block_id")
    private Block blockId;
}
