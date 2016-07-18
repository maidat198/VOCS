package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_event", identifierColumn = "trigger_event_id", identifierField = "triggerEventId", table = "trigger_event")
public class TriggerEvent {

    /**
     */
    private String trigger_event_name;

    /**
     */
    private Integer status;

    /**
     */
    private Integer delay_process;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "destination_id")
    private TriggerDestination destination_id;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "trigger_ocs_id")
    private TriggerOCS triggerOcsId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "trigger_event_type")
    private TriggerEventType trigger_event_type;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
