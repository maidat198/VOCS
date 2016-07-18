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
               
			    <form:create id="fc_com_nw_domain_ReserveInfoActionMap" modelAttribute="reserveInfoActionMap" path="/reserveinfoactionmaps" render="${empty dependencies}" z="GY/bikTXtBN3KRRvO3zvD6MBZkw=">
			        <field:select field="reserveInfoId" id="c_com_nw_domain_ReserveInfoActionMap_reserveInfoId" itemValue="reserveInfoId" items="${reserveinfoes}" path="/reserveinfoes" z="QwV7+9cVObH6+L84UkqlcXS04JA="/>
			        <field:select field="actionId" id="c_com_nw_domain_ReserveInfoActionMap_actionId" itemValue="actionId" items="${actionses}" path="/actionses" z="7takZVPgvBtTgyqARoxmzAGOL2c="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_ReserveInfoActionMap" render="${not empty dependencies}" z="i7VTGWYdj5ofPo2zS8th7cN2Hpg="/>
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>