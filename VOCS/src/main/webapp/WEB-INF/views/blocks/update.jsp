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
                 	<h3 class="box-title">Update offer</h3>
                 </div><!-- /.box-header -->
               
			    <form:update id="fu_com_nw_domain_Offer" idField="offerId" modelAttribute="offer" path="/offers" versionField="Version" z="lf0NWZ/exdQKOxdj7ak4XBcWMg4=">
			        <field:input field="offerName" id="c_com_nw_domain_Offer_offerName" z="jOikH8zch4CJQ4uXKAaazhRIq9w="/>
			        <field:select field="categoryId" id="c_com_nw_domain_Offer_categoryId" itemValue="categoryId" items="${categorys}" path="/categorys" z="Um194rcXQVKrJ7frS8izj+wy4Ug="/>
			        <field:input field="priority" id="c_com_nw_domain_Offer_priority" validationMessageCode="field_invalid_integer" z="S8DKSDx1FenV+ZiJ7WVEdSvat3A="/>
			        <field:datetime dateTimePattern="${offer_effdate_date_format}" field="effDate" id="c_com_nw_domain_Offer_effDate" z="4P5h7+4Rqf+dL4gRoKspO+glAI4="/>
			        <field:datetime dateTimePattern="${offer_expdate_date_format}" field="expDate" id="c_com_nw_domain_Offer_expDate" z="ay01chd3zTSvBnrmK/r5/iY/JwM="/>
			        <field:input field="createType" id="c_com_nw_domain_Offer_createType" validationMessageCode="field_invalid_integer" z="MclR3wf8d2jX5yFcpKNFN7xNHYs="/>
			        <field:input field="offerType" id="c_com_nw_domain_Offer_offerType" validationMessageCode="field_invalid_integer" z="rlZL79swT1d35eu1tR+3Emng4i0="/>
			        <field:select field="billingCycleTypeId" id="c_com_nw_domain_Offer_billingCycleTypeId" itemValue="billingCycleTypeId" items="${billingcycletypes}" path="/billingcycletypes" z="iqp4Fy7fqlFTCNJcK/KzqMGv7R0="/>
			        <field:input field="offerExternalId" id="c_com_nw_domain_Offer_offerExternalId" z="+dB1q62ncHbz720b/KJkZ9b7yow="/>
			        <field:input field="versionInfo" id="c_com_nw_domain_Offer_versionInfo" z="gEmAz6uVTUeO0jjN0wowTkPSRFo="/>
			        <field:input field="specialCalMethod" id="c_com_nw_domain_Offer_specialCalMethod" validationMessageCode="field_invalid_integer" z="6Yf3OhPzXgusS1skAclITVhY+n8="/>
			        <field:input field="offerTemplateId" id="c_com_nw_domain_Offer_offerTemplateId" validationMessageCode="field_invalid_integer" z="0hmz4Bd8dj8bZVAgiQb7VfgdLR4="/>
			        <field:input field="description" id="c_com_nw_domain_Offer_description" z="SGB4sPYGFelhzOXKTQNVhSd+xHo="/>
			        <field:input field="offerCycle" id="c_com_nw_domain_Offer_offerCycle" validationMessageCode="field_invalid_integer" z="Bhit/rpWeY7iglWWdW0oKrVv+gQ="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>