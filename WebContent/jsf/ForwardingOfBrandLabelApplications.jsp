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
													<h:outputText value="Approval Of Brand Label Applications"
														style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Monotype Corsiva;">
													</h:outputText>
													<h:inputHidden
														value="#{forwardingOfBrandLabelApplicationsAction.hidden}" />
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

				<h:panelGroup
					rendered="#{forwardingOfBrandLabelApplicationsAction.hideDataTable}">
					<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
						<div class="col-md-12" align="center">
							<h:selectOneRadio
								value="#{forwardingOfBrandLabelApplicationsAction.radioType}"
								valueChangeListener="#{forwardingOfBrandLabelApplicationsAction.radioListener}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="N" itemLabel="New" />
								<f:selectItem itemValue="F" itemLabel="Forwarded" />
								<f:selectItem itemValue="O" itemLabel="Objected" />
								<f:selectItem itemValue="R" itemLabel="Objection Replied" />

								<f:selectItem itemValue="DS"
									itemLabel="Pending For Digital Sign"
									itemDisabled="#{!forwardingOfBrandLabelApplicationsAction.paymentflgFlg and !forwardingOfBrandLabelApplicationsAction.approvingFlg}" />
								<f:selectItem itemValue="A" itemLabel="Approved" />
								<f:selectItem itemValue="PR" itemLabel="Rejected" />

							</h:selectOneRadio>
						</div>
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<div class="row" align="center">
						<div class="col-md-12">
							<rich:dataTable id="table22" rows="10" width="100%"
								value="#{forwardingOfBrandLabelApplicationsAction.displayRegUsers}"
								var="list" headerClass="TableHead" footerClass="TableHead"
								styleClass="DataTable" rowClasses="TableRow1,TableRow2">


								<rich:column>
									<f:facet name="header">
										<h:outputText value="Sr.No">
										</h:outputText>
									</f:facet>
									<h:outputText style="margin-left: 20px;" value="#{list.srNo}"></h:outputText>
								</rich:column>


