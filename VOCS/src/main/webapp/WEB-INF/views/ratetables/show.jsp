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
               
			    <page:show id="ps_com_nw_domain_RateTable" object="${ratetable}" path="/ratetables" z="Bgt0MJ/Pi46Le/G1IFNAYRF4x3U=">
			        <field:display field="rateTableName" id="s_com_nw_domain_RateTable_rateTableName" object="${ratetable}" z="8ik222Zuga2fNwFQuwo38iIr7qM="/>
			        <field:display field="categoryId" id="s_com_nw_domain_RateTable_categoryId" object="${ratetable}" z="QUTe4Lb8ifiBMyIEaOBf3+zPw74="/>
			        <field:display date="true" dateTimePattern="${rateTable_effdate_date_format}" field="effDate" id="s_com_nw_domain_RateTable_effDate" object="${ratetable}" z="YG7V6VN2hEbynLas+iUuY8H0bY4="/>
			        <field:display date="true" dateTimePattern="${rateTable_expdate_date_format}" field="expDate" id="s_com_nw_domain_RateTable_expDate" object="${ratetable}" z="PyER4DEVuW/26BjOa8qStN8HSkA="/>
			        <field:display field="remark" id="s_com_nw_domain_RateTable_remark" object="${ratetable}" z="yiCRijYIwrK4ILBctQjgrfxFE2Q="/>
			        <field:display field="rateTableState" id="s_com_nw_domain_RateTable_rateTableState" object="${ratetable}" z="hu3K9CfJhVKMJ8QaPvcdFmtFaRw="/>
			        <field:display field="externalId" id="s_com_nw_domain_RateTable_externalId" object="${ratetable}" z="oAvHNDI+3lCpLpEKkLCXx4QvN6g="/>
			        <field:display field="ratingValue" id="s_com_nw_domain_RateTable_ratingValue" object="${ratetable}" z="jhjSps+/8Zac95W8g0DVj7htap8="/>
			        <field:display field="formulaId" id="s_com_nw_domain_RateTable_formulaId" object="${ratetable}" z="/BqQ9qVYil0vY67SMeziz+3cbZs="/>
			        <field:display field="defaultFormulaId" id="s_com_nw_domain_RateTable_defaultFormulaId" object="${ratetable}" z="GNwanq6X6u9iv9vOJy+/TB+xMUk="/>
			        <field:display field="decisionTableId" id="s_com_nw_domain_RateTable_decisionTableId" object="${ratetable}" z="ceQQDsS2OMSgXLJU05nC27BXWVk="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>