<ui:composition xmlns="http://www.w3.org/1999/xhtml"
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
											<h:outputLabel value="#{replyForObjections_MRPAction.err}" style="color: red"
											 rendered="#{replyForObjections_MRPAction.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>
			<h:inputHidden value="#{replyForObjections_MRPAction.hidden}" />
			<div class="row " align="center">
				<div align="center">
					<h1
						style="COLOR: #000000; TEXT-DECORATION: underline; font-family: Monotype Corsiva; font-weight: 900;">
						<b> <h:outputText value="Reply To Given Objections For Brand MRP" /></b>

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
							value="#{replyForObjections_MRPAction.objectionlist}"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" style="FONT-SIZE: medium; FONT-FAMILY: 'Arial Black';">

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Sr.No. "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText disabled="true" value="#{list.srNo}"
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
									actionListener="#{replyForObjections_MRPAction.view}" value="view" disabled="#{list.disableFlg }"/>
								</center>
							</rich:column>

							

						</rich:dataTable>

					</div>
			
			</div>
			
			<h:panelGroup rendered="#{replyForObjections_MRPAction.viewPanelFlg}">
						<div align="center" class="row">
					
					<rich:spacer height="30px;"></rich:spacer>
		</div>
			 
			 <div class="row">
			 <div align="right"  class="col-md-6">
			 <h:outputLabel  value="#{replyForObjections_MRPAction.text}" />
			 </div>
			 <div align="left" class="col-md-6">
			 <h:selectBooleanCheckbox value="#{replyForObjections_MRPAction.checkbox}"
			 onchange="this.form.submit();"
			 valueChangeListener="#{replyForObjections_MRPAction.valuechange}" />
			 </div>
			 </div>
			 
			 
			<div align="center" class="row">
					
					<rich:spacer height="20px;"></rich:spacer>
		</div>
				<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table22" width="100%"
							value="#{replyForObjections_MRPAction.displayBrandDetails25}"
							var="list">
							<rich:column width="2%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Sr.No." />
								</f:facet>
								<h:outputText value="#{list.srNo1 }" />
							</rich:column>





							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Brand Name" />
								</f:facet>
								<h:outputText value="#{list.brand_Name }" />
							</rich:column>
							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Package" />
								</f:facet>
								<h:outputText value="#{list.packg_Name }" />
							</rich:column>


							<rich:column width="3%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Size(in ml)" />
								</f:facet>
								<h:outputText value="#{list.size }" />
							</rich:column>








							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>

									<h:outputText value="#{list.lic_type_name }" />

							</rich:column>
							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain eq 'UP')  or  (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.bwfl_type ne 'BWFL-2B' ) }">
								<f:facet name="header">
									<h:outputText value="Base EDP of 750ML" 
									rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain eq 'UP')  or (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil'  and replyForObjections_MRPAction.bwfl_type ne 'BWFL-2B' ) }" >
									</h:outputText>
									 
								</f:facet>
								 
								 
								 <center>
										<h:inputText id="edp1"
											value="#{list.edp_base}"
											class="form-control"
									style="COLOR: #0000a0;" disabled="#{replyForObjections_MRPAction.calculation_flg_dis eq 'F'}"
											valueChangeListener="#{replyForObjections_MRPAction.edpChangebase_edp}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22,msg23" />
										</h:inputText>
									</center>
							</rich:column>
							<rich:column width="7%"
								rendered="#{   (replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain eq 'UP') or (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.bwfl_type eq 'BWFL-2B')   }">
								<f:facet name="header">
								 
									<h:outputText value="Base EDP of 500ML" 
									rendered="#{ (replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain eq 'UP') or (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.bwfl_type eq 'BWFL-2B') }" >
									</h:outputText>
								</f:facet>
								 
								 
								 <center>
										<h:inputText 
											value="#{list.edp_base1}"
											class="form-control"
									style="COLOR: #0000a0;" disabled="#{replyForObjections_MRPAction.calculation_flg_dis eq 'F'}"
											valueChangeListener="#{replyForObjections_MRPAction.edpChangebase_edp}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22" />
										</h:inputText>
									</center>
							</rich:column>
<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'CSD' and replyForObjections_MRPAction.domain eq 'UP')}">
								<f:facet name="header">
									<h:outputText value="Base Duty of 750ML Civil"   >
									</h:outputText>
									 
								</f:facet>
								 
								 
								 <center>
										<h:inputText  
											value="#{list.dutycivil_750}"
											class="form-control"
									style="COLOR: #0000a0;" disabled="#{replyForObjections_MRPAction.calculation_flg_dis eq 'F'}"
											valueChangeListener="#{replyForObjections_MRPAction.dutyChangebase_duty}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="duty_csd" />
										</h:inputText>
									</center>
							</rich:column>
							
							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D'  or replyForObjections_MRPAction.unitType eq 'B'  or (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.license_type ne 'BWFL2C' ) )}">
								<f:facet name="header">
									<h:outputText value="EDP" />
								</f:facet>
								 <center>
										<h:inputText id="edp"
											value="#{list.edp}"
											class="form-control"
									style="COLOR: #0000a0;"  disabled="#{replyForObjections_MRPAction.calculation_flg_dis eq 'F'}"
											valueChangeListener="#{replyForObjections_MRPAction.edpChange}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22" />
										</h:inputText>
									</center>
									
							 
							</rich:column>


							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D'  or replyForObjections_MRPAction.unitType eq 'B'  or replyForObjections_MRPAction.unitType eq 'BWFL'   ) }">
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								<h:inputText value="#{list.duty }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp,maxwholemrp33">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D'  or replyForObjections_MRPAction.unitType eq 'B'  or replyForObjections_MRPAction.unitType eq 'BWFL'   ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:inputText value="#{list.addnl_duty }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F' and replyForObjections_MRPAction.civilcsd eq 'Civil'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp,maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'Civil' or replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.civilcsd eq 'Civil' or replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:inputText value="#{list.wholesalemargin }"
									disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp,maxwholemrp33">
								</a4j:support>
							</rich:column>




							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'Civil' or replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.civilcsd eq 'Civil' or replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText value="#{list.retailmargin }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp,maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.domain eq 'UP' or replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.domain eq 'UP' or replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F' and replyForObjections_MRPAction.civilcsd eq 'Civil'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp,maxwholemrp33">
								</a4j:support>
							</rich:column>
							<rich:column width="7%"
								rendered="#{ (replyForObjections_MRPAction.unitType eq 'D' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain  eq 'UP') or (replyForObjections_MRPAction.unitType eq 'B' and replyForObjections_MRPAction.civilcsd eq 'Civil' and replyForObjections_MRPAction.domain  eq 'UP') or (replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' and  replyForObjections_MRPAction.license_type ne 'BWFL2C') }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp33">
								<h:inputText value="#{list.mrp_bwfl }" style="COLOR: #0000a0;"
									disabled="true" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								</a4j:outputPanel>
								 
							</rich:column>
							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'BWFL' and replyForObjections_MRPAction.civilcsd eq 'Civil' and  replyForObjections_MRPAction.license_type eq 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<a4j:outputPanel  >
								<h:inputText value="#{list.mrp_bwfl }" style="COLOR: #0000a0;"
									disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								</a4j:outputPanel>
								 
							</rich:column>



							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								<h:inputText value="#{list.cif }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Custom Bond handling Charges" />
								</f:facet>
								<h:inputText value="#{list.cb_handling_charage }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText value="Margin" />
								</f:facet>
								<h:inputText value="#{list.margin }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>



							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								<h:inputText value="#{list.custom_duty }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:inputText value="#{list.addnl_duty }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Permit Fee per Bottle" />
								</f:facet>
								<h:inputText value="#{list.permit_fee_on750 }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="landedcost">
								</a4j:support>
							</rich:column>



							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Landed Cost to CBW" />
								</f:facet>
								<a4j:outputPanel id="landedcost">
									<h:inputText value="#{list.landed_cost }" class="form-control"
										style="COLOR: #0000a0;" disabled="true">
										<f:convertNumber maxFractionDigits="2"
											pattern="#############0.00" />
									</h:inputText>
								</a4j:outputPanel>

							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Margin of Wholesale " />
								</f:facet>
								<h:inputText value="#{list.margin_wholesale }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Margin of Retailer" />
								</f:facet>
								<h:inputText value="#{list.margin_of_retailer }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
							</rich:column>



							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Spacial Addl.Consid. Fees" />
								</f:facet>
								<h:inputText value="#{list.spcl_addl_cosid_fee }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="totalfee,totalfee1">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Total Fees (Permit)" />
								</f:facet>
								<a4j:outputPanel id="totalfee">
									<h:inputText value="#{list.total_fees_paid }" disabled="true"
										style="COLOR: #0000a0;" class="form-control">
										<f:convertNumber maxFractionDigits="2"
											pattern="#############0.00" />
									</h:inputText>
								</a4j:outputPanel>
							</rich:column>
							
							<rich:column width="500px"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCIVIL' and replyForObjections_MRPAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="MRP" />
								</f:facet>
								<a4j:outputPanel id="totalfee1">
									<h:inputText value="#{list.mrp_bwfl}" disabled="true"
										style="COLOR: #0000a0;" class="form-control">
										<f:convertNumber maxFractionDigits="2"
											pattern="#############0.00" />
									</h:inputText>
								</a4j:outputPanel>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSD' and replyForObjections_MRPAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText value="CSD EDP Per Bottles in(Rs)" />
								</f:facet>
								<h:inputText value="#{list.edp }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSD' and replyForObjections_MRPAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSD' and replyForObjections_MRPAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Permit Fee" />
								</f:facet>
								<h:inputText value="#{list.permit_fee }" class="form-control"
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="For Civil/CSD" />
								</f:facet>
								<h:outputText value="#{list.civil_csd }" 
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}" />
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" Civil EDP" />
								</f:facet>
								<h:outputText value="#{list.civil_edp }" 
								disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}" />
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="Civil Category" />
								</f:facet>
								<h:outputText value="#{list.liq_cat_civil }"  disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}" />


							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="Civil Duty" />
								</f:facet>
								<h:outputText value="#{list.duty_civil }" disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"  />


							</rich:column>




							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="EDP-CSD" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp321">
								<h:inputText value="#{list.edp }" class="form-control" disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="maxwholemrp321" />
								</h:inputText>
							 
								</a4j:outputPanel>
							</rich:column>


							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="DUTY-CSD" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp3211">
								<h:inputText value="#{list.duty }" class="form-control"  disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="maxwholemrp3211" />
								</h:inputText>
							 </a4j:outputPanel>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Additional Duty-CSD " />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp3212">
								<h:inputText value="#{list.csd_cal_duty }" class="form-control"  disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="maxwholemrp3212" />
								</h:inputText> 
								</a4j:outputPanel>
							</rich:column>

							<rich:column width="7%"
								rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp3213">
								<h:inputText value="#{list.spl_addl_cess }"  disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="maxwholemrp3213" />
								</h:inputText> 
								</a4j:outputPanel>
							</rich:column>
							
							<rich:column width="7%"
									rendered="#{replyForObjections_MRPAction.unitType eq 'IUCSDOUP' and replyForObjections_MRPAction.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Import Fee" />
									</f:facet>
									<a4j:outputPanel id="maxwholemrp3214">
									<h:inputText value="#{list.permit_fee }" class="form-control" style="COLOR: #0000a0;" disabled="#{replyForObjections_MRPAction.enable_flg eq 'F'}" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
										<a4j:support event="onblur" ajaxSingle="true"
												reRender="maxwholemrp3214" />
									</h:inputText>
									</a4j:outputPanel>
									 
								</rich:column>
							 
 
							 




						 

						</rich:dataTable>

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
								value="#{replyForObjections_MRPAction.title}" />
						</div>
					<div align="right" class="col-md-2">
							<h:outputLabel  value="Objection Description:" />
						 
						</div>
					
					<div align="left" class="col-md-2">
							 
							<h:outputText   
								value="#{replyForObjections_MRPAction.description}" />
						</div>
					
						<div align="right" class="col-md-2">
						 
							<h:outputLabel value="Objection Date:" /> 
							 
								
						</div>
					<div align="left" class="col-md-2">
						  <rich:calendar  value="#{replyForObjections_MRPAction.obj_date }"  />
								
						</div>
						
					
					</div>
					</h:panelGroup>
					<rich:spacer height="10px;"></rich:spacer>
			
				</f:view>
   
   </h:form>
			 <h:panelGroup rendered="#{replyForObjections_MRPAction.viewPanelFlg}">
					
				
					
					<rich:spacer height="10px;"></rich:spacer>
		
			
			<div align="center">
					Upload pdf (if any):
					</div>
					<div align="center"><form class="dropzone" 
					action="/BrandRegistration/ReplyForObjections_MRP?appID=#{replyForObjections_MRPAction.allId} "
					method="post" enctype="multipart/form-data"
					style="BACKGROUND-COLOR: #6ed3f1; border: 5px outset whitesmoke;">
					<div class="dz-default dz-message">
						<span style="FONT-SIZE: small; COLOR: #464646;"><i>Click
								here to choose PDF</i></span>
					</div>
					<input class="dz-hidden-input" type="file" name="file"
						accept="application/pdf"
						style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;" />
				</form></div>
					
					<f:view>
			<h:form style="FONT-SIZE: xx-small;">
				<div class="row"
					style="BACKGROUND-COLOR: #5bc0de; padding: 0px 0px 15px 0px;">
					<div class="row" align="center">
						<div class="col-md-3 col-sm-4"></div>

						<div class="col-md-6 col-sm-1">
							<h:commandButton value="Upload PDF File"
								styleClass="btn btn-sm btn-primary"
								action="#{replyForObjections_MRPAction.save1}" />
								<h:outputLink target="_blank"
								rendered="#{replyForObjections_MRPAction.pdfDone}"
								value="/doc/ExciseUp/LabelRegistration_21_22/objection/#{replyForObjections_MRPAction.uploadedPdf}">

								<h:graphicImage value="/img/download.gif" alt="view document"
									style="height : 35px;"></h:graphicImage>
							</h:outputLink>

						</div>
						
					</div>
					<div class="col-md-12">
						<div class="col-md-3 col-sm-4">
							<b><h:outputText value="Remarks :" style="font-size:15px"/></b>
						</div>
						<div class="col-md-6 col-sm-8">

							<div class="row">
								<h:inputTextarea
									value="#{replyForObjections_MRPAction.fillComment}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
							</div>
						</div>

					</div>
				</div>
				<div class="row" align="center">

				<h:commandButton value="Submit" styleClass="btn btn-success"
						action="#{replyForObjections_MRPAction.save}" />
					<h:commandButton value="Reset" styleClass="btn btn-warning"
						action="#{replyForObjections_MRPAction.reset}" />
						
				</div>
				 
			</h:form>
		</f:view>
				</h:panelGroup>	
				<f:view>
				<h:form>
					
					<div align="center"> 
					<h:commandButton value="Back" styleClass="btn btn-danger"
						action="#{replyForObjections_MRPAction.back}" /></div>
			
  </h:form>
		</f:view>
  
  
  
</ui:composition>