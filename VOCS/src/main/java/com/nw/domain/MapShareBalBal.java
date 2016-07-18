package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "share_baltype_id", identifierField = "shareBalTypeId", table = "map_sharebal_bal")
public class MapShareBalBal {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "baltype_id")
    private BalType baltypeId;
}
