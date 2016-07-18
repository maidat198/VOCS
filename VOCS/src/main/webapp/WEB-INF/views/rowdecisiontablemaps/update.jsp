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
               
			    <form:update id="fu_com_nw_domain_RowDecisionTableMap" idField="rowDecisionTableMapId" modelAttribute="rowDecisionTableMap" path="/rowdecisiontablemaps" versionField="Version" z="Nj4igdS9nXdrkbGOEvgZWEr07VY=">
			        <field:select field="decisionTableId" id="c_com_nw_domain_RowDecisionTableMap_decisionTableId" itemValue="decisionTableId" items="${decisiontables}" path="/decisiontables" z="EfBcfXmFEIFlkGrh8QhftFckfqw="/>
			        <field:select field="rowDTId" id="c_com_nw_domain_RowDecisionTableMap_rowDTId" itemValue="rowId" items="${rowdts}" path="/rowdts" z="ntstY3fnoYCnKAqroC+WVkYGGT8="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>