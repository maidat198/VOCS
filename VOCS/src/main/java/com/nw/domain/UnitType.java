package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_unit_type", identifierColumn = "unit_type_id", identifierField = "unitTypeId", table = "unit_type")
public class UnitType {

    /**
     */
    @Column(name = "name")
    private String name;

    /**
     */
    @Column(name = "precision")
    private Integer precisions;

    /**
     */
    @Column(name = "base_rate")
    private Integer baseRate;

    /**
     */
    @Column(name = "display_rate")
    private Integer displayRate;

    /**
     */
    private String remark;
}
