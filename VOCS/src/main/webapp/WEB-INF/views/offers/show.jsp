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
               
			    <page:show id="ps_com_nw_domain_Offer" object="${offer}" path="/offers" z="UcwqGW/4+q+Pa7QXwmVWf3zuMTA=">
			        <field:display field="offerName" id="s_com_nw_domain_Offer_offerName" object="${offer}" z="gQPIz7qbvevXFCsKwmvJzLVUngI="/>
			        <field:display field="categoryId" id="s_com_nw_domain_Offer_categoryId" object="${offer}" z="mze1qICtabA3yNUKzxVyEEvoO5A="/>
			        <field:display field="priority" id="s_com_nw_domain_Offer_priority" object="${offer}" z="Ix8Iiah58cHm4VTRPDrN0u5g3vE="/>
			        <field:display date="true" dateTimePattern="${offer_effdate_date_format}" field="effDate" id="s_com_nw_domain_Offer_effDate" object="${offer}" z="o4vKuJ1k7F8XVrgp4IOib0zDmiM="/>
			        <field:display date="true" dateTimePattern="${offer_expdate_date_format}" field="expDate" id="s_com_nw_domain_Offer_expDate" object="${offer}" z="39fp5wuBCYorAUuj5jJ7CqG03xo="/>
			        <field:display field="createType" id="s_com_nw_domain_Offer_createType" object="${offer}" z="iy6wHPRjzy/tOTtcp/gdAj6N2rM="/>
			        <field:display field="offerType" id="s_com_nw_domain_Offer_offerType" object="${offer}" z="bpmCqKbQXhveYf21Z2ihQ9fkqXU="/>
			        <field:display field="billingCycleTypeId" id="s_com_nw_domain_Offer_billingCycleTypeId" object="${offer}" z="rpE9hzv77zwYJFcZ9paDjjshmJU="/>
			        <field:display field="offerExternalId" id="s_com_nw_domain_Offer_offerExternalId" object="${offer}" z="dXj8nWC6r8tyyu9+RFpsuYB6IFU="/>
			        <field:display field="versionInfo" id="s_com_nw_domain_Offer_versionInfo" object="${offer}" z="YnpRttNlUFaLBT03LOLbuqQlsV8="/>
			        <field:display field="specialCalMethod" id="s_com_nw_domain_Offer_specialCalMethod" object="${offer}" z="y8dMjJ4pNwOLbmE8hRZNrpgP7Cw="/>
			        <field:display field="offerTemplateId" id="s_com_nw_domain_Offer_offerTemplateId" object="${offer}" z="Ha5KYQD3jeMlkGNESMKWmFO77So="/>
			        <field:display field="description" id="s_com_nw_domain_Offer_description" object="${offer}" z="29uZvOqRZdwYAGdbw1y4XE726bc="/>
			        <field:display field="offerCycle" id="s_com_nw_domain_Offer_offerCycle" object="${offer}" z="jVUDajhFW1eE7pPmZmJWcFQRgA8="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>