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
               
			    <form:update id="fu_com_nw_domain_RowDT" idField="rowId" modelAttribute="rowDT" path="/rowdts" versionField="Version" z="ckO4pRU0vQxqUF+6kPOVguyQh9s=">
			        <field:input field="rowValue" id="c_com_nw_domain_RowDT_rowValue" z="atV9GeMY+BGJryOkLR4O7sr+/tI="/>
			        <field:input field="rowIndex" id="c_com_nw_domain_RowDT_rowIndex" validationMessageCode="field_invalid_integer" z="8R902cXZ6QbKfaG9Q1SKyTU6vT0="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>