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
               
			    <form:create id="fc_com_nw_domain_RowOCS" modelAttribute="rowOCS" path="/rowocss" render="${empty dependencies}" z="1ZBsQgO2jm03uGWsvv8iwnzRrkE=">
			        <field:input field="rowIndexId" id="c_com_nw_domain_RowOCS_rowIndexId" validationMessageCode="field_invalid_integer" z="akSJq6wGEpDJ+ircN8swb6jjK+A="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_RowOCS" render="${not empty dependencies}" z="PnZGEsmq/sxV0ZqcsgGDTdM9hvo="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>