<ui:composition xmlns="http://www.w3.org/1999/xhtml"
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

.table {
	box-shadow: 1px 1px 15px grey;
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



		<h:form>
			<div class="form-group">
				<div class="row " align="center">
					<rich:spacer height="30px"></rich:spacer>
				</div>
				<div class="row" align="right">
					<a href="/portal/Home/Home"> <h:outputText
							styleClass="btn btn-info btn-sm" value=" Back To Home"
							style="COLOR: #ffffff; BACKGROUND-COLOR: #0080c0; ;font-size: 1em;"></h:outputText>

					</a>
				</div>

				<div class="row">
					<div class="col-md-12 wow shake">
						<h:messages errorStyle="color:red" layout="TABLE" id="messages1"
							infoStyle="color:green"
							style="font-size:20px; background-color:#e1fcdf; font-weight: bold">
						</h:messages>

					</div>
				</div>







				<div class="row">
					<div align="center">
						<h:inputHidden
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.hidden}"></h:inputHidden>
						<h1>

							<h:outputText value="Approval for MRP 2022-23"
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
				<h:panelGroup
					rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.viewPanelFlg}">
					<div align="center">

						<h:selectOneRadio onchange="this.form.submit();"
							rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'T' and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'F'}"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio}"
							valueChangeListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.clickRadio}">

							<f:selectItem itemValue="N" itemLabel="New Application" />
							<f:selectItem itemValue="F" itemLabel="Forwarded" />
							<f:selectItem itemValue="A" itemLabel="Approved" />
							<f:selectItem itemValue="RJ" itemLabel="Rejected" />



						</h:selectOneRadio>
						<h:selectOneRadio onchange="this.form.submit();"
							rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'T' and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'T'}"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio}"
							valueChangeListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.clickRadio}">

							<f:selectItem itemValue="N" itemLabel="New Application" />
							<f:selectItem itemValue="DS" itemLabel="Pending For Digital Sign" />
							<f:selectItem itemValue="A" itemLabel="Approved" />
							<f:selectItem itemValue="RJ" itemLabel="Rejected" />



						</h:selectOneRadio>


						<h:selectOneRadio onchange="this.form.submit();"
							rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'F'}"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio}"
							valueChangeListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.clickRadio}">

							<f:selectItem itemValue="N" itemLabel="New Application" />
							<f:selectItem itemValue="F" itemLabel="Forwarded" />
							<f:selectItem itemValue="O" itemLabel="Objected" />
							<f:selectItem itemValue="R" itemLabel="Objection Replied" />
							<f:selectItem itemValue="DS" itemLabel="Pending For Digital Sign" />

							<f:selectItem itemValue="A" itemLabel="Approved" />
							<f:selectItem itemValue="RJ" itemLabel="Rejected" />


						</h:selectOneRadio>
					</div>

					<rich:spacer height="10px"></rich:spacer>
					<div align="center">
						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table" width="80%" rows="10"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.applicationList}"
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
								<h:outputText value="#{list.requestid}" />
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
								<h:commandButton value="View"
									actionListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewDetails}"
									styleClass="btn btn-primary">
								</h:commandButton>
								<h:outputLink
									rendered="#{list.digital_sign_date ne null and forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'A'}"
									value="/doc/ExciseUp/LabelRegistration_22_23/Applications/pdf//#{list.requestid}_MRP_APPROVAL_22_23_esign.pdf"
									target="_blank">
									<h:outputText value="View Digitally Sign Order">
									</h:outputText>
								</h:outputLink>


							</rich:column>
							<rich:column
								rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'DS' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'F'}">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:commandButton value="Proceed to Generate Order"
									rendered="#{list.digital_sign_date eq null and list.generate_flg eq 'NA'}"
									actionListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewDetails_update}"
									styleClass="btn btn-sm btn-info">
								</h:commandButton>
								<h:commandButton value="Generate Order"
									rendered="#{list.digital_sign_date eq null and list.generate_flg ne 'NA'}"
									actionListener="#{forwarding_for_MRP_EDP_Approval_22_23Action.print}"
									styleClass="btn btn-info">
								</h:commandButton>

								<h:outputLink
									rendered="#{list.print_flg ne 'NA' and list.digital_sign_date eq null}"
									value="/doc/ExciseUp/LabelRegistration_22_23/Applications/pdf//#{list.requestid}_MRP_APPROVAL_22_23.pdf"
									target="_blank">
									<h:outputText value="View Order">
									</h:outputText>
								</h:outputLink>


								<h:outputLink
									value="https://www.upexciseportal.in/DigitalSignature/Brand_MRP_Approval_22_23.jsp"
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
				</h:panelGroup>

				<div class="row">
					<rich:spacer height="40px"></rich:spacer>
				</div>



				<h:panelGroup
					rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewPanelFlg}">

					<div class="row " align="center">
						<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 100%;">

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value=" Application No.:#{forwarding_for_MRP_EDP_Approval_22_23Action.showApplication_no} and Application Date.:#{forwarding_for_MRP_EDP_Approval_22_23Action.showApplication_date}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />

							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">

								<h:outputText
									value="Unit type.:#{forwarding_for_MRP_EDP_Approval_22_23Action.unit_type}  , Unit Name.:#{forwarding_for_MRP_EDP_Approval_22_23Action.unit_name}  , Domain.:#{forwarding_for_MRP_EDP_Approval_22_23Action.domain} and Civil/CSD.:#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
								<rich:spacer width="20px"></rich:spacer>
								<a4j:commandButton
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.objHistoryFlg}"
									value="View Objection History"
									oncomplete="#{rich:component('popup3')}.show()"
									styleClass="btn btn-warning btn-sm" />
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.check_flg eq 'T'}"
									value="Data is Modified by Unit for Approval" 
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman; color:red" />
									 
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>

							<div class="row" align="center">
								<div class="col-md-12">

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table1"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil' and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL')}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.1" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or  
											forwarding_for_MRP_EDP_Approval_22_23Action.license_type eq 'BWFL2B'  ) 
											and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil'}">
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
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')
											or (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2B'
											  and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unit_type eq 'Bwfl (Civil OutsideUP)'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Import Fee" />
											</f:facet>
											<h:outputText value="#{list.import_bwfl_2a_2b }"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%" 
										rendered="#{((forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B')
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Calculated MRP" />
											</f:facet>
											<h:outputText value="#{list.max_retailmargin_base}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>





										<rich:column width="7%" rendered="#{((forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B')
										and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value=" MRP interms of 10" />
											</f:facet>
											<h:outputText value="#{list.actual_retailmargin_10mult_base}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%" rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type eq 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
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
												<h:outputText styleClass="preformatted" value="Final MRP" />
											</f:facet>

											<h:outputText value="#{list.mrp_bwfl }"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>



										</rich:column>

									</rich:dataTable>

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table2"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD' 
										and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.2" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>
										<rich:column width="7%"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.yes_no eq 'YES'}">
											<f:facet name="header">
												<h:outputText value="Civil DUTY" />
											</f:facet>
											<center>
												<h:outputText value="#{list.civil_duty_base_show }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>


										<rich:column width="7%"
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or 
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type eq 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')) and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD'}">
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
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD') or
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type ne 'WINE' and forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type ne 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}">
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
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%" rendered="false">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Special fee" />
											</f:facet>
											<h:outputText value="#{list.specialfee}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD' 
										and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}"
										>
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Import Fee" />
											</f:facet>
											<h:outputText value="#{list.permit}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>


									</rich:dataTable>
									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table3"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL'}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.3" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
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
							
								 
						 
						  	<rich:column width="4%" rendered="false" >
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

							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText    value="#{list.addnl_duty}"  
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
									<h:outputText  styleClass="preformatted" value="Landed Cost at Wholesale" />
								</f:facet>
								 
								<h:outputText    value="#{list.margin_wholesale }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Retail" />
								</f:facet>
								 
								<h:outputText   value="#{list.margin_of_retailer }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
