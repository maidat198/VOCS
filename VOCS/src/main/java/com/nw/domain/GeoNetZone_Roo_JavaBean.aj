// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.GeoHomeZone;
import com.nw.domain.GeoNetZone;
import java.util.Date;

privileged aspect GeoNetZone_Roo_JavaBean {
    
    public Integer GeoNetZone.getCellId() {
        return this.cellId;
    }
    
    public void GeoNetZone.setCellId(Integer cellId) {
        this.cellId = cellId;
    }
    
    public GeoHomeZone GeoNetZone.getGeoHomeZoneId() {
        return this.geoHomeZoneId;
    }
    
    public void GeoNetZone.setGeoHomeZoneId(GeoHomeZone geoHomeZoneId) {
        this.geoHomeZoneId = geoHomeZoneId;
    }
    
    public Date GeoNetZone.getUpdateDate() {
        return this.updateDate;
    }
    
    public void GeoNetZone.setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
    
}
