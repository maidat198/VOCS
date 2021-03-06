// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerMsg;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect TriggerMsg_Roo_Jpa_Entity {
    
    declare @type: TriggerMsg: @Entity;
    
    declare @type: TriggerMsg: @Table(name = "trigger_msg");
    
    @Id
    @SequenceGenerator(name = "triggerMsgGen", sequenceName = "seq_trigger_msg")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "triggerMsgGen")
    @Column(name = "msg_id")
    private Long TriggerMsg.msgId;
    
    @Version
    @Column(name = "version")
    private Integer TriggerMsg.version;
    
    public Long TriggerMsg.getMsgId() {
        return this.msgId;
    }
    
    public void TriggerMsg.setMsgId(Long id) {
        this.msgId = id;
    }
    
    public Integer TriggerMsg.getVersion() {
        return this.version;
    }
    
    public void TriggerMsg.setVersion(Integer version) {
        this.version = version;
    }
    
}