<rich:column width="4%"     >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:outputText   value="#{list.wholesalemargin}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>
						<rich:column width="4%"    >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Retail Margin" />
								</f:facet>
								 
								<h:outputText    value="#{list.retailmargin}"
									style="COLOR: #0000a0;"  >
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
						
							<rich:column width="4%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText    value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" MRP interms of 10" />
								</f:facet>
								<h:outputText    value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Final MRP" />
								</f:facet>
								 
								<h:outputText    value="#{list.mrp_bwfl}" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>

									</rich:dataTable>
									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table4"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.4" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
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
							<h:panelGroup rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.check_flg eq 'T'}">
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value="Old Data"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman; color:red" />
									 
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							
							<div class="row" align="center"  >
								<div class="col-md-12">

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table11"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil' and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL')}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails1}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.11" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or 
											 forwarding_for_MRP_EDP_Approval_22_23Action.license_type eq 'BWFL2B'  ) 
											 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil'}">
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
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')
											or (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2B' 
											 
											 and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unit_type eq 'Bwfl (Civil OutsideUP)'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Import Fee" />
											</f:facet>
											<h:outputText value="#{list.import_bwfl_2a_2b }"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%" rendered="#{((forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B') and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Calculated MRP" />
											</f:facet>
											<h:outputText value="#{list.max_retailmargin_base}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>





										<rich:column width="7%" rendered="#{((forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B') and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value=" MRP interms of 10" />
											</f:facet>
											<h:outputText value="#{list.actual_retailmargin_10mult_base}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%" rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' and  forwarding_for_MRP_EDP_Approval_22_23Action.license_type eq 'BWFL2C'
										 and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')}">
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
												<h:outputText styleClass="preformatted" value="Final MRP" />
											</f:facet>

											<h:outputText value="#{list.mrp_bwfl }"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>



										</rich:column>

									</rich:dataTable>

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table21"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD' 
										and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails1}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.12" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>
										<rich:column width="7%"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.yes_no eq 'YES'}">
											<f:facet name="header">
												<h:outputText value="Civil DUTY" />
											</f:facet>
											<center>
												<h:outputText value="#{list.civil_duty_base_show }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>


										<rich:column width="7%"
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or 
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type eq 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')) and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD'}">
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
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD') or
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type ne 'WINE' and forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type ne 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}">
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
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>
										<rich:column width="7%" rendered="false">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Special fee" />
											</f:facet>
											<h:outputText value="#{list.specialfee}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>

										<rich:column width="7%" 	rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD' 
										and (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Import Fee" />
											</f:facet>
											<h:outputText value="#{list.permit}"
												style="COLOR: #0000a0;  width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>

										</rich:column>


									</rich:dataTable>
									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table31"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL'}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails1}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.13" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
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

							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText    value="#{list.addnl_duty}"  
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
									<h:outputText  styleClass="preformatted" value="Landed Cost at Wholesale" />
								</f:facet>
								 
								<h:outputText    value="#{list.margin_wholesale }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Retail" />
								</f:facet>
								 
								<h:outputText   value="#{list.margin_of_retailer }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
<rich:column width="4%"     >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:outputText   value="#{list.wholesalemargin}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>
						<rich:column width="4%"    >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Retail Margin" />
								</f:facet>
								 
								<h:outputText    value="#{list.retailmargin}"
									style="COLOR: #0000a0;"  >
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
						
							<rich:column width="4%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText    value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" MRP interms of 10" />
								</f:facet>
								<h:outputText    value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="4%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Final MRP" />
								</f:facet>
								 
								<h:outputText    value="#{list.mrp_bwfl}" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>

									</rich:dataTable>
									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table41"
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.displayBrandDetails1}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.14" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
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
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.category_flg eq 'F'}">
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
 </h:panelGroup>
							<div class="row" align="left">
								<rich:spacer height="30px"></rich:spacer>
							</div>
							
							<div class="col-md-12" align="left">
								<h:outputText rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne  'IUCIVIL'
								 and forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD' }"
									value="Note :- EDP of other State compare with 180ml in case of IMFL ,500ml in case of BEER other cases 750ml ,in case of 
									WINE(Civil) MRP compare with max package Size(ML) and in case of CSD Brand(NOT Wine) EDP compare with 750ml"
									style="FONT-SIZE: x-large; font-family:Times New Roman; color:red" />
									 
							</div>
							<div class="row" align="left">
								<rich:spacer height="30px"></rich:spacer>
							</div>

							<div class="row" align="center">
								<div class="col-md-12">

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table2234" width="50%"
										value="#{forwarding_for_MRP_EDP_Approval_22_23Action.state_list}"
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
											rendered="#{(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil') or 
											(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'BWFL' and forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2B' 
											 
											 and forwarding_for_MRP_EDP_Approval_22_23Action.license_type ne 'BWFL2C'  and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil') or
											(forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'D' and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD') or
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type ne 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')}">
											<f:facet name="header">
												<h:outputText value="EDP" />
											</f:facet>
											<h:outputText value="#{list.edp_state}"
												rendered="#{list.edp_cif_flag eq 'F'}"
												style="COLOR: #0000a0;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<h:outputText value="Not Applicable"
												rendered="#{list.edp_cif_flag eq 'T'}" style="color:red" />


										</rich:column>
										<rich:column width="4%"
											rendered="#{((forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or  forwarding_for_MRP_EDP_Approval_22_23Action.license_type eq 'BWFL2B'  ) and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'Civil')
											or (forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'B' or 
										(forwarding_for_MRP_EDP_Approval_22_23Action.liquor_type eq 'BEER' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSDOUP')) and  forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="EBP" />
											</f:facet>
											<h:outputText value="#{list.edp_state}"
												rendered="#{list.edp_cif_flag eq 'F'}"
												style="COLOR: #0000a0;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<h:outputText value="Not Applicable"
												rendered="#{list.edp_cif_flag eq 'T'}" style="color:red" />


										</rich:column>
										<rich:column width="4%"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD' }">
											<f:facet name="header">
												<h:outputText value="CIF" />
											</f:facet>
											<h:outputText value="#{list.cif_state}"
												rendered="#{list.edp_cif_flag2 eq 'F'}"
												style="COLOR: #0000a0;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<h:outputText value="Not Applicable"
												rendered="#{list.edp_cif_flag2 eq 'T'}" style="color:red" />

										</rich:column>
										<rich:column width="4%"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL' or forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Ex-Custom Bond Value" />
											</f:facet>
											<h:outputText value="#{list.xcoustom_bond_state}"
												rendered="#{list.edp_cif_flag3 eq 'F'}"
												style="COLOR: #0000a0;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<h:outputText value="Not Applicable"
												rendered="#{list.edp_cif_flag3 eq 'T'}" style="color:red" />

										</rich:column>

										<rich:column width="4%" rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="MRP" />
											</f:facet>
											<h:outputText value="#{list.mrp_state}"
												style="COLOR: #0000a0;"
												rendered="#{list.edp_cif_flag1 eq 'F'}">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<h:outputText value="Not Applicable"
												rendered="#{list.edp_cif_flag1 eq 'T'}" style="color:red" />

										</rich:column>














									</rich:dataTable>

								</div>
							</div>






							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>







							<rich:spacer height="10px"></rich:spacer>

							<div class="row">
								<rich:dataTable id="table3123" rows="10" width="50%"
									value="#{forwarding_for_MRP_EDP_Approval_22_23Action.showUploadeddocument}"
									var="list" headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2">



									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr. No.">
											</h:outputText>
										</f:facet>
										<h:outputText value="#{list.showSrNo}"
											styleClass="generalHeaderStyleOutput">
										</h:outputText>
									</rich:column>










									<rich:column align="center">
										<f:facet name="header">
											<h:outputText
												value="Copy of Trademark or Application for the Trademark which was attached while submitting the Brand Approval"
												styleClass="preformatted">
											</h:outputText>

										</f:facet>

										<h:outputLink target="_blank" value="#{list.viewFile14}"
											rendered="#{list.doc14Flg}">

											<h:outputText value="View " style="color: blue">
											</h:outputText>
										</h:outputLink>

										<h:outputText value=" - " rendered="#{!list.doc14Flg}">
										</h:outputText>





									</rich:column>



									<rich:column>
										<f:facet name="header">
											<h:outputText
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.text12}"
												styleClass="preformatted">
											</h:outputText>




										</f:facet>

										<h:outputLink target="_blank" rendered="#{list.doc3Flg}"
											value="#{list.viewFile3}">

											<h:outputText value="View " style="color: blue">
											</h:outputText>
										</h:outputLink>

										<h:outputText rendered="#{!list.doc3Flg}" value=" - ">
										</h:outputText>
									</rich:column>

									<rich:column>
										<f:facet name="header">

											<h:outputText value="Brand Approval letter">
											</h:outputText>
										</f:facet>


										<h:outputLink rendered="#{list.doc13Flg}" target="_blank"
											value="#{list.viewFile13}">

											<h:outputText value="View " style="color: blue">
											</h:outputText>
										</h:outputLink>

										<h:outputText rendered="#{!list.doc13Flg}" value=" - ">
										</h:outputText>

									</rich:column>


									<f:facet name="footer">
										<rich:datascroller for="table3"></rich:datascroller>
									</f:facet>
								</rich:dataTable>
							</div>
							<h:panelGroup
								rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL' or  forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD' }">




								<div class="col-md-12 btn " style="background-color: beige;">
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="Copy of Import/Export Registration :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue1">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc1Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile1}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse1">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc1Flg}">
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
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue2">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc2Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile2}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse2">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc2Flg}">
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
								 
									 <h:panelGroup
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCIVIL' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD' and forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd ne 'CSD'}">

									<div class="col-md-2" align="right">
										<h:outputLabel styleClass="preformatted"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCIVIL'  and forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD'}"
											value="Affidavit for EDP MRP in other States like  Chattisgarh, Madhya Pradesh, Uttarakhand, Delhi, Jharkhand, Rajasthan, Haryana, Chandigarh, Punjab, Himanchal Pradesh, Bihar  for concerned brands :"
											style="FONT-WEIGHT: bold;"></h:outputLabel>
										<h:outputLabel styleClass="preformatted"
											style="FONT-WEIGHT: bold;"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL'  or  forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}"
											value="Affidavit for Ex-Custom Bond Value/MRP in other States like Delhi,Haryana,Madhya Pradesh,Rajasthan,Uttarakhand."></h:outputLabel>

									</div>
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue511">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc5Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile5}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse511">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc5Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>

								</h:panelGroup>
									 
									 <h:panelGroup rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCIVIL' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD' and forwarding_for_MRP_EDP_Approval_22_23Action.civilcsd eq 'CSD'   }">
