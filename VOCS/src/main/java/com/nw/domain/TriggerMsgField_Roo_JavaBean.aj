// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.TriggerFieldBuilder;
import com.nw.domain.TriggerMsg;
import com.nw.domain.TriggerMsgField;

privileged aspect TriggerMsgField_Roo_JavaBean {
    
    public TriggerMsg TriggerMsgField.getMsg_id() {
        return this.msg_id;
    }
    
    public void TriggerMsgField.setMsg_id(TriggerMsg msg_id) {
        this.msg_id = msg_id;
    }
    
    public TriggerFieldBuilder TriggerMsgField.getFieldBuilderId() {
        return this.fieldBuilderId;
    }
    
    public void TriggerMsgField.setFieldBuilderId(TriggerFieldBuilder fieldBuilderId) {
        this.fieldBuilderId = fieldBuilderId;
    }
    
    public Integer TriggerMsgField.getMsgOrder() {
        return this.msgOrder;
    }
    
    public void TriggerMsgField.setMsgOrder(Integer msgOrder) {
        this.msgOrder = msgOrder;
    }
    
    public Integer TriggerMsgField.getMsgStatus() {
        return this.msgStatus;
    }
    
    public void TriggerMsgField.setMsgStatus(Integer msgStatus) {
        this.msgStatus = msgStatus;
    }
    
}