<rich:column>
									<f:facet name="header">
										<h:outputText value="Nivesh Mitra UnitId">
										</h:outputText>
									</f:facet>
									<h:outputText style="margin-left: 20px;" value="#{list.unit_id_niv}"></h:outputText>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="App. Type" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.renew_new}" />
									</center>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="Brand Type" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.brandtype}" />
									</center>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="Application ID" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.showApplicationID_dt}" />
									</center>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="Application Date">
										</h:outputText>
									</f:facet>
									<h:outputText styleClass="generalExciseStyle"
										value="#{list.appDate_dt}">
									</h:outputText>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="Unit Name" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.unitName_dt}" />
									</center>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="Unit Type" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.unitType_dt}" />
									</center>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="Liquor Category" />
									</f:facet>
									<center>
										<h:outputText styleClass="generalExciseStyle"
											value="#{list.liquorCategory_dt}" />
									</center>
								</rich:column>

								<rich:column id="column3">
									<f:facet name="header">
										<h:outputText value="License Type">
										</h:outputText>
									</f:facet>

									<h:outputText value="#{list.licenseType_dt}"></h:outputText>
								</rich:column>

								<rich:column style="text-align: center">
									<f:facet name="header">
										<h:outputText value="Status" />
									</f:facet>
									<h:outputText value="#{list.status_dt}" />
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="View Application" />
									</f:facet>
									<center>
										<h:commandButton value="View Details"
											actionListener="#{forwardingOfBrandLabelApplicationsAction.viewDetails}"
											styleClass="btn btn-sm btn-primary">
										</h:commandButton>
										<h:commandButton
											actionListener="#{forwardingOfBrandLabelApplicationsAction.reopen}"
											value="Reopen" styleClass="btn btn-success btn-sm"
											onclick="return confirm('ALERT : The application will be Reopen. Do you wish to continue?');"
											rendered="#{list.licenseDate ne null and forwardingOfBrandLabelApplicationsAction.radioType eq 'A' and forwardingOfBrandLabelApplicationsAction.paymentflgFlg  or list.licenseDate ne null and  forwardingOfBrandLabelApplicationsAction.radioType eq 'DS' and forwardingOfBrandLabelApplicationsAction.paymentflgFlg}">

										</h:commandButton>
										<h:outputLink rendered="#{list.digitalSignPdf}"
											value="/doc/ExciseUp/Applications/pdf//#{list.appID_dt}_ApprovedLicensing_esign.pdf"
											target="_blank">
											<h:outputText value="View Digitally Sign Order">
											</h:outputText>
										</h:outputLink>
									</center>
								</rich:column>

								<rich:column
									rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'DS' and forwardingOfBrandLabelApplicationsAction.paymentflgFlg}">
									<f:facet name="header">
										<h:outputText value="Brand/Label Approval" />
									</f:facet>
									<center>
										<h:commandButton value="Generate Order"
											rendered="#{list.licenseDate eq null}"
											actionListener="#{forwardingOfBrandLabelApplicationsAction.print}"
											styleClass="btn btn-sm btn-info">
										</h:commandButton>
										

										<h:outputLink rendered="#{list.licenseDate ne null}"
											value="/doc/ExciseUp/Applications/pdf//#{list.appID_dt}_ApprovedLicensing.pdf"
											target="_blank">
											<h:outputText value="View Order">
											</h:outputText>
										</h:outputLink>
										<h:outputLink
											value="http://www.upexciseportal.in/DigitalSignature/BrandLabelApprovelOnline.jsp"
											styleClass="btn btn-sm btn-danger"
											rendered="#{list.digitalSignFlag}">
											<h:outputText value="Digital Sign" />
											<f:param name="appid" value="#{list.appID_dt}"></f:param>
											<f:param name="control_id" value="#{list.control_id}"></f:param>
											<f:param name="unit_id" value="#{list.unit_id_niv}"></f:param>
											<f:param name="service_id" value="#{list.serviceId}"></f:param>
											<f:param name="request_id" value="#{list.request_id}"></f:param>

										</h:outputLink>




									</center>




								</rich:column>

								<f:facet name="footer">
									<rich:datascroller for="table22"></rich:datascroller>
								</f:facet>
							</rich:dataTable>

						</div>
					</div>
				</h:panelGroup>
				<br /> <br />
				<div class="container-fuild">
					<h:panelGroup
						rendered="#{forwardingOfBrandLabelApplicationsAction.viewPanelFlg}">
						<div class="row" align="center" style="background-color: #e6ffff">
							<div class="col-md-12">
								<h:outputText
									value=" Renew/New.:#{forwardingOfBrandLabelApplicationsAction.renew_new } ,  Application No.:#{forwardingOfBrandLabelApplicationsAction.showApplicationID} For #{forwardingOfBrandLabelApplicationsAction.unitName} "
									style="COLOR: #2952a3; font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
								<rich:spacer width="10px"></rich:spacer>


								<rich:spacer width="10px"></rich:spacer>
								<a4j:commandButton
									rendered="#{forwardingOfBrandLabelApplicationsAction.objHistoryFlg}"
									value="View Objection History"
									oncomplete="#{rich:component('popup3')}.show()"
									styleClass="btn btn-warning btn-sm" />
							</div>
						</div>
						<div class="row" align="center">

							<rich:spacer height="20px" />
						</div>
						<div
							style="border: 1px solid black; padding-bottom: 10px; padding-top: 10px; padding-left: 10px; padding-right: 10px; margin-left: 5px; margin-right: 5px; border-radius: 4px;">
							<div class="row">
								<table align="center" width="100%;">
									<tr style="width: 100%">
										<td colspan="4"><h:outputLabel value="Basic Detail : "
												style="FONT-WEIGHT: bold; COLOR: #0000ff; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
										</td>
									</tr>


									<tr>
										<td style="width: 100px; padding: 8px 16px;"><h:outputText
												value="Application Date :" style="FONT-WEIGHT: bold;" /></td>
										<td style="width: 200px; padding: 8px 16px;"><h:inputText
												disabled="true" styleClass="inputtext"
												value="#{forwardingOfBrandLabelApplicationsAction.appDate}">
											</h:inputText></td>
									</tr>
									<tr>
										<rich:spacer height="5px;"></rich:spacer>
									</tr>

									<tr>
										<td style="width: 100px; padding: 8px 16px;"><h:outputText
												value=" Unit Name :" style="FONT-WEIGHT: bold;" /></td>
										<td style="width: 200px; padding: 8px 16px;"><h:inputTextarea
												styleClass="textarea1" disabled="true"
												value="#{forwardingOfBrandLabelApplicationsAction.unitName}">

											</h:inputTextarea></td>

										<td
											style="width: 110px; text-align: center; padding: 8px 16px;"><h:outputText
												value="Unit Address :" style="FONT-WEIGHT: bold;" /></td>

										<td style="width: 200px; padding: 8px 16px;"><h:inputTextarea
												styleClass="textarea1" disabled="true"
												value="#{forwardingOfBrandLabelApplicationsAction.unitAddress}">

											</h:inputTextarea></td>

										<td
											style="width: 110px; text-align: center; padding: 8px 16px;"><h:outputText
												value="Unit Type :" style="FONT-WEIGHT: bold;" /></td>

										<td style="width: 200px; padding: 8px 16px;"><h:inputText
												disabled="true" styleClass="inputtext"
												value="#{forwardingOfBrandLabelApplicationsAction.unitType}"></h:inputText></td>
									</tr>
									<tr>
										<rich:spacer height="5px;"></rich:spacer>
									</tr>

									<tr>
										<td colspan="6" align="center"></td>

									</tr>

									<tr>
										<rich:spacer height="5px;"></rich:spacer>
									</tr>






									<tr>
										<td style="width: 100px; padding: 8px 16px;"><h:outputText
												value="Liqour Type :" style="FONT-WEIGHT: bold;" /></td>
										<td style="width: 200px; padding: 8px 16px;"><h:inputText
												disabled="true" styleClass="inputtext"
												value="#{forwardingOfBrandLabelApplicationsAction.liquorCategory}">
											</h:inputText></td>
										<td
											style="width: 110px; text-align: center; padding: 8px 16px;"><h:outputText
												value="License Type :" style="FONT-WEIGHT: bold;" /></td>
										<td style="width: 200px; padding: 8px 16px;"><h:inputText
												disabled="true" styleClass="inputtext"
												value="#{forwardingOfBrandLabelApplicationsAction.licenseType}" /></td>
										<td
											style="width: 110px; text-align: center; padding: 8px 16px;"><h:outputText
												value="Domain :" style="FONT-WEIGHT: bold;" /></td>
										<td style="width: 200px; padding: 8px 16px;"><h:inputText
												disabled="true" styleClass="inputtext"
												value="#{forwardingOfBrandLabelApplicationsAction.userDomain}"
												maxlength="10" /></td>

									</tr>





									<tr>
										<rich:spacer height="5px;"></rich:spacer>
									</tr>
								</table>
								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>
								<div class="row">
									<div class="col-md-12">
										<h:outputLabel
											value="#{forwardingOfBrandLabelApplicationsAction.brandtext}"
											style="color:green; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>


									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<h:outputLabel rendered="#{forwardingOfBrandLabelApplicationsAction.brnd_reg_in_20_21 eq 'YES'}"
											value="This Brand is already registered for 2020-21 and only label is to be changed/Added !"
											style="color:green; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>


									</div>
								</div>
								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>
								<div class="row">
									<div class="col-md-12">
										<h:outputLabel value="Brand Challan Details : "
											style="TEXT-DECORATION: underline; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
									</div>
									<div class="row" align="center">
										<rich:spacer height="10px"></rich:spacer>
									</div>
									<div class="row" align="center">
										<div class="col-md-12">




											<rich:dataTable id="table3p" width="100%"
												value="#{forwardingOfBrandLabelApplicationsAction.brandChallaList}"
												var="list1" headerClass="TableHead" footerClass="TableHead"
												styleClass="DataTable" rowClasses="TableRow1,TableRow2"
												style=" height : 78px;">


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Sr.No">
														</h:outputText>
													</f:facet>
													<h:outputText style="margin-left: 20px;"
														value="#{list1.brandSrNo}"></h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>
												<rich:column>
													<f:facet name="header">
														<h:outputText value="Challan Date">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list1.brandChallan_dt}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Challan Id">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list1.brandChallan_id}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>
												<rich:column>
													<f:facet name="header">
														<h:outputText value="Challan">
														</h:outputText>
													</f:facet>
													<h:outputLink value="#{list1.brandChallan_pdf}"
														target="_blank">
														<h:outputText styleClass="outputText" value="View pdf"
															style="color: blue; font-family: serif; font-size: 12px"></h:outputText>
													</h:outputLink>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>
											</rich:dataTable>

										</div>
									</div>

									<rich:spacer height="30px">
									</rich:spacer>
									<div class="col-md-12">
										<h:outputLabel value="Brand and Package Details : "
											style="TEXT-DECORATION: underline; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
									</div>
									<div class="row" align="center">
										<rich:spacer height="10px"></rich:spacer>
									</div>
									<div class="row">
										<h:outputText
											value="Total Brand Fee : #{forwardingOfBrandLabelApplicationsAction.brndchallanfee}"
											style="COLOR: #000080; font-family: serif; font-size: 18px"></h:outputText>


									</div>
									<div class="row" align="center">
										<div class="col-md-12">
											<rich:dataTable id="table2p" width="100%"
												value="#{forwardingOfBrandLabelApplicationsAction.displayLabelDetails}"
												var="list" headerClass="TableHead" footerClass="TableHead"
												styleClass="DataTable" rowClasses="TableRow1,TableRow2"
												style=" height : 78px;">


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Sr.No">
														</h:outputText>
													</f:facet>
													<h:outputText style="margin-left: 20px;"
														value="#{list.srNo}"></h:outputText>
													<f:facet name="footer">
														<h:outputText value="Total"
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>
												<rich:column>
													<f:facet name="header">
														<h:outputText value="Brand Name">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list.brandnam}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Brand Strength">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list.brndstrength}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>

												<rich:column>
													<f:facet name="header">
														<h:outputText value="For Civil/CSD">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list.forcivil}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Liqour Sub Type">
														</h:outputText>
													</f:facet>

													<h:selectOneMenu styleClass="dropdown-menu" id="menu"
														disabled="#{forwardingOfBrandLabelApplicationsAction.radioType ne 'DS' or forwardingOfBrandLabelApplicationsAction.approvingFlg}"
														value="#{list.subtype}" style=" width : 130px;">
														<f:selectItem itemValue="NA" itemLabel="NA" />
														<f:selectItem itemValue="1" itemLabel="Economy" />
														<f:selectItem itemValue="2" itemLabel="Regular" />
														<f:selectItem itemValue="3" itemLabel="Medium" />
														<f:selectItem itemValue="4" itemLabel="Scotch" />
														<f:selectItem itemValue="6" itemLabel="Premium" />
														<f:selectItem itemValue="7" itemLabel="Super Premium" />
														<f:selectItem itemValue="8" itemLabel="Mild" />
														<f:selectItem itemValue="9" itemLabel="Strong" />
														<f:selectItem itemValue="10" itemLabel="Plain" />
														<f:selectItem itemValue="11" itemLabel="Masala" />
														<f:selectItem itemValue="14" itemLabel="Gin" />
														<f:selectItem itemValue="15" itemLabel="Vodka" />
														<f:selectItem itemValue="16" itemLabel="Wine" />
														<f:selectItem itemValue="17" itemLabel="Whisky" />
														<f:selectItem itemValue="18" itemLabel="Brandy" />
														<f:selectItem itemValue="19" itemLabel="Rum" />
														<f:selectItem itemValue="21" itemLabel="LAB" />
													</h:selectOneMenu>
													<h:commandButton
														action="#{forwardingOfBrandLabelApplicationsAction.updatesubtype}"
														value="Update" styleClass="btn btn-success btn-sm"
														rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'DS' and forwardingOfBrandLabelApplicationsAction.paymentflgFlg}">

														<f:setPropertyActionListener value="#{list}"
															target="#{forwardingOfBrandLabelApplicationsAction.dt }" />

													</h:commandButton>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>


												<rich:column>
													<f:facet name="header">
														<h:outputText
															value="Whether this brand is already registered for Civil">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list.yesno}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>


												<rich:column>
													<f:facet name="header">
														<h:outputText value="Size(ml)">
														</h:outputText>
													</f:facet>
													<h:outputText styleClass="generalExciseStyle"
														value="#{list.size_dt}">
													</h:outputText>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>

												<rich:column>
													<f:facet name="header">
														<h:outputText value="Package Type" />
													</f:facet>
													<center>
														<h:outputText styleClass="generalExciseStyle"
															value="#{list.pckgType_dt}" />
													</center>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>

												<rich:column>
													<f:facet name="header">
														<h:outputText value="Number of labels" />
													</f:facet>
													<center>
														<h:outputText styleClass="generalExciseStyle"
															value="#{list.nmbrOfLabels_dt}" />
													</center>
													<f:facet name="footer">
														<h:outputText id="totalnum"
															value="#{forwardingOfBrandLabelApplicationsAction.total_no_labels}"
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>

												<rich:column
													rendered="#{forwardingOfBrandLabelApplicationsAction.feeflg ne 'T'}">
													<f:facet name="header">
														<h:outputText value="Label Fees(Rs)" />
													</f:facet>
													<center>
														<h:outputText styleClass="generalExciseStyle"
															value="#{list.feeslable}" />
													</center>
													<f:facet name="footer">

													</f:facet>
												</rich:column>
												<rich:column  rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.delete_brand_pack eq 'T'}">
													<f:facet name="header">
														<h:outputText value="">
														</h:outputText>
													</f:facet>

													
													<h:commandButton
													onclick="return confirm('ALERT : This Brand will be deleted. Do you wish to continue?');"
														action="#{forwardingOfBrandLabelApplicationsAction.delete_brand}"
														value="Delete Brand" styleClass="btn btn-danger btn-sm" >

														<f:setPropertyActionListener value="#{list}"
															target="#{forwardingOfBrandLabelApplicationsAction.dt }" />

													</h:commandButton>
													<h:commandButton
													onclick="return confirm('ALERT : This Package will be deleted. Do you wish to continue?');"
														action="#{forwardingOfBrandLabelApplicationsAction.delete_package}"
														value="Delete Package" styleClass="btn btn-danger btn-sm" >

														<f:setPropertyActionListener value="#{list}"
															target="#{forwardingOfBrandLabelApplicationsAction.dt }" />

													</h:commandButton>
													<f:facet name="footer">
														<h:outputText value=""
															styleClass="generalHeaderOutputTable" />
													</f:facet>
												</rich:column>









											</rich:dataTable>

										</div>
									</div>

								</div>
								<div class="row">
									<rich:spacer height="10px"></rich:spacer>
								</div>
								<div class="col-md-12">
									<h:outputLabel value="Label Challan Details : "
										style="TEXT-DECORATION: underline; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
								</div>
								<div class="row" align="center">
									<div class="col-md-12">




										<rich:dataTable id="table5p" width="100%"
											value="#{forwardingOfBrandLabelApplicationsAction.labelChallanList}"
											var="list1" headerClass="TableHead" footerClass="TableHead"
											styleClass="DataTable" rowClasses="TableRow1,TableRow2"
											style=" height : 78px;">


											<rich:column>
												<f:facet name="header">
													<h:outputText value="Sr.No">
													</h:outputText>
												</f:facet>
												<h:outputText style="margin-left: 20px;"
													value="#{list1.labelSrNo}"></h:outputText>
												<f:facet name="footer">
													<h:outputText value=""
														styleClass="generalHeaderOutputTable" />
												</f:facet>
											</rich:column>
											<rich:column>
												<f:facet name="header">
													<h:outputText value="Challan Date">
													</h:outputText>
												</f:facet>
												<h:outputText styleClass="generalExciseStyle"
													value="#{list1.labelChallan_dt}">
												</h:outputText>
												<f:facet name="footer">
													<h:outputText value=""
														styleClass="generalHeaderOutputTable" />
												</f:facet>
											</rich:column>


											<rich:column>
												<f:facet name="header">
													<h:outputText value="Challan Id">
													</h:outputText>
												</f:facet>
												<h:outputText styleClass="generalExciseStyle"
													value="#{list1.labelChallan_id}">
												</h:outputText>
												<f:facet name="footer">
													<h:outputText value=""
														styleClass="generalHeaderOutputTable" />
												</f:facet>
											</rich:column>
											<rich:column>
												<f:facet name="header">
													<h:outputText value="Challan">
													</h:outputText>
												</f:facet>
												<h:outputLink value="#{list1.labelChallan_pdf}"
													target="_blank">
													<h:outputText styleClass="outputText" value="View pdf"
														style="color: blue; font-family: serif; font-size: 12px"></h:outputText>
												</h:outputLink>
												<f:facet name="footer">
													<h:outputText value=""
														styleClass="generalHeaderOutputTable" />
												</f:facet>
											</rich:column>
										</rich:dataTable>

									</div>
								</div>
								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>

								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>
								<div class="row">
									<div class="col-md-12">
										<h:outputLabel value="Uploaded Labels  "
											style="TEXT-DECORATION: underline; FONT-WEIGHT: bold;   FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
									</div>
									<rich:spacer height="30px">
									</rich:spacer>
									<div class="row">
										<h:outputText
											rendered="#{forwardingOfBrandLabelApplicationsAction.feeflg ne 'T'}"
											value="Total Label Fee : #{forwardingOfBrandLabelApplicationsAction.labelchallanfee}"
											style="COLOR: #000080; font-family: serif; font-size: 18px"></h:outputText>


									</div>

									<div class="row">
										<rich:dataTable id="table3" rows="10" width="100%"
											value="#{forwardingOfBrandLabelApplicationsAction.showUploadedLabels}"
											var="list" headerClass="TableHead" footerClass="TableHead"
											rowClasses="TableRow1,TableRow2">



											<rich:column>
												<f:facet name="header">
													<h:outputText value="Sr. No."
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>
												<h:outputText value="#{list.showUploadedSrNo}"
													styleClass="generalHeaderStyleOutput">
												</h:outputText>
											</rich:column>

											<rich:column>
												<f:facet name="header">
													<h:outputText value="Size(ml)"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>
												<h:outputText value="#{list.showsize}"
													styleClass="generalHeaderStyleOutput">
												</h:outputText>
											</rich:column>



											<rich:column>
												<f:facet name="header">
													<h:outputText value="Label Description"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>
												<h:outputText value="#{list.showUploadedDescription}"
													styleClass="generalHeaderStyleOutput">
												</h:outputText>
											</rich:column>


											<rich:column>
												<f:facet name="header">
													<h:outputText value="Labels"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>

												<h:outputLink target="_blank"
													value="#{list.showUploadedImage}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>

											<rich:column>
												<f:facet name="header">
													<h:outputText value="Affidavit"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>

												<h:outputLink target="_blank"
													value="#{list.showUploadedAffidavit}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>
											<rich:column
												rendered="#{forwardingOfBrandLabelApplicationsAction.renew_new eq  'Renew'}">
												<f:facet name="header">

													<h:outputText value="2019-20 Brand Approval Letter"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>

												<h:outputLink target="_blank" value="#{list.showUploadedBR}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>

											<rich:column
												rendered="#{forwardingOfBrandLabelApplicationsAction.renew_new ne  'Renew'}">
												<f:facet name="header">
													<h:outputText value="Trademark Registration"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>

												</f:facet>

												<h:outputLink target="_blank" value="#{list.showUploadedBR}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>
											<rich:column
												rendered="#{forwardingOfBrandLabelApplicationsAction.renew_new ne  'Renew' and forwardingOfBrandLabelApplicationsAction.licenseType eq 'FL2D'}">
												<f:facet name="header">
													<h:outputText value="Authorization of Brand ownership"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>

												</f:facet>

												<h:outputLink target="_blank"
													value="#{list.showUploadedManualRcpt}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>
											<rich:column
												rendered="#{forwardingOfBrandLabelApplicationsAction.renew_new ne  'Renew' and forwardingOfBrandLabelApplicationsAction.licenseType ne 'FL2D'}">
												<f:facet name="header">
													<h:outputText value="Certificate of Brand ownership"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>

												</f:facet>

												<h:outputLink target="_blank"
													value="#{list.showUploadedManualRcpt}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>
											<rich:column
												rendered="#{forwardingOfBrandLabelApplicationsAction.renew_new eq  'Renew'}">
												<f:facet name="header">

													<h:outputText value="2019-20 Label Approval"
														style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
													</h:outputText>
												</f:facet>

												<h:outputLink target="_blank"
													value="#{list.showUploadedManualRcpt}">

													<h:graphicImage value="/img/download.gif"
														alt="view document" style="width : 60px; height : 35px;"></h:graphicImage>
												</h:outputLink>


											</rich:column>

											<f:facet name="footer">
												<rich:datascroller for="table3"></rich:datascroller>
											</f:facet>
										</rich:dataTable>
									</div>
								</div>
								<div class="row">
									<rich:spacer height="10px"></rich:spacer>
								</div>
							</div>
						</div>
					</h:panelGroup>

				</div>
				<div class="row" align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>

				<h:panelGroup
					rendered="#{forwardingOfBrandLabelApplicationsAction.viewPanelFlg}">
					<div class="row" align="center" style="BACKGROUND-COLOR: #c5cfe5;">
						<div class="row" align="center">
							<rich:spacer height="10px"></rich:spacer>
						</div>
						<div class="col-md-12" align="center">
							<h:outputLabel value="Users Remark : "
								style="FONT-WEIGHT: bold; COLOR: #061f56; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
						</div>
						<div class="col-md-12">
							<div class="col-md-3" align="right">

								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.user1Remark ne 'NA'}"
										value="*#{forwardingOfBrandLabelApplicationsAction.user1Name} Remark :" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.user1Remark ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user1Remark}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>
						<div class="col-md-12">
							<div class="col-md-3" align="right">
								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.user2Remark ne 'NA' }"
										value="* Excise-DEC-Licence Remark:" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.user2Remark ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user2Remark}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>




						<div class="col-md-12">
							<div class="col-md-3" align="right">

								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.user3Remark ne 'NA' }"
										value="* Excise-JCHQ Remark:" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.user3Remark ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user3Remark}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>

						<div class="col-md-12">
							<div class="col-md-3" align="right">

								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.user4Remark ne 'NA' }"
										value="* Excise-AC-License Remark:" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.user4Remark ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user4Remark}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>

						<div class="col-md-12">
							<div class="col-md-3" align="right">

								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.reverflg and forwardingOfBrandLabelApplicationsAction.user4Remark_dtrevert ne 'NA' }"
										value="* Excise-AC-License Revert Remark:" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.reverflg and forwardingOfBrandLabelApplicationsAction.user4Remark_dtrevert ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user4Remark_dtrevert}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>

						<div class="col-md-12">
							<div class="col-md-3" align="right">

								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.user5Remark ne 'NA' }"
										value="* Excise-Commissioner Remark:" /></b>
							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea
									rendered="#{forwardingOfBrandLabelApplicationsAction.user5Remark ne 'NA' }"
									value="#{forwardingOfBrandLabelApplicationsAction.user5Remark}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
							</div>


						</div>

						<div class="col-md-12">
							<div class="col-md-3" align="right">
								<b><h:outputText
										rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N'}"
										value="Remarks::" /></b>

							</div>
							<div class="col-md-7" align="left">
								<h:inputTextarea style="width: 100%; height : 28px;"
									styleClass="form-control"
									rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N'}"
									value="#{forwardingOfBrandLabelApplicationsAction.fillRemrks}">
								</h:inputTextarea>
							</div>

						</div>

						<div class="col-md-12" style="height: 15px"></div>
					</div>
					<div class="row" align="center">
						<rich:spacer height="10px"></rich:spacer>
					</div>
					<h:panelGroup
						rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.checkBoxFlg and forwardingOfBrandLabelApplicationsAction.renew_new ne  'Renew'}">
						<div class="row" style="BACKGROUND-COLOR: #e6ffff;">

							<div class="row" align="center">
								<rich:spacer height="10px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputLabel value="Confirmation for Physical Data : "
									style="FONT-WEIGHT: bold; COLOR: #003399; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
							</div>
							<div class="row" align="center">
								<rich:spacer height="10px"></rich:spacer>
							</div>

							<div class="col-md-12">
								<div class="col-md-3" align="right">
									<b>* Physical Recieving Date :</b>
								</div>
								<div class="col-md-7" align="left">
									<rich:calendar
										value="#{forwardingOfBrandLabelApplicationsAction.physicalRcvdate}">
									</rich:calendar>
								</div>


							</div>


							<div class="col-md-12" style="height: 15px"></div>
							<div class="col-md-12">
								<div class="col-md-3" align="right"></div>
								<div class="col-md-7" align="left">
									<h:selectBooleanCheckbox
										rendered="#{forwardingOfBrandLabelApplicationsAction.checkBoxFlg}"
										value="#{forwardingOfBrandLabelApplicationsAction.checkBox}"
										id="chkRememberMe" />
									<h:outputText
										value="I verify that the labels uploaded have been recieved physically."
										styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>

								</div>

							</div>

							<div class="col-md-12" style="height: 15px"></div>
						</div>
					</h:panelGroup>
					
					<a4j:outputPanel rendered="#{forwardingOfBrandLabelApplicationsAction.control_id ne 'NA' and forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.approvingFlg}">