<div class="col-md-2" align="right">
										<h:outputLabel value="CSD Rate Fixation Letter :"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue12">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc12Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile12}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse12">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc12Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>
								</h:panelGroup>

								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Affidavit for track and trace and Spl. Addl. CESS :"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left"></div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue4">
										<h:outputLink
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc4Flg}"
											target="_blank"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile4}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse4">
										<a4j:outputPanel
											rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc4Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>


							<h:panelGroup
								rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL'  or  forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}">
								<div class="col-md-12 btn " style="background-color: beige;">
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel styleClass="preformatted"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCIVIL' and forwarding_for_MRP_EDP_Approval_22_23Action.unitType ne 'IUCSD'}"
											value="Affidavit for EDP MRP in other States like  Chattisgarh, Madhya Pradesh, Uttarakhand, Delhi, Jharkhand, Rajasthan, Haryana, Chandigarh, Punjab, Himanchal Pradesh, Bihar  for concerned brands :"
											style="FONT-WEIGHT: bold;"></h:outputLabel>
										<h:outputLabel styleClass="preformatted"
											style="FONT-WEIGHT: bold;"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCIVIL'  or  forwarding_for_MRP_EDP_Approval_22_23Action.unitType eq 'IUCSD'}"
											value="Affidavit for Ex-Custom Bond Value/MRP in other States like Delhi,Haryana,Madhya Pradesh,Rajasthan,Uttarakhand."></h:outputLabel>

									</div>
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue5">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc5Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile5}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse5">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc5Flg}">
												<h:graphicImage value="/img/nodoc.png"
													style="width : 60px; height : 35px;"></h:graphicImage>

											</a4j:outputPanel>
										</a4j:outputPanel>
									</div>

									<div class="col-md-2" align="right">
										<h:outputLabel value="License Fee for BIO and IU details:"
											styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-2" align="left"></div>
									<div class="col-md-1 img-responsive" align="left">

										<a4j:outputPanel id="renpdftrue8">
											<h:outputLink
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc8Flg}"
												target="_blank"
												value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile8}">

												<h:graphicImage value="/img/download.gif"
													style="width : 60px; height : 35px;"></h:graphicImage>
											</h:outputLink>
										</a4j:outputPanel>
										<a4j:outputPanel id="renpdffalse8">
											<a4j:outputPanel
												rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc8Flg}">
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


							
							 

							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-1"></div>
								<div class="col-md-2" align="right">
									<h:outputLabel
										value="Copy of Last year's approved MRP of the same Brand ( If any ) :"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left"></div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue9">
										<h:outputLink
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc9Flg}"
											target="_blank"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile9}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse9">
										<a4j:outputPanel
											rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc9Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>
								<div class="col-md-2" align="right">
									<h:outputLabel value="Any Other Relevant Document:"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left"></div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue10">
										<h:outputLink
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.doc10Flg}"
											target="_blank"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewFile10}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse10">
										<a4j:outputPanel
											rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.doc10Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>




							<div class="row">
								<rich:spacer height="30px"></rich:spacer>
							</div>

							<div class="row" align="center"
								style="BACKGROUND-COLOR: #c5cfe5;">
								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>
								<div class="col-md-12" align="center">
									<h:outputLabel value="Users Remark : "
										style="FONT-WEIGHT: bold; COLOR: #061f56; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
									<a4j:commandButton
										rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.listflg eq 'T'}"
										value="View Remark History"
										oncomplete="#{rich:component('popup34')}.show()"
										styleClass="btn btn-warning btn-sm" />
								</div>
								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user1Remark ne 'NA'}"
												value="*#{forwarding_for_MRP_EDP_Approval_22_23Action.user1Name} Remark :" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user1Remark ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user1Remark}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>
								<div class="col-md-12">
									<div class="col-md-3" align="right">
										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user2Remark ne 'NA' }"
												value="* Excise-DEC-Licence Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user2Remark ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user2Remark}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>




								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark ne 'NA' }"
												value="* Excise-JD-Stat Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>
								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark_dtrevert ne 'NA' }"
												value="* Excise-JD-Stat Revert Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark_dtrevert ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user3Remark_dtrevert}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>


								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark ne 'NA' }"
												value="* Excise-AC-License Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>

								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark_dtrevert ne 'NA' }"
												value="* Excise-AC-License Revert Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark_dtrevert ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user4Remark_dtrevert}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>

								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark ne 'NA' }"
												value="* Excise-Commissioner Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>
								<div class="col-md-12">
									<div class="col-md-3" align="right">

										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark_dtrevert ne 'NA' }"
												value="* Excise-Commissioner Revert Remark:" /></b>
									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark_dtrevert ne 'NA' }"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.user5Remark_dtrevert}"
											styleClass="form-control"
											style="FONT-STYLE: italic;width: 100%;" readonly="true"></h:inputTextarea>
									</div>


								</div>

								<div class="col-md-12">
									<div class="col-md-3" align="right">
										<b><h:outputText
												rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N'}"
												value="Remarks::" /></b>

									</div>
									<div class="col-md-7" align="left">
										<h:inputTextarea style="width: 100%; height : 28px;"
											styleClass="form-control"
											rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N'}"
											value="#{forwarding_for_MRP_EDP_Approval_22_23Action.fillRemrks}">
										</h:inputTextarea>
									</div>

								</div>

								<div class="col-md-12" style="height: 15px"></div>
							</div>
							<div class="row" align="center">
								<rich:spacer height="10px"></rich:spacer>
							</div>

							<div class="col-md-12" align="center">

								<h:commandButton
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'T'   and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'F'}"
									action="#{forwarding_for_MRP_EDP_Approval_22_23Action.forward}"
									value="Forward" styleClass="btn btn-success btn-sm" />


								<h:commandButton
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'F'  and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'F'}"
									action="#{forwarding_for_MRP_EDP_Approval_22_23Action.forward}"
									value="Forward" styleClass="btn btn-success btn-sm" />
								<rich:spacer width="10px;" />
								<a4j:commandButton value="Raise Objection"
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'F'}"
									oncomplete="#{rich:component('popup')}.show()"
									styleClass="btn btn-sm btn-primary" />

								<rich:spacer width="10px;" />
								<a4j:commandButton value="View Objection Reply"
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'R' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'F'}"
									oncomplete="#{rich:component('popup4')}.show()"
									styleClass="btn btn-sm btn-primary" />
								<rich:spacer width="10px;" />
								<a4j:commandButton value="Revert Back"
									styleClass="btn btn-warning btn-sm"
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.revertFlg}"
									oncomplete="#{rich:component('popupRvrt')}.show()" />

								<rich:spacer width="10px;" />

								<h:commandButton
									onclick="return confirm('ALERT : The application will be approved. Do you wish to continue?');"
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'T'  and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'T'}"
									action="#{forwarding_for_MRP_EDP_Approval_22_23Action.approve}"
									value="Approved" styleClass="btn btn-success btn-sm" />
								<h:commandButton
									rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.radio eq 'N' and forwarding_for_MRP_EDP_Approval_22_23Action.forward_flg eq 'T'  and forwarding_for_MRP_EDP_Approval_22_23Action.comm_flg eq 'T'}"
									action="#{forwarding_for_MRP_EDP_Approval_22_23Action.reject}"
									value="Reject"
									onclick="return confirm('ALERT : The application will be rejected. Do you wish to continue?');"
									styleClass="btn btn-danger btn-sm" />

								<rich:spacer width="10px;" />




								<h:commandButton
									action="#{forwarding_for_MRP_EDP_Approval_22_23Action.close_uploading}"
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
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.objection_for}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputText>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Description</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.obj_Description}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>

				<div class="col-md-12">
					<h:commandButton value="Save" styleClass="btn btn-success btn-sm"
						action="#{forwarding_for_MRP_EDP_Approval_22_23Action.submit_objection}"></h:commandButton>

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
					value="#{forwarding_for_MRP_EDP_Approval_22_23Action.popup4Hidden}"></h:inputHidden>
				<div class="col-md-12">
					<div class="col-md-3">
						<b>Objected for</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea disabled="true"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.popup4ObjectedFor}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Action Taken</b>
					</div>
					<div class="col-md-7">
						<h:inputTextarea disabled="true"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.popup4ActionTaken}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>


				<div class="col-md-12">
					<div class="col-md-3">
						<b>Uploaded pdf</b>
					</div>
					<div class="col-md-7">

						<h:outputLink target="_blank"
							rendered="#{forwarding_for_MRP_EDP_Approval_22_23Action.viewpdfFlg}"
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.popup4ObjectedPdf}">

							<h:graphicImage value="/img/download.gif" alt="view document"
								style="width : 60px; height : 35px;"></h:graphicImage>
						</h:outputLink>

						<h:outputText value="No PDF Uploaded"
							style="color: blue; font-family: serif; font-size: 12pt"
							rendered="#{!forwarding_for_MRP_EDP_Approval_22_23Action.viewpdfFlg}">

						</h:outputText>

					</div>
				</div>


				<div class="col-md-12">
					<h:commandButton value="Accept" styleClass="btn btn-success btn-sm"
						action="#{forwarding_for_MRP_EDP_Approval_22_23Action.agreeReply}"></h:commandButton>

					<h:commandButton value="Decline" styleClass="btn btn-danger btn-sm"
						action="#{forwarding_for_MRP_EDP_Approval_22_23Action.declineReply}"></h:commandButton>

					<a4j:commandButton value="Close"
						styleClass="btn btn-default btn-sm"
						oncomplete="#{rich:component('popup4')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>
		<rich:modalPanel id="popup3" minWidth="800" minHeight="300" autosized="false">
			<f:facet name="header">
				<h:outputText value="Objection History..." />

			</f:facet>

			<h:form>

