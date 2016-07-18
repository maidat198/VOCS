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
               
			    <page:list id="pl_com_nw_domain_RowDT" items="${rowdts}" z="yXUiimZckzGpjuTojzo+MCpkzvk=">
			        <table:table data="${rowdts}" id="l_com_nw_domain_RowDT" path="/rowdts" typeIdFieldName="rowId" z="ZpdFNfPTQpgGQpWOyLaLxSLEn3M=">
			            <table:column id="c_com_nw_domain_RowDT_rowValue" property="rowValue" z="qvsheuW17xbX5NOtMuxyb1kWZgo="/>
			            <table:column id="c_com_nw_domain_RowDT_rowIndex" property="rowIndex" z="jbdNmCCbj8xT3AqHZhhg9AoQcc8="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>