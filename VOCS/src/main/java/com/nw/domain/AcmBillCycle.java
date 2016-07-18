package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_acm_bill_cycle", identifierColumn = "acm_bill_cycle_key", identifierField = "acmBillCycleKey", table = "acm_bill_cycle")
public class AcmBillCycle {

    /**
     */
    @Column(name = "acm_bill_cycle_id")
    private Long acmBillCycleId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "bal_type_id")
    private BalType balTypeId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "billing_cycle_type_id")
    private BillingCycleType billingCycleTypeId;
}
