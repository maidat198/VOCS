package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "action_price_component_map_id", identifierField = "actionPriceComponentMapId", table = "action_price_component_map")
public class ActionPriceComponentMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "action_id")
    private Actions actionId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "price_component_id")
    private PriceComponent priceComponentId;

    /**
     */
    @Column(name = "pc_index")
    private Integer pcIndex;
}
