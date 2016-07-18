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
               
			    <page:list id="pl_com_nw_domain_PriceRateMap" items="${priceratemaps}" z="VrflPHoKN2c6TlHyCAmnMcoClCA=">
			        <table:table data="${priceratemaps}" id="l_com_nw_domain_PriceRateMap" path="/priceratemaps" typeIdFieldName="priceRateMapId" z="KbcA1RH3ICVqbqSBCOBDc86u/Fw=">
			            <table:column id="c_com_nw_domain_PriceRateMap_priceComponentId" property="priceComponentId" z="m64+v9Uq0kVKh8uFQrEeAMQ8KLI="/>
			            <table:column id="c_com_nw_domain_PriceRateMap_rateTableId" property="rateTableId" z="w/EgXjCSZv4/OEfD5pQ8ADwvNx8="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>