// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerOCS;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect TriggerOCS_Roo_Jpa_Entity {
    
    declare @type: TriggerOCS: @Entity;
    
    declare @type: TriggerOCS: @Table(name = "trigger_ocs");
    
    @Id
    @SequenceGenerator(name = "triggerOCSGen", sequenceName = "seq_trigger_ocs")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "triggerOCSGen")
    @Column(name = "trigger_ocs_id")
    private Long TriggerOCS.triggerOcsId;
    
    @Version
    @Column(name = "version")
    private Integer TriggerOCS.version;
    
    public Long TriggerOCS.getTriggerOcsId() {
        return this.triggerOcsId;
    }
    
    public void TriggerOCS.setTriggerOcsId(Long id) {
        this.triggerOcsId = id;
    }
    
    public Integer TriggerOCS.getVersion() {
        return this.version;
    }
    
    public void TriggerOCS.setVersion(Integer version) {
        this.version = version;
    }
    
}