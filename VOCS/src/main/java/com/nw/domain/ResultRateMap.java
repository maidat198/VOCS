package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_result_rate_map", identifierColumn = "result_rate_map_id", identifierField = "resultRateMapId", table = "result_rate_map")
public class ResultRateMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_id")
    private RateTable rateTableId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_result_id")
    private RateTableResult rateTableResultId;
}
