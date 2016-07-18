package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_field_format", identifierColumn = "format_template_id", identifierField = "formatTemplateId", table = "trigger_field_format")
public class TriggerFieldFormat {

    /**
     */
    @Column(name = "lang_id")
    private Integer langId;

    /**
     */
    @Column(name = "text")
    private String text;

    /**
     */
    @Column(name = "format_type")
    private Integer formatType;
}
