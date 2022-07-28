
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<h:form>
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

.table {
	box-shadow: 1px 1px 15px grey;
}

.TableHead {
	background-color: #689fb1;
	height: 20px;
	color: white;
	font-size: 12px;
}

.table {
	box-shadow: 1px 1px 15px grey;
}

.TableFooter {
	background-color: white;
}

.preformatted {
	white-space: pre-wrap;
}

.inputtext {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>



		<f:view>
			<div class="form-group">
				<div class="row " align="center">
					<rich:spacer height="30px"></rich:spacer>
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
											<h:outputLabel value="#{application_for_MRP_EDP_ApprovalAction.err}" style="color: red"
											 rendered="#{application_for_MRP_EDP_ApprovalAction.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>


				<div class="row " align="center">
					<div align="center" class="pghead">
						<h:inputHidden
							value="#{application_for_MRP_EDP_ApprovalAction.hidden}"></h:inputHidden>
						<h:outputLabel
							value="#{application_for_MRP_EDP_ApprovalAction.user_Name}"
							style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
						<div align="center">
							<h:outputLabel
								value="#{application_for_MRP_EDP_ApprovalAction.user_Address}"
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

							<h:outputText value="Application for MRP Approval"
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

				<div class="col-md-12" align="center">

					<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #e6ffff; width: 95%;">

						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
							<h:selectOneRadio style="FONT-STYLE: italic; FONT-WEIGHT: bold;"
								disabled="#{application_for_MRP_EDP_ApprovalAction.edit_flag1 eq 'T' }"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'D' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'}"
								value="#{application_for_MRP_EDP_ApprovalAction.civilcsd}"
								onchange="this.form.submit();"
								valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.forcivilcsd}">
								<f:selectItem itemValue="Civil" itemLabel="Civil" />
								<f:selectItem itemValue="CSD" itemLabel="CSD" />

							</h:selectOneRadio>
							<h:selectOneRadio style="FONT-STYLE: italic; FONT-WEIGHT: bold;"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType ne 'D' and application_for_MRP_EDP_ApprovalAction.unitType ne 'B'}"
								disabled="true"
								value="#{application_for_MRP_EDP_ApprovalAction.civilcsd}">
								<f:selectItem itemValue="Civil" itemLabel="Civil" />
								<f:selectItem itemValue="CSD" itemLabel="CSD" />

							</h:selectOneRadio>
						</div>

						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
							<h:outputLabel value="Domain"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'D' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'}"></h:outputLabel>
							<h:selectOneRadio style="FONT-STYLE: italic; FONT-WEIGHT: bold;"
								disabled="#{application_for_MRP_EDP_ApprovalAction.edit_flag1 eq 'T' }"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'D' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'}"
								value="#{application_for_MRP_EDP_ApprovalAction.domain}"
								onchange="this.form.submit();"
								valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.valuechangedomain}">
								<f:selectItem itemValue="UP" itemLabel="U.P" />
								<f:selectItem itemValue="EXPORT" itemLabel="Export(Other State)" />
								<f:selectItem itemValue="EOI"
									itemLabel="Overseas(Other Country)" />


							</h:selectOneRadio>
						</div>

						<div class="row">
							<rich:spacer height="1px"></rich:spacer>
						</div>
					</div>


				</div>

				<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>

