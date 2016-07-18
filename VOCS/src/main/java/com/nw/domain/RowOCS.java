package com.nw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "seq_row_ocs", identifierColumn = "row_ocs_id", identifierField = "rowOcsId", table = "row_ocs")
public class RowOCS {

    /**
     */
    private Integer rowIndexId;
}
