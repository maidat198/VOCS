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
               
			    <form:create id="fc_com_nw_domain_PriceComponentBlockMap" modelAttribute="priceComponentBlockMap" path="/pricecomponentblockmaps" render="${empty dependencies}" z="V9eKahAHXsHBwx1U2S2Jd/VNA3s=">
			        <field:select field="priceComponentId" id="c_com_nw_domain_PriceComponentBlockMap_priceComponentId" itemValue="priceComponentId" items="${pricecomponents}" path="/pricecomponents" z="FDPKAfV7rq3sharKsgA7QZo00JA="/>
			        <field:select field="blockId" id="c_com_nw_domain_PriceComponentBlockMap_blockId" itemValue="blockId" items="${blocks}" path="/blocks" z="Q0zJqvLwDYaZ36OGIv+zYaWTN7g="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_PriceComponentBlockMap" render="${not empty dependencies}" z="ZzX+V3iFzbv7hGh3wtsM2hajkIg="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>