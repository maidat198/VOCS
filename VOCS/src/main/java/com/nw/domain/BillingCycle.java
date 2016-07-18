package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_billing_cycle", identifierColumn = "billing_cycle_id", identifierField = "billingCycleId", table = "billing_cycle")
public class BillingCycle {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "billing_cycle_type_id")
    private BillingCycleType billingCycleTypeId;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date cycleBeginDate;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date cycleEndDate;

    /**
     */
    private Integer states;
}
