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
               
			    <page:list id="pl_com_nw_domain_RowOCS" items="${rowocss}" z="95p0ZvxlNaMcyzmr16nqOTR6rL8=">
			        <table:table data="${rowocss}" id="l_com_nw_domain_RowOCS" path="/rowocss" typeIdFieldName="rowOcsId" z="ot9RNRWUQeuBjqwGUoqhCvJl5OI=">
			            <table:column id="c_com_nw_domain_RowOCS_rowIndexId" property="rowIndexId" z="YcwAWGS73oOuokjgBef7rAz1U40="/>
			        </table:table>
			    </page:list>
		    
		    </div>
		   </div>
		  </div>
  </section>
</div>