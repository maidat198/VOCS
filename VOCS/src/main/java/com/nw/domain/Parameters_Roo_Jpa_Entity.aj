// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.Parameters;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Parameters_Roo_Jpa_Entity {
    
    declare @type: Parameters: @Entity;
    
    declare @type: Parameters: @Table(name = "parameter");
    
    @Id
    @SequenceGenerator(name = "parametersGen", sequenceName = "seq_parameter")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "parametersGen")
    @Column(name = "parameter_id")
    private Long Parameters.parameterId;
    
    @Version
    @Column(name = "version")
    private Integer Parameters.version;
    
    public Long Parameters.getParameterId() {
        return this.parameterId;
    }
    
    public void Parameters.setParameterId(Long id) {
        this.parameterId = id;
    }
    
    public Integer Parameters.getVersion() {
        return this.version;
    }
    
    public void Parameters.setVersion(Integer version) {
        this.version = version;
    }
    
}
