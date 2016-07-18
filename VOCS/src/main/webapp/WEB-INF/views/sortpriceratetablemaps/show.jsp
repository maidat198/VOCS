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
               
			    <page:show id="ps_com_nw_domain_SortPriceRateTableMap" object="${sortpriceratetablemap}" path="/sortpriceratetablemaps" z="C67bs5KkpwSoGT14nSZ3DVT0GWo=">
			        <field:display field="sortPriceComponentId" id="s_com_nw_domain_SortPriceRateTableMap_sortPriceComponentId" object="${sortpriceratetablemap}" z="Upb+gpLuh2zDkE4nbkKvGBZmWWA="/>
			        <field:display field="rateTableId" id="s_com_nw_domain_SortPriceRateTableMap_rateTableId" object="${sortpriceratetablemap}" z="3zcEF6fal1RU2GoozCobZxI2zsg="/>
			        <field:display field="rateTableIndex" id="s_com_nw_domain_SortPriceRateTableMap_rateTableIndex" object="${sortpriceratetablemap}" z="jbrsmWOsR9C59vQPJhrOTFCmo0Q="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>