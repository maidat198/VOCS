package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_billing_cycle_type", identifierColumn = "billing_cycle_type_id", identifierField = "billingCycleTypeId", table = "billing_cycle_type")
public class BillingCycleType {

    /**
     */
    @Column(name = "billing_cycle_type_name")
    private String billingCycleTypeName;

    /**
     */
    @Column(name = "quantity")
    private Integer quantity;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date beginDate;

    /**
     */
    @Column(name = "remark")
    private String remark;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "calc_unit_id")
    private CalcUnit calcUnitId;
}
