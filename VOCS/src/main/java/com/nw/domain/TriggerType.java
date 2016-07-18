package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_type", identifierColumn = "trigger_type", identifierField = "triggerType", table = "trigger_type")
public class TriggerType {

    /**
     */
    @Column(name = "trigger_type_name")
    private String triggeTypeName;

    /**
     */
    @Column(name = "trigger_type_description")
    private String triggerTypeDescription;
}