<div style="padding: 10px; border: 4px groove #2948a4; background-color: #e6ffff; width: 100%;">
				<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table22" width="100%" rendered="#{application_for_MRP_EDP_ApprovalAction.bwfl_type ne 'BWFL-2C'}"
							value="#{application_for_MRP_EDP_ApprovalAction.displayBrandDetails}"
							var="list">
							<rich:column width="2%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Sr.No.1" />
								</f:facet>
								<h:outputText value="#{list.srNo }" />
							</rich:column>





							<rich:column width="5%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Brand Name" />
								</f:facet>
								<h:selectOneMenu value="#{list.brandid}"
									disabled="#{list.edit_flag eq 'T' }"
									styleClass="dropdown-menu1" onchange="this.form.submit();"
									style=" width : 150px;">
									<f:selectItems value="#{list.brandList }" />
								</h:selectOneMenu>
							</rich:column>
							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Package" />
								</f:facet>
								<h:selectOneMenu value="#{list.package_id}"
									disabled="#{list.edit_flag eq 'T' }"
									styleClass="dropdown-menu1" onchange="this.form.submit();"
									style=" width : 150px;" valueChangeListener="#{list.getdata }">
									<f:selectItems value="#{list.packageList }" />


								</h:selectOneMenu>
							</rich:column>


							<rich:column width="3%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Size(in ml)" />
								</f:facet>
								<h:outputText value="#{list.size }" />
							</rich:column>








							<rich:column width="3%">
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>

								<h:selectOneMenu value="#{list.liq_cat}"
									styleClass="dropdown-menu1" style=" width : 110px;" onchange="this.form.submit();"
									valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.catChange}">
									<a4j:support event="onchange" ajaxSingle="true"
										reRender="table22" />
									<f:selectItem itemLabel="Select" itemValue="0" />
									<f:selectItem itemLabel="Economy" itemValue="1" />
									<f:selectItem itemLabel="Regular" itemValue="2" />
									<f:selectItem itemLabel="Medium" itemValue="3" />
									<f:selectItem itemLabel="Scotch" itemValue="4" />
									<f:selectItem itemLabel="Super Premium" itemValue="5" />
									<f:selectItem itemLabel="Premium" itemValue="6" />
									<f:selectItem itemLabel="Super Premium" itemValue="7" />
									<f:selectItem itemLabel="Mild" itemValue="8" />
									<f:selectItem itemLabel="Strong" itemValue="9" />
									<f:selectItem itemLabel="25% Plain" itemValue="10" />
									<f:selectItem itemLabel="Spiced" itemValue="11" />
									<f:selectItem itemLabel="36%" itemValue="12" />
									<f:selectItem itemLabel="42.8%" itemValue="13" />
									<f:selectItem itemLabel="Gin" itemValue="14" />
									<f:selectItem itemLabel="Vodka" itemValue="15" />
									<f:selectItem itemLabel="Wine" itemValue="16" />
									<f:selectItem itemLabel="Whisky" itemValue="17" />
									<f:selectItem itemLabel="Brandy" itemValue="18" />
									<f:selectItem itemLabel="Rum" itemValue="19" />
									<f:selectItem itemLabel="LAB" itemValue="20" />

									<f:selectItem itemLabel="25 Spiced" itemValue="21" />
									<f:selectItem itemLabel="36 Spiced" itemValue="22" />
									<f:selectItem itemLabel="42.8 Spiced" itemValue="23" />
									<f:selectItem itemLabel="42.8 UP Made Liquor" itemValue="24" />
								</h:selectOneMenu>

							</rich:column>
							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP')  or  (application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.bwfl_type ne 'BWFL-2B' ) }">
								<f:facet name="header">
									<h:outputText value="Base EDP of 750ML" 
									rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP')  or (application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil'  and application_for_MRP_EDP_ApprovalAction.bwfl_type ne 'BWFL-2B' ) }" >
									</h:outputText>
									 
								</f:facet>
								 
								 
								 <center>
										<h:inputText id="edp1"
											value="#{list.edp_base}"
											class="form-control"
									style="COLOR: #0000a0;"
											valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.edpChangebase_edp}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22,msg23" />
										</h:inputText>
									</center>
							</rich:column>
							<rich:column width="7%"
								rendered="#{   (application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP') or (application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.bwfl_type eq 'BWFL-2B')   }">
								<f:facet name="header">
								 
									<h:outputText value="Base EDP of 500ML" 
									rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP') or (application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.bwfl_type eq 'BWFL-2B') }" >
									</h:outputText>
								</f:facet>
								 
								 
								 <center>
										<h:inputText 
											value="#{list.edp_base1}"
											class="form-control"
									style="COLOR: #0000a0;"
											valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.edpChangebase_edp}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22" />
										</h:inputText>
									</center>
							</rich:column>
