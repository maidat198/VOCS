package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_column_decision_table_map", identifierColumn = "column_decision_table_map_id", identifierField = "columnDecisionTableMapId", table = "column_decision_table_map")
public class ColumnDecisionTableMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "decision_table_id")
    private DecisionTable decisionTableId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "column_dt_id")
    private ColumnDT columnDtId;
}
