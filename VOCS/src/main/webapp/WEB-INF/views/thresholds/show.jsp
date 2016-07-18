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
               
			   <page:show id="ps_com_nw_domain_Threshold" object="${threshold}" path="/thresholds" z="+HpC5vsr9obLpMnENM13AzgZU1c=">
			        <field:display field="isPercentage" id="s_com_nw_domain_Threshold_isPercentage" object="${threshold}" z="w7OVYEfHSKVx5dfbs82Hkyqc9SI="/>
			        <field:display field="thresholdType" id="s_com_nw_domain_Threshold_thresholdType" object="${threshold}" z="7UoZ9X5y6O0Alj6YcX5W313r9WQ="/>
			        <field:display field="thresValue" id="s_com_nw_domain_Threshold_thresValue" object="${threshold}" z="qsffItUBSCBgIlBXhVtLRzef6Pc="/>
			        <field:display field="thresholdName" id="s_com_nw_domain_Threshold_thresholdName" object="${threshold}" z="5RZ7+aGezs+Rlf7p09su8qCL6Wo="/>
			        <field:display field="externalId" id="s_com_nw_domain_Threshold_externalId" object="${threshold}" z="gmx7iPxaQjRs8NlDiI5X13CQdw0="/>
			        <field:display field="triggerId" id="s_com_nw_domain_Threshold_triggerId" object="${threshold}" z="iKYU2kW4iCb5GJlt1ypmJSpjuS0="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>