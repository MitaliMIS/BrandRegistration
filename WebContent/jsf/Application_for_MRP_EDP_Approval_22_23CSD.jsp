
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

.preformatted {
	white-space: pre-wrap;
}
</style>

		<h:form>
			<div class="row " align="center">
				<rich:spacer height="30px"></rich:spacer>
				<h:inputHidden
					value="#{application_for_MRP_EDP_Approval_22_23CSDAction.hidden}"></h:inputHidden>
			</div>

			<div class="row">
				<div class="col-md-12 wow shake">
					<h:messages errorStyle="color:red" layout="TABLE" id="messages1"
						infoStyle="color:green"
						style="font-size:20px; background-color:#e1fcdf; font-weight: bold">
					</h:messages>

				</div>
			</div>
			<a4j:outputPanel id='msg23'>
				<h:outputLabel
					value="#{application_for_MRP_EDP_Approval_22_23CSDAction.err}"
					style="color: red"
					rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.err_flag}">

				</h:outputLabel>
			</a4j:outputPanel>
			<div class="row " align="center">
				<div align="center" class="pghead">
					<h:inputHidden
						value="#{application_for_MRP_EDP_Approval_22_23CSDAction.hidden}"></h:inputHidden>
					<h:outputLabel
						value="#{application_for_MRP_EDP_Approval_22_23CSDAction.user_Name}"
						style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
					<div align="center">
						<h:outputLabel
							value="#{application_for_MRP_EDP_Approval_22_23CSDAction.user_Address}"
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

						<h:outputText value="Application for MRP Approval 2022-23"
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
				rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFlag==false}">
				<div align="center" style="overflow-y: scroll; max-height: 400px">




					<rich:dataTable width="90%" var="list" id="table1"
						value="#{application_for_MRP_EDP_Approval_22_23CSDAction.brandList}">


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr No." />
							</f:facet>
							<h:outputText value="#{list.srno}" />
						</rich:column>




						<rich:column>
							<f:facet name="header">
								<h:outputText value="Brand" />
							</f:facet>
							<h:outputText value="#{list.brand_name}" />
						</rich:column>

