<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
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
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu1 {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.textarea1 {
	border-radius: 3px;
	border-style: none;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>

		</head>

		<h:form>


			<TABLE width="100%" align="center">
				<TR>
					<TD align="center" width="100%">
						<TABLE align="center" width="100%">
							<TBODY>

								<tr>
									<td><rich:separator lineType="dashed"></rich:separator></td>
								</tr>

								<tr>
									<TD align="center" colspan="2"><h2>
											<h:outputText align="center"
												value="Financial Details Of Brands 2021-22"
												style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px; font-family:Times New Roman;">
											</h:outputText>


										</h2></TD>
								</tr>

								<tr>
									<td><rich:separator lineType="dashed"></rich:separator></td>
								</tr>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<div  >

				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row">
					<div class="col-md-12 wow shake" align="center">
						<h:messages errorStyle="color:red" layout="TABLE" id="messages1"
							infoStyle="color:green"
							style="font-size:18px; background-color:#e1fcdf; font-weight: bold">
						</h:messages>

					</div>
				</div>

				<div class="row">
					<div align="center">
						<div class="col-md-12">
							<h:selectOneRadio
								disabled="#{brandFinancialDetails_2021_22Action.edit_flag1 eq 'T' }"
								value="#{brandFinancialDetails_2021_22Action.unitType}"
								valueChangeListener="#{brandFinancialDetails_2021_22Action.unitChange}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="D" itemLabel="Distillery" />
								<f:selectItem itemValue="B" itemLabel="Brewary" />
								<f:selectItem itemValue="BWFL"
									itemLabel="Bwfl (Civil OutsideUP)" />
								<f:selectItem itemValue="IUCIVIL"
									itemLabel="Imported Unit (Civil)" />
								<f:selectItem itemValue="IUCSD" itemLabel="IU CSD (OSI)" />
								<f:selectItem itemValue="IUCSDOUP" itemLabel="CSD (OutsideUP)" />
							</h:selectOneRadio>
						</div>
					</div>
					<rich:spacer height="20px"></rich:spacer>
				</div>



				<rich:separator lineType="dashed"></rich:separator>




				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>




				<div class="row" align="center">
					<div class="col-md-5" align="right">
						<h:outputLabel value="Unit Name"></h:outputLabel>
					</div>
					<div class="col-md-4" align="left">
						<h:selectOneMenu
							disabled="#{brandFinancialDetails_2021_22Action.edit_flag1 eq 'T' }"
							value="#{brandFinancialDetails_2021_22Action.unitId}"
							styleClass="form-control" onchange="this.form.submit();"
							valueChangeListener="#{brandFinancialDetails_2021_22Action.onChangeDropdown }">
							<f:selectItems
								value="#{brandFinancialDetails_2021_22Action.unitName}" />
						</h:selectOneMenu>
					</div>
					<div class="col-md-4"></div>
				</div>
				<div class="row">
					<rich:spacer height="10px"></rich:spacer>
				</div>
				<div class="col-md-5" align="right">
					<h:outputLabel value="For"></h:outputLabel>
				</div>
				<div class="col-md-6" align="left">
					<h:selectOneRadio
						disabled="#{brandFinancialDetails_2021_22Action.edit_flag1 eq 'T' }"
						rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'D' or brandFinancialDetails_2021_22Action.unitType eq 'B'}"
						value="#{brandFinancialDetails_2021_22Action.civilcsd}"
						onchange="this.form.submit();"
						valueChangeListener="#{brandFinancialDetails_2021_22Action.forcivilcsd}">
						<f:selectItem itemValue="Civil" itemLabel="Civil" />
						<f:selectItem itemValue="CSD" itemLabel="CSD" />

					</h:selectOneRadio>
					<h:selectOneRadio
						rendered="#{brandFinancialDetails_2021_22Action.unitType ne 'D' and brandFinancialDetails_2021_22Action.unitType ne 'B'}"
						disabled="true"
						value="#{brandFinancialDetails_2021_22Action.civilcsd}">
						<f:selectItem itemValue="Civil" itemLabel="Civil" />
						<f:selectItem itemValue="CSD" itemLabel="CSD" />

					</h:selectOneRadio>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				 
				<div class="col-md-5" align="right">
					<h:outputLabel value="Domain" 	 rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'D' or brandFinancialDetails_2021_22Action.unitType eq 'B'}"></h:outputLabel>
				</div>
				<div class="col-md-6" align="left">
					<h:selectOneRadio
						disabled="#{brandFinancialDetails_2021_22Action.edit_flag1 eq 'T' }"
						 rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'D' or brandFinancialDetails_2021_22Action.unitType eq 'B'}"
						value="#{brandFinancialDetails_2021_22Action.domain}"
						onchange="this.form.submit();"
						valueChangeListener="#{brandFinancialDetails_2021_22Action.valuechangedomain}">
						<f:selectItem itemValue="UP" itemLabel="U.P" />
						<f:selectItem itemValue="EXPORT" itemLabel="Export(Other State)" />
						<f:selectItem itemValue="EOI" itemLabel="Overseas(Other Country)" />
						 

					</h:selectOneRadio>
					 
					 
					 
					 
					 
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<rich:separator lineType="dashed"></rich:separator>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row">
					<h:panelGroup>
						<div class="col-md-12">

							<rich:dataTable columnClasses="columnClass1"
								headerClass="TableHead" footerClass="TableHead"
								rowClasses="TableRow1,TableRow2" styleClass="DataTable"
								id="table22" width="100%"
								value="#{brandFinancialDetails_2021_22Action.displayBrandDetails}"
								var="list">
								<rich:column>
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Sr.No." />
									</f:facet>
									<h:outputText value="#{list.srNo }" />
								</rich:column>





								<rich:column width="7%">
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
								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Package" />
									</f:facet>
									<h:selectOneMenu value="#{list.package_id}"
										disabled="#{list.edit_flag eq 'T' }"
										styleClass="dropdown-menu1" onchange="this.form.submit();"
										style=" width : 150px;"
										valueChangeListener="#{list.getdata }">
										<f:selectItems value="#{list.packageList }" />


									</h:selectOneMenu>
								</rich:column>


								<rich:column>
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Size(in ml)" />
									</f:facet>
									<h:outputText value="#{list.size }" />
								</rich:column>








								<rich:column>
									<f:facet name="header">
										<h:outputText value="Category" />
									</f:facet>

									<h:selectOneMenu value="#{list.liq_cat}"
										styleClass="dropdown-menu1" style=" width : 110px;"
										valueChangeListener="#{brandFinancialDetails_2021_22Action.catChange}">
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
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D'  or brandFinancialDetails_2021_22Action.unitType eq 'B'  or brandFinancialDetails_2021_22Action.unitType eq 'BWFL'   ) }">
									<f:facet name="header">
										<h:outputText value="EDP" />
									</f:facet>
									<h:inputText value="#{list.edp }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D'  or brandFinancialDetails_2021_22Action.unitType eq 'B'  or brandFinancialDetails_2021_22Action.unitType eq 'BWFL'   ) }">
									<f:facet name="header">
										<h:outputText value="DUTY" />
									</f:facet>
									<h:inputText value="#{list.duty }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D'  or brandFinancialDetails_2021_22Action.unitType eq 'B'  or brandFinancialDetails_2021_22Action.unitType eq 'BWFL'   ) }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Additional Duty" />
									</f:facet>
									<h:inputText value="#{list.addnl_duty }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>





								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'B' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'BWFL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' ) }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Wholesale Margin" />
									</f:facet>
									<h:inputText value="#{list.wholesalemargin }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>




								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'B' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'BWFL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' ) }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Retail Margin" />
									</f:facet>
									<h:inputText value="#{list.retailmargin }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>





								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D' and brandFinancialDetails_2021_22Action.domain eq 'UP' or brandFinancialDetails_2021_22Action.unitType eq 'B' and brandFinancialDetails_2021_22Action.domain eq 'UP' or brandFinancialDetails_2021_22Action.unitType eq 'BWFL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' ) }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Spl. Addl. CESS" />
									</f:facet>
									<h:inputText value="#{list.spl_addl_cess }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>
								<rich:column width="7%"
									rendered="#{ (brandFinancialDetails_2021_22Action.unitType eq 'D' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'B' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' or brandFinancialDetails_2021_22Action.unitType eq 'BWFL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' ) }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="MRP" />
									</f:facet>
									<h:inputText value="#{list.mrp_bwfl }" style="COLOR: #0000a0;" disabled="#{list.liquortype ne 'WINE'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>



								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText value="CIF" />
									</f:facet>
									<h:inputText value="#{list.cif }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}" >
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Custom Bond handling Charges" />
									</f:facet>
									<h:inputText value="#{list.cb_handling_charage }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText value="Margin" />
									</f:facet>
									<h:inputText value="#{list.margin }" class="form-control"  style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}" >
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>



								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Custom Duty" />
									</f:facet>
									<h:inputText value="#{list.custom_duty }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Additional Duty" />
									</f:facet>
									<h:inputText value="#{list.addnl_duty }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}" >
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Permit Fee per Bottle" />
									</f:facet>
									<h:inputText value="#{list.permit_fee_on750 }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onkeyup" reRender="landedcost">
									</a4j:support>
								</rich:column>



								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Landed Cost to CBW" />
									</f:facet>
									<a4j:outputPanel id="landedcost">
										<h:inputText value="#{list.landed_cost }" class="form-control" style="COLOR: #0000a0;"
											disabled="true" >
											<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									</a4j:outputPanel>

								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Margin of Wholesale " />
									</f:facet>
									<h:inputText value="#{list.margin_wholesale }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Margin of Retailer" />
									</f:facet>
									<h:inputText value="#{list.margin_of_retailer }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
								</rich:column>



								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Spacial Addl.Consid. Fees" />
									</f:facet>
									<h:inputText value="#{list.spcl_addl_cosid_fee }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onkeyup" reRender="totalfee">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCIVIL' and brandFinancialDetails_2021_22Action.civilcsd eq 'Civil' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Total Fees (Permit)" />
									</f:facet>
									<a4j:outputPanel id="totalfee">
										<h:inputText value="#{list.total_fees_paid }" disabled="true" style="COLOR: #0000a0;"
											class="form-control" >
											<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									</a4j:outputPanel>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSD' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText value="CSD EDP Per Bottles in(Rs)" />
									</f:facet>
									<h:inputText value="#{list.edp }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSD' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Spl. Addl. CESS" />
									</f:facet>
									<h:inputText value="#{list.spl_addl_cess }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
											<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSD' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:inputText value="#{list.permit_fee }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="For Civil/CSD" />
									</f:facet>
									<h:outputText value="#{list.civil_csd }" />
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value=" Civil EDP" />
									</f:facet>
									<h:outputText value="#{list.civil_edp }" />
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText value="Civil Category" />
									</f:facet>
									<h:outputText value="#{list.liq_cat_civil }" />


								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText value="Civil Duty" />
									</f:facet>
									<h:outputText value="#{list.duty_civil }" />


								</rich:column>




								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText value="EDP-CSD" />
									</f:facet>
									<h:inputText value="#{list.edp }" class="form-control" style="COLOR: #0000a0;"  disabled="#{list.data_not_set_flg eq 'T'}">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText value="DUTY-CSD" />
									</f:facet>
									<h:inputText value="#{list.duty }" class="form-control"  style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Additional Duty-CSD " />
									</f:facet>
									<h:inputText value="#{list.csd_cal_duty }" class="form-control"  style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>

								<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD' }">
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Spl. Addl. CESS" />
									</f:facet>
									<h:inputText value="#{list.spl_addl_cess }" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}"
										class="form-control" >
											<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									<a4j:support event="onblur" reRender="maxwholemrp">
									</a4j:support>
								</rich:column>


