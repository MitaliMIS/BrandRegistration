 <ui:composition
       xmlns="http://www.w3.org/1999/xhtml"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:a4j="http://richfaces.org/a4j"
	  xmlns:rich="http://richfaces.org/rich">

  
<f:view>
<style>
hr.style-seven {
	overflow: visible; /* For IE */
	height: 30px;
	border-style: solid;
	border-color: black;
	border-width: 1px 0 0 0;
	border-radius: 20px;
	width: 70%;
}

hr.style-seven:before { /* Not really supposed to work, but does */
	display: block;
	content: "";
	height: 30px;
	margin-top: -31px;
	border-style: solid;
	border-color: black;
	border-width: 0 0 1px 0;
	border-radius: 20px;
}
 .preformatted {
	white-space: pre-wrap;
}


</style>

 <h:form>
				<div class="row " align="center">
					<rich:spacer height="30px"></rich:spacer>
					<h:inputHidden value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.hidden}"></h:inputHidden>
				</div>

				<div class="row">
					<div class="col-md-12 wow shake">
						<h:messages errorStyle="color:red" layout="TABLE" id="messages1"
							infoStyle="color:green"
							style="font-size:20px; background-color:#e1fcdf; font-weight: bold">
						</h:messages>

					</div>
				</div>
				<a4j:outputPanel  id='msg23'>
											<h:outputLabel value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.err}" style="color: red"
											 rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>
								<div class="row " align="center">
					<div align="center" class="pghead">
						<h:inputHidden
							value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.hidden}"></h:inputHidden>
						<h:outputLabel
							value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.user_Name}"
							style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
						<div align="center">
							<h:outputLabel
								value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.user_Address}"
								style="COLOR: #000000; FONT-SIZE: medium;"></h:outputLabel>
						</div>


					</div>
				</div>

				<div align="center">
					<div
						style="FONT-SIZE: x-large; FONT-WEIGHT: bold; width: 80%; height: 10px;">
						<hr class="style-seven"></hr>
					</div>
				</div>

				<div class="row">
					<div align="center">
						<h1>

							<h:outputText value="Application for MRP Approval 2022-23"
								style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />

						</h1>
					</div>
				</div>


				<div align="center">
					<div
						style="FONT-SIZE: x-large; FONT-WEIGHT: bold; width: 80%; height: 10px;">
						<hr class="style-seven"></hr>
					</div>
				</div>



				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
				
				
				
					<h:panelGroup rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFlag==false}">
					<div align="center" style="overflow-y: scroll; max-height: 400px" >
					
					 

						<div class=" row col-md-12">
							<rich:spacer height="20px" />
							 
						</div>
					
					
        <rich:dataTable width="90%" var="list" id="table1"  
					value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.brandList}">


					<rich:column>
						<f:facet name="header">
							<h:outputText value="Sr No." />
						</f:facet>
						<h:outputText value="#{list.srno}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="Brand" />
						</f:facet>
						<h:outputText value="#{list.brand_name}" />
					</rich:column>







					<rich:column>
						<f:facet name="header">
							<h:outputText value="Domain" />
						</f:facet>
						<h:outputText value="#{list.domain}" />
					</rich:column>

					<rich:column>
						<f:facet name="header">
							<h:outputText value="Total No. Of Pack Size" />
						</f:facet>
						<h:outputText value="#{list.int_approved_pack}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="No. Of Pack Size Pending For MRP" />
						</f:facet>
						<h:outputText value="#{list.int_pending_mrp}" />
					</rich:column>


					


					<rich:column align="center">
						<f:facet name="header">
							<h:outputText value="Select" styleClass="generalHeaderOutputTable"
								style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:commandButton actionListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.view}" value="Select" disabled="#{list.int_pending_mrp==0}" styleClass="btn btn-success btn-sm" />
					</rich:column>
                           

				</rich:dataTable>
				</div>
				</h:panelGroup>
				<h:panelGroup rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFlag}">
				 <div class="row">
			 <rich:spacer height="30"></rich:spacer>
			 </div>
			
			
				
				
				<div class="row">
				<rich:spacer height="30"></rich:spacer>
				</div>
				<div align="center"> 
				<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 95%;" >
