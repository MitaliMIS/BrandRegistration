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

		<h:form>
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

				<div class="row">
					<div align="center">					
						<h1>
							<h:outputText value="Brand MRP Approval Tracking 2022-23"
								style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
								<h:inputHidden
							value="#{mRP_Approval_Tracking_for_Unit_22_23Action.hidden}"></h:inputHidden>
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
			 
				
				 
 <rich:spacer height="10px"></rich:spacer>
					<div align="center">
						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table" width="80%" rows="10"
							value="#{mRP_Approval_Tracking_for_Unit_22_23Action.applicationList}"
							var="list">


							<rich:column>
								<f:facet name="header">
									<h:outputText value="Sr.No." />
								</f:facet>
								<h:outputText value="#{list.sr_no}" />
							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="MRP Application No." />
								</f:facet>
								<h:outputText value="#{list.requestid}" />
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
								<h:outputText value="#{list.unit_name}" />
							</rich:column>




							<rich:column>
								<f:facet name="header">
									<h:outputText value="Brand Name" />
								</f:facet>
								<h:outputText value="#{list.brand_name}" />
							</rich:column>



							<rich:column>
								<f:facet name="header">
									<h:outputText value="Size" />
								</f:facet>
								<h:outputText value="#{list.size}" />
							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Total No. Of Label" />
								</f:facet>
								<h:outputText value="#{list.total_no_of_labels}" />
							</rich:column>

