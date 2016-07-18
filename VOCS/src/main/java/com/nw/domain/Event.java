package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_event", identifierColumn = "event_id", identifierField = "eventId", table = "event")
public class Event {

    /**
     */
    @Column(name = "event_name")
    private String eventName;

    /**
     */
    private String description;

    /**
     */
    @Value("0")
    @Column(name = "is_require_reserve_info")
    private Boolean isRequireReserveInfo;

    /**
     */
    @Column(name = "event_type")
    private Integer eventType;
}
