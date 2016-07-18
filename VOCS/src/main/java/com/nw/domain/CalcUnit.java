package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_calc_unit", identifierColumn = "calc_unit_id", identifierField = "calcUnitId", table = "calc_unit")
public class CalcUnit {

    /**
     */
    @Column(name = "calc_unit_name")
    private String calcUnitName;

    /**
     */
    @Column(name = "calc_unit_type")
    private Integer calcUnitType;
}