<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div> 
						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
						 
						 
							<h:selectOneRadio   rendered="false"
								value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type}" 
								
								onchange="this.form.submit();">
								<f:selectItem itemValue="DFL" itemLabel="Distillery FL" />
								<f:selectItem itemValue="B" itemLabel="Brewery" />
								<f:selectItem itemValue="BWFL2A" itemLabel="BWFL-2A" />
								<f:selectItem itemValue="BWFL2B" itemLabel="BWFL-2B" />
								<f:selectItem itemValue="BWFL2C" itemLabel="BWFL-2C" />
								<f:selectItem itemValue="BWFL2D" itemLabel="BWFL-2D" />
								
								<f:selectItem itemValue="IMPORTEDFL" itemLabel="IMPORTED FL" />
								<f:selectItem itemValue="IMPORTEDWINE" itemLabel="IMPORTED WINE" />
								<f:selectItem itemValue="IMPORTEDBEER" itemLabel="IMPORTED BEER / LAB" />
								
								 
							</h:selectOneRadio>
						</div>

						<div class=" row col-md-12">
							<rich:spacer height="20px" />
							<h:outputLabel value="Brand Name :-"></h:outputLabel>
							<h:outputText value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.brand_name}"></h:outputText>
						</div>
						 
  <div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel value="Calculation sheet :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
					 >
						   
						   </h:outputLabel>
						    
				</div>
				<div class="  col-md-6" align="right">
					 
				</div>
			</div>
					<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
					
						<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table224" width="100%"
							value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.calculation_750ml_list33}"
							var="list">
							
							 
							 <rich:column width="4%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.size_ml_750}" 	  style="COLOR: #0000a0;;width:70px;" >
											  
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="false" >
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								 <center>
										<h:outputText  id="size"
											value="#{list.size_ml_750_cal}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>
								 <center>
								 <h:selectOneMenu value="#{list.liq_cat}"
									styleClass="dropdown-menu1" style=" width : 110px;"   >
									 
									<f:selectItems value="#{list.lic_category }" />
								</h:selectOneMenu>
									 
									</center>
							</rich:column>
								<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								 <center>
										<h:inputText  
											value="#{list.cif}" 	  style="COLOR: #0000a0;width:70px;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onblur" ajaxSingle="true"
												reRender="cif" />
										</h:inputText>
									</center>
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="cif" value="#{list.cif_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%"  rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type ne 'IMPORTEDWINE'}"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Margin" />
								</f:facet>
								<h:inputText value="#{list.profit }"  
								valueChangeListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.edpChangebase_edp}" 
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
									 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="profit,change,change1,change2,change4,change5,change6,change7,change8,change11,change12,change13,change14,change15,msg23" />
										
								</h:inputText>
								 
							</rich:column>
							<rich:column width="7%"  rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDWINE'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Margin" />
								</f:facet>
								<h:inputText value="#{list.profit }"  
								 
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onkeyup" 
												reRender="profit" />
								 
								</h:inputText>
								 
							</rich:column>
							
							<rich:column width="7%"  rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDWINE'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP without corona cess" />
								</f:facet>
								<h:inputText value="#{list.mrp_without_cess }"  
								valueChangeListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.edpChangebase_edp}" 
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
									 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="profit,change,change1,change2,change4,change5,change6,change7,change8,change11,change12,change13,change14,change15,msg23" />
										
								</h:inputText>
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="profit" value="#{list.profit_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
								<rich:column width="7%"  rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDBEER'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:inputText    value="#{list.wholesalemargin_base }"
								
									style="COLOR: #0000a0;;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										   
										  <a4j:support event="onkeyup" 
												reRender="wholesale_margin" >
								</a4j:support>
								</h:inputText>
								
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value=" " />
								</f:facet>
								 
								<h:outputText   id="wholesale_margin"  value="#{list.wholesalemargin_base_cal }"
									style="COLOR: #0000a0;;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>




							
							
							 
							
							 
							<rich:column width="7%"  rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDBEER'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText    value="#{list.retailmargin_base }"  
								valueChangeListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.edpChangebase_edp}" 
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
									 
												 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="retail_margin,change,change1,change2,change4,change5,change6,change7,
												change8,change11,change12,change13,change14,change15,msg23" >
							
								</a4j:support>	
								</h:inputText>
								 
								 
							</rich:column>
								
							<rich:column width="7%"  rendered="false"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText  id="retail_margin"  value="#{list.retailmargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
								</h:outputText>
								 
								 
							</rich:column>
						  	<rich:column width="7%" rendered="false">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Bond handling Charges" />
								</f:facet>
								<h:inputText value="#{list.custom_bond_handling_charge}"
									 style="COLOR: #0000a0;width:70px;"
									 valueChangeListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.edpChangebase_edp}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="change,change1,change2,change4,change5,change6,change7,change8,change11,change12,change13,change14,change15,msg23" />
								</h:inputText>
								 
							 
								 
							</rich:column>
							<rich:column width="7%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond" />
								</f:facet>
								<h:outputText value="#{list.ex_custom_bond }"  id="change8"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
									<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText  id="change" value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							  
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								 
								<h:outputText  id="change14" value="#{list.custom_duty }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText  id="change1" value="#{list.addnl_duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Permit fee" />
								</f:facet>
								<h:outputText value="#{list.permit_fee }"  id="change11"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							 


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Wholesale" />
								</f:facet>
								 
								<h:outputText  id="change12" value="#{list.landed_cost_wholesale }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Retail" />
								</f:facet>
								 
								<h:outputText  id="change13" value="#{list.landed_cost_retail }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							 





							
							<rich:column width="7%"   rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDWINE' or application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDFL' }" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:outputText  id="change2" value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>
						<rich:column width="7%"   rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDWINE' or application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unit_type eq 'IMPORTEDFL' }" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Retail Margin" />
								</f:facet>
								 
								<h:outputText  id="change15" value="#{list.retailmargin_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>
							 




							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText  id="change4" value="#{list.spl_addl_cess_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
						
							<rich:column width="4%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText  id="change5" value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText  id="change6" value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText  id="change7" value="#{list.mrp_bwfl_base }" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>
 
						</rich:dataTable>

					</div>
				</div>
				
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
		
					 
						 
						 



