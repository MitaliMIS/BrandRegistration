
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<h:form>
		<style>
		hr.style-seven {
    overflow: visible; /* For IE */
    height: 30px;
    border-style: solid;
    border-color: black;
    border-width: 1px 0 0 0;
    border-radius: 20px;
    width:70%;
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
</style>



		<f:view>
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



				<div class="row " align="center">
					<div align="center"  class="pghead">



						<h1>
                           <h:inputHidden value="#{advanceDutyRegister_Brand_Label_22_23Action.hidden }" />
							<h:outputText value=" Advance Duty Register for Brand and Label"
								style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
						</h1>
					</div>
				</div> 
 
				<div align="center" style=" height : 29px;">
					<div style="FONT-SIZE: x-large; FONT-WEIGHT: bold; width: 80%">
						<hr class="style-seven"></hr>
					</div>
				</div>
<div class="row " align="center">

					<h:outputLabel value="#{advanceDutyRegister_Brand_Label_22_23Action.name}"
						style="COLOR: #000000; FONT-SIZE: x-large;" />
				</div>
				<div class="row " align="center">
					<h:outputLabel value="#{advanceDutyRegister_Brand_Label_22_23Action.address}"
						style="COLOR: #000000; FONT-SIZE: medium;" />

				</div>


				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
				<div class="col-md-12" align="center">
				
					<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 95%;">
<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div><h:panelGroup rendered="#{advanceDutyRegister_Brand_Label_22_23Action.excise_flg eq 'T'}">
						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
							<h:selectOneRadio rendered="#{advanceDutyRegister_Brand_Label_22_23Action.excise_dl_flg eq 'T'}"
								value="#{advanceDutyRegister_Brand_Label_22_23Action.unit_type}"
								valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.unit_typeListener}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="D" itemLabel="Distillery" />
							 
							</h:selectOneRadio>
							<h:selectOneRadio rendered="#{advanceDutyRegister_Brand_Label_22_23Action.excise_br_flg eq 'T'}"
								value="#{advanceDutyRegister_Brand_Label_22_23Action.unit_type}"
								valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.unit_typeListener}"
								onchange="this.form.submit();">
								 
								<f:selectItem itemValue="B" itemLabel="Brewery" />
								 
							</h:selectOneRadio>
							<h:selectOneRadio rendered="#{advanceDutyRegister_Brand_Label_22_23Action.excise_all_flg eq 'T'}"
								value="#{advanceDutyRegister_Brand_Label_22_23Action.unit_type}"
								valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.unit_typeListener}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="D" itemLabel="Distillery" />
								<f:selectItem itemValue="B" itemLabel="Brewery" />
								<f:selectItem itemValue="BWFL" itemLabel="BWFL"/>
                                <f:selectItem itemValue="IU" itemLabel="IU"/>
                                 <f:selectItem itemValue="CSD" itemLabel="CSD"/>
							</h:selectOneRadio>
						</div>

						<div class=" row col-md-12">
							<rich:spacer height="20px" />
						</div>
						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
							<h:outputText value="Unit Name :- "
								style="FONT-STYLE: italic; FONT-WEIGHT: bold ;" />
							<h:selectOneMenu style=" width: 250px; height: 25px;" onchange="this.form.submit();"
								valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.unitListener}"
								value="#{advanceDutyRegister_Brand_Label_22_23Action.dist_id}">
								<f:selectItems
									value="#{advanceDutyRegister_Brand_Label_22_23Action.unit_List}" />
							</h:selectOneMenu>
						</div>

						<div class=" row col-md-12">
							<rich:spacer height="20px" />
						</div>
						</h:panelGroup>

						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
							Between Dates :
							<rich:calendar
								value="#{advanceDutyRegister_Brand_Label_22_23Action.fromdate}"></rich:calendar>
							and :
							<rich:calendar
								value="#{advanceDutyRegister_Brand_Label_22_23Action.todate}"></rich:calendar>
						</div>
						<rich:spacer height="20px" />





						<div class="row" align="center">

							<div class="col-md-3"></div>

							<div class="col-md-1 " align="right">
								<h:outputText value="Type"
									style="FONT-STYLE: italic; FONT-WEIGHT: bold ;" />
							</div>
							<div class="col-md-4 " align="left">
								<h:selectOneMenu style=" width: 250px; height: 25px;" onchange="this.form.submit();"
								valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.typeListener}"
									value="#{advanceDutyRegister_Brand_Label_22_23Action.type }">
									<f:selectItems
										value="#{advanceDutyRegister_Brand_Label_22_23Action.typeList}" />
								</h:selectOneMenu>
							</div>


							<div class="col-md-1 ">

								<h:selectOneRadio
									rendered="false"
									value="#{advanceDutyRegister_Brand_Label_22_23Action.vch_from}"
									onchange="this.form.submit();"
									valueChangeListener="#{advanceDutyRegister_Brand_Label_22_23Action.radioListener}">
									<f:selectItem itemValue="CLB1" itemLabel="CLB1" />
									<f:selectItem itemValue="CLB2" itemLabel="CLB2" />
								</h:selectOneRadio>
							</div>
							<div class="col-md-3 "></div>


						</div>
						<div class="row " align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>
					</div>
					
				</div>

				<div class="row" align="left">
					<rich:spacer height="10px"></rich:spacer>
				</div>


				<div class="col-md-12" align="center">

					<h:commandButton  
						action="#{advanceDutyRegister_Brand_Label_22_23Action.getdata}"
						value="View Register" styleClass="btn btn-info btn-sm" />
                        <rich:spacer width="20px;" />


			<h:commandButton action="#{advanceDutyRegister_Brand_Label_22_23Action.excel}" value="Generate Excel"
				styleClass="btn btn-info btn-sm"  />


			<h:outputLink styleClass="outputLinkEx"
				value="/doc/ExciseUp/MIS/Excel//#{advanceDutyRegister_Brand_Label_22_23Action.exlname}"
				target="_blank">
				<h:outputText styleClass="outputText" value="Download Excel"
					rendered="#{advanceDutyRegister_Brand_Label_22_23Action.excelFlag}"
					style="color: blue; font-family: serif; font-size: 10pt"></h:outputText>
			</h:outputLink>	
			<rich:spacer width="20px;" />
					<h:commandButton
						action="#{advanceDutyRegister_Brand_Label_22_23Action.reset}"
						value="Reset" styleClass="btn btn-default btn-sm" />

				</div>



				<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>

				<div class="col-md-12" align="center">

					<rich:dataTable id="table" rows="15" width="100%" var="list"  
						value="#{advanceDutyRegister_Brand_Label_22_23Action.showData}"
						headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2" styleClass="table table-hover">





						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr.No."
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputLabel value="#{list.srNo}">

							</h:outputLabel>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Date" styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.date_Dt}" readonly="true"></h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Description"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.description}">


							</h:outputText>
						</rich:column>



						<rich:column>
							<f:facet name="header">
								<h:outputText value="Challan Amount"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.produceBal}" readonly="true">

								<f:convertNumber maxFractionDigits="2"
									pattern="#############0.00" />
							</h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Dedected Amount"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.disptchBal}" readonly="true">
								<f:convertNumber maxFractionDigits="2"
									pattern="#############0.00" />

							</h:outputText>
						</rich:column>




						<rich:column>
							<f:facet name="header">
								<h:outputText value="Balance"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.balanceTot}" readonly="true">

								<f:convertNumber maxFractionDigits="2"
									pattern="#############0.00" />

							</h:outputText>
						</rich:column>





						<f:facet name="footer">
							<rich:datascroller for="table"></rich:datascroller>
						</f:facet>

					</rich:dataTable>













				</div>
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>



				<div class="col-md-12" align="center"></div>

				<div class="row " align="center">
					<rich:spacer height="40px"></rich:spacer>
				</div>



			</div>
		</f:view>
	</h:form>



</ui:composition>