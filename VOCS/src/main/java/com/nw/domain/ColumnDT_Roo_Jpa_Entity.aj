// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.domain;

import com.nw.domain.ColumnDT;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect ColumnDT_Roo_Jpa_Entity {
    
    declare @type: ColumnDT: @Entity;
    
    declare @type: ColumnDT: @Table(name = "column_dt");
    
    @Id
    @SequenceGenerator(name = "columnDTGen", sequenceName = "seq_column_dt")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "columnDTGen")
    @Column(name = "column_id")
    private Long ColumnDT.columnId;
    
    @Version
    @Column(name = "version")
    private Integer ColumnDT.version;
    
    public Long ColumnDT.getColumnId() {
        return this.columnId;
    }
    
    public void ColumnDT.setColumnId(Long id) {
        this.columnId = id;
    }
    
    public Integer ColumnDT.getVersion() {
        return this.version;
    }
    
    public void ColumnDT.setVersion(Integer version) {
        this.version = version;
    }
    
}