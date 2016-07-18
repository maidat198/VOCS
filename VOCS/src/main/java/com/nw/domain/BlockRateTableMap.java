package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_block_rate_table_map", identifierColumn = "block_table_rate_map_id", identifierField = "blockTableRateMapId", table = "block_rate_table_map")
public class BlockRateTableMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "block_id")
    private Block blockId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "rate_table_id")
    private RateTable rateTableId;

    /**
     */
    @Column(name = "component_type")
    private Integer componentType;

    /**
     */
    @Column(name = "rate_table_index")
    private Integer rateTableIndex;
}
