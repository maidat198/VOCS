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
               
			   <form:update id="fu_com_nw_domain_SortPriceComponent" idField="sortPriceComponentId" modelAttribute="sortPriceComponent" path="/sortpricecomponents" versionField="Version" z="R6hS2Q+DBsXnXbM1jWFh/cXnZ3Q=">
			        <field:input field="sortPriceComponentName" id="c_com_nw_domain_SortPriceComponent_sortPriceComponentName" z="hQk7DccqVK24b8Y7jGYJWUKwhMs="/>
			        <field:select field="categoryId" id="c_com_nw_domain_SortPriceComponent_categoryId" itemValue="categoryId" items="${categorys}" path="/categorys" z="jAHrSchWxMmWh/V81/kO516YiQA="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>