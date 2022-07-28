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
							<h:outputText value=" MRP Status Tracking"
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
			

				<div class="row" align="center">
				     <div class="row" align="center"  style="padding: 3px; border: 1px groove #2948a4; BACKGROUND-COLOR:#689fb1; width: 90%;">
						<div class="col-md-12" align="center">
							<h:selectOneRadio style="width:25%"
								value="#{mRP_Details_action.radio}"
								valueChangeListener="#{mRP_Details_action.clickRadio}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="P" itemLabel="Pending" />
								<f:selectItem itemValue="A" itemLabel="Approved" />
								<f:selectItem itemValue="R" itemLabel="Rejected" />
							</h:selectOneRadio>
						</div>
					</div>
					</div>
				
				
				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
				
				
				
				<h:panelGroup
					rendered="#{!mRP_Details_action.viewPanelFlg}">
				<div class="row" align="center">
					<h:outputText value = "Unit Type :"></h:outputText>
					<h:selectOneMenu valueChangeListener="#{mRP_Details_action.unitTypeListener }"			
					value = "#{mRP_Details_action.selectunittype }"
					onchange="this.form.submit();"
					style=" height : 25px; width : 105px;">
					  <f:selectItem itemValue="0" itemLabel="--ALL--"/>
					  <f:selectItem itemValue="D" itemLabel="Distillery"/>
					  <f:selectItem itemValue="B" itemLabel="Brewery"/>
					  <f:selectItem itemValue="BWFL" itemLabel="BWFL"/>
					  <f:selectItem itemValue="IU" itemLabel="IU"/>
					  <f:selectItem itemValue="CSD" itemLabel="CSD"/>
					</h:selectOneMenu>
				</div>
				
				</h:panelGroup>
				
				
				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
				
				<h:panelGroup
					rendered="#{!mRP_Details_action.viewPanelFlg}">
					

					<rich:spacer height="10px"></rich:spacer>
					<div align="center">
						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table" width="80%" rows="10"
							value="#{mRP_Details_action.applicationList}"
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
							
							<rich:column 
							rendered="#{mRP_Details_action.radio eq 'A' or mRP_Details_action.radio eq 'R'}">
							<f:facet name="header">
								<h:outputText value="Decision Date" />
							</f:facet>
							<h:outputText value="#{list.decision_date}" />
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
								<h:commandButton value="View Detail"
									actionListener="#{mRP_Details_action.viewDetails}"
									styleClass="btn btn-primary">
								</h:commandButton>
								


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
					rendered="#{mRP_Details_action.viewPanelFlg}">

					<div class="row " align="center">
						<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 100%;">

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText
									value=" Application No.:#{mRP_Details_action.showApplication_no} and Application Date.:#{mRP_Details_action.showApplication_date}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
									 
							</div>
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
							 
									<h:outputText
									value="Unit type.:#{mRP_Details_action.unit_type}  , Unit Name.:#{mRP_Details_action.unit_name}  , Domain.:#{mRP_Details_action.domain} and Civil/CSD.:#{mRP_Details_action.civilcsd}"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
										<rich:spacer width="20px"></rich:spacer>
							
							</div>
							<div class="row " align="center">
							
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="col-md-12" align="center">
								<h:outputText rendered="#{mRP_Details_action.check_flg eq 'T' }"
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
										id="table22"
										value="#{mRP_Details_action.displayBrandDetails}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No.O" />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
										</rich:column>





										<rich:column width="5%">
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
										 
										 


										<rich:column  width="3%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Size(in ml)" />
											</f:facet>
											<h:outputText value="#{list.size }" />
										</rich:column>

										<rich:column  width="3%">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText value="EDP" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText value="DUTY" />
											</f:facet>
											<h:outputText value="#{list.duty }" 
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty" />
											</f:facet>
											<h:outputText value="#{list.addnl_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>





										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Wholesale Margin" />
											</f:facet>
											<h:outputText value="#{list.wholesalemargin }"
												style="COLOR: #0000a0; width : 70px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>




										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Retail Margin" />
											</f:facet>
											<h:outputText value="#{list.retailmargin }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>





										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.show_domain eq 'UP' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.show_domain eq 'UP' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>
										<rich:column width="7%"  rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' and mRP_Details_action.domain ne 'EOI' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' and mRP_Details_action.domain ne 'EOI' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="MRP" />
											</f:facet>
											<h:outputText value="#{list.mrp_bwfl }"
												style="COLOR: #0000a0; width : 70px;"
												 >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText value="CIF" />
											</f:facet>
											<h:outputText value="#{list.cif }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Custom Bond handling Charges" />
											</f:facet>
											<h:outputText value="#{list.cb_handling_charage }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText value="Margin" />
											</f:facet>
											<h:outputText value="#{list.margin }" 
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Custom Duty" />
											</f:facet>
											<h:outputText value="#{list.custom_duty }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty" />
											</f:facet>
											<h:outputText value="#{list.addnl_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Permit Fee per Bottle" />
											</f:facet>
											<h:outputText value="#{list.permit_fee_on750 }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onkeyup" reRender="landedcost">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Landed Cost to CBW" />
											</f:facet>
											<a4j:outputPanel id="landedcost">
												<h:outputText value="#{list.landed_cost }"
													 style="COLOR: #0000a0; width : 60px;"
													disabled="true">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>

										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Margin of Wholesale " />
											</f:facet>
											<h:outputText value="#{list.margin_wholesale }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Margin of Retailer" />
											</f:facet>
											<h:outputText value="#{list.margin_of_retailer }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spacial Addl.Consid. Fees" />
											</f:facet>
											<h:outputText value="#{list.spcl_addl_cosid_fee }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onkeyup" reRender="totalfee,totalfee1">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Total Fees (Permit)" />
											</f:facet>
											<a4j:outputPanel id="totalfee">
												<h:outputText value="#{list.total_fees_paid }"
													disabled="true" style="COLOR: #0000a0; width : 70px;"
													>
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>
										</rich:column>
										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="MRP" />
											</f:facet>
											<a4j:outputPanel id="totalfee1">
												<h:outputText value="#{list.mrp_bwfl }"
													disabled="true" style="COLOR: #0000a0; width : 70px;"
													>
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText value="CSD EDP Per Bottles in(Rs)" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Permit Fee" />
											</f:facet>
											<h:outputText value="#{list.permit_fee }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="For Civil/CSD" />
											</f:facet>
											<h:outputText value="#{list.civil_csd }" />
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value=" Civil EDP" />
											</f:facet>
											<h:outputText value="#{list.civil_edp }" />
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="Civil Category" />
											</f:facet>
											<h:outputText value="#{list.liq_cat_civil }" />


										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="Civil Duty" />
											</f:facet>
											<h:outputText value="#{list.duty_civil }" />


										</rich:column>




										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="EDP-CSD" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="DUTY-CSD" />
											</f:facet>
											<h:outputText value="#{list.duty }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty-CSD " />
											</f:facet>
											<h:outputText value="#{list.csd_cal_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp">
											</a4j:support>
										</rich:column>

