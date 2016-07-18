package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_msg_field", identifierColumn = "msg_field_id", identifierField = "msgFieldId", table = "trigger_msg_field")
public class TriggerMsgField {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "msg_id")
    private TriggerMsg msg_id;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "field_builder_id")
    private TriggerFieldBuilder fieldBuilderId;

    /**
     */
    @Column(name = "msg_order")
    private Integer msgOrder;

    /**
     */
    @Column(name = "msg_status")
    private Integer msgStatus;
}
