package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_row_dt", identifierColumn = "row_id", identifierField = "rowId", table = "row_dt")
public class RowDT {

    /**
     */
    @Column(name = "value")
    private String rowValue;

    /**
     */
    @Column(name = "row_index")
    private Integer rowIndex;
}