<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP')}">
								<f:facet name="header">
									<h:outputText value="Base Duty of 750ML Civil"   >
									</h:outputText>
									 
								</f:facet>
								 
								 
								 <center>
										<h:inputText  
											value="#{list.dutycivil_750}"
											class="form-control"
									style="COLOR: #0000a0;"
											valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.dutyChangebase_duty}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="duty_csd" />
										</h:inputText>
									</center>
							</rich:column>

							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL'   ) }">
								<f:facet name="header">
									<h:outputText value="EDP" />
								</f:facet>
								 <center>
										<h:inputText id="edp"
											value="#{list.edp}"
											class="form-control"
									style="COLOR: #0000a0;" 
											valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.edpChange}">
											<a4j:support event="onblur" ajaxSingle="true"
												reRender="table22" />
										</h:inputText>
									</center>
							</rich:column>


							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL'   ) }">
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:inputText value="#{list.duty }" class="form-control" id="duty_csd"
								disabled="#{list.calculation_flg_dis eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'B'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL'   ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:inputText value="#{list.addnl_duty }" class="form-control"
								disabled="#{list.calculation_flg_dis eq 'T' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:inputText value="#{list.wholesalemargin }"
								disabled="#{list.calculation_flg_dis eq 'T'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>




							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText value="#{list.retailmargin }" class="form-control"
								disabled="#{list.calculation_flg_dis eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP' or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }"
								disabled="#{list.calculation_flg_dis eq 'T' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>
							<rich:column width="7%"
								rendered="#{ (application_for_MRP_EDP_ApprovalAction.unitType eq 'D' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP' or application_for_MRP_EDP_ApprovalAction.unitType eq 'B' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' and application_for_MRP_EDP_ApprovalAction.domain eq 'UP'  or application_for_MRP_EDP_ApprovalAction.unitType eq 'BWFL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' ) }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp33">
								<h:inputText value="#{list.mrp_bwfl }" style="COLOR: #0000a0;"
									disabled="#{list.liquortype ne 'WINE'}" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								
								 
								</a4j:outputPanel>
							</rich:column>



							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								<h:inputText value="#{list.cif }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Custom Bond handling Charges" />
								</f:facet>
								<h:inputText value="#{list.cb_handling_charage }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText value="Margin" />
								</f:facet>
								<h:inputText value="#{list.margin }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>



							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								<h:inputText value="#{list.custom_duty }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:inputText value="#{list.addnl_duty }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Permit Fee per Bottle" />
								</f:facet>
								<h:inputText value="#{list.permit_fee_on750 }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="landedcost">
								</a4j:support>
							</rich:column>



							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
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
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Margin of Wholesale " />
								</f:facet>
								<h:inputText value="#{list.margin_wholesale }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Margin of Retailer" />
								</f:facet>
								<h:inputText value="#{list.margin_of_retailer }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
							</rich:column>



							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Spacial Addl.Consid. Fees" />
								</f:facet>
								<h:inputText value="#{list.spcl_addl_cosid_fee }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="totalfee,totalfee1">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
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
							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'Civil' }">
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
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSD' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText value="CSD EDP Per Bottles in(Rs)" />
								</f:facet>
								<h:inputText value="#{list.edp }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSD' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSD' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Permit Fee" />
								</f:facet>
								<h:inputText value="#{list.permit_fee }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="For Civil/CSD" />
								</f:facet>
								<h:outputText value="#{list.civil_csd }" />
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" Civil EDP" />
								</f:facet>
								<h:outputText value="#{list.civil_edp }" />
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="Civil Category" />
								</f:facet>
								<h:outputText value="#{list.liq_cat_civil }" />


							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="Civil Duty" />
								</f:facet>
								<h:outputText value="#{list.duty_civil }" />


							</rich:column>




							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="EDP-CSD" />
								</f:facet>
								<h:inputText value="#{list.edp }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>


							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText value="DUTY-CSD" />
								</f:facet>
								<h:inputText value="#{list.duty }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Additional Duty-CSD " />
								</f:facet>
								<h:inputText value="#{list.csd_cal_duty }" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>

							<rich:column width="7%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onblur" reRender="maxwholemrp">
								</a4j:support>
							</rich:column>
							 
