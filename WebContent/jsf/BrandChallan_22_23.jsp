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

				<h:outputText value="Make Payment 2022-23"
					style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
			</div>

			<div class="col-md-12 wow shake" align="center">


				<h:inputHidden value="#{brandChallan_22_23Action.hidden}"></h:inputHidden>

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
					<h:commandButton action="#{brandChallan_22_23Action.moveToLabelDash}"
						value="Back To DashBoard" styleClass="btn   btn-danger"></h:commandButton>
				</div>
			</div>
			<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					 <h:outputText value=" For Brand Head Details :- Challan Head = 3900800050000 and G6 Head=9" style="FONT-SIZE: large; color: red"  />
						 
					 </div>
				<div class="  col-md-6" align="right">
					  
					<h:outputText value=" For Label Head Details :- Challan Head = 3900800050000 and G6 Head=10" 
					 style="FONT-SIZE: large; color: red" rendered="#{brandChallan_22_23Action.unitType eq 'D'}"/>	
					 <h:outputText value=" For Label Head Details :- Challan Head = 3900800050000 and G6 Head=11" 
					 style="FONT-SIZE: large; color: red" rendered="#{brandChallan_22_23Action.unitType eq 'B'}"/>
					  <h:outputText value=" For Label Head Details BWFL2A :- Challan Head = 3900800050000 and G6 Head=10 and (BWFL2C/BWFL2D) :- Challan Head = 3900800050000 and G6 Head=12 and BWFL2B  :- Challan Head = 3900800050000 and G6 Head=11" 
					 style="FONT-SIZE: large; color: red" rendered="#{brandChallan_22_23Action.unitType eq 'BWFL'}"/>		
					 <h:outputText value=" For Label Head Details :- Challan Head = 3900800050000 and G6 Head=10,11,12" 
					 style="FONT-SIZE: large; color: red" rendered="#{brandChallan_22_23Action.unitType eq 'CSD'}"/>   
					  <h:outputText value=" For Label Head Details :- Challan Head = 3900800050000 and G6 Head=10" 
					 style="FONT-SIZE: large; color: red" rendered="#{brandChallan_22_23Action.unitType eq 'IMPORTUNIT'}"/> 
				</div>
				 
			</div>
			<div class="row col-md-12">
				<div class="  col-md-6" align="left">
				 <h:outputLink styleClass="outputLinkEx"
											 
											value="https:///www.upexciseportal.in/auth/portal/MIS/Financial/Advance+Duty+Register+for+Brand+and+Label"
											target="_blank">
											<h:outputText
											value="View Advance Duty for Brand and Label"
											style="COLOR: blue; font-family: serif; font-size: 18px"></h:outputText>
											 </h:outputLink>
						   
				</div>
				</div>
			

			<h:panelGroup rendered="#{brandChallan_22_23Action.radioType1 eq 'A'}">
				<div class="row col-md-12" align="center">
					<h:selectOneRadio value="#{brandChallan_22_23Action.radioType}"
						valueChangeListener="#{brandChallan_22_23Action.radioVal}"
						onchange="this.form.submit();">

						<f:selectItem itemValue="P" itemLabel="  Pending" />
						<rich:spacer width="30px"></rich:spacer>
						<f:selectItem itemValue="D" itemLabel="  Done" />

					</h:selectOneRadio>
				</div>



				<rich:dataTable width="100%" var="list"
					value="#{brandChallan_22_23Action.brandChallan}">


					<rich:column>
						<f:facet name="header">
							<h:outputText value="App Id" />
						</f:facet>
						<h:outputText value="#{list.appid}" />
					</rich:column>




					<rich:column>
						<f:facet name="header">
							<h:outputText value="Created Date" />
						</f:facet>
						<h:outputText value="#{list.app_date}" />
					</rich:column>
<rich:column rendered="#{brandChallan_22_23Action.radioType eq 'D'}">
						<f:facet name="header">
							<h:outputText value="Application Date" />
						</f:facet>
						<h:outputText value="#{list.application_date}" />
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
						<h:outputText value="#{list.licence__Type}" />
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
						rendered="#{brandChallan_22_23Action.radioType ne 'D'}">
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
					rendered="#{brandChallan_22_23Action.radioType ne 'D'  }">


					<div class="row">
						<div class="col-md-12">

							<div class="col-md-3" align="right">
								<h:outputText value="Advance Brand fee :"
									style="FONT-WEIGHT: bold;"></h:outputText>


								 
							</div>
							<div class="col-md-3" align="left">
								<h:outputText value="#{brandChallan_22_23Action.brand_advance_fee}"
									style="FONT-WEIGHT: bold; color: blue">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
									</h:outputText>


								 
							</div>
							<div class="col-md-3" align="right">
								<h:outputText value="Advance Label fee :"
									style="FONT-WEIGHT: bold;"></h:outputText>

								
							</div>
							<div class="col-md-3" align="left">
								<h:outputText value="#{brandChallan_22_23Action.label_advance_fee}"
									style="FONT-WEIGHT: bold; color: blue">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
									</h:outputText>


								 
							</div>
						</div>


					</div>
					<div class="row" align="center">
						<rich:spacer height="30px"></rich:spacer>
					</div>



					<div align="center">
						<h:commandButton value="Finalize"
							styleClass="btn btn-sm  btn-success"
							action="#{brandChallan_22_23Action.finalizeData}">
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