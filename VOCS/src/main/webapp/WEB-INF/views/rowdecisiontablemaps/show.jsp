<%@taglib tagdir="/WEB-INF/tags/form" prefix="page" %>
<%@taglib tagdir="/WEB-INF/tags/form" prefix="form" %>
<%@taglib tagdir="/WEB-INF/tags/form/fields"  prefix="table"%>
<%@taglib tagdir="/WEB-INF/tags/form/fields"  prefix="field"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="content-wrapper">        
    <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
           <div class="col-md-12">
            <div class="box box-info">                
                 <div class="box-header with-border">
                 	<h3 class="box-title"></h3>
                 </div><!-- /.box-header -->
               
			    <page:show id="ps_com_nw_domain_RowDecisionTableMap" object="${rowdecisiontablemap}" path="/rowdecisiontablemaps" z="J2wXibhEhD0M/+Q1SyBBSUrdNvo=">
			        <field:display field="decisionTableId" id="s_com_nw_domain_RowDecisionTableMap_decisionTableId" object="${rowdecisiontablemap}" z="v7UqeeDjnyCT7TdyWME53rrdO2k="/>
			        <field:display field="rowDTId" id="s_com_nw_domain_RowDecisionTableMap_rowDTId" object="${rowdecisiontablemap}" z="XGDlCFpZznxG1IS7zWhpSgVNcdQ="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>