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
@RooJpaActiveRecord(sequenceName = "seq_geo_net_zone", identifierColumn = "geo_net_zone_id", identifierField = "geoNetZoneId", table = "geo_net_zone")
public class GeoNetZone {

    /**
     */
    @Column(name = "cell_id")
    private Integer cellId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "geo_home_zone_id")
    private GeoHomeZone geoHomeZoneId;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date updateDate;
}
