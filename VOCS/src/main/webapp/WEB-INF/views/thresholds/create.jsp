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
               
			    <form:create id="fc_com_nw_domain_Threshold" modelAttribute="threshold" path="/thresholds" render="${empty dependencies}" z="/2gYJ8M6yML3u0dN75b155yix6w=">
			        <field:checkbox field="isPercentage" id="c_com_nw_domain_Threshold_isPercentage" z="xhsvFVQe8vJrm55Hxi4IL0KAP8U="/>
			        <field:input field="thresholdType" id="c_com_nw_domain_Threshold_thresholdType" validationMessageCode="field_invalid_integer" z="F7ylh2jTwD02Q151uF1IlToW6Qw="/>
			        <field:input field="thresValue" id="c_com_nw_domain_Threshold_thresValue" validationMessageCode="field_invalid_integer" z="HfXZc4uZDebdsWqpzBQSO+wPrWE="/>
			        <field:input field="thresholdName" id="c_com_nw_domain_Threshold_thresholdName" z="318nz4Y6pPb/IZNASm3FFC/bIpY="/>
			        <field:input field="externalId" id="c_com_nw_domain_Threshold_externalId" validationMessageCode="field_invalid_integer" z="Pf/6beSLxIDT9Yr1De0vXhZO0Ic="/>
			        <field:input field="triggerId" id="c_com_nw_domain_Threshold_triggerId" validationMessageCode="field_invalid_integer" z="pjwaUG7QR4f1E+CB3/l2xS6I2VU="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_Threshold" render="${not empty dependencies}" z="/9LzBet3QflkH7kDfvLxFrvL5mM="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>