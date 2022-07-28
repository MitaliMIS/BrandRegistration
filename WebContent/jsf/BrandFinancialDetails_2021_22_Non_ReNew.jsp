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
												value="Financial Details Of Non-Renewed Brands 2022-23"
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
								disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
								value="#{brandFinancialDetails_2021_22_Non_ReNewAction.unitType}"
								valueChangeListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.unitChange}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="D" itemLabel="Distillery" />
								<f:selectItem itemValue="B" itemLabel="Brewary" />
								<f:selectItem itemValue="BWFL"
									itemLabel="Bwfl  " />
								<f:selectItem itemValue="IUCIVIL"
									itemLabel="Imported Unit (Civil)" />
							 
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
							disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
							value="#{brandFinancialDetails_2021_22_Non_ReNewAction.unitId}"
							styleClass="form-control" onchange="this.form.submit();"
							valueChangeListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.onChangeDropdown }">
							<f:selectItems
								value="#{brandFinancialDetails_2021_22_Non_ReNewAction.unitName}" />
						</h:selectOneMenu>
					</div>
					<div class="col-md-4"></div>
				</div>
				<div class="row">
					<rich:spacer height="10px"></rich:spacer>
				</div>
				<div class="col-md-5" align="right">
					<h:outputLabel value="For" rendered="false"></h:outputLabel>
				</div>
				<div class="col-md-6" align="left">
					<h:selectOneRadio rendered="false"
						disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
						 
						value="#{brandFinancialDetails_2021_22_Non_ReNewAction.civilcsd}"
						onchange="this.form.submit();"
						valueChangeListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.forcivilcsd}">
						<f:selectItem itemValue="Civil" itemLabel="Civil" />
						 
					</h:selectOneRadio>
					<h:selectOneRadio rendered="false"
						 
						disabled="true"
						value="#{brandFinancialDetails_2021_22_Non_ReNewAction.civilcsd}">
						<f:selectItem itemValue="Civil" itemLabel="Civil" />
						 

					</h:selectOneRadio>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				 
				<div class="col-md-5" align="right">
					<h:outputLabel value="Domain" rendered="false"></h:outputLabel>
				</div>
				<div class="col-md-6" align="left">
					<h:selectOneRadio
						disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
						 
						value="#{brandFinancialDetails_2021_22_Non_ReNewAction.domain}"
						onchange="this.form.submit();" rendered="false"
						valueChangeListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.valuechangedomain}">
						<f:selectItem itemValue="UP" itemLabel="U.P" />
						 
						 

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
								value="#{brandFinancialDetails_2021_22_Non_ReNewAction.displayBrandDetails}"
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
										disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
										styleClass="dropdown-menu1" onchange="this.form.submit();"
										style=" width : 150px;">
										<f:selectItems value="#{list.brandList}" />
									</h:selectOneMenu>
								</rich:column>
								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Package" />
									</f:facet>
									<h:selectOneMenu value="#{list.package_id}"
										disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
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
										valueChangeListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.catChange}">
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
										<h:outputText value="EDP" />
									</f:facet>
									<h:inputText value="#{list.edp }" class="form-control" style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>


								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText value="DUTY" />
									</f:facet>
									<h:inputText value="#{list.duty }" class="form-control" style="COLOR: #0000a0;">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
								 
								</rich:column>

								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Additional Duty" />
									</f:facet>
									<h:inputText value="#{list.addnl_duty }" class="form-control" style="COLOR: #0000a0;">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>





								 




								 





								 
								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="MRP" />
									</f:facet>
									<h:inputText value="#{list.mrp }" style="COLOR: #0000a0;"  
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>



								 


								 


							 


 
 
 


 

								 


							 


 

								 

								 


								 

								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:inputText value="#{list.permit_fee }" class="form-control" style="COLOR: #0000a0;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>
								
								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
									</f:facet>
									<h:inputText value="#{list.spl_addl_cess }" class="form-control" style="COLOR: #0000a0;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:inputText>
									 
								</rich:column>
								
                               

								<rich:column>
									<f:facet name="header">
										<h:commandButton class="imag"
											disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
											action="#{brandFinancialDetails_2021_22_Non_ReNewAction.addRow_dis}"
											image="/img/add.png" />
									</f:facet>
									<h:commandButton class="imag"
										disabled="#{brandFinancialDetails_2021_22_Non_ReNewAction.edit_flag eq 'T' }"
										actionListener="#{brandFinancialDetails_2021_22_Non_ReNewAction.deleteRow_dis}"
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

				 


				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row" align="center">


					<div class="col-md-12">


						<h:commandButton styleClass="btn btn-primary"
							action="#{brandFinancialDetails_2021_22_Non_ReNewAction.save}" value="Save" />
						<rich:spacer width="10px" />
						<h:commandButton
							action="#{brandFinancialDetails_2021_22_Non_ReNewAction.reset}"
							value="Reset" styleClass="btn btn-default" />
					</div>
					<div class="col-md-4"></div>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div align="center">
					<rich:dataTable width="80%" var="list" id="table" rows="10"
						value="#{brandFinancialDetails_2021_22_Non_ReNewAction.savelist}">

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr.No." />
							</f:facet>
							<h:outputText value="#{list.sr_no}" />
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

						<rich:column  >
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Brand Name" />
									</f:facet>
								 <h:outputText value="#{list.brandname }" />
										 
									 
								</rich:column>
								<rich:column >
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Package" />
									</f:facet>
									 <h:outputText value="#{list.packagename }" />
 
								</rich:column>


								<rich:column>
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Size(in ml)" />
									</f:facet>
									<h:outputText value="#{list.size1 }" />
								</rich:column>
 

								<rich:column>
									<f:facet name="header">
										<h:outputText value="Category" />
									</f:facet>
                                       <h:outputText value="#{list.liqcat }" />
									 

								</rich:column>


								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText value="EDP" />
									</f:facet>
									<h:outputText value="#{list.edp1 }" class="form-control" style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
									 
								</rich:column>


								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText value="DUTY" />
									</f:facet>
									<h:outputText value="#{list.duty1 }" class="form-control" style="COLOR: #0000a0;">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
								 
								</rich:column>

								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="Additional Duty" />
									</f:facet>
									<h:outputText value="#{list.addnl_duty1 }" class="form-control" style="COLOR: #0000a0;">
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
									 
								</rich:column>

 
								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted"
											value="MRP" />
									</f:facet>
									<h:outputText value="#{list.mrp1 }" style="COLOR: #0000a0;"  
										class="form-control" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
									 
								</rich:column>
   

								<rich:column width="7%" >
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:outputText value="#{list.permit_fee1 }" class="form-control" style="COLOR: #0000a0;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
								 
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