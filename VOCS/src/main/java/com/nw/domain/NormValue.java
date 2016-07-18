package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_norm_value", identifierColumn = "norm_value_id", identifierField = "normValueId", identifierType = Integer.class, table = "norm_value")
public class NormValue {

    /**
     */
    @Column(name = "value_name")
    private String valueName;

    /**
     */
    @Column(name = "value_id")
    private Integer valueId;

    /**
     */
    @Column(name = "description")
    private String description;

    /**
     */
    @Column(name = "norm_value_index")
    private Integer normValueIndex;
}
