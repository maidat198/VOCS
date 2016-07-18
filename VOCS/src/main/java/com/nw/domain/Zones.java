package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_zone", identifierColumn = "zone_id", identifierField = "zoneId", table = "zone")
public class Zones {

    /**
     */
    @Column(name = "zone_name")
    private String zoneName;

    /**
     */
    @Column(name = "zone_code")
    private String zoneCode;

    /**
     */
    @Column(name = "remark")
    private String remark;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "zone_map_id")
    private ZoneMap zoneMapId;
}
