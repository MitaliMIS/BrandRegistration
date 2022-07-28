<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<f:view>
		<h:form>
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

			<div class="row" align="center">
				<rich:spacer height="10px;"></rich:spacer>
				<h2>
					<h:outputText
						value="Application for Renewal of Brand / Label 2021-22"
						style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Monotype Corsiva;">
					</h:outputText>
				</h2>
				<h:inputHidden value="#{brand_Registration_2021_22Action.hidden}"></h:inputHidden>
			</div>

			<div class="panel panel-default">
				<div class="panel-body">

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
											<TD><rich:spacer height="10px"></rich:spacer></TD>
										</tr>
										<tr>
											<TD align="center" colspan="2"><h:outputLabel
													value="#{brand_Registration_2021_22Action.user_Name}"
													style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel></TD>

										</tr>
										<tr>
											<TD><rich:spacer height="5px"></rich:spacer></TD>
										</tr>
										<TR>

											<TD align="center" colspan="2"><h:outputLabel
													value="#{brand_Registration_2021_22Action.user_Address}"
													style="COLOR: #000000; FONT-SIZE: medium;"></h:outputLabel></TD>

										</TR>
										<tr>
											<TD><rich:spacer height="10px"></rich:spacer></TD>
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

					<div class="row">
						<div class="col-md-12 wow shake" align="center">
							<h:messages errorStyle="color:red" layout="TABLE" id="messages"
								infoStyle="color:green"
								style="background-color:#e1fcdf; font-size:18px; font-weight: bold">
							</h:messages>

						</div>
					</div>



				</div>

			</div>
			<h:panelGroup
				rendered="#{brand_Registration_2021_22Action.viewlabflg}">
				<h:form>


					<div class="col-md-12" align="center">


						<rich:dataTable align="center" width="70%" var="list22"
							value="#{brand_Registration_2021_22Action.renewalLabelList }"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2">

							<f:facet name="header">
								<h:outputText
									value="#{brand_Registration_2021_22Action.bopd.brand_namerenew } - #{brand_Registration_2021_22Action.labledt.package_name }"
									styleClass="generalHeaderOutputTable" />
							</f:facet>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Description "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText value="#{list22.lable_desc}"
									style="COLOR: #000040; FONT-SIZE: medium;" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="View Image"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								<h:outputLink target="_blank" value="#{list22.lable_img}">

									<h:graphicImage value="/img/download.gif"
										style="width : 60px; height : 35px;"></h:graphicImage>
								</h:outputLink>
							</rich:column>







						</rich:dataTable>

					</div>

					<div class="col-md-12" align="center">


						<h:commandButton value="BACK" styleClass="btn btn-danger"
							action="#{brand_Registration_2021_22Action.closelab}" />
					</div>

				</h:form>
			</h:panelGroup>
			<h:panelGroup
				rendered="#{brand_Registration_2021_22Action.viewpckflg}">

				<h:form>

					<div class="col-md-12">
						<div class="col-md-2" align="right">
							<h:outputLabel value="How much Year for Brand registration :"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu
								disabled="#{brand_Registration_2021_22Action.renewal_flg_21_22 eq 'T'}"
								value="#{brand_Registration_2021_22Action.renewyearforbrand}"
								styleClass="dropdown-menu1">
								<f:selectItem itemLabel="----Select----" itemValue="0" />

								<f:selectItem itemLabel="1 Year" itemValue="1" />

								<f:selectItem itemLabel="3 years" itemValue="3" />
							</h:selectOneMenu>
						</div>
						<div class="col-md-2" align="right">
							<h:outputLabel value="Whether this brand is already registered for Civil in 2021-22:"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu
							 onchange="this.form.submit();"
							disabled="#{brand_Registration_2021_22Action.renewal_flg_21_22 eq 'T'}"
								value="#{brand_Registration_2021_22Action.forCSD_Civil_renew}"
								styleClass="dropdown-menu1">
							 

								<f:selectItem itemLabel="NO" itemValue="NO" />
								<f:selectItem itemLabel="YES" itemValue="YES" />
							</h:selectOneMenu>
						</div>
						<div class="col-md-2" align="right">
							<h:outputLabel value="Civil Brand in 2021-22 :"
							rendered="#{brand_Registration_2021_22Action.forCSD_Civil_renew eq 'YES'}"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu rendered="#{brand_Registration_2021_22Action.forCSD_Civil_renew eq 'YES'}"
						disabled="#{brand_Registration_2021_22Action.renewal_flg_21_22 eq 'T'}"
								 onchange="this.form.submit();"
								value="#{brand_Registration_2021_22Action.civil_brand}"
								styleClass="dropdown-menu1">
							 <f:selectItems value="#{brand_Registration_2021_22Action.civilbrandeList}" />
							</h:selectOneMenu>
						</div>
						<div class="row">
							<rich:spacer height="30px"></rich:spacer>

						</div>

					</div>
					
					<div class="col-md-12">
						<div class="col-md-2" align="right">
							<h:outputLabel value="Label Change :"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu
							 
							disabled="#{brand_Registration_2021_22Action.renewal_flg_21_22 eq 'T'}"
								value="#{brand_Registration_2021_22Action.label_change_flg}"
								styleClass="dropdown-menu1">
								<f:selectItem itemLabel="NO" itemValue="NO" />
								<f:selectItem itemLabel="YES" itemValue="YES" />
							</h:selectOneMenu>
						</div>
						 
						 
						 
						 
						 

					</div>
					<div class="row">
							<rich:spacer height="30px"></rich:spacer>

						</div>
					<div class="col-md-12">


						<rich:dataTable align="center" width="100%" var="list22"
							value="#{brand_Registration_2021_22Action.renewalPackageList }"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2">

							<f:facet name="header">
								<h:outputText
									value="#{brand_Registration_2021_22Action.bopd.brand_namerenew }"
									styleClass="generalHeaderOutputTable" />
							</f:facet>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Package Name "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText value="#{list22.package_name}"
									style="COLOR: #000040; FONT-SIZE: medium;" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Quantity (ML)"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText value="#{list22.quantity}"
									style="COLOR: #000040; FONT-SIZE: medium;"></h:outputText>
							</rich:column>


							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Package Type"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								<h:outputText value="#{list22.package_type}"
									style="COLOR: #000040; FONT-SIZE: medium;"></h:outputText>
							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="* No.of Labels"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								<h:outputText value="#{list22.total_no}"
									style="COLOR: #000040; FONT-SIZE: medium;"></h:outputText>
							</rich:column>

							<rich:column align="center">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:commandButton value="View Label"
									action="#{brand_Registration_2021_22Action.viewlabel}"
									styleClass="btn btn-info btn-sm">
									<f:setPropertyActionListener value="#{list22}"
										target="#{brand_Registration_2021_22Action.labledt }" />
								</h:commandButton>

							</rich:column>
							<rich:column align="center">
								<f:facet name="header">
									<h:outputText value="Select for Renewel " />
								</f:facet>

								<h:selectBooleanCheckbox value="#{list22.checkbox}"
									rendered="#{list22.renwel_check_flg eq 'F' }"
									disabled="#{list22.total_no eq '0'}" />
								<h:outputLabel value="Requested For Renewal"
									style="COLOR: #008040;FONT-WEIGHT: bold; FONT-SIZE: 12px;"
									rendered="#{list22.renwel_check_flg eq 'T' }" />
							</rich:column>



						</rich:dataTable>

					</div>
					<div class="row" align="center">
						<rich:spacer height="20px"></rich:spacer>
					</div>

					<div class="col-md-12" align="center">

						<h:commandButton
							action="#{brand_Registration_2021_22Action.renewal}"
							value="Renew" styleClass="btn btn-success"
							rendered="#{brand_Registration_2021_22Action.renewal_flg eq 'T'}"
							onclick="if (! confirm('Your Brand will be forwarded for renewal. Do you consent ?') ) { return false;}; return true; ">



						</h:commandButton>
						<rich:spacer width="30px"></rich:spacer>
						<h:commandButton value="BACK" styleClass="btn btn-danger"
							action="#{brand_Registration_2021_22Action.closepckg}" />
					</div>

				</h:form>
			</h:panelGroup>
			<div class="row" align="right">
				<h:commandButton value="BACK" styleClass="btn btn-warning"
					rendered="#{!brand_Registration_2021_22Action.viewpckflg and !brand_Registration_2021_22Action.viewlabflg}"
					action="#{brand_Registration_2021_22Action.homerenew}">
				</h:commandButton>
			</div>
			<div class="container-fuild">
				<rich:dataTable id="table1"
					rendered="#{!brand_Registration_2021_22Action.viewpckflg and !brand_Registration_2021_22Action.viewlabflg}"
					rows="8" width="100%" var="list"
					value="#{brand_Registration_2021_22Action.renewalDetailList}">
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Sr.No."
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.srno}"></h:outputText>
					</rich:column>
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Application No."
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.application_no}"></h:outputText>
					</rich:column>

					<rich:column>
						<f:facet name="header">
							<h:outputText value="Brand Name "
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.brand_namerenew}"></h:outputText>
					</rich:column>



					<rich:column>
						<f:facet name="header">
							<h:outputText value="License Type"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.liquor_typerenew}"></h:outputText>
					</rich:column>







					<rich:column>
						<f:facet name="header">
							<h:outputText value="Category"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.liquor_categoryrenewdesc}"></h:outputText>
					</rich:column>
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Renew/Non-Renew"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.no_of_renew}/#{list.no_of_nonrenew}"></h:outputText>
					</rich:column>






					<rich:column>
						<f:facet name="header">
							<h:outputText value="Strength "
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.strengthrenew}">

						</h:outputText>
					</rich:column>



					<rich:column>
						<f:facet name="header">
							<h:outputText value=" " />
						</f:facet>
						<h:commandButton disabled="#{list.renewalbutn}"
							value="View Packages"
							action="#{brand_Registration_2021_22Action.viewpckg}"
							styleClass="btn btn-warning btn-sm">
							<f:setPropertyActionListener value="#{list}"
								target="#{brand_Registration_2021_22Action.bopd }" />

						</h:commandButton>
					</rich:column>


















					<f:facet name="footer">
						<rich:datascroller for="table1"></rich:datascroller>
					</f:facet>

				</rich:dataTable>
			</div>


			<div class="row">
				<rich:spacer height="30px;"></rich:spacer>
			</div>
		</h:form>


	</f:view>

</ui:composition>