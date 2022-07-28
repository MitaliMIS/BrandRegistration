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
											<h:outputLabel value="#{replyForObjections_MRP_22_23_CivilAction.err}" style="color: red"
											 rendered="#{replyForObjections_MRP_22_23_CivilAction.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>
			<h:inputHidden value="#{replyForObjections_MRP_22_23_CivilAction.hidden}" />
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
							value="#{replyForObjections_MRP_22_23_CivilAction.objectionlist}"
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
									actionListener="#{replyForObjections_MRP_22_23_CivilAction.view}" value="view" disabled="#{list.disableFlg }"/>
								</center>
							</rich:column>

							

						</rich:dataTable>

					</div>
			
			</div>
			
			<h:panelGroup rendered="#{replyForObjections_MRP_22_23_CivilAction.viewPanelFlg}">
				<div align="center" class="row">
					
					<rich:spacer height="30px;"></rich:spacer>
		</div>
			 
			<div class="row" align="center">
								<div class="col-md-12">
								<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table2"  value="#{replyForObjections_MRP_22_23_CivilAction.displayBrandDetails25}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.1" />
											</f:facet>
											<h:outputText value="#{list.sr_No }" />
										</rich:column>





										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Brand Name" />
											</f:facet>
											<h:outputText value="#{list.brand_name}" />
										</rich:column>
										<rich:column width="3%">
						<f:facet name="header">
							<h:outputText value="Trademark No." />
						</f:facet>
						<h:outputText value="#{list.trade_mark_no}" />
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
											rendered="#{replyForObjections_MRP_22_23_CivilAction.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{(replyForObjections_MRP_22_23_CivilAction.unitType eq 'B' or  replyForObjections_MRP_22_23_CivilAction.license_type eq 'BWFL2B' ) and  replyForObjections_MRP_22_23_CivilAction.civilcsd eq 'Civil'}">
											<f:facet name="header">
												<h:outputText value="EBP" />
											</f:facet>
											<h:outputText value="#{list.edp }"
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%"
											rendered="#{(replyForObjections_MRP_22_23_CivilAction.unitType eq 'D' and  replyForObjections_MRP_22_23_CivilAction.civilcsd eq 'Civil') or  replyForObjections_MRP_22_23_CivilAction.license_type eq 'BWFL2A' or  replyForObjections_MRP_22_23_CivilAction.license_type eq 'BWFL2D' }">
											<f:facet name="header">
												<h:outputText value="EDP" />
											</f:facet>
											<h:outputText value="#{list.edp }"
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>


										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText value="DUTY" />
											</f:facet>
											<h:outputText value="#{list.duty }"
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty" />
											</f:facet>
											<h:outputText value="#{list.addnl_duty }"
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>





										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Wholesale Margin" />
											</f:facet>
											<h:outputText value="#{list.wholesalemargin }"
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>




										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Retail Margin" />
											</f:facet>
											<h:outputText value="#{list.retailmargin }"
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>





										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%"
											rendered="#{replyForObjections_MRP_22_23_CivilAction.unitType eq 'BWFL'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Import Fee" />
											</f:facet>
											<h:outputText value="#{list.import_bwfl_2a_2b_show }"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%" 
										rendered="#{(replyForObjections_MRP_22_23_CivilAction.license_type ne 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.civilcsd eq 'Civil')}" >
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Calculated MRP" />
											</f:facet>
											<h:outputText value="#{list.max_retailmargin_base_show}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>





										<rich:column width="7%" rendered="#{(replyForObjections_MRP_22_23_CivilAction.license_type ne 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Actual MRP interms of 10" />
											</f:facet>
											<h:outputText value="#{list.actual_retailmargin_10mult_base_show}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%" rendered="#{(replyForObjections_MRP_22_23_CivilAction.license_type eq 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="MRP without corona cess" />
											</f:facet>
											<h:outputText value="#{list.mrp_wine}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Actual MRP" />
											</f:facet>

											<h:outputText value="#{list.mrp_bwfl }"
												style="COLOR: #0000a0;  width : 60px;">
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
			 <h:outputLabel  value="#{replyForObjections_MRP_22_23_CivilAction.text}" rendered="#{!replyForObjections_MRP_22_23_CivilAction.check_approved_band}" />
			  <h:outputLabel  value="This Brand other package size is already approved you can not change the EDP OR EBP" rendered="#{replyForObjections_MRP_22_23_CivilAction.check_approved_band}"/>
			 </div>
			 <div align="left" class="col-md-6">
			 <h:selectBooleanCheckbox value="#{replyForObjections_MRP_22_23_CivilAction.checkbox}"
			 onchange="this.form.submit();" disabled="#{replyForObjections_MRP_22_23_CivilAction.check_approved_band}"
			 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.valuechange}" />
			 </div>
			 </div>
			 
			 
			<div align="center" class="row">
					
					<rich:spacer height="20px;"></rich:spacer>
		</div>
				<div class="row" align="center">
					<div class="col-md-12">

						<h:panelGroup rendered="#{replyForObjections_MRP_22_23_CivilAction.enable_flg eq 'T'}">
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
								value="#{replyForObjections_MRP_22_23_CivilAction.unit_type}" 
								
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
							<h:outputLabel value="Brand Name :-"  style="FONT-WEIGHT: bold;"></h:outputLabel>
							<h:outputText value="#{replyForObjections_MRP_22_23_CivilAction.brand_name}"  style="FONT-WEIGHT: bold;"></h:outputText>
							<rich:spacer width="100px" />
							<h:outputLabel value="Trademark No. :-" style="FONT-WEIGHT: bold;"></h:outputLabel>
							<h:outputText value="#{application_for_MRP_EDP_Approval_22_23_Action.trade_mark_no}" style="FONT-WEIGHT: bold;"></h:outputText>
						</div>
						<h:panelGroup   >
						
						<h:panelGroup rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type   eq 'BWFL2C'}" >
						<div class="row">
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="MRP without corona cess of #{replyForObjections_MRP_22_23_CivilAction.size_ml} ml"  ></h:outputLabel>
							 
						</div>
						<div class=" row col-md-2" align="left" style=" height : 24px;">
							 <h:inputText value="#{replyForObjections_MRP_22_23_CivilAction.mrp_750ml}"
							 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.duty_cal}"   >
							 
							      <a4j:support event="onblur" ajaxSingle="true"
												reRender="table22,lic_cat11" />
							  
							 </h:inputText>
						</div>
						 
							<div class=" row col-md-2" align="right"> 
							  
						</div>
						<div class=" row col-md-2" align="left">
							 
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="Category"  rendered="#false"></h:outputLabel>
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
						<h:outputText id="lic_cat11" value="#{replyForObjections_MRP_22_23_CivilAction.liquor_cat}"
						  rendered="#false"></h:outputText>
						</div>
						
						</div>
						<div class="row">
							<div class=" row col-md-2" align="right"> </div>
						<div class=" row col-md-2" align="left" style=" height : 24px;"> </div>
						 
							<div class=" row col-md-2" align="right"> </div>
						<div class=" row col-md-2" align="left"> </div>
						 
							<div class=" row col-md-2" align="right">
							 
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
							  
						</div>
						
						</div>
						</h:panelGroup>
						<h:panelGroup rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type   ne 'BWFL2C'}" >
						<div class="row">
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="EDP of 500ml"  rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'LAB') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D'}" ></h:outputLabel>
							 <h:outputLabel value="EDP of 180ml" rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'}" ></h:outputLabel>
							  <h:outputLabel value="EBP of 500ml"  rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' }" ></h:outputLabel>
							 
						</div>
						<div class=" row col-md-2" align="left" style=" height : 24px;">
							 <h:inputText value="#{replyForObjections_MRP_22_23_CivilAction.edp_180ml}"
							 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.edpChange}"   >
							 <a4j:support event="onblur" ajaxSingle="true"
												reRender="table22,edp_750ml,table222,lic_cat" />
							 </h:inputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="EDP of 500ml"   rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'LAB')  or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D'}" ></h:outputLabel>
							 <h:outputLabel value="EDP of 750ml" 	rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'}" ></h:outputLabel>
							  <h:outputLabel value="EBP of 500ml"   rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B'}" ></h:outputLabel>
							 
						</div>
						<div class=" row col-md-2" align="left">
							 <h:outputText id="edp_750ml" value="#{replyForObjections_MRP_22_23_CivilAction.edp_750ml}"></h:outputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="Category" rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'}"></h:outputLabel>
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
						<h:outputText id="lic_cat" value="#{replyForObjections_MRP_22_23_CivilAction.liquor_cat}"
						 rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'}"></h:outputText>
						</div>
						
						</div>
						</h:panelGroup>
						<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel value="Calculated sheet for 750ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
					rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL') or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'}" >
						   
						   </h:outputLabel>
						   
						   <h:outputLabel value="Calculated sheet for #{replyForObjections_MRP_22_23_CivilAction.size_ml} ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
					rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
						   
						   </h:outputLabel>
						   
						   <h:outputLabel value="Calculated sheet for 500ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
						   rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D' or (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DLF' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'LAB' )}" >
						   
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
							id="table22" width="100%"
							value="#{replyForObjections_MRP_22_23_CivilAction.calculation_750ml_list}"
							var="list">
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.size_ml_750}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							
						  
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and  replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2B' 
							and  replyForObjections_MRP_22_23_CivilAction.unit_type ne 'B'  }" >
								 
								<f:facet name="header"  >
									<h:outputText value="EDP" />
									 
								</f:facet>
							 
								 
								 <center>
										<h:outputText  
											value="#{list.edp_base}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and 
							(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or  replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B'    ) }" >
								 
								<f:facet name="header"  >
									<h:outputText value="EBP" />
									 
								</f:facet>
								
								 
								 <center>
										<h:outputText  
											value="#{list.edp_base}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText value="MRP without corona cess of #{replyForObjections_MRP_22_23_CivilAction.size_ml} ml" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.mrp_wine}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText value="#{list.addnl_duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:outputText value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:inputText value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;width:70px;"  
									 
									 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.duty_cal22}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										  <a4j:support event="onblur"   ajaxSingle="true"
												reRender="wholesale_margin,table22,msg23" >
								</a4j:support>
								 
								</h:inputText>
								 
								
							</rich:column>




							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:outputText value="#{list.retailmargin_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="wholesale_margin" value="#{list.wholesalemargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText value="#{list.retailmargin_base }"  
									style="COLOR: #0000a0;width:70px;" 
									 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.duty_cal33}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
											<a4j:support event="onblur"    ajaxSingle="true" 
												reRender="retail_margin,table22,table222,msg23" >
								</a4j:support>
								</h:inputText>
								 
								 
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<a4j:outputPanel id="retail_margin">
								<h:outputText   value="#{list.retailmargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								 
								</h:outputText>
								</a4j:outputPanel>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText value="#{list.spl_addl_cess_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%"  rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Import Fee" />
								</f:facet>
								<h:outputText value="#{list.import_bwfl_2a_2b }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%"  
							rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText value="#{list.mrp_bwfl_base }" style="COLOR: #0000a0;" >
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
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel id="edp_otherml"  value="Calculated sheet for remaining Package:-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;">
						   
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
							id="table222" width="100%"
							value="#{replyForObjections_MRP_22_23_CivilAction.calculation_list}"
							var="list">
							

							


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.size_ml_750_}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							 
						  
							<rich:column width="7%"  rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and  replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2B' 
							and  replyForObjections_MRP_22_23_CivilAction.unit_type ne 'B'  }">
								<f:facet name="header">
									<h:outputText value="EDP" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.edp_base_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%"  rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and 
							(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or  replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B'    )}">
								<f:facet name="header">
									<h:outputText value="EBP" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.edp_base_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText value="MRP without corona cess " />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.mrp_wine_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText value="#{list.duty_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText value="#{list.addnl_duty_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:outputText value="#{list.wholesalemargin_base_ }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>




							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:outputText value="#{list.retailmargin_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText value="#{list.spl_addl_cess_base_ }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Import Fee" />
								</f:facet>
								<h:outputText value="#{list.import_bwfl_2a_2b_}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText value="#{list.max_retailmargin_base_}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%"  rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText value="#{list.actual_retailmargin_10mult_base_}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText value="#{list.mrp_bwfl_base_ }" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>




							

						</rich:dataTable>

					</div>
				</div>
				
					
						
						 
 </h:panelGroup>
 	 
						 
						 



<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="col-md-12" align="center">





				 

 

					<h:commandButton rendered="false"
						action="#{replyForObjections_MRP_22_23_CivilAction.reset}"
						value="Reset" styleClass="btn btn-default btn-sm" />

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
							value="#{replyForObjections_MRP_22_23_CivilAction.state_list}"
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
							<rich:column width="4%"
								rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.unitType ne 'IUCIVIL' and (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D')}">
								<f:facet name="header">
									<h:outputText value="EBP of 500ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state">
								<h:inputText value="#{list.edp_state}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							<rich:column width="4%"
								rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'LAB'}">
								<f:facet name="header">
									<h:outputText value="EDP of 500ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state1">
								<h:inputText value="#{list.edp_state}"   
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state1" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							<rich:column width="4%"
								rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2C' and replyForObjections_MRP_22_23_CivilAction.unitType ne 'IUCIVIL' 
								 and replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2B' and replyForObjections_MRP_22_23_CivilAction.unit_type ne 'B'
								  and replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2D' and  
								     (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A' and  replyForObjections_MRP_22_23_CivilAction.liquor_type ne 'FL') and 
								   (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'D' and  replyForObjections_MRP_22_23_CivilAction.liquor_type ne 'FL') }">
								<f:facet name="header">
									<h:outputText value="EDP of 750ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state2">
								<h:inputText value="#{list.edp_state}"   
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state2" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							<rich:column width="4%"
								rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'  or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL') and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL'}">
								<f:facet name="header">
									<h:outputText value="EDP of 180ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state3">
								<h:inputText value="#{list.edp_state}"   
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state3" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							 
							 

							<rich:column width="4%" rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'B' or replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2D') }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP of 500 ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state4">
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;" 
								 >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state4" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							<rich:column width="4%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL' and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'LAB'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP of 500 ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state5">
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state5" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							
							<rich:column width="4%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2B' 
							 and replyForObjections_MRP_22_23_CivilAction.unit_type ne 'B' and replyForObjections_MRP_22_23_CivilAction.unit_type ne 'BWFL2D'  
							   and  (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A' and  replyForObjections_MRP_22_23_CivilAction.liquor_type ne 'FL') and 
								   (replyForObjections_MRP_22_23_CivilAction.unit_type eq 'D' and  replyForObjections_MRP_22_23_CivilAction.liquor_type ne 'FL') }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP of 750 ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state6">
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state6" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							
							<rich:column width="4%" rendered="#{replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2C'  }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP of #{replyForObjections_MRP_22_23_CivilAction.size_ml} ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state7">
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state7" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>
							
							<rich:column width="4%" 
							rendered="#{(replyForObjections_MRP_22_23_CivilAction.unit_type eq 'BWFL2A'  or 
							replyForObjections_MRP_22_23_CivilAction.unit_type eq 'DFL') and replyForObjections_MRP_22_23_CivilAction.liquor_type eq 'FL'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP of 180 ml" />
								</f:facet>
								<a4j:outputPanel id="edp_state8">
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="edp_state8" />
								</h:inputText>
								</a4j:outputPanel>

							</rich:column>









							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:selectBooleanCheckbox value="#{list.checkbox}"    onchange="this.form.submit();"
								 valueChangeListener="#{replyForObjections_MRP_22_23_CivilAction.valuechange_delete}"   />


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
								value="#{replyForObjections_MRP_22_23_CivilAction.title}" />
						</div>
					<div align="right" class="col-md-2">
							<h:outputLabel  value="Objection Description:" />
						 
						</div>
					
					<div align="left" class="col-md-2">
							 
							<h:outputText   
								value="#{replyForObjections_MRP_22_23_CivilAction.description}" />
						</div>
					
						<div align="right" class="col-md-2">
						 
							<h:outputLabel value="Objection Date:" /> 
							 
								
						</div>
					<div align="left" class="col-md-2">
						  <rich:calendar  value="#{replyForObjections_MRP_22_23_CivilAction.obj_date }"  />
								
						</div>
						
					
					</div>
					</h:panelGroup>
					<rich:spacer height="10px;"></rich:spacer>
			
				</f:view>
   
   </h:form>
			 <h:panelGroup rendered="#{replyForObjections_MRP_22_23_CivilAction.viewPanelFlg}">
					
				
					
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
											fileUploadListener="#{replyForObjections_MRP_22_23_CivilAction.uploader1}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse1 , renpdftrue1"></a4j:support>
										</rich:fileUpload></div>
										 
										<div class="col-md-1" align="left">

										<a4j:outputPanel id="renpdftrue1">
											<h:outputLink
												rendered="#{replyForObjections_MRP_22_23_CivilAction.doc1Flg}"
												target="_blank"
												value="/doc/ExciseUp/LabelRegistration_22_23/objection/#{replyForObjections_MRP_22_23_CivilAction.uploadedPdf}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse1">
											<a4j:outputPanel
												rendered="#{!replyForObjections_MRP_22_23_CivilAction.doc1Flg}">
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
									value="#{replyForObjections_MRP_22_23_CivilAction.fillComment}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
							</div>
						</div>

					</div>
				</div>
				<div class="row" align="center">

				<h:commandButton value="Submit" styleClass="btn btn-success"
						action="#{replyForObjections_MRP_22_23_CivilAction.save}" />
					<h:commandButton value="Reset" styleClass="btn btn-warning"
						action="#{replyForObjections_MRP_22_23_CivilAction.reset}" />
						
				</div>
				 
			</h:form>
		</f:view>
				</h:panelGroup>	
				<f:view>
				<h:form>
					
					<div align="center"> 
					<h:commandButton value="Back" styleClass="btn btn-danger"
						action="#{replyForObjections_MRP_22_23_CivilAction.back}" /></div>
			
  </h:form>
		</f:view>
  
  
  
</ui:composition>