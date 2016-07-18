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
               
			    <page:list id="pl_com_nw_domain_ReserveInfo" items="${reserveinfoes}" z="iN7qwNUn8l35ZcLotO21fsvjGfE=">
			        <table:table data="${reserveinfoes}" id="l_com_nw_domain_ReserveInfo" path="/reserveinfoes" typeIdFieldName="reserveInfoId" z="bJzjKxrYm0GSl2lHIH6SGYAtguU=">
			            <table:column id="c_com_nw_domain_ReserveInfo_maxReserve" property="maxReserve" z="AwZlaAIBNthq5vo+AKP+JHN/7sY="/>
			            <table:column id="c_com_nw_domain_ReserveInfo_minReserve" property="minReserve" z="U5+a+uhynn7EUZACYNzdODcv6mk="/>
			            <table:column id="c_com_nw_domain_ReserveInfo_usageQuotaThreshold" property="usageQuotaThreshold" z="jmvOwVuMf9GY62ku1LddeW176/Q="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>