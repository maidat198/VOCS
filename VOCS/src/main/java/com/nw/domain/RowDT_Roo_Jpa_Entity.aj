// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.RowDT;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect RowDT_Roo_Jpa_Entity {
    
    declare @type: RowDT: @Entity;
    
    declare @type: RowDT: @Table(name = "row_dt");
    
    @Id
    @SequenceGenerator(name = "rowDTGen", sequenceName = "seq_row_dt")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "rowDTGen")
    @Column(name = "row_id")
    private Long RowDT.rowId;
    
    @Version
    @Column(name = "version")
    private Integer RowDT.version;
    
    public Long RowDT.getRowId() {
        return this.rowId;
    }
    
    public void RowDT.setRowId(Long id) {
        this.rowId = id;
    }
    
    public Integer RowDT.getVersion() {
        return this.version;
    }
    
    public void RowDT.setVersion(Integer version) {
        this.version = version;
    }
    
}
