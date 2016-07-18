package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_row_decision_table_map", identifierColumn = "row_decision_table_map_id", identifierField = "rowDecisionTableMapId", table = "row_decision_table_map")
public class RowDecisionTableMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "decision_table_id")
    private DecisionTable decisionTableId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "row_dt_id")
    private RowDT rowDTId;
}
