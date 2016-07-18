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
               
			    <page:show id="ps_com_nw_domain_SortPriceComponent" object="${sortpricecomponent}" path="/sortpricecomponents" z="bZoGtMkMhFQJIGMgSoHge5dluS8=">
			        <field:display field="sortPriceComponentName" id="s_com_nw_domain_SortPriceComponent_sortPriceComponentName" object="${sortpricecomponent}" z="9reCLOTW64PwFRs1P/IxGv5sIY4="/>
			        <field:display field="categoryId" id="s_com_nw_domain_SortPriceComponent_categoryId" object="${sortpricecomponent}" z="vLYFMe+ChjdtwKZSTt49ra5BHqM="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>