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
               
			    <page:list id="pl_com_nw_domain_PriceComponent" items="${pricecomponents}" z="LENzpwRnclgmfhXi4m21AcqK1xA=">
			        <table:table data="${pricecomponents}" id="l_com_nw_domain_PriceComponent" path="/pricecomponents" typeIdFieldName="priceComponentId" z="gCrStgy2b8LaxsYBvNTDETspX0U=">
			            <table:column id="c_com_nw_domain_PriceComponent_priceComponentName" property="priceComponentName" z="33vGA9ZAcyZPCStxAhfsJTYtQds="/>
			            <table:column id="c_com_nw_domain_PriceComponent_categoryId" property="categoryId" z="hBeq3V0c+2A7ClABcS5pmuu71uE="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>