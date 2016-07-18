package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_threshold_baltype_map", identifierColumn = "threshold_baltype_map_id", identifierField = "thresholdBaltypeMapId", table = "threshold_baltype_map")
public class ThresholdBalTypeMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "threshold_id")
    private Threshold thresholdId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "baltype_id")
    private BalType baltypeId;
}
