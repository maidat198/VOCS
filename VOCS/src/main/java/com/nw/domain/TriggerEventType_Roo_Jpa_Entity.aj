// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerEventType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect TriggerEventType_Roo_Jpa_Entity {
    
    declare @type: TriggerEventType: @Entity;
    
    declare @type: TriggerEventType: @Table(name = "trigger_event_type");
    
    @Id
    @SequenceGenerator(name = "triggerEventTypeGen", sequenceName = "seq_trigger_event_type")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "triggerEventTypeGen")
    @Column(name = "trigger_event_type")
    private Long TriggerEventType.trigger_event_type;
    
    @Version
    @Column(name = "version")
    private Integer TriggerEventType.version;
    
    public Long TriggerEventType.getTrigger_event_type() {
        return this.trigger_event_type;
    }
    
    public void TriggerEventType.setTrigger_event_type(Long id) {
        this.trigger_event_type = id;
    }
    
    public Integer TriggerEventType.getVersion() {
        return this.version;
    }
    
    public void TriggerEventType.setVersion(Integer version) {
        this.version = version;
    }
    
}
