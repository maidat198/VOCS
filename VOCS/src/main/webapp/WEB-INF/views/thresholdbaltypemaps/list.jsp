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
               
			    <page:list id="pl_com_nw_domain_ThresholdBalTypeMap" items="${thresholdbaltypemaps}" z="xPPGgKyRoCcaUf2ix04ab9S4cWY=">
			        <table:table data="${thresholdbaltypemaps}" id="l_com_nw_domain_ThresholdBalTypeMap" path="/thresholdbaltypemaps" typeIdFieldName="thresholdBaltypeMapId" z="sBXhcSIKwpiK768Y87se37VjYzw=">
			            <table:column id="c_com_nw_domain_ThresholdBalTypeMap_thresholdId" property="thresholdId" z="Oxv4o8rVg74DknzwCQByRnBIKQE="/>
			            <table:column id="c_com_nw_domain_ThresholdBalTypeMap_baltypeId" property="baltypeId" z="nbnuKJjWT8waKRvRn3e1atnrLC0="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>