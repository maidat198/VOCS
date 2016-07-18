package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_rate_table_result", identifierColumn = "rate_table_result_id", identifierField = "rateTableResultId", table = "rate_table_result")
public class RateTableResult {

    /**
     */
    @Column(name = "row_index")
    private Integer rowIndex;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "formula_id")
    private Formula formulaId;
}
