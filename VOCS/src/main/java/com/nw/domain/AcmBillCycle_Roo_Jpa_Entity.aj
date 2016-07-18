// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.AcmBillCycle;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect AcmBillCycle_Roo_Jpa_Entity {
    
    declare @type: AcmBillCycle: @Entity;
    
    declare @type: AcmBillCycle: @Table(name = "acm_bill_cycle");
    
    @Id
    @SequenceGenerator(name = "acmBillCycleGen", sequenceName = "seq_acm_bill_cycle")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "acmBillCycleGen")
    @Column(name = "acm_bill_cycle_key")
    private Long AcmBillCycle.acmBillCycleKey;
    
    @Version
    @Column(name = "version")
    private Integer AcmBillCycle.version;
    
    public Long AcmBillCycle.getAcmBillCycleKey() {
        return this.acmBillCycleKey;
    }
    
    public void AcmBillCycle.setAcmBillCycleKey(Long id) {
        this.acmBillCycleKey = id;
    }
    
    public Integer AcmBillCycle.getVersion() {
        return this.version;
    }
    
    public void AcmBillCycle.setVersion(Integer version) {
        this.version = version;
    }
    
}