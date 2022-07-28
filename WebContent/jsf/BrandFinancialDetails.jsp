<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
	<f:view>
		<head>
<style>
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
			<div class="container">
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

				<div class="row" align="center">
					<TABLE width="100%" align="center">
						<TR>
							<TD align="center" width="100%">
								<TABLE align="center" width="100%">
									<TBODY>

										<tr>
											<td><rich:separator lineType="dashed"></rich:separator>
											</td>
										</tr>

										<tr>
											<TD align="center" colspan="2"><h2>
													<h:outputText align="center"
														value="Financial Details Of Brands"
														style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px; font-family:Times New Roman;">
													</h:outputText>

													<h:inputHidden
														value="#{brandFinancialDetailsAction.hidden}" />
												</h2></TD>
										</tr>

										<tr>
											<td><rich:separator lineType="dashed"></rich:separator>
											</td>
										</tr>
									</TBODY>
								</TABLE>
							</TD>
						</TR>

					</TABLE>
				</div>
				<br />

				<h:panelGroup>
					<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
						<div class="col-md-12" align="center">
							<h:selectOneRadio style="width:90%"
								value="#{brandFinancialDetailsAction.radioType}"
								valueChangeListener="#{brandFinancialDetailsAction.radioListener}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="SIUP"
									itemLabel="Produced in U.P.- Sale in U.P." />
								<f:selectItem itemValue="EXPORT"
									itemLabel="Produced in U.P.- Export" />
								<f:selectItem itemValue="BWFL"
									itemLabel="Produced outside U.P.- BWFL" />
								<f:selectItem itemValue="FL2A"
									itemLabel="Produced outside U.P.- FL2A" />
								<f:selectItem itemValue="FL2D"
									itemLabel="Produced outside India- FL2D" />

							</h:selectOneRadio>
						</div>
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
						<div class="col-md-5" align="center"></div>
						<div class="col-md-3" align="center">
							<h:selectOneRadio style="width:90%"
								value="#{brandFinancialDetailsAction.radioType2}"
								valueChangeListener="#{brandFinancialDetailsAction.radioListener2}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="1"
									itemLabel="ALL" />
								<f:selectItem itemValue="2"
									itemLabel="Brewery" />
								<f:selectItem itemValue="3"
									itemLabel="Distillery" />
									
								<f:selectItem itemValue="4"
									itemLabel="BWFL" />	
									
								<f:selectItem itemValue="5"
									itemLabel="FL2D" />		
								
							</h:selectOneRadio>
						</div>
						<div class="col-md-4" align="center">
						
						</div>
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<div class="row" align="center">
					<h:outputLabel>Unit Name : -</h:outputLabel>
					<h:selectOneMenu
											value="#{brandFinancialDetailsAction.dist_Brwry_bwfl_Id}"
											styleClass="dropdown-menu1"																		
											onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsAction.unitChange}">
											<a4j:support event="onchange" ajaxSingle="true"
												reRender="table22" />
											<f:selectItems
												value="#{brandFinancialDetailsAction.dist_Brwry_bwfl_List}" />
										</h:selectOneMenu>
					</div>
					<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
						<div class="col-md-5" align="center"></div>
						<div class="col-md-4" align="center">
							<h:selectOneRadio style="width:90%"
								value="#{brandFinancialDetailsAction.radioType3}"
								valueChangeListener="#{brandFinancialDetailsAction.radioListener3}"
								onchange="this.form.submit();"
								rendered="#{brandFinancialDetailsAction.radioType eq 'SIUP'}">
								<f:selectItem itemValue="1"
									itemLabel="ALL" />
								<f:selectItem itemValue="2"
									itemLabel="CL" />
								<f:selectItem itemValue="3"
									itemLabel="FL3" />
									<f:selectItem itemValue="4"
									itemLabel="FL3A" />
								
							</h:selectOneRadio>
						</div>
						<div class="col-md-4" align="center"></div>
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<div class="row" align="center">
						<div class="col-md-12">
							<rich:dataTable  id="table22" width="100%"
								value="#{brandFinancialDetailsAction.displayBrandDetails}"
								var="list" headerClass="TableHead" footerClass="TableHead">


								<rich:column width="5%">
									<f:facet name="header">
										<h:outputText value="Sr.No">
										</h:outputText>
									</f:facet>
									<h:outputText  style="margin-left: 20px;" value="#{list.srNo}"></h:outputText>
								</rich:column>

								<rich:column   width="15%">
									<f:facet name="header">
										<h:outputText value="Registered Unit" />
									</f:facet>
									<center>
										<h:outputText  
											value="#{list.unit_name}" />
									</center>
								</rich:column>

								<rich:column   width="15%">
									<f:facet name="header">
										<h:outputText value="Brand">
										</h:outputText>
									</f:facet>
									<h:outputText  
										value="#{list.brandName_dt}">
									</h:outputText>
								</rich:column>



								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText value="Size(in ml)" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.size_dt}" />
									</center>
								</rich:column>
								
								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText value="Category" />
									</f:facet>
									<center>
									<h:selectOneMenu
											value="#{list.liq_cat}"
											styleClass="dropdown-menu1"
											valueChangeListener="#{brandFinancialDetailsAction.catChange}">
											<a4j:support event="onchange" ajaxSingle="true"
												reRender="table22" />
				                          	<f:selectItem itemLabel="Select" itemValue="0" />					
											<f:selectItem itemLabel="Economy" itemValue="1" />
											<f:selectItem itemLabel="Regular" itemValue="2" />
											<f:selectItem itemLabel="Medium" itemValue="3" />
											<f:selectItem itemLabel="Premium" itemValue="4" />
											<f:selectItem itemLabel="Super Premium" itemValue="5" />
											<f:selectItem itemLabel="Scotch" itemValue="6" />
											<f:selectItem itemLabel="Mild" itemValue="8" />
											<f:selectItem itemLabel="Strong" itemValue="9" />
											<f:selectItem itemLabel="Plain" itemValue="10" />
											<f:selectItem itemLabel="Masala" itemValue="11" />
											<f:selectItem itemLabel="Wine" itemValue="16" />
											<f:selectItem itemLabel="LAB" itemValue="20" />
										</h:selectOneMenu>
									</center>
								</rich:column>
								
								

								

								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText value="EDP (in Rs.)" />
									</f:facet>
									<center>
										<h:inputText id="edp"
											value="#{list.edp_dt}"
											class="form-control"
											valueChangeListener="#{brandFinancialDetailsAction.edpChange}">
											<a4j:support event="onkeyup" ajaxSingle="true"
												reRender="table22" />
										</h:inputText>
									</center>
								</rich:column>

								<rich:column width="7%" style="text-align: center">
									<f:facet name="header">
										<h:outputText value="Duty (in Rs.)" />
									</f:facet>
									<h:inputText class="form-control" id="duty" value="#{list.duty_dt}" />
								</rich:column>

								<rich:column width="7%" style="text-align: center">
									<f:facet name="header">
										<h:outputText value="WS Margin" />
									</f:facet>
									<h:inputText class="form-control" id="ws" value="#{list.wsmargin_dt}" />
								</rich:column>

								<rich:column width="7%" style="text-align: center">
									<f:facet name="header">
										<h:outputText value="Retailer Margin" />
									</f:facet>
									<h:inputText class="form-control" id="ret" value="#{list.retmargin_dt}" />
								</rich:column>




								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText value="Calculated MRP">
										</h:outputText>
									</f:facet>

									<h:inputText class="form-control" id="mrp" value="#{list.mrp_dt}" />
								</rich:column>
								
								
								
								<rich:column width="7%">
									<f:facet name="header">
										<h:outputText value="Rounded MRP">
										</h:outputText>
									</f:facet>

									<h:inputText class="form-control" id="rounded_mrp" value="#{list.total_rounded_dt}" />
								</rich:column>

							

								<rich:column width="7%" style="text-align: center"
									rendered="#{brandFinancialDetailsAction.radioType eq 'SIUP' or brandFinancialDetailsAction.radioType eq 'FL2A' or brandFinancialDetailsAction.radioType eq 'BWFL'}">
									<f:facet name="header">
										<h:outputText value="Additional Duty" />
									</f:facet>
									<h:inputText class="form-control" id="adduty" value="#{list.addDuty_dt}" />
								</rich:column>

																						
								<rich:column width="7%" style="text-align: center"
									rendered="#{brandFinancialDetailsAction.radioType eq 'BWFL' or brandFinancialDetailsAction.radioType eq 'FL2D'}">
									<f:facet name="header">
										<h:outputText value="Permit Fee" />
									</f:facet>
									<h:inputText class="form-control" value="#{list.permitFee_dt}" />
								</rich:column>

								<rich:column width="7%" style="text-align: center"
									rendered="#{brandFinancialDetailsAction.radioType eq 'EXPORT'}">
									<f:facet name="header">
										<h:outputText value="Export Fee" />
									</f:facet>
									<h:inputText class="form-control" value="#{list.exportFee_dt}" />
								</rich:column>


	
							</rich:dataTable>

						</div>
						<div class="row">
						<rich:spacer height="20px"></rich:spacer><br/>
							<h:commandButton value="Save" style="width:100px; height:40px; "
								action="#{brandFinancialDetailsAction.saveDetails}"
								
								styleClass="btn btn-sm btn-success">
							</h:commandButton>

						</div>
					</div>
				</h:panelGroup>
				<br /> <br />

				<div class="row" align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>



			</div>
		</h:form>

	</f:view>
</ui:composition>