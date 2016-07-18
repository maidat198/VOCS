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
               
			   <page:show id="ps_com_nw_domain_RateTableResult" object="${ratetableresult}" path="/ratetableresults" z="NIryZM17KmdgxeCLDprtgf/IGVQ=">
			        <field:display field="rowIndex" id="s_com_nw_domain_RateTableResult_rowIndex" object="${ratetableresult}" z="m35T57pHK7J0ISZYwYT4PR6tZZI="/>
			        <field:display field="formulaId" id="s_com_nw_domain_RateTableResult_formulaId" object="${ratetableresult}" z="7XZ9Sw+9F/ApwYI157v61u1d1aY="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>