<div style="overflow: auto; max-height: 200px">
				<div class="col-md-12">


					<rich:dataTable id="table3" width="100%"
						value="#{forwarding_for_MRP_EDP_Approval_22_23Action.showObjection}"
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
							value="#{forwarding_for_MRP_EDP_Approval_22_23Action.rvrtCmntPopup}"
							styleClass="form-control" style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
					</div>
				</div>

				<div class="col-md-12">
					<h:commandButton value="Save" styleClass="btn btn-success"
						onclick="return confirm('ALERT : The application will be reverted back. Do you wish to continue?');"
						action="#{forwarding_for_MRP_EDP_Approval_22_23Action.saveRvrtCmnt}"></h:commandButton>

					<a4j:commandButton value="Close" styleClass="btn btn-danger"
						oncomplete="#{rich:component('popupRvrt')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>

		<rich:modalPanel id="popup34"   minWidth="800" minHeight="300" autosized="false">
			<f:facet name="header">
				<h:outputText value="Users Remark..." />

			</f:facet>

			<h:form>

<div style="overflow: auto; max-height: 200px">
				<div class="col-md-12">


					<rich:dataTable id="table3" width="100%"  
						value="#{forwarding_for_MRP_EDP_Approval_22_23Action.showremarklist}"
						var="list" headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2">

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr. No."
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.srno}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>
						<rich:column>
							<f:facet name="header">
								<h:outputText value="User Name"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_name}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Remark"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_remark}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Remark Date/time"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_dt_tm}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Status"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.vch_forwarded}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Action  "
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.forward_type}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						 


					</rich:dataTable>

				</div>
				</div>

				<div class="col-md-12" align="center">


					<a4j:commandButton value="Close" styleClass="btn btn-danger btn-sm"
						oncomplete="#{rich:component('popup34')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>






	</f:view>


</ui:composition>