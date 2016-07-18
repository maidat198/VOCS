package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_trigger_destination", identifierColumn = "destination_id", identifierField = "destinationId", table = "trigger_destination")
public class TriggerDestination {

    /**
     */
    @NotNull
    @Column(name = "dest_name")
    private String destName;

    /**
     */
    @Column(name = "dest_description")
    private String destDescription;

    /**
     */
    private Integer status;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
