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
               
			    <form:create id="fc_com_nw_domain_PriceComponent" modelAttribute="priceComponent" path="/pricecomponents" render="${empty dependencies}" z="HmLpgI1kQwU+uzikC9AfSxQWvzo=">
			        <field:input field="priceComponentName" id="c_com_nw_domain_PriceComponent_priceComponentName" z="zkWP2nEZjFCt+oev5EjVywX9ECk="/>
			        <field:select field="categoryId" id="c_com_nw_domain_PriceComponent_categoryId" itemValue="categoryId" items="${categorys}" path="/categorys" z="Oxi92QFLeJljBWdnBwGLh3UJ/ow="/>
			    </form:create>
			    <form:dependency dependencies="${dependencies}" id="d_com_nw_domain_PriceComponent" render="${not empty dependencies}" z="siil48L6YQA0aqd0EqUV/6Is1/U="/>
			 
			 
		    </div>
		   </div>
		  </div>
  </section>
</div>