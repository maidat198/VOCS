package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_ocs", identifierColumn = "trigger_ocs_id", identifierField = "triggerOcsId", table = "trigger_ocs")
public class TriggerOCS {

    /**
     */
    @Column(name = "trigger_name")
    private String triggerName;

    /**
     */
    @Column(name = "status")
    private Integer status;

    /**
     */
    private String description;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
