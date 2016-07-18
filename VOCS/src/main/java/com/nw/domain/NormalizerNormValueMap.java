package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_normalizer_norm_value_map", identifierColumn = "normalizer_norm_value_map_id", identifierField = "normalizerNormValueMapId", table = "normalizer_norm_value_map")
public class NormalizerNormValueMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "normalizer_id")
    private Normalizer normalizerId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "norm_value_id")
    private NormValue normValueId;
}
