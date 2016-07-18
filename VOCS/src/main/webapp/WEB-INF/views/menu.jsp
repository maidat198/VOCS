<%@page import="java.text.SimpleDateFormat"%>
<%@taglib tagdir="/WEB-INF/tags/menu" prefix="menu"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags/menu" prefix="menu" %>
<%@page contentType="text/html; charset=UTF8" %>
<%-- <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %> --%>

 <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar"> 
        
       	<form action="#" method="get" class="sidebar-form">
           <div class="input-group">
             <input type="text" name="q" class="form-control" placeholder="Search...">
             <span class="input-group-btn">
               <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
             </span>
           </div>
         </form>        
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
            <spring:url value="#" var="var"></spring:url>
              <a href="${var }">
                <i class="fa fa-dashboard"></i> <span>DASHBOARD</span>
              </a>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa  fa-cog"></i> <span>SYSTEM</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">

                    <spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>System Info</a></li>     
                 	
                 	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>System Configuration</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Gateway Configuration</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Online Charging Module</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Recurring Process</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Provisioning Process</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Domain Management</a></li>
              	
              	</ul>
              	
             </li>
              	
            <li class="treeview">
            	<a href="#">
                <i class="fa fa-th"></i> <span>CATALOG MANAGEMENT</span>
                <i class="fa fa-angle-left pull-right"></i>
              	</a>
            	<ul class="treeview-menu">

                    <spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Interfaces
                			<i class="fa fa-angle-left pull-right"></i>
                		</a>
                		
                		<ul class="treeview-menu">
                		
                				<spring:url value="#" var="var"></spring:url>
                				<li><a href="${var}"><i class="fa fa-circle-o"></i>Diameter
                					<i class="fa fa-angle-left pull-right"></i>
                				</a>
                					<ul class="treeview-menu">
                					
                						<spring:url value="#" var="var"></spring:url>
                						<li><a href="${var}"><i class="fa fa-circle-o"></i>AVP Define</a></li>
                				
                						<spring:url value="#" var="var"></spring:url>
                						<li><a href="${var}"><i class="fa fa-circle-o"></i>Basic Types</a></li>
                						
                					</ul>
                				
                				</li>
                				
                				<spring:url value="#" var="var"></spring:url>
                				<li><a href="${var}"><i class="fa fa-circle-o"></i>MML</a></li>
                				
                				<spring:url value="#" var="var"></spring:url>
                				<li><a href="${var}"><i class="fa fa-circle-o"></i>Internal Msg</a></li>
                		</ul>
                	</li>     
                 	
                 	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Balances & Meters</a></li>
                	
                	<spring:url value="/parameterses?form" var="parameter"></spring:url>
                	<li><a href="${parameter}"><i class="fa fa-circle-o"></i>Parameters</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Triggers</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Services</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>CDR</a></li>
                	
                	<spring:url value="/zonedatas?form" var="zonedata"></spring:url>
                	<li><a href="${zonedata}"><i class="fa fa-circle-o"></i>Zone Data</a></li>
                	
                	<spring:url value="/geohomezones?form" var="geohomezone"></spring:url>
                	<li><a href="${geohomezone}"><i class="fa fa-circle-o"></i>Geo Home Zone</a></li>
                	
                	<spring:url value="/billingcycles?form" var="billingcycle"></spring:url>
                	<li><a href="${billingcycle}"><i class="fa fa-circle-o"></i>Billing Cycle</a></li>
                	
                	<spring:url value="/unittypes?form" var="unittype"></spring:url>
                	<li><a href="${unittype}"><i class="fa fa-circle-o"></i>Unit Type</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>State Set</a></li>
              	
            	</ul>
            </li>
             
            <li class="treeview">
            	<a href="#">
                <i class="fa fa-th"></i> <span>OFFER MANAGEMENT</span>
                <i class="fa fa-angle-left pull-right"></i>
              	</a>
            	<ul class="treeview-menu">

                    <spring:url value="/offers?form" var="offer"></spring:url>
                	<li><a href="${offer}"><i class="fa fa-circle-o"></i>Offers</a></li>     
                 	
                 	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Events & Actions</a></li>
                	
                	<spring:url value="/dynamicreserves?form" var="dynamicserve"></spring:url>
                	<li><a href="${dynamicserve}"><i class="fa fa-circle-o"></i>Dynamic Reserves</a></li>
                	
                	<spring:url value="/sortpricecomponents?form" var="sortpricecomponent"></spring:url>
                	<li><a href="${sortpricecomponent}"><i class="fa fa-circle-o"></i>Sort Price Components</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Post Process</a></li>
                	
                	<spring:url value="/pricecomponents?form" var="pricecomponent"></spring:url>
                	<li><a href="${pricecomponent}"><i class="fa fa-circle-o"></i>Price Components</a></li>
                	
                	<spring:url value="/blocks?form" var="block"></spring:url>
                	<li><a href="${block}"><i class="fa fa-circle-o"></i>Blocks</a></li>
                	
                	<spring:url value="/ratetables?form" var="ratetable"></spring:url>
                	<li><a href="${ratetable}"><i class="fa fa-circle-o"></i>Rate Tables</a></li>
                	
                	<spring:url value="/decisiontables?form" var="decisiontable"></spring:url>
                	<li><a href="${decisiontable}"><i class="fa fa-circle-o"></i>Decision Tables</a></li>
                	
                	<spring:url value="/normalizers?form" var="normalizer"></spring:url>
                	<li><a href="${normalizer}"><i class="fa fa-circle-o"></i>Normalizers</a></li>
                	
            	</ul>
            </li>
            
            <li class="treeview">
              	<a href="#">
                <i class="fa fa-edit"></i> <span>POLICIES</span>
                <i class="fa fa-angle-left pull-right"></i>
              	</a>          
              		<ul class="treeview-menu">
            		
            			<spring:url value="#" var="var"></spring:url>
                		<li><a href="${var}"><i class="fa fa-circle-o"></i>Policy Profile</a></li>
                		
                		<spring:url value="#" var="var"></spring:url>
                		<li><a href="${var}"><i class="fa fa-circle-o"></i>PPC Rule</a></li>
                		
                		<spring:url value="#" var="var"></spring:url>
                		<li><a href="${var}"><i class="fa fa-circle-o"></i>QoS</a></li>
                		
                		<spring:url value="#" var="var"></spring:url>
                		<li><a href="${var}"><i class="fa fa-circle-o"></i>Monitor Key</a></li>
                		
                		<spring:url value="#" var="var"></spring:url>
                		<li><a href="${var}"><i class="fa fa-circle-o"></i>Policy Rules</a></li>
                		
            		</ul>
            </li>
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>TOOLS</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
              		<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Utility</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Modules Management</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Import / Export Data</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Backup / Restore</a></li>
              
              </ul>              
            </li>
            
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-wrench"></i> <span>SETTINGS</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
            		<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>User Profile</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Settings</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Users Management</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Menu & Toolbars</a></li>
                	
                	<spring:url value="#" var="var"></spring:url>
                	<li><a href="${var}"><i class="fa fa-circle-o"></i>Log & Audit</a></li> 
              </ul>              
            </li>
            
            </ul>
        </section>
        <!-- /.sidebar -->
        
      </aside>
