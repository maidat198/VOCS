package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_geo_home_zone", identifierColumn = "geo_home_zone_id", identifierField = "geoHomeZoneId", table = "geo_home_zone")
public class GeoHomeZone {

    /**
     */
    @Column(name = "geo_home_zone_name")
    private String geoHomeZoneName;

    /**
     */
    @Column(name = "geo_home_zone_code")
    private String geoHomeZoneCode;

    /**
     */
    @Column(name = "remark")
    private String remark;

    /**
     */
    @Column(name = "geo_home_zone_type")
    private Integer geoHomeZoneType;
}
