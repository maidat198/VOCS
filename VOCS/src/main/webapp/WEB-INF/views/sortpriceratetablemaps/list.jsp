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
               
			    <page:list id="pl_com_nw_domain_SortPriceRateTableMap" items="${sortpriceratetablemaps}" z="TG6KBKgTGoCXie65MprEHtVT+zU=">
			        <table:table data="${sortpriceratetablemaps}" id="l_com_nw_domain_SortPriceRateTableMap" path="/sortpriceratetablemaps" typeIdFieldName="sortPriceRateTableMapId" z="kil978V63alC6aBCaAjmAUh2zFE=">
			            <table:column id="c_com_nw_domain_SortPriceRateTableMap_sortPriceComponentId" property="sortPriceComponentId" z="ullyX4AcTZnbM1n8dct+lTmVt7g="/>
			            <table:column id="c_com_nw_domain_SortPriceRateTableMap_rateTableId" property="rateTableId" z="G9+rrftx5cTmYksCANlR9Vm9NQM="/>
			            <table:column id="c_com_nw_domain_SortPriceRateTableMap_rateTableIndex" property="rateTableIndex" z="3XqBMvvF2/0LHb4CgKQmSYRJqS8="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>