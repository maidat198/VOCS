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
               
			    <form:create id="fc_com_nw_domain_Parameters" modelAttribute="parameters" path="/parameterses" render="${empty dependencies}" z="8wFle+In+qWVygWQGV9whmV9vsA=">
			        <field:input field="ownerLevel" id="c_com_nw_domain_Parameters_ownerLevel" validationMessageCode="field_invalid_integer" z="caDS5JG4cs7eiKZxH/Z1ncjwx50="/>
			        <field:input field="parameterValue" id="c_com_nw_domain_Parameters_parameterValue" z="b38tDRYE0nmlL4QVqakLoSNCqA0="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_Parameters" render="${not empty dependencies}" z="nZ5hxgxGIRhgrj3t2mh5Mo7RL1s="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>