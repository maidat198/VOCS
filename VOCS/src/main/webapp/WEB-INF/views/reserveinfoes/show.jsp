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
               
			    <page:show id="ps_com_nw_domain_ReserveInfo" object="${reserveinfo}" path="/reserveinfoes" z="2s7b4jf0gJ1JME/XTM1b5t2fkZ0=">
			        <field:display field="maxReserve" id="s_com_nw_domain_ReserveInfo_maxReserve" object="${reserveinfo}" z="0k+hkx3im/VQjar5b80vZ35fVvA="/>
			        <field:display field="minReserve" id="s_com_nw_domain_ReserveInfo_minReserve" object="${reserveinfo}" z="W9JuLTPbrs4Ntju89hBayxTSB4g="/>
			        <field:display field="usageQuotaThreshold" id="s_com_nw_domain_ReserveInfo_usageQuotaThreshold" object="${reserveinfo}" z="K+S4xiLtn2E6P7s59MoymM2jpj8="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>