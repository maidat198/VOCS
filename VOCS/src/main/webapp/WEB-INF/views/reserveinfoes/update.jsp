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
               
			    <form:update id="fu_com_nw_domain_ReserveInfo" idField="reserveInfoId" modelAttribute="reserveInfo" path="/reserveinfoes" versionField="Version" z="onFhaKTm9qCxOedXtDMtEbTLhus=">
			        <field:input field="maxReserve" id="c_com_nw_domain_ReserveInfo_maxReserve" validationMessageCode="field_invalid_integer" z="Ul4QLx2yEPnGl3f4M8XY6dnxhT0="/>
			        <field:input field="minReserve" id="c_com_nw_domain_ReserveInfo_minReserve" validationMessageCode="field_invalid_integer" z="tvD8sKY15dUdYyD5UD/u6brXlSM="/>
			        <field:input field="usageQuotaThreshold" id="c_com_nw_domain_ReserveInfo_usageQuotaThreshold" validationMessageCode="field_invalid_integer" z="hyQM551UG1vQMtYuhqBO7+EhsHA="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>