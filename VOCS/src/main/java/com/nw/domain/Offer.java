package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_offer", identifierColumn = "offer_id", identifierField = "offerId", table = "offer")
public class Offer {

    /**
     */
    @Column(name = "offer_name")
    private String offerName;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;

    /**
     */
    @Column(name = "priority")
    private Integer priority;

    /**
     */
    @Column(name = "eff_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date effDate;

    /**
     */
    @Column(name = "exp_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date expDate;

    /**
     */
    @Column(name = "create_type")
    private Integer createType;

    /**
     */
    @Column(name = "offer_type")
    private Integer offerType;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "billing_cycle_type_id")
    private BillingCycleType billingCycleTypeId;

    /**
     */
    @Column(name = "offer_external_id")
    private String offerExternalId;

    /**
     */
    @Column(name = "version_info")
    private String versionInfo;

    /**
     */
    @Column(name = "special_cal_method")
    private Integer specialCalMethod;

    /**
     */
    @Column(name = "offer_template_id")
    private Integer offerTemplateId;

    /**
     */
    private String description;

    /**
     */
    @Column(name = "offer_cycle")
    private Integer offerCycle;
}
