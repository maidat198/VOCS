// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.DynamicReserveRateTableMap;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect DynamicReserveRateTableMap_Roo_Jpa_Entity {
    
    declare @type: DynamicReserveRateTableMap: @Entity;
    
    declare @type: DynamicReserveRateTableMap: @Table(name = "dynamic_reserve_rate_table_map");
    
    @Id
    @SequenceGenerator(name = "dynamicReserveRateTableMapGen", sequenceName = "seq_dynamic_reserve_rate_table_map")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "dynamicReserveRateTableMapGen")
    @Column(name = "dynamic_rate_map_id")
    private Long DynamicReserveRateTableMap.dynamicRateMapId;
    
    @Version
    @Column(name = "version")
    private Integer DynamicReserveRateTableMap.version;
    
    public Long DynamicReserveRateTableMap.getDynamicRateMapId() {
        return this.dynamicRateMapId;
    }
    
    public void DynamicReserveRateTableMap.setDynamicRateMapId(Long id) {
        this.dynamicRateMapId = id;
    }
    
    public Integer DynamicReserveRateTableMap.getVersion() {
        return this.version;
    }
    
    public void DynamicReserveRateTableMap.setVersion(Integer version) {
        this.version = version;
    }
    
}