<rich:column width="7%"
									rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:outputText value="#{list.permit_fee }" style="COLOR: #0000a0; width : 70px;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
									 
								</rich:column>

							</rich:dataTable>

								</div>
							</div>
							
						</div>
						</div>
						</h:panelGroup>
			<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>

				<h:panelGroup rendered="#{mRP_Details_action.check_flg eq 'T'}">
							
							<div class="col-md-12" align="center">
							<div
							style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 100%;">
								<h:outputText
									value="Data is Modified by Unit for Approval"
									style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman; color:red" />
									 
							
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							
							<div class="row" align="center"  >
								<div class="col-md-12">

									<rich:dataTable columnClasses="columnClass1"
										headerClass="TableHead" footerClass="TableHead"
										rowClasses="TableRow1,TableRow2" styleClass="DataTable"
										id="table223"
										value="#{mRP_Details_action.displayBrandDetails1}"
										var="list">
										<rich:column width="2%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Sr.No." />
											</f:facet>
											<h:outputText value="#{list.srNo }" />
										</rich:column>





										<rich:column width="5%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Brand Name" />
											</f:facet>
											<h:outputText value="#{list.brand_name}" />
										</rich:column>
										<rich:column width="5%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Package" />
											</f:facet>
											<h:outputText value="#{list.package_name}" />
										</rich:column>
										 
										 


										<rich:column  width="3%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Size(in ml)" />
											</f:facet>
											<h:outputText value="#{list.size }" />
										</rich:column>

										<rich:column  width="4%">
											<f:facet name="header">
												<h:outputText value="Category" />
											</f:facet>

											<h:outputText value="#{list.category}" />

										</rich:column>


										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText value="EDP" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText value="DUTY" />
											</f:facet>
											<h:outputText value="#{list.duty }" 
												style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D'  or mRP_Details_action.unitType eq 'B'  or mRP_Details_action.unitType eq 'BWFL'   ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty" />
											</f:facet>
											<h:outputText value="#{list.addnl_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>





										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Wholesale Margin" />
											</f:facet>
											<h:outputText value="#{list.wholesalemargin }"
												style="COLOR: #0000a0; width : 70px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>




										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Retail Margin" />
											</f:facet>
											<h:outputText value="#{list.retailmargin }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>





										<rich:column width="7%"
											rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.show_domain eq 'UP' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.show_domain eq 'UP' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>
										<rich:column width="7%" rendered="#{ (mRP_Details_action.unitType eq 'D' and mRP_Details_action.civilcsd eq 'Civil' and mRP_Details_action.domain ne 'EOI' or mRP_Details_action.unitType eq 'B' and mRP_Details_action.civilcsd eq 'Civil' and mRP_Details_action.domain ne 'EOI' or mRP_Details_action.unitType eq 'BWFL' and mRP_Details_action.civilcsd eq 'Civil' ) }" >
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="MRP" />
											</f:facet>
											<h:outputText value="#{list.mrp_bwfl }"
												style="COLOR: #0000a0; width : 70px;"
												  >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText value="CIF" />
											</f:facet>
											<h:outputText value="#{list.cif }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Custom Bond handling Charges" />
											</f:facet>
											<h:outputText value="#{list.cb_handling_charage }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText value="Margin" />
											</f:facet>
											<h:outputText value="#{list.margin }" 
												style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Custom Duty" />
											</f:facet>
											<h:outputText value="#{list.custom_duty }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty" />
											</f:facet>
											<h:outputText value="#{list.addnl_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Permit Fee per Bottle" />
											</f:facet>
											<h:outputText value="#{list.permit_fee_on750 }"
												style="COLOR: #0000a0; width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onkeyup" reRender="landedcost2">
											</a4j:support>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Landed Cost to CBW" />
											</f:facet>
											<a4j:outputPanel id="landedcost2">
												<h:outputText value="#{list.landed_cost }"
													 style="COLOR: #0000a0; width : 60px;"
													disabled="true">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>

										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Margin of Wholesale " />
											</f:facet>
											<h:outputText value="#{list.margin_wholesale }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Margin of Retailer" />
											</f:facet>
											<h:outputText value="#{list.margin_of_retailer }"
												style="COLOR: #0000a0;width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
										</rich:column>



										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spacial Addl.Consid. Fees" />
											</f:facet>
											<h:outputText value="#{list.spcl_addl_cosid_fee }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onkeyup" reRender="totalfee2,totalfee11">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Total Fees (Permit)" />
											</f:facet>
											<a4j:outputPanel id="totalfee2">
												<h:outputText value="#{list.total_fees_paid }"
													disabled="true" style="COLOR: #0000a0;width : 70px;"
													>
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>
										</rich:column>
