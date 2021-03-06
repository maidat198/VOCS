// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.NormValue;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect NormValue_Roo_Jpa_Entity {
    
    declare @type: NormValue: @Entity;
    
    declare @type: NormValue: @Table(name = "norm_value");
    
    @Id
    @SequenceGenerator(name = "normValueGen", sequenceName = "seq_norm_value")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "normValueGen")
    @Column(name = "norm_value_id")
    private Integer NormValue.normValueId;
    
    @Version
    @Column(name = "version")
    private Integer NormValue.version;
    
    public Integer NormValue.getNormValueId() {
        return this.normValueId;
    }
    
    public void NormValue.setNormValueId(Integer id) {
        this.normValueId = id;
    }
    
    public Integer NormValue.getVersion() {
        return this.version;
    }
    
    public void NormValue.setVersion(Integer version) {
        this.version = version;
    }
    
}
