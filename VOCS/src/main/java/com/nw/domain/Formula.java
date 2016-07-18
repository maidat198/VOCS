package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_formula", identifierColumn = "formula_id", identifierField = "formulaId", table = "formula")
public class Formula {

    /**
     */
    @Column(name = "formula_type")
    private Integer formulaType;

    /**
     */
    @Column(name = "a")
    private Integer a;

    /**
     */
    @Column(name = "b")
    private Integer b;

    /**
     */
    @Column(name = "per")
    private Integer per;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "trigger_ocs_id")
    private TriggerOCS triggerOcsId;

    /**
     */
    @Value("0")
    @Column(name = "is_percentage")
    private Boolean isPercentage;

    /**
     */
    @Column(name = "template_bits")
    private Integer templateBits;

    /**
     */
    @Column(name = "normalizing_value_type")
    private Integer normalizingValueType;

    /**
     */
    @Column(name = "formula_error_code")
    private Integer formulaErrorCode;
}
