package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_map_acmbal_bal", identifierColumn = "acm_baltype_id", identifierField = "acmbalTypeId", table = "map_acmbal_bal")
public class MapACMBalBal {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "baltype_id")
    private BalType baltypeId;
}
