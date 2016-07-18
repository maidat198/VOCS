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
               
			    <form:update id="fu_com_nw_domain_ThresholdBalTypeMap" idField="thresholdBaltypeMapId" modelAttribute="thresholdBalTypeMap" path="/thresholdbaltypemaps" versionField="Version" z="svHs+KtyDMP7oEFZgoWyiDcEHPY=">
			        <field:select field="thresholdId" id="c_com_nw_domain_ThresholdBalTypeMap_thresholdId" itemValue="thresholdId" items="${thresholds}" path="/thresholds" z="lYblRDNr68dzrHMvXdZx4uabNxM="/>
			        <field:select field="baltypeId" id="c_com_nw_domain_ThresholdBalTypeMap_baltypeId" itemValue="balTypeId" items="${baltypes}" path="/baltypes" z="Zw9JweULcjmIJKbpZWoIhMCv9DQ="/>
			    </form:update>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>