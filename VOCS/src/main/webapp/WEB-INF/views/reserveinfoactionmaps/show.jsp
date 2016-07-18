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
               
			    <page:show id="ps_com_nw_domain_ReserveInfoActionMap" object="${reserveinfoactionmap}" path="/reserveinfoactionmaps" z="pywrMzQcFGXrl783TdziYtqORoA=">
			        <field:display field="reserveInfoId" id="s_com_nw_domain_ReserveInfoActionMap_reserveInfoId" object="${reserveinfoactionmap}" z="8SgA39P4utsXv3XOux8MMj8HEic="/>
			        <field:display field="actionId" id="s_com_nw_domain_ReserveInfoActionMap_actionId" object="${reserveinfoactionmap}" z="8g6NlLGVtxLZQHRJva8Evu+QUoE="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>