<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCIVIL' and mRP_Details_action.civilcsd eq 'Civil' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="MRP" />
											</f:facet>
											<a4j:outputPanel id="totalfee11">
												<h:outputText value="#{list.mrp_bwfl }"
													disabled="true" style="COLOR: #0000a0;width : 70px;"
													>
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</a4j:outputPanel>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText value="CSD EDP Per Bottles in(Rs)" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0;width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
										</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0;width : 60px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSD' and mRP_Details_action.civilcsd eq 'CSD'}">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Permit Fee" />
											</f:facet>
											<h:outputText value="#{list.permit_fee }"
												 style="COLOR: #0000a0; width : 70px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="For Civil/CSD" />
											</f:facet>
											<h:outputText value="#{list.civil_csd }" />
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value=" Civil EDP" />
											</f:facet>
											<h:outputText value="#{list.civil_edp }" />
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="Civil Category" />
											</f:facet>
											<h:outputText value="#{list.liq_cat_civil }" />


										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="Civil Duty" />
											</f:facet>
											<h:outputText value="#{list.duty_civil }" />


										</rich:column>




										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="EDP-CSD" />
											</f:facet>
											<h:outputText value="#{list.edp }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>


										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText value="DUTY-CSD" />
											</f:facet>
											<h:outputText value="#{list.duty }" 
												style="COLOR: #0000a0; width : 50px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Additional Duty-CSD " />
											</f:facet>
											<h:outputText value="#{list.csd_cal_duty }"
												 style="COLOR: #0000a0; width : 60px;">
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>

										<rich:column width="7%"
											rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD' }">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<h:outputText value="#{list.spl_addl_cess }"
												style="COLOR: #0000a0; width : 55px;" >
												<f:convertNumber maxFractionDigits="2"
													pattern="#############0.00" />
											</h:outputText>
											<a4j:support event="onblur" reRender="maxwholemrp2">
											</a4j:support>
										</rich:column>
