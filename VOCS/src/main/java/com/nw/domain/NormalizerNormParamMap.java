package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_normalizer_norm_param_map", identifierColumn = "normalizer_norm_param_map_id", identifierField = "normalizerNormParamMapId", table = "normalizer_norm_param_map")
public class NormalizerNormParamMap {

    /**
     */
    @ManyToOne
    @JoinColumn(name = "normalizer_id")
    private Normalizer normalizerId;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "norm_param_id")
    private NormParam normParamId;
}
