// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.SortPriceRateTableMap;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect SortPriceRateTableMap_Roo_Jpa_Entity {
    
    declare @type: SortPriceRateTableMap: @Entity;
    
    declare @type: SortPriceRateTableMap: @Table(name = "sort_price_rate_table_map");
    
    @Id
    @SequenceGenerator(name = "sortPriceRateTableMapGen", sequenceName = "seq_sort_price_table_map")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "sortPriceRateTableMapGen")
    @Column(name = "sort_price_rate_table_map_id")
    private Long SortPriceRateTableMap.sortPriceRateTableMapId;
    
    @Version
    @Column(name = "version")
    private Integer SortPriceRateTableMap.version;
    
    public Long SortPriceRateTableMap.getSortPriceRateTableMapId() {
        return this.sortPriceRateTableMapId;
    }
    
    public void SortPriceRateTableMap.setSortPriceRateTableMapId(Long id) {
        this.sortPriceRateTableMapId = id;
    }
    
    public Integer SortPriceRateTableMap.getVersion() {
        return this.version;
    }
    
    public void SortPriceRateTableMap.setVersion(Integer version) {
        this.version = version;
    }
    
}
