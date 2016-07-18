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
                 	<h3 class="box-title">Create offer</h3>
                 </div><!-- /.box-header -->
               
			    <page:list id="pl_com_nw_domain_Offer" items="${offers}" z="/3Vs+CWDQzxZmYNF2P/Epouw2As=">
			        <table:table data="${offers}" id="l_com_nw_domain_Offer" path="/offers" typeIdFieldName="offerId" z="jHRgk+O+DMFpysIXl5hGMbzCv6E=">
			            <table:column id="c_com_nw_domain_Offer_offerName" property="offerName" z="vWNx1viyT8WeReRqOwc1UBNIvq8="/>
			            <table:column id="c_com_nw_domain_Offer_categoryId" property="categoryId" z="7I5D2EzzwY1mwqc22cObVZoXmH4="/>
			            <table:column id="c_com_nw_domain_Offer_priority" property="priority" z="BWAxo2N5+zw9oBzQfncGmTXqv0E="/>
			            <table:column date="true" dateTimePattern="${offer_effdate_date_format}" id="c_com_nw_domain_Offer_effDate" property="effDate" z="Ej8zyqd+f4XhoQ2mGt8JF8WuCkU="/>
			            <table:column date="true" dateTimePattern="${offer_expdate_date_format}" id="c_com_nw_domain_Offer_expDate" property="expDate" z="h0QT4q+x2iYYdbgtpsW055dgMkM="/>
			            <table:column id="c_com_nw_domain_Offer_createType" property="createType" z="r1PgtTIdiKaFRuDvl2JEjO57nyY="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>