package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_parameter", identifierColumn = "parameter_id", identifierField = "parameterId", table = "parameter")
public class Parameters {

    /**
     */
    private Integer ownerLevel;

    /**
     */
    private String parameterValue;
}
