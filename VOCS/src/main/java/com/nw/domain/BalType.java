package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.beans.factory.annotation.Value;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_bal_type", identifierColumn = "bal_type_id", identifierField = "balTypeId", table = "bal_type")
public class BalType {

    /**
     */
    @Column(name = "bal_type_name")
    private String balTypeName;

    /**
     */
    @Column(name = "description")
    private String description;

    /**
     */
    @Column(name = "external_id")
    private Integer externalId;

    /**
     */
    @Column(name = "bal_type_type")
    private Integer balTypeType;

    /**
     */
    @Column(name = "category_id")
    private Long categoryId;

    /**
     */
    @Column(name = "payment_type")
    private String paymentType;

    /**
     */
    @Column(name = "is_currency")
    private String isCurrency;

    /**
     */
    @Column(name = "percision")
    private Integer percision;

    /**
     */
    @Column(name = "eff_date_type")
    private Integer effDateType;

    /**
     */
    @Column(name = "eff_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date effDate;

    /**
     */
    @Column(name = "exp_date_type")
    private Integer expDateType;

    /**
     */
    @Column(name = "exp_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date expDate;

    /**
     */
    @Column(name = "recurring_type")
    private Integer recurringType;

    /**
     */
    @Column(name = "recurring_period")
    private Integer recurringPeriod;

    /**
     */
    @Value("0")
    @Column(name = "is_acm")
    private Boolean isAcm;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "unit_type_id")
    private UnitType unitTypeId;

    /**
     */
    @Column(name = "periodic_period_type")
    private Integer periodicPeriodType;

    /**
     */
    @Column(name = "periodic_period")
    private Integer periodicPeriod;

    /**
     */
    @Column(name = "window_size")
    private Integer windowSize;

    /**
     */
    @Column(name = "low_water_mark_level")
    private Integer lowWaterMarkLevel;

    /**
     */
    @Column(name = "high_watermark_level")
    private Integer highWatermarkLevel;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "billing_cycle_type_id")
    private BillingCycleType billingCycleTypeId;
}
