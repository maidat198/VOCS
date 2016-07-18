package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_reserve_info_action_map", identifierColumn = "reserve_info_action_map_id", identifierField = "reserveActionMapId", table = "reserve_info_action_map")
public class ReserveInfoActionMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "reserve_info_id")
    private ReserveInfo reserveInfoId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "action_id")
    private Actions actionId;
}
