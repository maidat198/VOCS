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
               
			    <page:list id="pl_com_nw_domain_ReserveInfoActionMap" items="${reserveinfoactionmaps}" z="J10r13BIyMCKvKVKC+L47T2cQyw=">
			        <table:table data="${reserveinfoactionmaps}" id="l_com_nw_domain_ReserveInfoActionMap" path="/reserveinfoactionmaps" typeIdFieldName="reserveActionMapId" z="zOPR+Gr5LQvljHss2+DDCyYOf+I=">
			            <table:column id="c_com_nw_domain_ReserveInfoActionMap_reserveInfoId" property="reserveInfoId" z="LS39DqKEVLApg6p3sIgBVHQsj6g="/>
			            <table:column id="c_com_nw_domain_ReserveInfoActionMap_actionId" property="actionId" z="4Si66UWb+x+zPVfWAfsqJq9jN+Y="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>