<rich:column width="7%"
									rendered="#{brandFinancialDetails_2021_22Action.unitType eq 'IUCSDOUP' and brandFinancialDetails_2021_22Action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:inputText value="#{list.permit_fee }" class="form-control" style="COLOR: #0000a0;" disabled="#{list.data_not_set_flg eq 'T'}" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>



								<rich:column>
									<f:facet name="header">
										<h:commandButton class="imag"
											 
											action="#{brandFinancialDetails_2021_22Action.addRow_dis}"
											image="/img/add.png" />
									</f:facet>
									<h:commandButton class="imag"
										 
										actionListener="#{brandFinancialDetails_2021_22Action.deleteRow_dis}"
										style="background: transparent;height:30px "
										image="/img/del.png" />
										
										 
								</rich:column>

							</rich:dataTable>

						</div>
					</h:panelGroup>


				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<rich:separator lineType="dashed"></rich:separator>


				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>

				<div class="col-md-12 btn " style="background-color: beige;">
					<div class="col-md-2" align="right">
						<b>*Upload Document :</b>
					</div>
					<div class="col-md-3" align="left">
						<rich:fileUpload clearControlLabel="clear" stopControlLabel="Stop"
							ontyperejected="if (!confirm('Only pdf allowed !')) return false"
							acceptedTypes="pdf" clearAllControlLabel="Clear All"
							listWidth="220" listHeight="10" maxFilesQuantity="1"
							fileUploadListener="#{brandFinancialDetails_2021_22Action.upload}">
							<a4j:support event="onuploadcomplete"
								reRender="renpdffalse2 , renpdftrue2"></a4j:support>
						</rich:fileUpload>


					</div>
					<div class="col-md-3 img-responsive" align="left">
						<h:commandButton value="Confirm" onclick="this.form.submit();"
							class="btn btn-sm btn-warning" />
						<a4j:outputPanel id="renpdftrue2">
							<h:outputLink
								rendered="#{brandFinancialDetails_2021_22Action.doc2Flg}"
								target="_blank"
								value="#{brandFinancialDetails_2021_22Action.savefile}">

								<h:graphicImage value="/img/download.gif"
									style="width : 60px; height : 35px;"></h:graphicImage>
							</h:outputLink>
						</a4j:outputPanel>
						<a4j:outputPanel id="renpdffalse2">
							<a4j:outputPanel
								rendered="#{!brandFinancialDetails_2021_22Action.doc2Flg}">
								<h:graphicImage value="/img/nodoc.png"
									style="width : 60px; height : 35px;"></h:graphicImage>

							</a4j:outputPanel>
						</a4j:outputPanel>
					</div>
					<div class="col-md-2" align="right">
						<b>*Approval Date :</b>
					</div>
					<div class="col-md-2" align="left">
						<rich:calendar
							value="#{brandFinancialDetails_2021_22Action.uploaddate}"></rich:calendar>
					</div>

				</div>


				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row" align="center">


					<div class="col-md-12">


						<h:commandButton styleClass="btn btn-primary"
							action="#{brandFinancialDetails_2021_22Action.save}" value="Save" />
						<rich:spacer width="10px" />
						<h:commandButton
							action="#{brandFinancialDetails_2021_22Action.reset}"
							value="Reset" styleClass="btn btn-default" />
					</div>
					<div class="col-md-4"></div>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div align="center">
					<rich:dataTable width="80%" var="list" id="table" rows="10"
						value="#{brandFinancialDetails_2021_22Action.savelist}">

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr.No." />
							</f:facet>
							<h:outputText value="#{list.sr_no}" />
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Reference No." />
							</f:facet>
							<h:outputText value="#{list.requestid_displ}" />
						</rich:column>




						<rich:column>
							<f:facet name="header">
								<h:outputText value="Approval Date" />
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
								<h:outputText value=" " />
							</f:facet>
							<h:commandButton value="Update"
								rendered="#{list.digital_sign_date eq null}"
								actionListener="#{brandFinancialDetails_2021_22Action.update}"
								styleClass="btn btn-primary">
							</h:commandButton>
							<h:commandButton value="Print"
								rendered="#{list.digital_sign_date eq null}"
								actionListener="#{brandFinancialDetails_2021_22Action.print}"
								styleClass="btn btn-info">
							</h:commandButton>

							<h:outputLink
								rendered="#{list.print_flg ne 'NA' and list.digital_sign_date eq null}"
								value="/doc/ExciseUp/LabelRegistration_21_22/Applications/pdf//F-#{list.requestid}_BrandFinancialDetail.pdf"
								target="_blank">
								<h:outputText value="View Order">
								</h:outputText>
							</h:outputLink>

							<h:outputLink rendered="#{list.digital_sign_date ne null}"
								value="/doc/ExciseUp/LabelRegistration_21_22/Applications/pdf//F-#{list.requestid}_BrandFinancialDetail_esign.pdf"
								target="_blank">
								<h:outputText value="View Order">
								</h:outputText>
							</h:outputLink>
							<h:outputLink
								value="https://www.upexciseportal.in/DigitalSignature/BrandFinancialDetail_21_22.jsp"
								styleClass="btn btn-sm btn-danger"
								rendered="#{list.print_flg ne 'NA' and list.digital_sign_date eq null}">
								<h:outputText value="Digital Sign" />
								<f:param name="appid" value="#{list.requestid}"></f:param>
								<f:param name="updatetype" value="1"></f:param>


							</h:outputLink>

						</rich:column>


















						<f:facet name="footer">
							<rich:datascroller for="table"></rich:datascroller>
						</f:facet>


					</rich:dataTable>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>

			</div>
		</h:form>
	</f:view>





</ui:composition>