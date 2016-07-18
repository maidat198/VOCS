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
               
			    <form:update id="fu_com_nw_domain_RateTable" idField="rateTableId" modelAttribute="rateTable" path="/ratetables" versionField="Version" z="0bvRAWYedVzwjofR+Cvj6kpc0zM=">
			        <field:input field="rateTableName" id="c_com_nw_domain_RateTable_rateTableName" z="7UYNqZYSB+/L0/flAc0d6xOfP8A="/>
			        <field:select field="categoryId" id="c_com_nw_domain_RateTable_categoryId" itemValue="categoryId" items="${categorys}" path="/categorys" z="OI+WzcKiUi/U++v3mQaKDoLqHy0="/>
			        <field:datetime dateTimePattern="${rateTable_effdate_date_format}" field="effDate" id="c_com_nw_domain_RateTable_effDate" z="m2H6s2ha34kLlbOebsKsiFTSHKg="/>
			        <field:datetime dateTimePattern="${rateTable_expdate_date_format}" field="expDate" id="c_com_nw_domain_RateTable_expDate" z="b8Ak8SrMwfkslX05a8TLeR5WGI8="/>
			        <field:input field="remark" id="c_com_nw_domain_RateTable_remark" z="JwE+e7rRb2B6es+ahLlUHkSrRHk="/>
			        <field:input field="rateTableState" id="c_com_nw_domain_RateTable_rateTableState" validationMessageCode="field_invalid_integer" z="sF/qMcWGkhrA5YUReSNAT4mAIuQ="/>
			        <field:input field="externalId" id="c_com_nw_domain_RateTable_externalId" validationMessageCode="field_invalid_integer" z="6QPIOVs9vX4EAMzVRvyasqfulGo="/>
			        <field:input field="ratingValue" id="c_com_nw_domain_RateTable_ratingValue" validationMessageCode="field_invalid_integer" z="xhw1ySdPAcj1zRz4vm7XoTqJ8Mk="/>
			        <field:input field="formulaId" id="c_com_nw_domain_RateTable_formulaId" validationMessageCode="field_invalid_integer" z="OdwkSIR9f3khsXI9LRgVynr+TBU="/>
			        <field:input field="defaultFormulaId" id="c_com_nw_domain_RateTable_defaultFormulaId" validationMessageCode="field_invalid_integer" z="AFjO3k+hwvP+1JQJMMdS+m1Up9U="/>
			        <field:select field="decisionTableId" id="c_com_nw_domain_RateTable_decisionTableId" itemValue="decisionTableId" items="${decisiontables}" path="/decisiontables" z="t+SCs4HOxUznMJcYEA4NbxI54pU="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>