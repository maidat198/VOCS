// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.PriceComponent;
import com.nw.domain.PriceRateMap;
import com.nw.domain.RateTable;

privileged aspect PriceRateMap_Roo_JavaBean {
    
    public PriceComponent PriceRateMap.getPriceComponentId() {
        return this.priceComponentId;
    }
    
    public void PriceRateMap.setPriceComponentId(PriceComponent priceComponentId) {
        this.priceComponentId = priceComponentId;
    }
    
    public RateTable PriceRateMap.getRateTableId() {
        return this.rateTableId;
    }
    
    public void PriceRateMap.setRateTableId(RateTable rateTableId) {
        this.rateTableId = rateTableId;
    }
    
}