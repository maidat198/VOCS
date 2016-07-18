package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_field_list", identifierColumn = "field_list_id", identifierField = "fieldListId", table = "trigger_field_list")
public class TriggerFieldList {

    /**
     */
    @NotNull
    @Column(name = "field_name")
    private String fieldName;

    /**
     */
    @Column(name = "field_order")
    private Integer fieldOrder;

    /**
     */
    @Column(name = "field_format")
    private Integer fieldFormat;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "field_builder_id")
    private TriggerFieldBuilder fieldBuilderId;
}
