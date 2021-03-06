// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.OfferActionMap;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect OfferActionMap_Roo_Jpa_Entity {
    
    declare @type: OfferActionMap: @Entity;
    
    declare @type: OfferActionMap: @Table(name = "offer_action_map");
    
    @Id
    @SequenceGenerator(name = "offerActionMapGen", sequenceName = "seq_offer_action_map")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "offerActionMapGen")
    @Column(name = "offer_action_map_id")
    private Long OfferActionMap.offerActionMapId;
    
    @Version
    @Column(name = "version")
    private Integer OfferActionMap.version;
    
    public Long OfferActionMap.getOfferActionMapId() {
        return this.offerActionMapId;
    }
    
    public void OfferActionMap.setOfferActionMapId(Long id) {
        this.offerActionMapId = id;
    }
    
    public Integer OfferActionMap.getVersion() {
        return this.version;
    }
    
    public void OfferActionMap.setVersion(Integer version) {
        this.version = version;
    }
    
}