<div class="row" align="center">
						
						<div class="col-md-4"></div>
						<div class="col-md-2">
						<h:outputText value="Select Reason"></h:outputText>
						</div>
						
						<div class="col-md-2">
						<h:selectOneMenu value="#{forwardingOfBrandLabelApplicationsAction.objectionRejectionCode}" styleClass="form-control">
						<f:selectItems value="#{forwardingOfBrandLabelApplicationsAction.rejectionList}"/>
						</h:selectOneMenu>
						</div>
						<div class="col-md-4"></div>
						</div>
					</a4j:outputPanel>
					
					<div class="row" align="center">
						<rich:spacer height="10px"></rich:spacer>
					</div>
					<div class="row" align="center">




						<h:commandButton value="Forward"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and !forwardingOfBrandLabelApplicationsAction.approvingFlg}"
							styleClass="btn btn-success btn-sm"
							disabled="#{forwardingOfBrandLabelApplicationsAction.disableObjRaisedFlg}"
							action="#{forwardingOfBrandLabelApplicationsAction.forwardApplication}" />

						<h:commandButton value="Close" styleClass="btn btn-default btn-sm"
							action="#{forwardingOfBrandLabelApplicationsAction.closeApplication}" />

						<h:commandButton value="Approve"
							onclick="return confirm('ALERT : The application will be approved. Do you wish to continue?');"
							styleClass="btn btn-success btn-sm"
							disabled="#{forwardingOfBrandLabelApplicationsAction.disableObjRaisedFlg }"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.approvingFlg}"
							action="#{forwardingOfBrandLabelApplicationsAction.approveApplication}" />



						<h:commandButton value="Reject"
							onclick="return confirm('ALERT : The application will be rejected. Do you wish to continue?');"
							action="#{forwardingOfBrandLabelApplicationsAction.rejectApplication}"
							styleClass="btn btn-danger btn-sm"
							disabled="#{forwardingOfBrandLabelApplicationsAction.disableObjRaisedFlg}"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.approvingFlg}" />
