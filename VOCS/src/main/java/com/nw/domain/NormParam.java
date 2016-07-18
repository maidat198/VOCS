package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_norm_param", identifierColumn = "norm_param_id", identifierField = "normParamId", table = "norm_param")
public class NormParam {

    /**
     */
    @Column(name = "config_input")
    private String configInput;

    /**
     */
    @Column(name = "norm_param_index")
    private Integer normParamIndex;
}
