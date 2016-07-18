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
               
			    <form:create id="fc_com_nw_domain_RowDT" modelAttribute="rowDT" path="/rowdts" render="${empty dependencies}" z="8qGJyKvZi/Sp8OUdvutxlmkMjn0=">
			        <field:input field="rowValue" id="c_com_nw_domain_RowDT_rowValue" z="atV9GeMY+BGJryOkLR4O7sr+/tI="/>
			        <field:input field="rowIndex" id="c_com_nw_domain_RowDT_rowIndex" validationMessageCode="field_invalid_integer" z="8R902cXZ6QbKfaG9Q1SKyTU6vT0="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_RowDT" render="${not empty dependencies}" z="KTakBiCMvVaZ6GPjoAFL29+oTsU="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>