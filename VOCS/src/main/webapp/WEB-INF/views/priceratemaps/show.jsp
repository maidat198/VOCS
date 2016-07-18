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
               
			    <page:show id="ps_com_nw_domain_PriceRateMap" object="${priceratemap}" path="/priceratemaps" z="Sn78wSaJXOFr0PileCZ6WZzQ1r4=">
			        <field:display field="priceComponentId" id="s_com_nw_domain_PriceRateMap_priceComponentId" object="${priceratemap}" z="ZMLKTIzLZbgmAR99PuvbN2hnhQs="/>
			        <field:display field="rateTableId" id="s_com_nw_domain_PriceRateMap_rateTableId" object="${priceratemap}" z="ZwY1hOErEi41ObjRD4MlLVS36qQ="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>