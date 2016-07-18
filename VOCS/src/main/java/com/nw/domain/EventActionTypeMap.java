package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_event_action_type_map", identifierColumn = "event_action_type_map_id", identifierField = "eventActionTypeMapId", table = "event_action_type_map")
public class EventActionTypeMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "event_id")
    private Event eventId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "action_type_id")
    private ActionType actionTypeId;
}
