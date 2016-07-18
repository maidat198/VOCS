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
               
			    <page:show id="ps_com_nw_domain_ThresholdBalTypeMap" object="${thresholdbaltypemap}" path="/thresholdbaltypemaps" z="tpimEZ7m6dzEiAqFBd0Wo0wg9VQ=">
			        <field:display field="thresholdId" id="s_com_nw_domain_ThresholdBalTypeMap_thresholdId" object="${thresholdbaltypemap}" z="aKLi5r5j5ApBWMSpkKN35U31jmI="/>
			        <field:display field="baltypeId" id="s_com_nw_domain_ThresholdBalTypeMap_baltypeId" object="${thresholdbaltypemap}" z="AjdSv1TYqQsNMMDygjNsdhG5bOg="/>
			    </page:show>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>