<rich:column width="7%"
									rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCSDOUP' and application_for_MRP_EDP_ApprovalAction.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Import Fee" />
									</f:facet>
									<h:inputText value="#{list.permit_fee }" class="form-control" style="COLOR: #0000a0;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>




							<rich:column width="7%">
								<f:facet name="header">
									<h:commandButton class="imag"
										disabled="#{application_for_MRP_EDP_ApprovalAction.save_flg eq 'T'}"
										action="#{application_for_MRP_EDP_ApprovalAction.addRow_dis}"
										image="/img/add.png" />
								</f:facet>
								<h:commandButton class="imag"
									disabled="#{application_for_MRP_EDP_ApprovalAction.save_flg eq 'T'}"
									actionListener="#{application_for_MRP_EDP_ApprovalAction.deleteRow_dis}"
									style="background: transparent;height:30px "
									image="/img/del.png" />


							</rich:column>

						</rich:dataTable>
						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table2232" width="100%" rendered="#{application_for_MRP_EDP_ApprovalAction.bwfl_type eq 'BWFL-2C'}"
							value="#{application_for_MRP_EDP_ApprovalAction.displayBrandDetails}"
							var="list">
							<rich:column width="2%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Sr.No.2" />
								</f:facet>
								<h:outputText value="#{list.srNo }" />
							</rich:column>





							<rich:column width="5%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Brand Name" />
								</f:facet>
								<h:selectOneMenu value="#{list.brandid}"
									disabled="#{list.edit_flag eq 'T' }"
									styleClass="dropdown-menu1" onchange="this.form.submit();"
									style=" width : 150px;">
									<f:selectItems value="#{list.brandList }" />
								</h:selectOneMenu>
							</rich:column>
							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Package" />
								</f:facet>
								<h:selectOneMenu value="#{list.package_id}"
									disabled="#{list.edit_flag eq 'T' }"
									styleClass="dropdown-menu1" onchange="this.form.submit();"
									style=" width : 150px;" valueChangeListener="#{list.getdata }">
									<f:selectItems value="#{list.packageList }" />


								</h:selectOneMenu>
							</rich:column>


							<rich:column width="3%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Size(in ml)" />
								</f:facet>
								<h:outputText value="#{list.size }" />
							</rich:column>








							<rich:column width="3%">
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>

								<h:selectOneMenu value="#{list.liq_cat}"
									styleClass="dropdown-menu1" style=" width : 110px;" onchange="this.form.submit();"
									valueChangeListener="#{application_for_MRP_EDP_ApprovalAction.catChange}">
									<a4j:support event="onchange" ajaxSingle="true"
										reRender="table22" />
									<f:selectItem itemLabel="Select" itemValue="0" />
									<f:selectItem itemLabel="Economy" itemValue="1" />
									<f:selectItem itemLabel="Regular" itemValue="2" />
									<f:selectItem itemLabel="Medium" itemValue="3" />
									<f:selectItem itemLabel="Scotch" itemValue="4" />
									<f:selectItem itemLabel="Super Premium" itemValue="5" />
									<f:selectItem itemLabel="Premium" itemValue="6" />
									<f:selectItem itemLabel="Super Premium" itemValue="7" />
									<f:selectItem itemLabel="Mild" itemValue="8" />
									<f:selectItem itemLabel="Strong" itemValue="9" />
									<f:selectItem itemLabel="25% Plain" itemValue="10" />
									<f:selectItem itemLabel="Spiced" itemValue="11" />
									<f:selectItem itemLabel="36%" itemValue="12" />
									<f:selectItem itemLabel="42.8%" itemValue="13" />
									<f:selectItem itemLabel="Gin" itemValue="14" />
									<f:selectItem itemLabel="Vodka" itemValue="15" />
									<f:selectItem itemLabel="Wine" itemValue="16" />
									<f:selectItem itemLabel="Whisky" itemValue="17" />
									<f:selectItem itemLabel="Brandy" itemValue="18" />
									<f:selectItem itemLabel="Rum" itemValue="19" />
									<f:selectItem itemLabel="LAB" itemValue="20" />

									<f:selectItem itemLabel="25 Spiced" itemValue="21" />
									<f:selectItem itemLabel="36 Spiced" itemValue="22" />
									<f:selectItem itemLabel="42.8 Spiced" itemValue="23" />
									<f:selectItem itemLabel="42.8 UP Made Liquor" itemValue="24" />
								</h:selectOneMenu>

							</rich:column>
							 
							 
 

							 


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:inputText value="#{list.duty }" class="form-control" id="duty_csd"
								disabled="#{list.calculation_flg_dis eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:inputText value="#{list.addnl_duty }" class="form-control" 
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:inputText value="#{list.wholesalemargin }"
								disabled="#{list.calculation_flg_dis eq 'T'}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>




							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText value="#{list.retailmargin }" class="form-control"
								 
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:inputText value="#{list.spl_addl_cess }" 
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								<a4j:support event="onkeyup" reRender="maxwholemrp33">
								</a4j:support>
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<a4j:outputPanel id="maxwholemrp33">
								<h:inputText value="#{list.mrp_bwfl }" style="COLOR: #0000a0;"  class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>
								
								 
								</a4j:outputPanel>
							</rich:column>



							 




							<rich:column width="7%">
								<f:facet name="header">
									<h:commandButton class="imag"
										disabled="#{application_for_MRP_EDP_ApprovalAction.save_flg eq 'T'}"
										action="#{application_for_MRP_EDP_ApprovalAction.addRow_dis}"
										image="/img/add.png" />
								</f:facet>
								<h:commandButton class="imag"
									disabled="#{application_for_MRP_EDP_ApprovalAction.save_flg eq 'T'}"
									actionListener="#{application_for_MRP_EDP_ApprovalAction.deleteRow_dis}"
									style="background: transparent;height:30px "
									image="/img/del.png" />


							</rich:column>

						</rich:dataTable>

					</div>
				</div>


				<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>


				<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table223" width="50%"
							value="#{application_for_MRP_EDP_ApprovalAction.state_list}"
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
								rendered="#{application_for_MRP_EDP_ApprovalAction.bwfl_type ne 'BWFL-2C' and application_for_MRP_EDP_ApprovalAction.unitType ne 'IUCIVIL' }">
								<f:facet name="header">
									<h:outputText value="EDP" />
								</f:facet>
								<h:inputText value="#{list.edp_state}" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							<rich:column width="4%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }">
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								<h:inputText value="#{list.cif_state}" class="form-control"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							<rich:column width="4%"
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }">
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond Value" />
								</f:facet>
								<h:inputText value="#{list.xcoustom_bond_state}"
									style="COLOR: #0000a0;" class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>

							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="MRP" />
								</f:facet>
								<h:inputText value="#{list.mrp_state}" style="COLOR: #0000a0;"
									class="form-control">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>









							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:selectBooleanCheckbox value="#{list.checkbox}" />


							</rich:column>




						</rich:dataTable>

					</div>
				</div>


				<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row" style="background-color: beige;">
					 <div class="row"  >
					<rich:spacer height="10px"></rich:spacer>
				</div>
					<div class="col-md-2"></div>
					<div class="col-md-10">

						<h:selectBooleanCheckbox
							value="#{application_for_MRP_EDP_ApprovalAction.checkBox}" />
						<h:outputText
							value="The above information provided in this application are factual and true the best of my knowledge."
							styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>


					</div>

				</div>
				<div class="row" style="background-color: beige;">
					  <div class="row"  >
					<rich:spacer height="10px"></rich:spacer>
				</div>
					<div class="col-md-2"></div>
					<div class="col-md-10">

						<h:selectBooleanCheckbox
							value="#{application_for_MRP_EDP_ApprovalAction.checkBox1}" />
						<h:outputText
							value="If any above of the information is found wrong during inspection the brand registration shall been to be cancelled and amount deposited or Rs. 1 lakhs (which ever is higher shall be farfiled)."
							styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>

						<div class="row" align="left">
							<rich:spacer height="20px"></rich:spacer>
						</div>
					</div>

				</div>
				<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="col-md-12" align="center">





					<rich:spacer width="20px;" />
					<h:commandButton
						disabled="#{application_for_MRP_EDP_ApprovalAction.save_flg eq 'T'}"
						action="#{application_for_MRP_EDP_ApprovalAction.save}"
						value="Save" styleClass="btn btn-success btn-sm" />



					<rich:spacer width="20px;" />

					<h:commandButton
						action="#{application_for_MRP_EDP_ApprovalAction.reset}"
						value="Reset" styleClass="btn btn-default btn-sm" />

				</div>
				<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				</div>

				


				<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>


				<div align="center">
					<rich:dataTable columnClasses="columnClass1"
						headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2" styleClass="DataTable" id="table"
						width="80%" rows="10"
						value="#{application_for_MRP_EDP_ApprovalAction.savelist}"
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
								actionListener="#{application_for_MRP_EDP_ApprovalAction.Upload_documents}"
								styleClass="btn btn-primary">
							</h:commandButton>
							<h:commandButton value="Update"
								actionListener="#{application_for_MRP_EDP_ApprovalAction.update}"
								styleClass="btn btn-primary">
							</h:commandButton>
               <h:outputLink rendered="#{list.digital_sign_date ne null}"
								value="/doc/ExciseUp/LabelRegistration_21_22/Applications/pdf//#{list.requestid}_MRP_APPROVAL_esign.pdf"
								target="_blank">
								<h:outputText value="View Digitally Sign Order" style="color: blue">
								</h:outputText>
								</h:outputLink>



						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Objection"
									style=" COLOR: #ffffff;white-space: none">
								</h:outputText>
							</f:facet>

							<div align="center">
								<h:outputText rendered="#{!list.flag}" value="#{list.objection}"
									style="COLOR: #008040; FONT-WEIGHT: bold;" />
							</div>


							<h:commandButton rendered="#{list.flag}"
								styleClass="btn btn-primary" value="Reply"
								actionListener="#{application_for_MRP_EDP_ApprovalAction.getApp_id}"
								action="#{application_for_MRP_EDP_ApprovalAction.replyMethod}" />
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
					rendered="#{application_for_MRP_EDP_ApprovalAction.upload_flg eq 'T' }">

					<div class="row " align="center">
						<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #e6ffff; width: 95%;">

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value=" Application No.:#{application_for_MRP_EDP_ApprovalAction.showApplication_no}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLink target="_blank"
						value="/doc/ExciseUp/LabelRegistration_21_22/pdf/Affidavit_Format_MRP.pdf"
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
											value="#{application_for_MRP_EDP_ApprovalAction.showUploadeddocument}"
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
													<h:outputText value="#{application_for_MRP_EDP_ApprovalAction.text12}" 
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
								rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }">
								
								
								
								
								<div class="col-md-12 btn " style="background-color: beige;">
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="Copy of Import/Export Registration :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left">
										<rich:fileUpload clearControlLabel="clear"
											stopControlLabel="Stop"
											disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader1}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse1 , renpdftrue1"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue1">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_ApprovalAction.doc1Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_ApprovalAction.viewFile1}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse1">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_ApprovalAction.doc1Flg}">
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
											disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader2}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse2 , renpdftrue2"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue2">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_ApprovalAction.doc2Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_ApprovalAction.viewFile2}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse2">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_ApprovalAction.doc2Flg}">
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
							<h:panelGroup rendered="#{application_for_MRP_EDP_ApprovalAction.unitType ne 'IUCIVIL' }">
								
								<div class="col-md-2" align="right">
									<h:outputLabel styleClass="preformatted"
										rendered="#{application_for_MRP_EDP_ApprovalAction.unitType ne 'IUCIVIL' }"
										value="Affidavit for EDP MRP in other States like  Chattisgarh, Madhya Pradesh, Uttarakhand, Delhi, Jharkhand, Rajasthan, Haryana, Chandigarh, Punjab, Himanchal Pradesh, Bihar  for concerned brands :"
										style="FONT-WEIGHT: bold;"></h:outputLabel>
									<h:outputLabel styleClass="preformatted"
										style="FONT-WEIGHT: bold;"
										rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }"
										value="Affidavit for Ex-Custom Bond Value/MRP in other States like Delhi,Haryana,Madhya Pradesh,Rajasthan,Uttarakhand."></h:outputLabel>

								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader5}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse511 , renpdftrue511"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue511">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc5Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile5}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse511">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc5Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
								
								</h:panelGroup>
								 
								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Affidavit for track and trace and Spl. Addl. CESS :"
										styleClass="preformatted"
										style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader4}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse4 , renpdftrue4"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue4">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc4Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile4}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse4">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc4Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>

							
							<h:panelGroup rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-1"></div>
								<div class="col-md-2" align="right">
									<h:outputLabel styleClass="preformatted"
										rendered="#{application_for_MRP_EDP_ApprovalAction.unitType ne 'IUCIVIL' }"
										value="Affidavit for EDP MRP in other States like  Chattisgarh, Madhya Pradesh, Uttarakhand, Delhi, Jharkhand, Rajasthan, Haryana, Chandigarh, Punjab, Himanchal Pradesh, Bihar  for concerned brands :"
										style="FONT-WEIGHT: bold;"></h:outputLabel>
									<h:outputLabel styleClass="preformatted"
										style="FONT-WEIGHT: bold;"
										rendered="#{application_for_MRP_EDP_ApprovalAction.unitType eq 'IUCIVIL' }"
										value="Affidavit for Ex-Custom Bond Value/MRP in other States like Delhi,Haryana,Madhya Pradesh,Rajasthan,Uttarakhand."></h:outputLabel>

								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader5}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse5 , renpdftrue5"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue5">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc5Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile5}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse5">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc5Flg}">
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
											disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader8}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse8 , renpdftrue8"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue8">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_ApprovalAction.doc8Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_ApprovalAction.viewFile8}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse8">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_ApprovalAction.doc8Flg}">
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
								rendered="#{application_for_MRP_EDP_ApprovalAction.for_civil_csd_show eq 'CSD'}">
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
											disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader11}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse11 , renpdftrue11"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue11">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_ApprovalAction.doc11Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_ApprovalAction.viewFile11}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse11">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_ApprovalAction.doc11Flg}">
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
											disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
											ontyperejected="if (!confirm('Only pdf allowed !')) return false"
											acceptedTypes="pdf" clearAllControlLabel="Clear All"
											listWidth="220" listHeight="10" maxFilesQuantity="1"
											fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader12}">
											<a4j:support event="onuploadcomplete"
												reRender="renpdffalse12 , renpdftrue12"></a4j:support>
										</rich:fileUpload>


									</div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue12">
											<h:outputLink
												rendered="#{application_for_MRP_EDP_ApprovalAction.doc12Flg}"
												target="_blank"
												value="#{application_for_MRP_EDP_ApprovalAction.viewFile12}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse12">
											<a4j:outputPanel
												rendered="#{!application_for_MRP_EDP_ApprovalAction.doc12Flg}">
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
										disabled="#{application_for_MRP_EDP_ApprovalAction.doc13Flg}"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader13}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse13 , renpdftrue13"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue13">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc13Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile13}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse13">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc13Flg}">
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
										disabled="#{application_for_MRP_EDP_ApprovalAction.doc14Flg}"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader14}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse14 , renpdftrue14"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue14">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc14Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile14}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse14">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc14Flg}">
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
										disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader9}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse9 , renpdftrue9"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue9">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc9Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile9}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse9">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc9Flg}">
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
										disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_ApprovalAction.uploader10}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse10 , renpdftrue10"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue10">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_ApprovalAction.doc10Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_ApprovalAction.viewFile10}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse10">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_ApprovalAction.doc10Flg}">
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
									disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
									action="#{application_for_MRP_EDP_ApprovalAction.finalize}"
									value="Upload and Finalize" styleClass="btn btn-success btn-sm" />



								<rich:spacer width="20px;" />

								<h:commandButton
									disabled="#{application_for_MRP_EDP_ApprovalAction.check_upload_flg eq 'T' }"
									action="#{application_for_MRP_EDP_ApprovalAction.reset_uploading}"
									value="Reset" styleClass="btn btn-default btn-sm" />

								<rich:spacer width="20px;" />

								<h:commandButton
									action="#{application_for_MRP_EDP_ApprovalAction.close_uploading}"
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

			</div>
		</f:view>
	</h:form>



</ui:composition>