<rich:column>
								<f:facet name="header">
									<h:outputText value="Label / Brand Request Date" />
								</f:facet>
								<h:outputText value="#{list.label_brand_request_date}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Label / Brand Approval Date" />
								</f:facet>
								<h:outputText value="#{list.label_brand_approval_date}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="MRP Application Date" />
								</f:facet>
								<h:outputText value="#{list.mrp_application_date}" />
							</rich:column>
							
							<rich:column  >
							<f:facet name="header">
							
								<h:outputText value="MRP Approval / Rejection Date" />
							</f:facet>
							<h:outputText value="#{list.mrp_approval_date}" />
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
									actionListener="#{mRP_Approval_Tracking_for_Unit_22_23Action.viewDetails}"
									styleClass="btn btn-primary">
								</h:commandButton>
								<h:commandButton
									actionListener="#{mRP_Approval_Tracking_for_Unit_22_23Action.app_Delete}" 
											value="Delete" styleClass="btn btn-danger" 
											onclick="if (! confirm('Your Whole Application ( Application No. #{list.requestid} ) will be Deleted. Do you wish to continue ?') ) { return false;}; return true; "
											rendered="#{list.del_but_flg}" >
										  </h:commandButton>
						</rich:column>

							<f:facet name="footer">
								<rich:datascroller for="table"></rich:datascroller>
							</f:facet>


						</rich:dataTable>
					</div>
				 
							<div class="row " align="center">
								<rich:spacer height="30px"></rich:spacer>
							</div>	
							
							<h:panelGroup
					rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.viewPanelFlg}">

					<div class="row " align="center">
						<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 98%;">

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value=" Application No.:#{mRP_Approval_Tracking_for_Unit_22_23Action.showApplication_no} and Application Date.:#{mRP_Approval_Tracking_for_Unit_22_23Action.showApplication_date}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />

							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">

								<h:outputText
									value="Unit type.:#{mRP_Approval_Tracking_for_Unit_22_23Action.unit_type}  , Unit Name.:#{mRP_Approval_Tracking_for_Unit_22_23Action.unit_name}  , Domain.:#{mRP_Approval_Tracking_for_Unit_22_23Action.domain} and Civil/CSD.:#{mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
								<rich:spacer width="20px"></rich:spacer>
							 
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
										rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil' and (mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL')}"
										value="#{mRP_Approval_Tracking_for_Unit_22_23Action.displayBrandDetails}"
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
											<h:outputText value="#{list.size_ml }" />
										</rich:column>

										<rich:column width="3%"
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or  
											mRP_Approval_Tracking_for_Unit_22_23Action.license_type eq 'BWFL2B'  ) 
											and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil'}">
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
											rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')
											or (mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL' and  mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2B'
											  and  mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2C' and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')}">
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
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unit_type eq 'Bwfl (Civil OutsideUP)'}">
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
										rendered="#{((mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B')
										 and  mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2C'
										 and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')}">
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





										<rich:column width="7%" rendered="#{((mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B')
										and  mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2C'
										 and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')}">
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
										<rich:column width="7%" rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL' and  mRP_Approval_Tracking_for_Unit_22_23Action.license_type eq 'BWFL2C'
										 and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')}">
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
										rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD' 
										and (mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')}"
										value="#{mRP_Approval_Tracking_for_Unit_22_23Action.displayBrandDetails}"
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
											<h:outputText value="#{list.size_ml }" />
										</rich:column>

										<rich:column width="3%"
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.category_flg eq 'F'}">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>
										<rich:column width="7%"
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.yes_no eq 'YES'}">
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
											rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or 
										(mRP_Approval_Tracking_for_Unit_22_23Action.liquor_type eq 'BEER' and mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')) and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD'}">
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
											rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD') or
										(mRP_Approval_Tracking_for_Unit_22_23Action.liquor_type ne 'WINE' and mRP_Approval_Tracking_for_Unit_22_23Action.liquor_type ne 'BEER' and mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')}">
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
										rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD' 
										and (mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')}"
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
										rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCIVIL'}"
										value="#{mRP_Approval_Tracking_for_Unit_22_23Action.displayBrandDetails}"
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
											<h:outputText value="#{list.size_ml }" />
										</rich:column>

										<rich:column width="3%"
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.category_flg eq 'F'}">
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
										rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSD'}"
										value="#{mRP_Approval_Tracking_for_Unit_22_23Action.displayBrandDetails}"
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
											<h:outputText value="#{list.size_ml }" />
										</rich:column>

										<rich:column width="3%"
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.category_flg eq 'F'}">
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
							 
							 
							
							 
							<div class="row" align="left">
								<rich:spacer height="30px"></rich:spacer>
							</div>

							<div class="row" align="center">
								<div class="col-md-12">

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table2234" width="50%"
										value="#{mRP_Approval_Tracking_for_Unit_22_23Action.state_list}"
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
											rendered="#{(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil') or 
											(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'BWFL' and mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2B' 
											 
											 and mRP_Approval_Tracking_for_Unit_22_23Action.license_type ne 'BWFL2C'  and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil') or
											(mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'D' and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD') or
										(mRP_Approval_Tracking_for_Unit_22_23Action.liquor_type ne 'BEER' and mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')}">
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
											rendered="#{((mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or  mRP_Approval_Tracking_for_Unit_22_23Action.license_type eq 'BWFL2B'  ) and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'Civil')
											or (mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'B' or 
										(mRP_Approval_Tracking_for_Unit_22_23Action.liquor_type eq 'BEER' and mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSDOUP')) and  mRP_Approval_Tracking_for_Unit_22_23Action.civilcsd eq 'CSD' }">
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
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCIVIL' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSD' }">
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
											rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCIVIL' or mRP_Approval_Tracking_for_Unit_22_23Action.unitType eq 'IUCSD'}">
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

										<rich:column width="4%" rendered="#{mRP_Approval_Tracking_for_Unit_22_23Action.unitType ne 'IUCSD'}">
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
							  

							<div class="col-md-12" align="center">
 




								<h:commandButton
									action="#{mRP_Approval_Tracking_for_Unit_22_23Action.close_uploading}"
									value="Close" styleClass="btn btn-danger btn-sm" />

							</div>




							<div class="row" align="left">
								<rich:spacer height="20px"></rich:spacer>
							</div>

						</div>
						<div class="row " align="center">
							<rich:spacer height="40px"></rich:spacer>
						</div>
					</div>

				</h:panelGroup>
																
								
							</div>
							
	</h:form>
	 		
</f:view>
</ui:composition>