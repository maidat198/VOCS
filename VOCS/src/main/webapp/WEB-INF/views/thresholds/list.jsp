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
               
			    <page:list id="pl_com_nw_domain_Threshold" items="${thresholds}" z="AP+d4tp/X9/bJ10qjsX5EI1uT7k=">
			        <table:table data="${thresholds}" id="l_com_nw_domain_Threshold" path="/thresholds" typeIdFieldName="thresholdId" z="nRYjlxwxiFScn2hBzTcV/W56lo0=">
			            <table:column id="c_com_nw_domain_Threshold_isPercentage" property="isPercentage" z="u76heqbhsDokX/I+cBWSwkOo//w="/>
			            <table:column id="c_com_nw_domain_Threshold_thresholdType" property="thresholdType" z="Jtb/zPbuhVTDYgMKxnohg3HAKvY="/>
			            <table:column id="c_com_nw_domain_Threshold_thresValue" property="thresValue" z="Q9d9hEbaqFM32UMD6G0IAOd42cE="/>
			            <table:column id="c_com_nw_domain_Threshold_thresholdName" property="thresholdName" z="jzxHG+5Pm7Hx23i0HaiOMcX7R2Q="/>
			            <table:column id="c_com_nw_domain_Threshold_externalId" property="externalId" z="uDqwZU9KWqnWcpSiyI5rlto5+SE="/>
			            <table:column id="c_com_nw_domain_Threshold_triggerId" property="triggerId" z="6+LH0ca9MMNoFIr0AAH0p7SN4EY="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>