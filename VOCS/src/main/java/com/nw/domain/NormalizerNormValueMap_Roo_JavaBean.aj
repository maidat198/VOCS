// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.NormValue;
import com.nw.domain.Normalizer;
import com.nw.domain.NormalizerNormValueMap;

privileged aspect NormalizerNormValueMap_Roo_JavaBean {
    
    public Normalizer NormalizerNormValueMap.getNormalizerId() {
        return this.normalizerId;
    }
    
    public void NormalizerNormValueMap.setNormalizerId(Normalizer normalizerId) {
        this.normalizerId = normalizerId;
    }
    
    public NormValue NormalizerNormValueMap.getNormValueId() {
        return this.normValueId;
    }
    
    public void NormalizerNormValueMap.setNormValueId(NormValue normValueId) {
        this.normValueId = normValueId;
    }
    
}