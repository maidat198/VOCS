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
               
			    <form:update id="fu_com_nw_domain_RateTableResult" idField="rateTableResultId" modelAttribute="rateTableResult" path="/ratetableresults" versionField="Version" z="X6LXg/d0fqZBqZ99XpSIw8l1qjE=">
			        <field:input field="rowIndex" id="c_com_nw_domain_RateTableResult_rowIndex" validationMessageCode="field_invalid_integer" z="tVjeV8hbyBPhWeDuGWxCCfvHSRY="/>
			        <field:select field="formulaId" id="c_com_nw_domain_RateTableResult_formulaId" itemValue="formulaId" items="${formulas}" path="/formulas" z="/HnfOhN45BRY2MW70NzXEu4PxKs="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>