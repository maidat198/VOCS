// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ThresholdBalTypeMap;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect ThresholdBalTypeMap_Roo_Jpa_Entity {
    
    declare @type: ThresholdBalTypeMap: @Entity;
    
    declare @type: ThresholdBalTypeMap: @Table(name = "threshold_baltype_map");
    
    @Id
    @SequenceGenerator(name = "thresholdBalTypeMapGen", sequenceName = "seq_threshold_baltype_map")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "thresholdBalTypeMapGen")
    @Column(name = "threshold_baltype_map_id")
    private Long ThresholdBalTypeMap.thresholdBaltypeMapId;
    
    @Version
    @Column(name = "version")
    private Integer ThresholdBalTypeMap.version;
    
    public Long ThresholdBalTypeMap.getThresholdBaltypeMapId() {
        return this.thresholdBaltypeMapId;
    }
    
    public void ThresholdBalTypeMap.setThresholdBaltypeMapId(Long id) {
        this.thresholdBaltypeMapId = id;
    }
    
    public Integer ThresholdBalTypeMap.getVersion() {
        return this.version;
    }
    
    public void ThresholdBalTypeMap.setVersion(Integer version) {
        this.version = version;
    }
    
}