package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_offer_action_map", identifierColumn = "offer_action_map_id", identifierField = "offerActionMapId", table = "offer_action_map")
public class OfferActionMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offerId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "action_id")
    private Actions actionId;
}
