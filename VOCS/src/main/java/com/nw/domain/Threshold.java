package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_threshold", identifierColumn = "threshold_id", identifierField = "thresholdId", table = "threshold")
public class Threshold {

    /**
     */
    @Value("0")
    @Column(name = "is_percentage")
    private Boolean isPercentage;

    /**
     */
    @Column(name = "threshold_type")
    private Integer thresholdType;

    /**
     */
    @Column(name = "value")
    private Integer thresValue;

    /**
     */
    private String thresholdName;

    /**
     */
    @Column(name = "external_id")
    private Integer externalId;

    /**
     */
    @Column(name = "trigger_id")
    private Integer triggerId;
}