<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				 

							
						<div class="row " align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>
					</div>
					</div>
					<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
					<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table223" width="50%"
							value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.state_list}"
							var="list">
							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Sr.No." />
								</f:facet>
								<h:outputText value="#{list.srNo_state}" />
							</rich:column>





							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Sate Name" />
								</f:facet>
								<h:outputText value="#{list.state_name}" />
							</rich:column>
							 
							 
							 
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								<h:inputText value="#{list.cif_state}"   
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
								</h:inputText>

							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond Value" />
								</f:facet>
								<h:inputText value="#{list.xcoustom_bond_state}" 
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>

							 
							 <rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;" 
								  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							
							 









							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:selectBooleanCheckbox value="#{list.checkbox}"
								  />


							</rich:column>




						</rich:dataTable>

					</div>
				</div>
				<div align="center">
				
				
				<h:commandButton action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.save}"
						value="Save" styleClass="btn btn-success btn-sm" />



					<rich:spacer width="20px;" />
				<h:commandButton styleClass="btn btn-warning btn-sm" action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.back}"  value="Back"></h:commandButton>
				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				</h:panelGroup>
				<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>


				<div align="center">
					<rich:dataTable columnClasses="columnClass1"
						headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2" styleClass="DataTable" id="table"
						width="80%" rows="10"
						value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.savelist}"
						var="list">


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr.No." />
							</f:facet>
							<h:outputText value="#{list.sr_no}" />
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Appliction No." />
							</f:facet>
							<h:outputText value="#{list.requestid_displ}" />
						</rich:column>




						<rich:column>
							<f:facet name="header">
								<h:outputText value="Application Date" />
							</f:facet>
							<h:outputText value="#{list.request_date}" />
						</rich:column>



						<rich:column>
							<f:facet name="header">
								<h:outputText value="Unit Type" />
							</f:facet>
							<h:outputText value="#{list.unit_type}" />
						</rich:column>



						<rich:column>
							<f:facet name="header">
								<h:outputText value="Unit Name" />
							</f:facet>
							<h:outputText value="#{list.unitname}" />
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="For Civil/CSD" />
							</f:facet>
							<h:outputText value="#{list.for_civil_csd}" />
						</rich:column>
						<rich:column>
							<f:facet name="header">
								<h:outputText value="Status" />
							</f:facet>
							<h:outputText value="#{list.status}" />
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value=" " />
							</f:facet>
							<h:commandButton value="Upload Documents"
								actionListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.Upload_documents}"
								styleClass="btn btn-primary">
							</h:commandButton>
							 
               <h:outputLink rendered="#{list.digital_sign_date ne null}"
								value="/doc/ExciseUp/LabelRegistration_22_23/Applications/pdf//#{list.requestid}_MRP_APPROVAL_22_23_esign.pdf"
								target="_blank">
								<h:outputText value="View Digitally Sign Order" style="color: blue">
								</h:outputText>
								</h:outputLink>



						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Objection"
									style="  white-space: none">
								</h:outputText>
							</f:facet>

							<div align="center">
								<h:outputText rendered="#{!list.flag}" value="#{list.objection}"
									style="COLOR: #008040; FONT-WEIGHT: bold;" />
							</div>


							<h:commandButton rendered="#{list.flag}"
								styleClass="btn btn-primary" value="Reply"
								actionListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.getApplication_no}"
								action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.replyMethod}" />
						</rich:column>
















						<f:facet name="footer">
							<rich:datascroller for="table"></rich:datascroller>
						</f:facet>


					</rich:dataTable>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>


				<div class="row " align="center">
					<rich:spacer height="40px"></rich:spacer>
				</div>
				<h:panelGroup
					rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.upload_flg eq 'T' }">

					<div class="row " align="center">
						<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #e6ffff; width: 97%;">

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value=" Application No.:#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.showApplication_no}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLink target="_blank"
						value="/doc/ExciseUp/LabelRegistration_22_23/pdf/Affidavit_Format_MRP.pdf"
						style="COLOR: #0000ff; FONT-STYLE: italic;">
						   Download Format for Affidavit 
						   </h:outputLink>
				</div>
				<div class="  col-md-6" align="right">
					 
				</div>
			</div>
							<rich:spacer height="10px"></rich:spacer>
							
							
							<div class="row">
										<rich:dataTable id="table3" rows="10" width="50%"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.showUploadeddocument}"
											var="list" headerClass="TableHead" footerClass="TableHead"
											rowClasses="TableRow1,TableRow2">



											<rich:column>
												<f:facet name="header">
													<h:outputText value="Sr. No."
														 >
													</h:outputText>
												</f:facet>
												<h:outputText value="#{list.showUploadedSrNo}"
													styleClass="generalHeaderStyleOutput">
												</h:outputText>
											</rich:column>
 



											 


											 

											 
											<rich:column align="center" >
												<f:facet name="header">
													<h:outputText value="Copy of Trademark or Application for the Trademark which was attached while submitting the Brand Approval"
														styleClass="preformatted">
													</h:outputText>

												</f:facet>

												<h:outputLink target="_blank" value="#{list.viewFile14}"
												 rendered="#{list.doc14Flg}" >

													<h:outputText value="View " style="color: blue">
								                 </h:outputText>
												</h:outputLink>
												    
												 <h:outputText value=" - " rendered="#{!list.doc14Flg}"  >
												 </h:outputText>
												
												 
									 


											</rich:column>
											 

											
											<rich:column  >
												<f:facet name="header">
													<h:outputText value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.text12}" 
													styleClass="preformatted">
													</h:outputText>
												 
												 
									 

												</f:facet>

												<h:outputLink target="_blank" rendered="#{list.doc3Flg}"
													value="#{list.viewFile3}">

													<h:outputText value="View " style="color: blue"> </h:outputText>
												</h:outputLink>
                                                    
                                                 <h:outputText rendered="#{!list.doc3Flg}"  value=" - ">
								                 </h:outputText>
											</rich:column>
											 
											<rich:column   >
												<f:facet name="header">

													<h:outputText value="Brand Approval letter"
														 >
													</h:outputText>
												</f:facet>

												 
												<h:outputLink
											rendered="#{list.doc13Flg}"
											target="_blank"
											value="#{list.viewFile13}">

											<h:outputText value="View " style="color: blue"> </h:outputText>
										</h:outputLink>
										 
                                          <h:outputText rendered="#{!list.doc13Flg}"  value=" - "> </h:outputText>

											</rich:column>
											 

											<f:facet name="footer">
												<rich:datascroller for="table3"></rich:datascroller>
											</f:facet>
										</rich:dataTable>
									</div>
							<h:panelGroup
								rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCIVIL' or  application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCSD'}">
								
								
								
								
								<div class="col-md-12 btn " style="background-color: beige;">
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="Copy of Import/Export Registration :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader1}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse1 , renpdftrue1"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue1">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc1Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile1}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse1">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc1Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>

									<div class="col-md-2" align="right">
										<h:outputLabel
											value="Certificate for the Space  Agreement with Custom Bond  :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader2}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse2 , renpdftrue2"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue2">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc2Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile2}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse2">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc2Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>



								</div>


								<div class="row">
									<rich:spacer height="10px"></rich:spacer>
								</div>

							</h:panelGroup>
							<div class="col-md-12 btn " style="background-color: beige;">
							<div class="col-md-1"></div>
							 
								 
								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Affidavit for track and trace and Spl. Addl. CESS :"
										styleClass="preformatted"
										style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader4}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse4 , renpdftrue4"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue4">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc4Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile4}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse4">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc4Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>

							
							<h:panelGroup rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCIVIL' or  application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCSD'}">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-1"></div>
								<div class="col-md-2" align="right">
									 
									<h:outputLabel styleClass="preformatted"
										style="FONT-WEIGHT: bold;"
										rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCIVIL' or  application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.unitType eq 'IUCSD'}"
										value="Affidavit for Ex-Custom Bond Value/MRP in other States like Delhi,Haryana,Madhya Pradesh,Rajasthan,Uttarakhand."></h:outputLabel>

								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader5}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse5 , renpdftrue5"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue5">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc5Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile5}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse5">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc5Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
								 
								<div class="col-md-2" align="right">
										<h:outputLabel
											value="License Fee for BIO and IU details:"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader8}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse8 , renpdftrue8"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue8">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc8Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile8}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse8">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc8Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>
									</div>
									</h:panelGroup>
							
							

							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>
							 

							<h:panelGroup
								rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.for_civil_csd_show eq 'CSD'}">
								<div class="col-md-12 btn " style="background-color: beige;">
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel
											value="Last Invoice issued for the same Brand :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader11}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse11 , renpdftrue11"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue11">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc11Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile11}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse11">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc11Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="CSD Rate Fixation Letter :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader12}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse12 , renpdftrue12"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue12">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc12Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile12}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse12">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc12Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>
								</div>

								<div class="row">
									<rich:spacer height="10px"></rich:spacer>
								</div>
							</h:panelGroup>
							<h:panelGroup rendered="false">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-1"></div>
								<div class="col-md-2" align="right">
									<h:outputLabel value="Brand Approval letter  :"
										style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc13Flg}"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader13}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse13 , renpdftrue13"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue13">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc13Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile13}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse13">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc13Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Copy of Trademark or Application for the Trademark which was attached while submitting the Brand Approval:"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc14Flg}"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader14}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse14 , renpdftrue14"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue14">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc14Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile14}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse14">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc14Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
							</div>
							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>
							</h:panelGroup>

							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-1"></div>
								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Copy of Last year's approved MRP of the same Brand ( If any ) :"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader9}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse9 , renpdftrue9"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue9">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc9Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile9}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse9">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc9Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
								<div class="col-md-2" align="right">
									<h:outputLabel value="Any Other Relevant Document:"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.uploader10}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse10 , renpdftrue10"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue10">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc10Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.viewFile10}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse10">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.doc10Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>



							<div class="row">
								<rich:spacer height="30px"></rich:spacer>
							</div>

							<div class="col-md-12" align="center">





								<rich:spacer width="20px;" />
								<h:commandButton
									disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
									action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.finalize}"
									value="Upload and Finalize" styleClass="btn btn-success btn-sm" />



								<rich:spacer width="20px;" />

								<h:commandButton
									disabled="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.check_upload_flg eq 'T' }"
									action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.reset_uploading}"
									value="Reset" styleClass="btn btn-default btn-sm" />

								<rich:spacer width="20px;" />

								<h:commandButton
									action="#{application_for_MRP_EDP_Approval_22_23_IMPORTEDAction.close_uploading}"
									value="Close" styleClass="btn btn-danger btn-sm" />

							</div>



							<div class="row" align="left">
								<rich:spacer height="30px"></rich:spacer>
							</div>

						</div>
						<div class="row " align="center">
							<rich:spacer height="40px"></rich:spacer>
						</div>
					</div>

				</h:panelGroup>
				
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				
				
				
 </h:form>
 
</f:view>
</ui:composition>