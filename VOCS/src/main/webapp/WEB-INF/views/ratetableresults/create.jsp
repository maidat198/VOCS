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
               
			    <form:create id="fc_com_nw_domain_RateTableResult" modelAttribute="rateTableResult" path="/ratetableresults" render="${empty dependencies}" z="PeHU4KCSBB2djTB6rcLMPMepMbk=">
        <field:input field="rowIndex" id="c_com_nw_domain_RateTableResult_rowIndex" validationMessageCode="field_invalid_integer" z="tVjeV8hbyBPhWeDuGWxCCfvHSRY="/>
        <field:select field="formulaId" id="c_com_nw_domain_RateTableResult_formulaId" itemValue="formulaId" items="${formulas}" path="/formulas" z="/HnfOhN45BRY2MW70NzXEu4PxKs="/>
    </form:create>
    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_RateTableResult" render="${not empty dependencies}" z="11+JH0xG9Eh+RvHBfXAFlz1yQaY="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>