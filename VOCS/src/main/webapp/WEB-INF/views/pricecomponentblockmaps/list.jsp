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
               
			    <page:list id="pl_com_nw_domain_PriceComponentBlockMap" items="${pricecomponentblockmaps}" z="Io6ihNSjObNyehhjSG5+rxepchY=">
			        <table:table data="${pricecomponentblockmaps}" id="l_com_nw_domain_PriceComponentBlockMap" path="/pricecomponentblockmaps" typeIdFieldName="priceComponentBlockMapId" z="LblTxwnIGGncnHQ3iXCNPnM7tOY=">
			            <table:column id="c_com_nw_domain_PriceComponentBlockMap_priceComponentId" property="priceComponentId" z="7qrwcU2SPgITfTI4DdvnusEZUDo="/>
			            <table:column id="c_com_nw_domain_PriceComponentBlockMap_blockId" property="blockId" z="FZ881+wGZCc4psh7WHvKscclc94="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>