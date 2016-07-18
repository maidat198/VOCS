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
               
			    <page:show id="ps_com_nw_domain_Parameters" object="${parameters}" path="/parameterses" z="uTvmIzUL1dkx9Ln9iGb2YcY9SYY=">
			        <field:display field="ownerLevel" id="s_com_nw_domain_Parameters_ownerLevel" object="${parameters}" z="wXvhIQarq7F1EUAVMM+TemvVXRI="/>
			        <field:display field="parameterValue" id="s_com_nw_domain_Parameters_parameterValue" object="${parameters}" z="M18FptWiihMm8suLVMJ1sihPOo0="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>