package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_rate_table", identifierColumn = "rate_table_id", identifierField = "rateTableId", table = "rate_table")
public class RateTable {

    /**
     */
    @Column(name = "rate_table_name")
    private String rateTableName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date effDate;

    /**
     */
    @Column(name = "exp_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date expDate;

    /**
     */
    private String remark;

    /**
     */
    @Column(name = "state")
    private Integer rateTableState;

    /**
     */
    @Column(name = "external_id")
    private Integer externalId;

    /**
     */
    private Integer ratingValue;

    /**
     */
    @Column(name = "formula_id")
    private Long formulaId;

    /**
     */
    @Column(name = "default_formula_id")
    private Long defaultFormulaId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "decision_table_id")
    private DecisionTable decisionTableId;
}