<rich:column>
						<f:facet name="header">
							<h:outputText value="Trademark No." />
						</f:facet>
						<h:outputText value="#{list.trade_mark_no}" />
					</rich:column>





						<rich:column>
							<f:facet name="header">
								<h:outputText value="Domain" />
							</f:facet>
							<h:outputText value="#{list.domain}" />
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Total No. Of Pack Size" />
							</f:facet>
							<h:outputText value="#{list.int_approved_pack}" />
						</rich:column>




						<rich:column>
							<f:facet name="header">
								<h:outputText value="No. Of Pack Size Pending For MRP" />
							</f:facet>
							<h:outputText value="#{list.int_pending_mrp}" />
						</rich:column>





						<rich:column align="center">
							<f:facet name="header">
								<h:outputText value="Select"
									styleClass="generalHeaderOutputTable"
									style="FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:commandButton
								actionListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.view}"
								value="Select" disabled="#{list.int_pending_mrp==0}"
								styleClass="btn btn-success btn-sm" />
						</rich:column>


					</rich:dataTable>
				</div>

			</h:panelGroup>
			<h:panelGroup
				rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFlag}">
				<div class="row">
					<rich:spacer height="30"></rich:spacer>
				</div>




				<div class="row">
					<rich:spacer height="30"></rich:spacer>
				</div>
				<div align="center">
					<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 95%;">
						<div class="row " align="center">
							<rich:spacer height="20px"></rich:spacer>
						</div>

	<div class=" row col-md-12">
							<rich:spacer height="20px" />
							<a4j:outputPanel id="popup3" >
								
							<h:outputText rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat_flag}"
								value="Your register Brand Category is #{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat_database} and EDP wise Category is #{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat} "
								styleClass="generalExciseStyle"
								style="FONT-SIZE: x-large; FONT-WEIGHT: bold;color:red"></h:outputText>
								</a4j:outputPanel>
						</div>
						<div class=" row col-md-12">
							<rich:spacer height="20px" />
							<h:outputLabel value="Brand Name :-" style="FONT-WEIGHT: bold;"></h:outputLabel>
							<h:outputText
								value="#{application_for_MRP_EDP_Approval_22_23CSDAction.brand_name}" style="FONT-WEIGHT: bold;"></h:outputText>
								
								<rich:spacer width="100px" />
							<h:outputLabel value="Trademark No. :-" style="FONT-WEIGHT: bold;"></h:outputLabel>
							<h:outputText value="#{application_for_MRP_EDP_Approval_22_23CSDAction.trade_mark_no}" style="FONT-WEIGHT: bold;"></h:outputText>
						</div>
						<h:panelGroup>


							 
							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>
							<div class="row">
								<div class=" row col-md-2" align="right">
									<h:outputLabel value="EDP of 750ml"
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' }"></h:outputLabel>
									<h:outputLabel value="EBP of 500ml"
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B'}"></h:outputLabel>

								</div>
								<div class=" row col-md-2" align="left" style="height: 24px;">
									<h:inputText
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.edp_180ml}"
										valueChangeListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.edpChange}"
										disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.edp_flag}">
										<a4j:support event="onblur" ajaxSingle="true"
											reRender="table22,edp_750ml,table222,lic_cat,popup31" />
									</h:inputText>
								</div>

								<div class=" row col-md-2" align="right">
									<h:outputLabel value="EDP of 500ml"
										rendered="#{(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'LAB') 
										 }"></h:outputLabel>
									<h:outputLabel value="EDP of 750ml"
										rendered="#{(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'FL')
										 }"></h:outputLabel>
									<h:outputLabel value="EBP of 500ml"
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B' 
                                                    }"></h:outputLabel>

								</div>
								<div class=" row col-md-2" align="left">
									<h:outputText id="edp_750ml"
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.edp_750ml}"></h:outputText>
								</div>

								<div class=" row col-md-2" align="right">
									<h:outputLabel value="Category"
										rendered="#{(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'FL') 
										 }"></h:outputLabel>
								</div>
								<div class=" row col-md-2" align="left" style="height: 44px;">
									<h:outputText id="lic_cat"
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat}"
										rendered="#{(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'FL') 
										 }"></h:outputText>
								</div>

							</div>

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>

							<div class="row col-md-12">
								<div class="  col-md-6" align="left">
									<h:outputLabel value="Calculated sheet for 750ml :-"
										style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
										rendered="#{(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'FL') or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2A' or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2C'}">

									</h:outputLabel>
									<h:outputLabel value="Calculated sheet for 500ml :-"
										style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B' or (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'IUCSDOUP' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'LAB') 
										or (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'IUCSDOUP' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'BEER')  or (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DLF' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'LAB' )}">

									</h:outputLabel>
								</div>
								<div class="  col-md-6" align="right"></div>
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
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.calculation_750ml_list}"
										var="list">
										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText value="Size (ML)" />
											</f:facet>
											<center>
												<h:outputText value="#{list.size_ml_750}"
													style="COLOR: #0000a0;">

												</h:outputText>
											</center>
										</rich:column>
										<rich:column width="7%"
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.yes_no eq 'YES'}">
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
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'B'}">

											<f:facet name="header">
												<h:outputText value="EDP" />

											</f:facet>


											<center>
												<h:outputText value="#{list.edp_base}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>
										<rich:column width="7%"
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'BWFL2C' and (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2B' or  application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B' or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2D'  ) }">

											<f:facet name="header">
												<h:outputText value="EBP" />

											</f:facet>


											<center>
												<h:outputText value="#{list.edp_base}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>



										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText value="DUTY" />
											</f:facet>
											<center>
												<h:outputText value="#{list.duty_base }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>







										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<center>
												<h:outputText value="#{list.spl_addl_cess_base }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>

										<rich:column width="7%" rendered="false">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Special fee" />
											</f:facet>
											<center>
												<h:outputText value="#{list.special_fee}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>
										 

									</rich:dataTable>

								</div>
							</div>

							<div class="row " align="center">
								<rich:spacer height="20px"></rich:spacer>
							</div>

							<div class="row col-md-12">
								<div class="  col-md-6" align="left">
									<h:outputLabel id="edp_otherml"
										value="Calculated sheet for remaining Package:-"
										style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;">

									</h:outputLabel>
								</div>
								<div class="  col-md-6" align="right"></div>
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
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.calculation_list}"
										var="list">





										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText value="Size (ML)" />
											</f:facet>
											<center>
												<h:outputText value="#{list.size_ml_750_}"
													style="COLOR: #0000a0;">

												</h:outputText>
											</center>
										</rich:column>
										<rich:column width="7%"
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.yes_no eq 'YES'}">
											<f:facet name="header">
												<h:outputText value="Civil DUTY" />
											</f:facet>
											<center>
												<h:outputText value="#{list.civil_duty_base_Show_ }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>

										<rich:column width="7%"
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'B'}">
											<f:facet name="header">
												<h:outputText value="EDP" />
											</f:facet>
											<center>
												<h:outputText value="#{list.edp_base_}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>
										<rich:column width="7%"
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'BWFL2C' and (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2B' or  application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B' or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2D'  )}">
											<f:facet name="header">
												<h:outputText value="EBP" />
											</f:facet>
											<center>
												<h:outputText value="#{list.edp_base_}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>


										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText value="DUTY" />
											</f:facet>
											<center>
												<h:outputText value="#{list.duty_base_ }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>
										</rich:column>
										<rich:column width="7%">
											<f:facet name="header">
												<h:outputText styleClass="preformatted"
													value="Spl. Addl. CESS" />
											</f:facet>
											<center>
												<h:outputText value="#{list.spl_addl_cess_base_ }"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>
										<rich:column width="7%" rendered="false">
											<f:facet name="header">
												<h:outputText styleClass="preformatted" value="Special fee" />
											</f:facet>
											<center>
												<h:outputText value="#{list.special_fee_}"
													style="COLOR: #0000a0;">
													<f:convertNumber maxFractionDigits="2"
														pattern="#############0.00" />
												</h:outputText>
											</center>

										</rich:column>
										 
									</rich:dataTable>

								</div>
							</div>




						</h:panelGroup>






						<div class="row" align="left">
							<rich:spacer height="20px"></rich:spacer>
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
							value="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list}"
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
								rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unitType ne 'IUCIVIL' and (application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2B' or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'B' or application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'BWFL2D')}">
								<f:facet name="header">
									<h:outputText value="EBP of 500ml" />
								</f:facet>
								<h:inputText value="#{list.edp_state}"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list_disbale_flag eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							<rich:column width="4%"
								rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'LAB'}">
								<f:facet name="header">
									<h:outputText value="EDP of 500ml" />
								</f:facet>
								<h:inputText value="#{list.edp_state}"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list_disbale_flag eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							<rich:column width="4%"
								rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unitType ne 'IUCIVIL'  and application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'BWFL2B' 
								and application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'B' and application_for_MRP_EDP_Approval_22_23CSDAction.unit_type ne 'BWFL2D' 
								and  
								(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd ne 'FL')}">
								<f:facet name="header">
									<h:outputText value="EDP of 750ml" />
								</f:facet>
								<h:inputText value="#{list.edp_state}"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list_disbale_flag eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							<rich:column width="4%"
								rendered="#{
								(application_for_MRP_EDP_Approval_22_23CSDAction.unit_type eq 'DFL' and application_for_MRP_EDP_Approval_22_23CSDAction.liquortype_csd eq 'FL')}">
								<f:facet name="header">
									<h:outputText value="EDP of 750ml" />
								</f:facet>
								<h:inputText value="#{list.edp_state}"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list_disbale_flag eq 'T'}"
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:inputText>

							</rich:column>
							
							 
							
							
							 
							 
							 
							 

							 
								 
							









							<rich:column width="4%">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:selectBooleanCheckbox value="#{list.checkbox}"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.state_list_disbale_flag eq 'T'}" />


							</rich:column>




						</rich:dataTable>

					</div>
				</div>
				<div align="center">


					<h:commandButton
						action="#{application_for_MRP_EDP_Approval_22_23CSDAction.save}"
						value="Save" styleClass="btn btn-success btn-sm" />



					<rich:spacer width="20px;" />
					<h:commandButton styleClass="btn btn-warning btn-sm"
						action="#{application_for_MRP_EDP_Approval_22_23CSDAction.back}"
						value="Back"></h:commandButton>
				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>

			</h:panelGroup>
			<div class="row" align="left">
				<rich:spacer height="30px"></rich:spacer>
			</div>


			<div align="center">
				<rich:dataTable columnClasses="columnClass1" headerClass="TableHead"
					footerClass="TableHead" rowClasses="TableRow1,TableRow2"
					styleClass="DataTable" id="table" width="80%" rows="10"
					value="#{application_for_MRP_EDP_Approval_22_23CSDAction.savelist}"
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
							actionListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.Upload_documents}"
							styleClass="btn btn-primary">
						</h:commandButton>

						<h:outputLink rendered="#{list.digital_sign_date ne null}"
							value="/doc/ExciseUp/LabelRegistration_22_23/Applications/pdf//#{list.requestid}_MRP_APPROVAL_22_23_esign.pdf"
							target="_blank">
							<h:outputText value="View Digitally Sign Order"
								style="color: blue">
							</h:outputText>
						</h:outputLink>



					</rich:column>

					<rich:column>
						<f:facet name="header">
							<h:outputText value="Objection" style="  white-space: none">
							</h:outputText>
						</f:facet>

						<div align="center">
							<h:outputText rendered="#{!list.flag}" value="#{list.objection}"
								style="COLOR: #008040; FONT-WEIGHT: bold;" />
						</div>


						<h:commandButton rendered="#{list.flag}"
							styleClass="btn btn-primary" value="Reply"
							actionListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.getApplication_no}"
							action="#{application_for_MRP_EDP_Approval_22_23CSDAction.replyMethod}" />
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
				rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.upload_flg eq 'T' }">

				<div class="row " align="center">
					<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #e6ffff; width: 97%;">

						<div class="row " align="center">
							<rich:spacer height="20px"></rich:spacer>
						</div>
						<div class="col-md-12" align="center">
							<h:outputText
								value=" Application No.:#{application_for_MRP_EDP_Approval_22_23CSDAction.showApplication_no}"
								style="font-weight:bold; FONT-SIZE: x-large; font-family:Times New Roman" />
						</div>
						<div class="row " align="center">
							<rich:spacer height="20px"></rich:spacer>
						</div>
						<div class="row col-md-12">
							<div class="  col-md-6" align="left">
								<h:outputLink target="_blank"
									value="/doc/ExciseUp/LabelRegistration_22_23/pdf/Affidavit_Format_MRP.pdf"
									style="COLOR: #0000ff; FONT-STYLE: italic;">
						   Download Format for Affidavit 
						   </h:outputLink>
							</div>
							<div class="  col-md-6" align="right"></div>
						</div>
						<rich:spacer height="10px"></rich:spacer>


						<div class="row">
							<rich:dataTable id="table3" rows="10" width="50%"
								value="#{application_for_MRP_EDP_Approval_22_23CSDAction.showUploadeddocument}"
								var="list" headerClass="TableHead" footerClass="TableHead"
								rowClasses="TableRow1,TableRow2">



								<rich:column>
									<f:facet name="header">
										<h:outputText value="Sr. No.">
										</h:outputText>
									</f:facet>
									<h:outputText value="#{list.showUploadedSrNo}"
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
											value="#{application_for_MRP_EDP_Approval_22_23CSDAction.text12}"
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
							rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unitType eq 'IUCIVIL' }">




							 


							<div class="row">
								<rich:spacer height="10px"></rich:spacer>
							</div>

						</h:panelGroup>
						<div class="col-md-12 btn " style="background-color: beige;">
							<div class="col-md-1"></div>
							<h:panelGroup
								rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.unitType ne 'IUCIVIL' }">

								 
								 
								<div class="col-md-2" align="right">
									<h:outputLabel value="CSD Rate Fixation Letter :"
										styleClass="preformatted" style="FONT-WEIGHT: bold;"></h:outputLabel>


								</div>
								<div class="col-md-2" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.uploader12}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse12 , renpdftrue12"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-1 img-responsive" align="left">

									<a4j:outputPanel id="renpdftrue12">
										<h:outputLink
											rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.doc12Flg}"
											target="_blank"
											value="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFile12}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse12">
										<a4j:outputPanel
											rendered="#{!application_for_MRP_EDP_Approval_22_23CSDAction.doc12Flg}">
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
							<div class="col-md-2" align="left">
								<rich:fileUpload clearControlLabel="clear"
									stopControlLabel="Stop"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.uploader4}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse4 , renpdftrue4"></a4j:support>
								</rich:fileUpload>


							</div>
							<div class="col-md-1 img-responsive" align="left">

								<a4j:outputPanel id="renpdftrue4">
									<h:outputLink
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.doc4Flg}"
										target="_blank"
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFile4}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse4">
									<a4j:outputPanel
										rendered="#{!application_for_MRP_EDP_Approval_22_23CSDAction.doc4Flg}">
										<h:graphicImage value="/img/nodoc.png"
											style="width : 60px; height : 35px;"></h:graphicImage>

									</a4j:outputPanel>
								</a4j:outputPanel>
							</div>

						</div>
						<div class="row">
							<rich:spacer height="10px"></rich:spacer>
						</div>


						 



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
							<div class="col-md-2" align="left">
								<rich:fileUpload clearControlLabel="clear"
									stopControlLabel="Stop"
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.uploader9}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse9 , renpdftrue9"></a4j:support>
								</rich:fileUpload>


							</div>
							<div class="col-md-1 img-responsive" align="left">

								<a4j:outputPanel id="renpdftrue9">
									<h:outputLink
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.doc9Flg}"
										target="_blank"
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFile9}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse9">
									<a4j:outputPanel
										rendered="#{!application_for_MRP_EDP_Approval_22_23CSDAction.doc9Flg}">
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
									disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.uploader10}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse10 , renpdftrue10"></a4j:support>
								</rich:fileUpload>


							</div>
							<div class="col-md-1 img-responsive" align="left">

								<a4j:outputPanel id="renpdftrue10">
									<h:outputLink
										rendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.doc10Flg}"
										target="_blank"
										value="#{application_for_MRP_EDP_Approval_22_23CSDAction.viewFile10}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse10">
									<a4j:outputPanel
										rendered="#{!application_for_MRP_EDP_Approval_22_23CSDAction.doc10Flg}">
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
								disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
								action="#{application_for_MRP_EDP_Approval_22_23CSDAction.finalize}"
								value="Upload and Finalize" styleClass="btn btn-success btn-sm" />



							<rich:spacer width="20px;" />

							<h:commandButton
								disabled="#{application_for_MRP_EDP_Approval_22_23CSDAction.check_upload_flg eq 'T' }"
								action="#{application_for_MRP_EDP_Approval_22_23CSDAction.reset_uploading}"
								value="Reset" styleClass="btn btn-default btn-sm" />

							<rich:spacer width="20px;" />

							<h:commandButton
								action="#{application_for_MRP_EDP_Approval_22_23CSDAction.close_uploading}"
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

			<div class="row " align="center">
				<rich:spacer height="20px"></rich:spacer>
			</div>




		</h:form>
		<rich:modalPanel id="popup3" minWidth="1000" autosized="true"
			showWhenRendered="#{application_for_MRP_EDP_Approval_22_23CSDAction.panle_flg}">
			<f:facet name="header">
				<h:outputText value="Civil Brand Register or Not..." />

			</f:facet>

			<h:form>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>

				<div class="col-md-12">


					<div class="col-md-12">

						<div class="col-md-7" align="right">

							<h:outputText
								value="Whether this brand is already registered for Civil:"
								styleClass="generalExciseStyle"
								style="FONT-SIZE: large; FONT-WEIGHT: bold;"></h:outputText>
						</div>
						<div class="col-md-3" align="left">
							<h:selectOneRadio
								value="#{application_for_MRP_EDP_Approval_22_23CSDAction.yes_no}"
								valueChangeListener="#{application_for_MRP_EDP_Approval_22_23CSDAction.yes_no_listner}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="YES" itemLabel="Yes" />
								<f:selectItem itemValue="NO" itemLabel="No" />


							</h:selectOneRadio>
						</div>

					</div>

				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="col-md-12" align="center">


					<a4j:commandButton value="Submit"
						styleClass="btn btn-success btn-sm"
						oncomplete="#{rich:component('popup3')}.hide()" />
				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
			</h:form>
		</rich:modalPanel>
		<rich:modalPanel id="popup31" minWidth="1000" autosized="true"
			showWhenRendered="false">
			<f:facet name="header">
				<h:outputText value="Category Display" />

			</f:facet>

			<h:form>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>

				<div class="col-md-12">


					<div class="col-md-12" align="center">

						 

							<h:outputText
								value="Your register Brand Category is #{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat_database} and EDP wise Category is #{application_for_MRP_EDP_Approval_22_23CSDAction.liquor_cat} "
								styleClass="generalExciseStyle"
								style="FONT-SIZE: x-large; FONT-WEIGHT: bold;color:red"></h:outputText>
						 
							 
						 
</div>
				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="col-md-12" align="center">


					<a4j:commandButton value="Close"
						styleClass="btn btn-danger btn-sm"
						action="#{application_for_MRP_EDP_Approval_22_23CSDAction.close_poup}"
						oncomplete="#{rich:component('popup31')}.hide()" />
				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
			</h:form>
		</rich:modalPanel>
	</f:view>
</ui:composition>