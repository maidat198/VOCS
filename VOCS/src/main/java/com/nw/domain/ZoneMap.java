package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_zone_map", identifierColumn = "zone_map_id", identifierField = "zoneMapId", table = "zone_map")
public class ZoneMap {

    /**
     */
    @Column(name = "zone_map_name")
    private String zoneMapName;

    /**
     */
    private String remark;
}
