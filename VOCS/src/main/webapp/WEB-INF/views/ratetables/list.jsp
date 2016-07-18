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
               
			   <page:list id="pl_com_nw_domain_RateTable" items="${ratetables}" z="dtN4hiH7Uxs9ZAsEbsPKeBVQzqg=">
			        <table:table data="${ratetables}" id="l_com_nw_domain_RateTable" path="/ratetables" typeIdFieldName="rateTableId" z="CnmgehQMEWOB5dKxht3h5fBKpPs=">
			            <table:column id="c_com_nw_domain_RateTable_rateTableName" property="rateTableName" z="yB3ZvshOP1wicYqJGNFqcKCg/Gw="/>
			            <table:column id="c_com_nw_domain_RateTable_categoryId" property="categoryId" z="QvZB7SeW6loP418zqpjZtRR9K1g="/>
			            <table:column date="true" dateTimePattern="${rateTable_effdate_date_format}" id="c_com_nw_domain_RateTable_effDate" property="effDate" z="4EkPkwLJT3fgJQ+4Q8gAng9DZzk="/>
			            <table:column date="true" dateTimePattern="${rateTable_expdate_date_format}" id="c_com_nw_domain_RateTable_expDate" property="expDate" z="HnhcG6m0pe4641u0y7TGAUIEU7A="/>
			            <table:column id="c_com_nw_domain_RateTable_remark" property="remark" z="BQvIlf91DH7gq7HbcgNvQE9Dppg="/>
			            <table:column id="c_com_nw_domain_RateTable_rateTableState" property="rateTableState" z="+UisVYwbrSjYl+NEXm7/JcgRWzU="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>