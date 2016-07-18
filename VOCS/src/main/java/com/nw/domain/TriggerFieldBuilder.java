package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_field_builder", identifierColumn = "field_builder_id", identifierField = "fieldBuilderId", table = "trigger_field_builder")
public class TriggerFieldBuilder {

    /**
     */
    @NotNull
    private String field_name;

    /**
     */
    @Column(name = "process_function")
    private String processFunction;

    /**
     */
    @Column(name = "format_template_id")
    private Integer formatTemplateId;

    /**
     */
    @Column(name = "lang_id")
    private Integer langId;

    /**
     */
    private Integer status;
}
