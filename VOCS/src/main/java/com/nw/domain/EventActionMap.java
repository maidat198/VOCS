package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "event_action_map_id", identifierField = "eventActionMapId", table = "event_action_map")
public class EventActionMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "event_id")
    private Event eventId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "action_id")
    private Actions actionId;
}
