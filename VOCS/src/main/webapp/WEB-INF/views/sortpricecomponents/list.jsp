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
               
			    <page:list id="pl_com_nw_domain_SortPriceComponent" items="${sortpricecomponents}" z="27ZK20HQxt+pygJ0HDT/PxpeO8U=">
			        <table:table data="${sortpricecomponents}" id="l_com_nw_domain_SortPriceComponent" path="/sortpricecomponents" typeIdFieldName="sortPriceComponentId" z="vfPQRRRA1GxPfNAmhahC9nRw1jo=">
			            <table:column id="c_com_nw_domain_SortPriceComponent_sortPriceComponentName" property="sortPriceComponentName" z="iiuNCgW4eUwAPBtKsQBczqp9zYc="/>
			            <table:column id="c_com_nw_domain_SortPriceComponent_categoryId" property="categoryId" z="oW61pw2eE17zVEeRZR5KkGo5egM="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>