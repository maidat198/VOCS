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
               
			    <page:list id="pl_com_nw_domain_Parameters" items="${parameterses}" z="v/UqaX4ZU9uclmbtW9e9VcfWWO8=">
			        <table:table data="${parameterses}" id="l_com_nw_domain_Parameters" path="/parameterses" typeIdFieldName="parameterId" z="cjHnuIH/qK1Qv0A6WMoZEYA+eLw=">
			            <table:column id="c_com_nw_domain_Parameters_ownerLevel" property="ownerLevel" z="cW9t8mWONLnjOxepK+ExUVsNuN0="/>
			            <table:column id="c_com_nw_domain_Parameters_parameterValue" property="parameterValue" z="MrCPitY9szaBuqLvby8GX+ZL790="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>