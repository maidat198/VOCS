package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_event_type", identifierColumn = "trigger_event_type", identifierField = "trigger_event_type", table = "trigger_event_type")
public class TriggerEventType {

    /**
     */
    @NotNull
    @Column(name = "event_name")
    private String eventName;

    /**
     */
    @Column(name = "event_description")
    private String eventDescription;

    /**
     */
    @NotNull
    @Column(name = "protocol")
    private String protocol;
}
