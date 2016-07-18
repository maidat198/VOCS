// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerDestination;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect TriggerDestination_Roo_Jpa_Entity {
    
    declare @type: TriggerDestination: @Entity;
    
    declare @type: TriggerDestination: @Table(name = "trigger_destination");
    
    @Id
    @SequenceGenerator(name = "triggerDestinationGen", sequenceName = "seq_trigger_destination")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "triggerDestinationGen")
    @Column(name = "destination_id")
    private Long TriggerDestination.destinationId;
    
    @Version
    @Column(name = "version")
    private Integer TriggerDestination.version;
    
    public Long TriggerDestination.getDestinationId() {
        return this.destinationId;
    }
    
    public void TriggerDestination.setDestinationId(Long id) {
        this.destinationId = id;
    }
    
    public Integer TriggerDestination.getVersion() {
        return this.version;
    }
    
    public void TriggerDestination.setVersion(Integer version) {
        this.version = version;
    }
    
}