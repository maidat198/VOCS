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
               
			    <form:update id="fu_com_nw_domain_SortPriceRateTableMap" idField="sortPriceRateTableMapId" modelAttribute="sortPriceRateTableMap" path="/sortpriceratetablemaps" versionField="Version" z="l6x3a0bDwbEAEgZVygBGG4JbEVE=">
			        <field:select field="sortPriceComponentId" id="c_com_nw_domain_SortPriceRateTableMap_sortPriceComponentId" itemValue="sortPriceComponentId" items="${sortpricecomponents}" path="/sortpricecomponents" z="LPhoA6eiCgFZoaMoGnhqH/7Ef68="/>
			        <field:select field="rateTableId" id="c_com_nw_domain_SortPriceRateTableMap_rateTableId" itemValue="rateTableId" items="${ratetables}" path="/ratetables" z="gMtlkdzoX6z79vbRFolXqVjt79U="/>
			        <field:input field="rateTableIndex" id="c_com_nw_domain_SortPriceRateTableMap_rateTableIndex" validationMessageCode="field_invalid_integer" z="UmiXv2oT/GyGr7km32wMQIJgqIA="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>