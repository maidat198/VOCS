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
               
			    <form:update id="fu_com_nw_domain_PriceRateMap" idField="priceRateMapId" modelAttribute="priceRateMap" path="/priceratemaps" versionField="Version" z="w1Vh3ZtfAjhw9SmYC6P+6vnpoUw=">
			        <field:select field="priceComponentId" id="c_com_nw_domain_PriceRateMap_priceComponentId" itemValue="priceComponentId" items="${pricecomponents}" path="/pricecomponents" z="9vKl1ctL20bswmsl4z7Ljerq0Ws="/>
			        <field:select field="rateTableId" id="c_com_nw_domain_PriceRateMap_rateTableId" itemValue="rateTableId" items="${ratetables}" path="/ratetables" z="Txzf4N171hkVNlp8KfLkqvyl870="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>