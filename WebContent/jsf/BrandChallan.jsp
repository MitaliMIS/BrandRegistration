<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:t="http://myfaces.apache.org/tomahawk">
	<f:view>
		<h:form>


			<rich:separator lineType="dashed"></rich:separator>

			<div align="center">

				<h:outputText value="Make Payment"
					style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
			</div>

			<div class="col-md-12 wow shake" align="center">


				<h:inputHidden value="#{bankChallanAction.hidden}"></h:inputHidden>

				<h:messages errorStyle="color:red" layout="table" id="messages"
					infoStyle="color:green" style="font-weight: bold">
				</h:messages>

			</div>
			<rich:separator lineType="dashed"></rich:separator>
			<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLink target="_blank"
						value="/doc/ExciseUp/Applications/format/renewalaffidavitFormat.pdf"
						style="COLOR: #0000ff; FONT-STYLE: italic;">
						   How do I submit the Fee ? 
						   </h:outputLink>
				</div>
				<div class="  col-md-6" align="right">
					<h:commandButton action="#{bankChallanAction.moveToLabelDash}"
						value="Back To DashBoard" styleClass="btn   btn-danger"></h:commandButton>
				</div>
			</div>
			

			<h:panelGroup rendered="#{bankChallanAction.radioType1 eq 'A'}">
				<div class="row col-md-12" align="center">
					<h:selectOneRadio value="#{bankChallanAction.radioType}"
						valueChangeListener="#{bankChallanAction.radioVal}"
						onchange="this.form.submit();">

						<f:selectItem itemValue="P" itemLabel="Payment Pending" />
						<rich:spacer width="30px"></rich:spacer>
						<f:selectItem itemValue="D" itemLabel="Payment Done" />

					</h:selectOneRadio>
				</div>



				<rich:dataTable width="100%" var="list"
					value="#{bankChallanAction.brandChallan}">


					<rich:column>
						<f:facet name="header">
							<h:outputText value="App Id" />
						</f:facet>
						<h:outputText value="#{list.appid}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="App Date" />
						</f:facet>
						<h:outputText value="#{list.app_date}" />
					</rich:column>







					<rich:column>
						<f:facet name="header">
							<h:outputText value="LicenseCategory" />
						</f:facet>
						<h:outputText value="#{list.licenceCategory}" />
					</rich:column>

					<rich:column>
						<f:facet name="header">
							<h:outputText value="LicenseType" />
						</f:facet>
						<h:outputText value="#{list.licenceType}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="Domain" />
						</f:facet>
						<h:outputText value="#{list.domain}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="TotalNoOfLabel" />
						</f:facet>
						<h:outputText value="#{list.totalNoOfLabel}" />
					</rich:column>


					<rich:column>
						<f:facet name="header">
							<h:outputText value="Brand Fees" />
						</f:facet>
						<h:outputText value="#{list.brand_fees}" />
					</rich:column>
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Label Fees" />
						</f:facet>
						<h:outputText value="#{list.label_fees}" />
					</rich:column>





















					<rich:column align="center"
						rendered="#{bankChallanAction.radioType ne 'D'}">
						<f:facet name="header">
							<h:outputText value="" styleClass="generalHeaderOutputTable"
								style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:selectBooleanCheckbox value="#{list.checkbox}" />
					</rich:column>




				</rich:dataTable>

				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>



				<h:panelGroup
					rendered="#{bankChallanAction.radioType ne 'D'  }">


					<div class="row">
						<div class="col-md-12">

							<div class="col-md-6" align="center">
								<h:outputText value=" Map Challan For Brand :"
									style="FONT-WEIGHT: bold;"></h:outputText>


								<rich:dataTable columnClasses="columnClass1"
									headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2" styleClass="DataTable"
									id="table3" rows="10" width="95%"
									value="#{bankChallanAction.addRowBrand}" var="list">
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr.No">
											</h:outputText>
										</f:facet>
										<center>
											<h:outputText value="#{list.srNo_BrandAdd}"
												styleClass="generalHeaderStyleOutput">
											</h:outputText>
										</center>
									</rich:column>
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Map Challan For Brand :">
											</h:outputText>
										</f:facet>
																ABK<h:inputText value="#{list.challannamebr}"
											style="width:200px">

										</h:inputText>
									</rich:column>








									<rich:column>
										<f:facet name="header">
											<h:commandButton class="imag"
												action="#{bankChallanAction.addRowMethodBrand}"
												image="/img/add.png"
												disabled="#{list.show_Edit_addRow_Flag}" />
										</f:facet>

										<center>
											<h:commandButton class="imag"
												actionListener="#{bankChallanAction.deleteRowMethodBrand}"
												style="background: transparent;height:30px "
												image="/img/del.png" />
										</center>
									</rich:column>



									<f:facet name="footer">
										<rich:datascroller for="table3"></rich:datascroller>
									</f:facet>
								</rich:dataTable>
							</div>
							<div class="col-md-6" align="center">
								<h:outputText value=" Map Challan For Label :"
									style="FONT-WEIGHT: bold;"></h:outputText>

								<rich:dataTable columnClasses="columnClass1"
									headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2" styleClass="DataTable"
									id="table4" rows="10" width="95%"
									value="#{bankChallanAction.addRowlabel}" var="list">
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr.No">
											</h:outputText>
										</f:facet>
										<center>
											<h:outputText value="#{list.srNo_label}"
												styleClass="generalHeaderStyleOutput">
											</h:outputText>
										</center>
									</rich:column>

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Map Challan For Brand :">
											</h:outputText>
										</f:facet>
																
																ABK<h:inputText value="#{list.challannamelb}"
											style="width:200px">

										</h:inputText>

									</rich:column>








									<rich:column>
										<f:facet name="header">
											<h:commandButton class="imag"
												action="#{bankChallanAction.addRowMethodlabel}"
												image="/img/add.png" />
										</f:facet>
										<center>
											<h:commandButton class="imag"
												actionListener="#{bankChallanAction.deleteRowMethodlabel}"
												style="background: transparent;height:30px "
												image="/img/del.png" />
										</center>
									</rich:column>



									<f:facet name="footer">
										<rich:datascroller for="table4"></rich:datascroller>
									</f:facet>
								</rich:dataTable>
							</div>
						</div>


					</div>
					<div class="row" align="center">
						<rich:spacer height="30px"></rich:spacer>
					</div>



					<div align="center">
						<h:commandButton value="Finalize"
							styleClass="btn btn-sm  btn-success"
							action="#{bankChallanAction.finalizeData}">
							</h:commandButton>

                 
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
				</h:panelGroup>
			</h:panelGroup>

			


		</h:form>
	</f:view>
</ui:composition>