<rich:column width="7%"
									rendered="#{mRP_Details_action.unitType eq 'IUCSDOUP' and mRP_Details_action.civilcsd eq 'CSD'}">
									<f:facet name="header">
										<h:outputText styleClass="preformatted" value="Permit Fee" />
									</f:facet>
									<h:outputText value="#{list.permit_fee }"   style="COLOR: #0000a0; width : 70px;" >
										<f:convertNumber maxFractionDigits="2" pattern="#############0.00" />
									</h:outputText>
									 
								</rich:column>







									</rich:dataTable>


								</div>
							</div>
							</div>
							</div>
 </h:panelGroup>
				
				
				
				 <div class="row" align="center" >

			<h:commandButton styleClass="btn btn-primary"
						action="#{mRP_Details_action.excel}"
						value="Generate Excel" rendered="true" />

					<h:outputLink styleClass="outputLinkEx"
						value="/doc/ExciseUp/MIS/Excel/#{mRP_Details_action.exlname}.xls"
						target="_blank">
						<h:outputText styleClass="outputText" value="Download Excel"
							rendered="#{mRP_Details_action.excelFlag==true}"
							style="color: blue; font-family: serif; font-size: 12pt"></h:outputText>
					</h:outputLink>
			</div>
				
				
				
				
			<h:panelGroup
					rendered="#{mRP_Details_action.viewPanelFlg}">		
		
		<div class="row" align="center">
	
		<h:commandButton
									action="#{mRP_Details_action.close_uploading}"
									value="Close" styleClass="btn btn-danger btn-sm" />
		
		</div>
		</h:panelGroup>
		
		
							<div class="row " align="center">
								<rich:spacer height="30px"></rich:spacer>
							</div>	
							
							
																
								
							</div>
							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>
	</h:form>			
</f:view>
</ui:composition>