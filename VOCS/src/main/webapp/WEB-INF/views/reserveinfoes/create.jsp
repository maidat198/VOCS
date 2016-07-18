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
               
			     <form:create id="fc_com_nw_domain_ReserveInfo" modelAttribute="reserveInfo" path="/reserveinfoes" render="${empty dependencies}" z="H/x70HdkwhqQfvWGLIgXy3oDIio=">
			        <field:input field="maxReserve" id="c_com_nw_domain_ReserveInfo_maxReserve" validationMessageCode="field_invalid_integer" z="Ul4QLx2yEPnGl3f4M8XY6dnxhT0="/>
			        <field:input field="minReserve" id="c_com_nw_domain_ReserveInfo_minReserve" validationMessageCode="field_invalid_integer" z="tvD8sKY15dUdYyD5UD/u6brXlSM="/>
			        <field:input field="usageQuotaThreshold" id="c_com_nw_domain_ReserveInfo_usageQuotaThreshold" validationMessageCode="field_invalid_integer" z="hyQM551UG1vQMtYuhqBO7+EhsHA="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_ReserveInfo" render="${not empty dependencies}" z="6thk809gXd07M84b0+DrKDQuApM="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>