<h:panelGroup rendered="#{ forwardingOfBrandLabelApplicationsAction.rais_flg eq 'T'}" >
						<a4j:commandButton value="Raise Objection"
							disabled="#{forwardingOfBrandLabelApplicationsAction.disableObjRaisedFlg and  !forwardingOfBrandLabelApplicationsAction.objRplyFlg or forwardingOfBrandLabelApplicationsAction.control_id ne 'NA' and forwardingOfBrandLabelApplicationsAction.raise_query_flg eq 'T'}"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and !forwardingOfBrandLabelApplicationsAction.objRplyFlg}"
							oncomplete="#{rich:component('popup')}.show()"
							styleClass="btn btn-sm btn-primary" />
							 </h:panelGroup>
						<a4j:commandButton value="View Objection Reply"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'R' and forwardingOfBrandLabelApplicationsAction.objRplyFlg}"
							oncomplete="#{rich:component('popup4')}.show()"
							styleClass="btn btn-sm btn-primary" />

						<a4j:commandButton value="Revert Back"
							styleClass="btn btn-warning btn-sm"
							disabled="#{forwardingOfBrandLabelApplicationsAction.disableObjRaisedFlg}"
							rendered="#{forwardingOfBrandLabelApplicationsAction.radioType eq 'N' and forwardingOfBrandLabelApplicationsAction.revertFlg}"
							oncomplete="#{rich:component('popupRvrt')}.show()" />


					</div>
					<div class="row" align="center">
						<rich:spacer height="10px"></rich:spacer>
					</div>



				</h:panelGroup>

			</div>
		</h:form>


		<rich:modalPanel id="popup" minWidth="600" autosized="true">
			<f:facet name="header">
				<h:outputText value="Raise Objection" />
			</f:facet>
			<h:form>

				<div class="col-md-12">
					<div class="col-md-3">
						<b>Objection Title</b>
					</div>
					<div class="col-md-7">
						<h:inputText
							value="#{forwardingOfBrandLabelApplicationsAction.objection_for}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputText>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Description</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea
							value="#{forwardingOfBrandLabelApplicationsAction.obj_Description}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>

				<div class="col-md-12">
					<h:commandButton value="Save" styleClass="btn btn-success btn-sm"
						action="#{forwardingOfBrandLabelApplicationsAction.submit_objection}"></h:commandButton>

					<a4j:commandButton value="Close" styleClass="btn btn-danger btn-sm"
						oncomplete="#{rich:component('popup')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>





		<rich:modalPanel id="popup4" minWidth="600" autosized="true">
			<f:facet name="header">
				<h:outputText value="View Reply" />
			</f:facet>
			<h:form>
				<h:inputHidden
					value="#{forwardingOfBrandLabelApplicationsAction.popup4Hidden}"></h:inputHidden>
				<div class="col-md-12">
					<div class="col-md-3">
						<b>Objected for</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea disabled="true"
							value="#{forwardingOfBrandLabelApplicationsAction.popup4ObjectedFor}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Action Taken</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea disabled="true"
							value="#{forwardingOfBrandLabelApplicationsAction.popup4ActionTaken}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Uploaded pdf</b>
					</div>
					<div class="col-md-7">

						<h:outputLink target="_blank"
							rendered="#{forwardingOfBrandLabelApplicationsAction.viewpdfFlg}"
							value="#{forwardingOfBrandLabelApplicationsAction.popup4ObjectedPdf}">

							<h:graphicImage value="/img/download.gif" alt="view document"
								style="width : 60px; height : 35px;"></h:graphicImage>
						</h:outputLink>

						<h:outputText value="No PDF Uploaded"
							style="color: blue; font-family: serif; font-size: 12pt"
							rendered="#{!forwardingOfBrandLabelApplicationsAction.viewpdfFlg}">

						</h:outputText>

					</div>
				</div>


				<div class="col-md-12">
					<h:commandButton value="Accept" styleClass="btn btn-success btn-sm"
						action="#{forwardingOfBrandLabelApplicationsAction.agreeReply}"></h:commandButton>

					<h:commandButton value="Decline" styleClass="btn btn-danger btn-sm"
						action="#{forwardingOfBrandLabelApplicationsAction.declineReply}"></h:commandButton>

					<a4j:commandButton value="Close"
						styleClass="btn btn-default btn-sm"
						oncomplete="#{rich:component('popup4')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>
		<rich:modalPanel id="popup3" minWidth="1000" autosized="true">
			<f:facet name="header">
				<h:outputText value="Objection History..." />

			</f:facet>

			<h:form>


				<div class="col-md-12">


					<rich:dataTable id="table3" rows="10" width="100%"
						value="#{forwardingOfBrandLabelApplicationsAction.showObjection}"
						var="list" headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2">


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Objected By"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.object_by}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Description"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.description}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Objection Date"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.object_date}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Action Taken"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.action_taken}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Action Date"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.action_dt}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Uploaded Documents"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>

							<h:outputLink target="_blank"
								rendered="#{list.upload_objected_flag==true}"
								value="#{list.upload_objected_docs}">

								<h:graphicImage value="/img/download.gif" alt="view document"
									style="width : 60px; height : 35px;"></h:graphicImage>
							</h:outputLink>

							<h:outputText value="No PDF Uploaded"
								rendered="#{list.upload_objected_flag==false}">

							</h:outputText>


						</rich:column>

					</rich:dataTable>

				</div>

				<div class="col-md-12" align="center">


					<a4j:commandButton value="Close" styleClass="btn btn-danger btn-sm"
						oncomplete="#{rich:component('popup3')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>

		<rich:modalPanel id="popupRvrt" minWidth="600" autosized="true">
			<f:facet name="header">
				<h:outputText value="Revert Back" />
			</f:facet>
			<h:form>

				<div class="col-md-12">
					<div class="col-md-3">
						<b>*Comment</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea
							value="#{forwardingOfBrandLabelApplicationsAction.rvrtCmntPopup}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>

				<div class="col-md-12">
					<h:commandButton value="Save" styleClass="btn btn-success"
						onclick="return confirm('ALERT : The application will be reverted back. Do you wish to continue?');"
						action="#{forwardingOfBrandLabelApplicationsAction.saveRvrtCmnt}"></h:commandButton>

					<a4j:commandButton value="Close" styleClass="btn btn-danger"
						oncomplete="#{rich:component('popupRvrt')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>


	</f:view>
</ui:composition>