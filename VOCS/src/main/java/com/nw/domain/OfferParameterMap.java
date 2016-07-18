package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_offer_parameter_map", identifierColumn = "offer_parameter_map_id", identifierField = "offerParameterMapId", table = "offer_parameter_map")
public class OfferParameterMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offerId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "parameter_id")
    private Parameters parameterId;
}
