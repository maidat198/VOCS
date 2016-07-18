package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_action", identifierColumn = "action_id", identifierField = "actionId", table = "action")
public class Actions {

    /**
     */
    @Column(name = "action_name")
    private String actionName;

    /**
     */
    @Column(name = "action_type")
    private Integer actionType;

    /**
     */
    @Column(name = "category_id")
    private Integer category_id;

    /**
     */
    @Column(name = "sort_price_component_id")
    private Integer sortPriceComponentId;

    /**
     */
    @Column(name = "dynamic_reserve_id")
    private Integer dynamicReserveId;
}
