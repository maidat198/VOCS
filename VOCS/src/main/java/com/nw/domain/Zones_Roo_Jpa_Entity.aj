// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.Zones;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Zones_Roo_Jpa_Entity {
    
    declare @type: Zones: @Entity;
    
    declare @type: Zones: @Table(name = "zone");
    
    @Id
    @SequenceGenerator(name = "zonesGen", sequenceName = "seq_zone")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "zonesGen")
    @Column(name = "zone_id")
    private Long Zones.zoneId;
    
    @Version
    @Column(name = "version")
    private Integer Zones.version;
    
    public Long Zones.getZoneId() {
        return this.zoneId;
    }
    
    public void Zones.setZoneId(Long id) {
        this.zoneId = id;
    }
    
    public Integer Zones.getVersion() {
        return this.version;
    }
    
    public void Zones.setVersion(Integer version) {
        this.version = version;
    }
    
}
