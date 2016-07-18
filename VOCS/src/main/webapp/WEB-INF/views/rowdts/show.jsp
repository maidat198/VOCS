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
               
			    <page:show id="ps_com_nw_domain_RowDT" object="${rowdt}" path="/rowdts" z="OrtyutV59YXL8h+OvsFzf6Lf/F8=">
			        <field:display field="rowValue" id="s_com_nw_domain_RowDT_rowValue" object="${rowdt}" z="/zOoZxCOCSoM0bGBG9LQrgSYeOU="/>
			        <field:display field="rowIndex" id="s_com_nw_domain_RowDT_rowIndex" object="${rowdt}" z="8nGevrBe9hMr4MtJ4vswKNol6YQ="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>