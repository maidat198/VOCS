// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.Category;
import com.nw.domain.TriggerDestination;
import com.nw.domain.TriggerEvent;
import com.nw.domain.TriggerEventType;
import com.nw.domain.TriggerOCS;

privileged aspect TriggerEvent_Roo_JavaBean {
    
    public String TriggerEvent.getTrigger_event_name() {
        return this.trigger_event_name;
    }
    
    public void TriggerEvent.setTrigger_event_name(String trigger_event_name) {
        this.trigger_event_name = trigger_event_name;
    }
    
    public Integer TriggerEvent.getStatus() {
        return this.status;
    }
    
    public void TriggerEvent.setStatus(Integer status) {
        this.status = status;
    }
    
    public Integer TriggerEvent.getDelay_process() {
        return this.delay_process;
    }
    
    public void TriggerEvent.setDelay_process(Integer delay_process) {
        this.delay_process = delay_process;
    }
    
    public TriggerDestination TriggerEvent.getDestination_id() {
        return this.destination_id;
    }
    
    public void TriggerEvent.setDestination_id(TriggerDestination destination_id) {
        this.destination_id = destination_id;
    }
    
    public TriggerOCS TriggerEvent.getTriggerOcsId() {
        return this.triggerOcsId;
    }
    
    public void TriggerEvent.setTriggerOcsId(TriggerOCS triggerOcsId) {
        this.triggerOcsId = triggerOcsId;
    }
    
    public TriggerEventType TriggerEvent.getTrigger_event_type() {
        return this.trigger_event_type;
    }
    
    public void TriggerEvent.setTrigger_event_type(TriggerEventType trigger_event_type) {
        this.trigger_event_type = trigger_event_type;
    }
    
    public Category TriggerEvent.getCategoryId() {
        return this.categoryId;
    }
    
    public void TriggerEvent.setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }
    
}
