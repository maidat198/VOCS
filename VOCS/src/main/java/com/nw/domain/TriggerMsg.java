package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_msg", identifierColumn = "msg_id", identifierField = "msgId", table = "trigger_msg")
public class TriggerMsg {

    /**
     */
    @NotNull
    @Column(name = "msg_name")
    private String msgName;

    /**
     */
    @Column(name = "msg_desc")
    private String msgDesc;

    /**
     */
    private Integer status;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "trigger_event_id")
    private TriggerEvent triggerEventId;
}
