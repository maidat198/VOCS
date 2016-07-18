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
               
			    <page:list id="pl_com_nw_domain_RateTableResult" items="${ratetableresults}" z="hL77bX6gpH4EnnW5WYoJGIQljDc=">
			        <table:table data="${ratetableresults}" id="l_com_nw_domain_RateTableResult" path="/ratetableresults" typeIdFieldName="rateTableResultId" z="sJc+oySwezy/KP5fXRbzEv17gMg=">
			            <table:column id="c_com_nw_domain_RateTableResult_rowIndex" property="rowIndex" z="G8/ndVVPVaCJLM1slfunhirkouI="/>
			            <table:column id="c_com_nw_domain_RateTableResult_formulaId" property="formulaId" z="Z8KeigLzTXtZV4jvCOtHBn+elRU="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>