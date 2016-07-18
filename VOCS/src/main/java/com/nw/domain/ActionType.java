package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_action_type", identifierColumn = "action_type_id", identifierField = "actionTypeId", table = "action_type")
public class ActionType {

    /**
     */
    @Column(name = "action_type_name")
    private String actionTypeName;

    /**
     */
    @OneToOne
    @JoinColumn(name = "category_id")
    private Category categoryId;
}
