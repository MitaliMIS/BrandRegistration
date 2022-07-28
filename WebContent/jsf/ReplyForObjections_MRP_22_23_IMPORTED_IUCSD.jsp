 <ui:composition
       xmlns="http://www.w3.org/1999/xhtml"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:a4j="http://richfaces.org/a4j"
	  xmlns:rich="http://richfaces.org/rich">

  
  <h:form>
   <f:view>
   <head>
<style>

.preformatted {
	white-space: pre-wrap;
}
.inputtext {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	width: 100%;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	width: 30%;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu1 {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	width: 75%;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.textarea1 {
	border-radius: 3px;
	border-style: none;
	width: 100%;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>
		</head>
   <div>
   <div class="row">
				<rich:spacer height="30px;"></rich:spacer>
			</div>
				<a4j:outputPanel id="msg">
					<div class="col-md-12 wow shake" align="center">
						<h:messages errorStyle="color:red" layout="table" id="messages"
							infoStyle="color:green" style="font-weight: bold">
						</h:messages>

					</div>
				</a4j:outputPanel>
			</div>
			<a4j:outputPanel  id='msg23'>
											<h:outputLabel value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.err}" style="color: red"
											 rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>
			<h:inputHidden value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.hidden}" />
			<div class="row " align="center">
				<div align="center">
					<h1
						style="COLOR: #000000; TEXT-DECORATION: underline; font-family: Monotype Corsiva; font-weight: 900;">
						<b> <h:outputText value="Reply To Given Objections For Brand MRP 2022-23" /></b>

					</h1>

				</div>
			</div>
			<div class="row">
				<rich:spacer height="10px;"></rich:spacer>
			</div>
			<h2>
				<rich:separator lineType="dashed" />
			</h2>
			<div>
			
			<div class="row" style="margin-top: 5px;" align="center">
						<rich:dataTable align="center" id="table1" rows="10" width="100%"
							var="list"
							value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.objectionlist}"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" style="FONT-SIZE: medium; FONT-FAMILY: 'Arial Black';">

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Sr.No. "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText   value="#{list.srNo}"
									 />
								
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* App id"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								
								<h:outputText
									
									value="#{list.appid}"   />
								
							</rich:column>
							
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Objection By" 
									styleClass="generalHeaderOutputTable"/>
								</f:facet>
								
									<h:outputText
										value="#{list.objectionRaisedBy_dt}"  />
								
							</rich:column>

							 



							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Objection Title"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								
								<h:outputText
									
									value="#{list.title}"  />
								

							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Objection Description"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								
								<h:outputText
									
									value="#{list.description}"  />
								

							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Status"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText
								
									value="#{list.status}"   />
								
							</rich:column>
							 
 

							<rich:column>
								<f:facet name="header">
									<h:outputText value=" "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<center>
								<h:commandButton class="btn btn-primary"
									actionListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.view}" value="view" disabled="#{list.disableFlg }"/>
								</center>
							</rich:column>

							

						</rich:dataTable>

					</div>
			
			</div>
			
			<h:panelGroup rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.viewPanelFlg}">
				<div align="center" class="row">
					
					<rich:spacer height="30px;"></rich:spacer>
		</div>
			 
			<div class="row" align="center">
								<div class="col-md-12">
								<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table4" 
										value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.displayBrandDetails25}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.4" />
											</f:facet>
											<h:outputText value="#{list.sr_No }" />
										</rich:column>





										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Brand Name" />
											</f:facet>
											<h:outputText value="#{list.brand_name}" />
										</rich:column>
										<rich:column width="4%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Package" />
											</f:facet>
											<h:outputText value="#{list.package_name}" />
										</rich:column>




										<rich:column width="3%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Size(in ml)" />
											</f:facet>
											<h:outputText value="#{list.size }" />
										</rich:column>

										<rich:column width="3%"
											rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="4%"  >
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.cif}" 	  style="COLOR: #0000a0;width:70px;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										</h:outputText>
									</center>
							</rich:column>
							
							<rich:column width="4%"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Margin" />
								</f:facet>
								<h:outputText value="#{list.margin }"  
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" /> 
								</h:outputText>
								 
							</rich:column>
							
								 
						 
						  	<rich:column width="4%" rendered="false">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Bond handling Charges" />
								</f:facet>
								<h:outputText value="#{list.cb_handling_charage}"
									 style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" /> 
								</h:outputText>
								 
							 
								 
							</rich:column>
							<rich:column width="4%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond" />
								</f:facet>
								<h:outputText value="#{list.ex_custom_bond }"   
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
									<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText   value="#{list.duty}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							  
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								 
								<h:outputText    value="#{list.custom_duty }"  
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
								<h:outputText value="#{list.permit}"   
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							 


							 <rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText    value="#{list.spl_addl_cess}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
						
							 

									</rich:dataTable>
								
								</div>
								</div>
								
						<div align="center" class="row">
					
					<rich:spacer height="30px;"></rich:spacer>
		</div>
			 
			 <div class="row">
			 <div align="right"  class="col-md-6">
			 <h:outputLabel  value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.text}" />
			 </div>
			 <div align="left" class="col-md-6">
			 <h:selectBooleanCheckbox value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.checkbox}"
			 onchange="this.form.submit();"
			 valueChangeListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.valuechange}" />
			 </div>
			 </div>
			 
			 
			<div align="center" class="row">
					
					<rich:spacer height="20px;"></rich:spacer>
		</div>
				<div class="row" align="center">
					<div class="col-md-12">

						<h:panelGroup rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.enable_flg eq 'T'}">
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
						 
						 
							<h:selectOneRadio     rendered="false"
								value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.unit_type}" 
								
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
							<h:outputText value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.brand_name}"></h:outputText>
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
							value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.calculation_750ml_list33}"
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
							
							<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Margin" />
								</f:facet>
								<h:inputText value="#{list.profit }"  
								 valueChangeListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.edpChangebase_edp}"
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onblur" ajaxSingle="true"
												reRender="profit,change1,change2,change3,change4,change5,msg23" />
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
								 
							 
						  	<rich:column width="7%" rendered="false">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Bond handling Charges" />
								</f:facet>
								<h:inputText value="#{list.custom_bond_handling_charge}"
									 style="COLOR: #0000a0;width:70px;"
									 valueChangeListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.edpChangebase_edp}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="change1,change2,change3,change4,change5,msg23" />
								</h:inputText>
								 
							 
								 
							</rich:column>
							<rich:column width="7%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond" />
								</f:facet>
								<h:outputText value="#{list.ex_custom_bond }"  id="change1"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
									<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText  id="change2" value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							  
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								 
								<h:outputText  id="change3" value="#{list.custom_duty }"  
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
								<h:outputText value="#{list.permit_fee }"  id="change4"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							  
						 
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText  id="change5" value="#{list.spl_addl_cess_base }"
									style="COLOR: #0000a0;"  >
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
							value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.state_list}"
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
								<a4j:outputPanel id="edp_state">
								<h:inputText value="#{list.cif_state}"   
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond Value" />
								</f:facet>
									<a4j:outputPanel id="edp_state1">
								<h:inputText value="#{list.xcoustom_bond_state}"  
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state1" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>

							 
							 
							 









							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								 
								  <h:selectBooleanCheckbox value="#{list.checkbox}"    onchange="this.form.submit();"
								 valueChangeListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.valuechange_delete}"   />
								  


							</rich:column>




						</rich:dataTable>

					</div>
				</div>
				
				</h:panelGroup>

					</div>
				</div>
					<div align="center" class="row">
					
					<rich:spacer height="20px;"></rich:spacer>
		</div>
			
			<div align="center" class="row">
					 
						<div align="right" class="col-md-2">
							<h:outputLabel  value="Objection Title:" />
							 
						</div>
						<div align="left" class="col-md-2">
						 
							<h:outputText   
								value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.title}" />
						</div>
					<div align="right" class="col-md-2">
							<h:outputLabel  value="Objection Description:" />
						 
						</div>
					
					<div align="left" class="col-md-2">
							 
							<h:outputText   
								value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.description}" />
						</div>
					
						<div align="right" class="col-md-2">
						 
							<h:outputLabel value="Objection Date:" /> 
							 
								
						</div>
					<div align="left" class="col-md-2">
						  <rich:calendar  value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.obj_date }"  />
								
						</div>
						
					
					</div>
					</h:panelGroup>
					<rich:spacer height="10px;"></rich:spacer>
			
				</f:view>
   
   </h:form>
			 <h:panelGroup rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.viewPanelFlg}">
					
				
					
					<rich:spacer height="10px;"></rich:spacer>
		
			
					
					<f:view>
			<h:form style="FONT-SIZE: xx-small;">
				<div class="row"
					style="BACKGROUND-COLOR: #5bc0de; padding: 0px 0px 15px 0px;">
						<div align="center" class="row">
					
					<rich:spacer height="20px;"></rich:spacer>
		</div>
					<div class="row">
			<div class="col-md-2" align="right">
					<h:outputText  value="Upload pdf (if any):" style="font-size:15px"/>
					</div>
					<div class="col-md-2" align="left"><rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop" 
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.uploader1}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse1 , renpdftrue1"></a4j:support>
										</rich:fileUpload></div>
										 
										<div class="col-md-1" align="left">

										<a4j:outputPanel id="renpdftrue1">
											<h:outputLink
												rendered="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.doc1Flg}"
												target="_blank"
												value="/doc/ExciseUp/LabelRegistration_22_23/objection/#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.uploadedPdf}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse1">
											<a4j:outputPanel
												rendered="#{!replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.doc1Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>
									
									</div>
					<div class="row" align="center">
						<div class="col-md-3 col-sm-4"></div>

						<div class="col-md-6 col-sm-1">
							
								
								 

						</div>
						
					</div>
					<div class="col-md-12">
						<div class="col-md-3 col-sm-4">
							<b><h:outputText value="Remarks :" style="font-size:15px"/></b>
						</div>
						<div class="col-md-6 col-sm-8">

							<div class="row">
								<h:inputTextarea
									value="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.fillComment}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
							</div>
						</div>

					</div>
				</div>
				<div class="row" align="center">

				<h:commandButton value="Submit" styleClass="btn btn-success"
						action="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.save}" />
					<h:commandButton value="Reset" styleClass="btn btn-warning"
						action="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.reset}" />
						
				</div>
				 
			</h:form>
		</f:view>
				</h:panelGroup>	
				<f:view>
				<h:form>
					
					<div align="center"> 
					<h:commandButton value="Back" styleClass="btn btn-danger"
						action="#{replyForObjections_MRP_22_23_IMPORTED_IUCSDAction.back}" /></div>
			
  </h:form>
		</f:view>
  
  
  
</ui:composition>