package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_zone_data", identifierColumn = "zone_data_id", identifierField = "zoneDataId", table = "zone_data")
public class ZoneData {

    /**
     */
    @Column(name = "zone_data_value")
    private String zoneDataValue;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "zone_id")
    private Zones zoneId;
}
