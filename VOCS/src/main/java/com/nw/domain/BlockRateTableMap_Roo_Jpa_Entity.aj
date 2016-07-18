// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.BlockRateTableMap;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect BlockRateTableMap_Roo_Jpa_Entity {
    
    declare @type: BlockRateTableMap: @Entity;
    
    declare @type: BlockRateTableMap: @Table(name = "block_rate_table_map");
    
    @Id
    @SequenceGenerator(name = "blockRateTableMapGen", sequenceName = "seq_block_rate_table_map")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "blockRateTableMapGen")
    @Column(name = "block_table_rate_map_id")
    private Long BlockRateTableMap.blockTableRateMapId;
    
    @Version
    @Column(name = "version")
    private Integer BlockRateTableMap.version;
    
    public Long BlockRateTableMap.getBlockTableRateMapId() {
        return this.blockTableRateMapId;
    }
    
    public void BlockRateTableMap.setBlockTableRateMapId(Long id) {
        this.blockTableRateMapId = id;
    }
    
    public Integer BlockRateTableMap.getVersion() {
        return this.version;
    }
    
    public void BlockRateTableMap.setVersion(Integer version) {
        this.version = version;
    }
    
}
