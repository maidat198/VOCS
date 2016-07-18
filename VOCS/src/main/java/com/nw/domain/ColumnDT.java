package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_column_dt", identifierColumn = "column_id", identifierField = "columnId", table = "column_dt")
public class ColumnDT {

    /**
     */
    private String attribute;

    /**
     */
    @Column(name = "column_index")
    private Integer columnIndex;

    /**
     */
    @Column(name = "column_name")
    private String columnName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "normalizer_id")
    private Normalizer normalizerId;
}
