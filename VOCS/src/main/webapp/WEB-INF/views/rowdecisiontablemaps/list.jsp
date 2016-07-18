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
               
			    <page:list id="pl_com_nw_domain_RowDecisionTableMap" items="${rowdecisiontablemaps}" z="BQMAA5cyhafloYOgXalv7qZmTnY=">
			        <table:table data="${rowdecisiontablemaps}" id="l_com_nw_domain_RowDecisionTableMap" path="/rowdecisiontablemaps" typeIdFieldName="rowDecisionTableMapId" z="Wu21NdfDBmm1r/2rnWgXvM152EY=">
			            <table:column id="c_com_nw_domain_RowDecisionTableMap_decisionTableId" property="decisionTableId" z="qUIgwmky3FWzjZghxxhv7Gc+2uI="/>
			            <table:column id="c_com_nw_domain_RowDecisionTableMap_rowDTId" property="rowDTId" z="Z+vm9+Re9+YgFNuXFgBrrvKfPpU="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>