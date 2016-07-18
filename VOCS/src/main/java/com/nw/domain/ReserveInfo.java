package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_reserve_info", identifierColumn = "reserve_info_id", identifierField = "reserveInfoId", table = "reserve_info")
public class ReserveInfo {

    /**
     */
    @Column(name = "max_reserve")
    private Integer maxReserve;

    /**
     */
    @Column(name = "min_reserve")
    private Integer minReserve;

    /**
     */
    @Column(name = "usage_quota_threshold")
    private Integer usageQuotaThreshold;
}
