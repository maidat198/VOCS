package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_decision_table", identifierColumn = "decision_table_id", identifierField = "decisionTableId", table = "decision_table")
public class DecisionTable {

    /**
     */
    @Column(name = "decision_table_name")
    private String decisionTableName;

    /**
     */
    @Column(name = "default_formula_index")
    private Integer defaultFormulaIndex;

    /**
     */
    private String remark;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
