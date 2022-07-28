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
					<h:outputText value="Brand Registration 2019-2020"
						style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Monotype Corsiva;">
					</h:outputText>
				</h2>
				<h:inputHidden value="#{bR_19_20Action.hidden}"></h:inputHidden>
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
													value="#{bR_19_20Action.user_Name}"
													style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel></TD>

										</tr>
										<tr>
											<TD><rich:spacer height="5px"></rich:spacer></TD>
										</tr>
										<TR>

											<TD align="center" colspan="2"><h:outputLabel
													value="#{bR_19_20Action.user_Address}"
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
								style="background-color:#e1fcdf; font-size:15px; font-weight: bold">
							</h:messages>

						</div>
					</div>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
						<div class="col-md-12" align="center">
							<h:selectOneRadio style="width:25%" disabled="false"
								value="#{bR_19_20Action.radioType}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="D" itemLabel="Distillery" />
								<f:selectItem itemValue="B" itemLabel="Brewery" />
								<f:selectItem itemValue="BWFL" itemLabel="BWFL" />
								<f:selectItem itemValue="OtherUnit" itemLabel="Other Unit" />
							</h:selectOneRadio>
						</div>
					</div>


				</div>

			</div>

			<div class="container-fuild">
				<a4j:outputPanel id="lic">
					<h:panelGroup>
						<div
							style="border: 1px solid black; padding-bottom: 10px; padding-top: 10px; padding-left: 10px; padding-right: 10px; margin-left: 5px; margin-right: 5px; border-radius: 4px;">

							<div class="row">
								<div class="col-md-12">
									<h:outputLabel value="Basic Details : "
										style="FONT-WEIGHT: bold; COLOR: #0000ff; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
								</div>
							</div>
							<div>
								<rich:spacer height="10px" />
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-2" align="right">
										<h:outputText value=" Financial Year :"
											style="FONT-WEIGHT: bold;"></h:outputText>
									</div>
									<div class="col-md-3" align="left">
										<h:inputText style="width:100%;" styleClass="inputtext"
											value="#{bR_19_20Action.assessmentYear}"
											disabled="#{bR_19_20Action.edit_flag2}"
											readonly="true"></h:inputText>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="License Type :"
											style="FONT-WEIGHT: bold;"
											rendered="#{bR_19_20Action.radioType ne 'OtherUnit'}"></h:outputLabel>

										<h:outputLabel value="Unit Type :" style="FONT-WEIGHT: bold;"
											rendered="#{bR_19_20Action.radioType eq 'OtherUnit'}"></h:outputLabel>
									</div>


									<div class="col-md-3" align="left">
										<h:selectOneMenu styleClass="dropdown-menu1"
											value="#{bR_19_20Action.type_Bwfl_Shop}"
											disabled="#{bR_19_20Action.edit_flag2}"
											id="distillery"
											rendered="#{bR_19_20Action.radioType eq 'D'}"
											onchange="this.form.submit();">
											<f:selectItem itemLabel="----Select----" itemValue="" />
											<f:selectItem itemLabel="FL3" itemValue="FL3" />
											<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
											<f:selectItem itemLabel="CL" itemValue="CL" />
										</h:selectOneMenu>

										<h:selectOneMenu styleClass="dropdown-menu1"
											value="#{bR_19_20Action.type_Bwfl_Shop}"
											disabled="#{bR_19_20Action.edit_flag2}"
											id="bwfl_type"
											rendered="#{bR_19_20Action.radioType eq 'BWFL'}"
											onchange="this.form.submit();">
											<f:selectItem itemLabel="----Select----" itemValue="" />
											<f:selectItem itemLabel="BWFL2A" itemValue="BWFL2A" />
											<f:selectItem itemLabel="BWFL2B" itemValue="BWFL2B" />
											<f:selectItem itemLabel="BWFL2C" itemValue="BWFL2C" />
											<f:selectItem itemLabel="BWFL2D" itemValue="BWFL2D" />
										</h:selectOneMenu>

										<h:selectOneMenu styleClass="dropdown-menu1"
											value="#{bR_19_20Action.type_Bwfl_Shop}"
											disabled="#{bR_19_20Action.edit_flag2}"
											id="brewery"
											rendered="#{bR_19_20Action.radioType eq 'B'}"
											onchange="this.form.submit();">
											<f:selectItem itemLabel="----Select----" itemValue="" />
											<f:selectItem itemLabel="FL3" itemValue="FL3" />
											<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
										</h:selectOneMenu>

										<h:selectOneMenu styleClass="dropdown-menu1"
											value="#{bR_19_20Action.type_Bwfl_Shop}"
											disabled="#{bR_19_20Action.edit_flag2}"
											id="otherunit"
											rendered="#{bR_19_20Action.radioType eq 'OtherUnit'}"
											onchange="this.form.submit();">
											<f:selectItem itemLabel="----Select----" itemValue="NA" />
											<f:selectItem itemLabel="Importing Unit" itemValue="IU" />
											<f:selectItem itemLabel="Distillery For CSD" itemValue="DCSD" />
											<f:selectItem itemLabel="Brewery For CSD" itemValue="BCSD" />
											<f:selectItem itemLabel="Bottling Unit For CSD"
												itemValue="BUCSD" />
											<f:selectItem itemLabel="Winery For CSD" itemValue="WCSD" />
										</h:selectOneMenu>
									</div>
									<div class="col-md-1"></div>
								</div>
								<div>
									<rich:spacer height="20px" />
								</div>

								<div class="col-md-12">

									<div class="col-md-2" align="right">
										<h:outputText value=" Unit Name :" style="FONT-WEIGHT: bold;"></h:outputText>
									</div>
									<div class="col-md-3" align="left">
										<h:selectOneMenu
											value="#{bR_19_20Action.dist_Brwry_bwfl_Id}"
											styleClass="dropdown-menu1"
											disabled="#{bR_19_20Action.edit_flag}"
											onchange="this.form.submit();">
											<f:selectItems
												value="#{bR_19_20Action.dist_Brwry_bwfl_List}" />
										</h:selectOneMenu>
										<h:commandLink value="Add Unit"
											action="#{bR_19_20Action.add_unit}" />
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="License Number :"
											style="FONT-WEIGHT: bold;"></h:outputLabel>
									</div>


									<div class="col-md-3" align="left">


										<h:inputText styleClass="inputtext"
											value="#{bR_19_20Action.licenceNoId}"
											disabled="true" id="bb">
											<a4j:support reRender="bb, table1" event="onblur"></a4j:support>
										</h:inputText>
									</div>
									<div class="col-md-1"></div>
								</div>
								<div>
									<rich:spacer height="20px" />
								</div>

								<div class="col-md-12">

									<div class="col-md-2" align="right">
										<h:outputText value=" Brand Registration Number:"
											style="FONT-WEIGHT: bold;"></h:outputText>
									</div>
									<div class="col-md-3" align="left">
										<h:inputText styleClass="inputtext"
											value="#{bR_19_20Action.brandRegistration_No}"
											disabled="#{bR_19_20Action.edit_flag2}">
										</h:inputText>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="Brand Registration Date :"
											style="FONT-WEIGHT: bold;"></h:outputLabel>
									</div>

									<div class="col-md-3" align="left">
										<rich:calendar
											value="#{bR_19_20Action.brandRegistration_Date}">
										</rich:calendar>
									</div>
									<div class="col-md-1"></div>
								</div>

								<div>
									<rich:spacer height="20px" />
								</div>



								<div class="col-md-12">

									<div class="col-md-2" align="right">
										<h:outputText value=" Liquor Type :"
											style="FONT-WEIGHT: bold;"></h:outputText>
									</div>
									<div class="col-md-3" align="left">
										<h:selectOneMenu
											value="#{bR_19_20Action.liquorTypeId}"
											styleClass="dropdown-menu1" onchange="this.form.submit();"
											valueChangeListener="#{bR_19_20Action.strengthChangeEvent}"
											disabled="#{bR_19_20Action.edit_flag2}">
											<f:selectItems
												value="#{bR_19_20Action.liquorTypeList}" />
										</h:selectOneMenu>

									</div>
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value="For :" style="FONT-WEIGHT: bold;"
											rendered="#{bR_19_20Action.radioType ne 'BWFL'}"></h:outputLabel>
									</div>

									<div class="col-md-3" align="left">
										<h:selectOneMenu styleClass="dropdown-menu1"
											value="#{bR_19_20Action.forCSD_Civil}"
											rendered="#{bR_19_20Action.radioType ne 'BWFL'}"
											onchange="this.form.submit();"
											disabled="#{bR_19_20Action.edit_flag2}">
											<f:selectItem itemLabel="----Select----" itemValue="" />
											<f:selectItem itemLabel="Civil" itemValue="Civil" />
											<f:selectItem itemLabel="CSD" itemValue="CSD" />

										</h:selectOneMenu>
									</div>
									<div class="col-md-1"></div>
								</div>





								<div>
									<rich:spacer height="20px" />
								</div>
								<div class="col-md-12">
									<div class="col-md-2" align="right">
										<h:outputLabel value=" Domain :" style="FONT-WEIGHT: bold;"></h:outputLabel>
									</div>

									<div class="col-md-3" align="left">
										<h:selectOneMenu
											value="#{bR_19_20Action.brand_domain}"
											styleClass="dropdown-menu1" onchange="this.form.submit();"
											disabled="#{bR_19_20Action.edit_flag2}">
											<f:selectItem itemLabel="----Select----" itemValue="" />
											<f:selectItem itemLabel="Export" itemValue="EXP" />
											<f:selectItem itemLabel="Within UP" itemValue="UP" />
										</h:selectOneMenu>


									</div>
									<div class="col-md-1"></div>

									<div class="col-md-2" align="right">
										<h:outputLabel value="Liquor Category :"
											rendered="#{bR_19_20Action.type_Bwfl_Shop ne 'IU' and bR_19_20Action.brand_domain ne 'EXP'}"
											style="FONT-WEIGHT: bold;"></h:outputLabel>


									</div>
									<div class="col-md-3" align="left">

										<h:selectOneMenu
											value="#{bR_19_20Action.sub_type}"
											styleClass="dropdown-menu1" onchange="this.form.submit();"
											rendered="#{bR_19_20Action.type_Bwfl_Shop ne 'IU' and bR_19_20Action.brand_domain ne 'EXP'}"
											disabled="#{bR_19_20Action.edit_flag2}">
											<f:selectItems
												value="#{bR_19_20Action.liquorCategoryList}" />
										</h:selectOneMenu>


									</div>
								</div>

								<div>
									<rich:spacer height="20px" />
								</div>


								<div class="col-md-12">

									<div class="col-md-2" align="right">
										<h:outputText value=" Brand Name :" style="FONT-WEIGHT: bold;"></h:outputText>
									</div>
									<div class="col-md-3" align="left">
										<h:inputText styleClass="inputtext"
											value="#{bR_19_20Action.brand_Name}">
										</h:inputText>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-2" align="right">
										<h:outputLabel value=" Brand Strength :"
											style="FONT-WEIGHT: bold;"></h:outputLabel>
									</div>

									<div class="col-md-3" align="left">
										<h:selectOneMenu
											value="#{bR_19_20Action.brand_Strength}"
											styleClass="dropdown-menu1" onchange="this.form.submit();"
											rendered="#{bR_19_20Action.inputFlg}"
											disabled="#{bR_19_20Action.edit_flag2}">
											<f:selectItems
												value="#{bR_19_20Action.brandStrengthList}" />
										</h:selectOneMenu>

										<h:inputText styleClass="inputtext"
											rendered="#{!bR_19_20Action.inputFlg}"
											value="#{bR_19_20Action.brand_Strength}">
										</h:inputText>
									</div>
									<div class="col-md-1"></div>
								</div>

								<div>
									<rich:spacer height="20px" />
								</div>
								
								<div class="row">
								
								<div class="col-md-2" align="right">
								<h:outputText style="FONT-WEIGHT: bold;" rendered="#{bR_19_20Action.type_Bwfl_Shop eq 'IU'}">
								Country  :</h:outputText>
								</div>
								
								<div class="col-md-3" align="left">
								<h:selectOneMenu styleClass="dropdown-menu1" onchange="this.form.submit();"
								 rendered="#{bR_19_20Action.type_Bwfl_Shop eq 'IU'}"
								 value="#{bR_19_20Action.fl2d_country_code}">
								    <f:selectItems
												value="#{bR_19_20Action.brandCountryList}" />
								 </h:selectOneMenu>
								</div>
								
								</div>
								
								
								<div>
									<rich:spacer height="20px" />
								</div>





								<div class="row" align="center">
									<rich:spacer height="10px"></rich:spacer>
								</div>
							</div>
						</div>
						<div class="row" align="center">
							<rich:spacer height="20px"></rich:spacer>
						</div>
						<div class="col-md-12">
							<h:outputLabel value="Add Brand Details : "
								style="FONT-WEIGHT: bold; COLOR: #0000ff; FONT-SIZE: large; FONT-STYLE: italic;"></h:outputLabel>
						</div>
						<div class="row" align="center">
							<rich:spacer height="10px"></rich:spacer>
						</div>
						<div class="row" align="center">
							<div class="col-md-12" align="center">
								<rich:dataTable columnClasses="columnClass1"
									headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2" styleClass="DataTable"
									id="table3" rows="10" width="100%"
									value="#{bR_19_20Action.addRowBranding}"
									var="list">
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr.No">
											</h:outputText>
										</f:facet>
										<h:outputText value="#{list.srNo_BrandAdd}"
											styleClass="generalHeaderStyleOutput">
										</h:outputText>
									</rich:column>
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Size(ML)">
											</h:outputText>
										</f:facet>
										<h:inputText value="#{list.sizeML_BrandAdd}"
											styleClass="form-control">
											<a4j:support event="onblur" reRender="box">
											</a4j:support>
										</h:inputText>
									</rich:column>
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Package Type">
											</h:outputText>
										</f:facet>

										<h:selectOneMenu value="#{list.pakageType_BrandAdd}"
											styleClass="form-control">
											<f:selectItems
												value="#{bR_19_20Action.packageTypeList}" />
										</h:selectOneMenu>


									</rich:column>


									<rich:column>
										<f:facet name="header">
											<h:commandButton class="imag"
												action="#{bR_19_20Action.addRowMethodBranding}"
												image="/img/add.png" />
										</f:facet>
										<h:commandButton class="imag"
											actionListener="#{bR_19_20Action.deleteRowMethodBranding}"
											style="background: transparent;height:30px "
											image="/img/del.png" disabled="#{list.show_Edit_addRow_Flag}" />
									</rich:column>



									<f:facet name="footer">
										<rich:datascroller for="table3"></rich:datascroller>
									</f:facet>
								</rich:dataTable>
							</div>
						</div>


						<div class="row" style="margin-top: 15px;" align="center">
							<h:commandButton value="Save"
								action="#{bR_19_20Action.saveMethod}"
								styleClass="btn btn-success btn-sm"></h:commandButton>
							<rich:spacer width="15px;"></rich:spacer>
							<h:commandButton value="Reset"
								action="#{bR_19_20Action.reset_Buttn}"
								styleClass="btn btn-info btn-sm"></h:commandButton>
							<rich:spacer width="15px;"></rich:spacer>

						</div>
						<div class="row" align="center">
							<rich:spacer height="20px"></rich:spacer>
						</div>

						<div class="row" align="center">
							<div class="col-md-12" align="center">
								<rich:dataTable id="table1" style="background: #ffffff"
									rendered="true" rows="8" width="100%" var="list"
									value="#{bR_19_20Action.showDataTablelist}"
									headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2">
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr.No."
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_srNo}"
											styleClass="form-control"></h:outputText>
									</rich:column>

									<rich:column sortBy="#{list.show_brandRegistration_Date}">
										<f:facet name="header">
											<h:outputText value="Regi Date "
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_brandRegistration_Date}"
											styleClass="form-control"></h:outputText>
									</rich:column>



									<rich:column>
										<f:facet name="header">
											<h:outputText value="Industry Type"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_Industy_TypeName}"
											styleClass="form-control"></h:outputText>
									</rich:column>

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Unit Name"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_Industy_Name}"
											styleClass="form-control"></h:outputText>
									</rich:column>



									<rich:column>
										<f:facet name="header">
											<h:outputText value="Licence / Unit Type"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<a4j:outputPanel>
											<h:outputText value="#{list.show_LicenceType}"
												styleClass="form-control"></h:outputText>
										</a4j:outputPanel>
									</rich:column>

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Licence No"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_LicenceNo}"
											styleClass="form-control"></h:outputText>
									</rich:column>

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Brand Name "
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_brand_Name}"
											styleClass="form-control">

										</h:outputText>
									</rich:column>




									<rich:column>
										<f:facet name="header">
											<h:outputText value="Strength "
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_brand_Strength}"
											styleClass="form-control">

										</h:outputText>
									</rich:column>



									<rich:column>
										<f:facet name="header">
											<h:outputText value="Edit" />
										</f:facet>
										<h:commandButton
											action="#{bR_19_20Action.brand_Edit}"
											value="Edit" styleClass="btn btn-primary"
											onclick="if (! confirm('Your Brand will be Modify. Do you wish to continue ?') ) { return false;}; return true; ">

											<f:setPropertyActionListener value="#{list}"
												target="#{bR_19_20Action.bopd }" />

										</h:commandButton>
									</rich:column>








									<rich:column>
										<f:facet name="header">
											<h:outputText value="Delete" />
										</f:facet>
										<h:commandButton
											action="#{bR_19_20Action.brand_Delete}"
											value="Delete" styleClass="btn btn-danger" disabled="true"
											onclick="if (! confirm('Your Brand will be Deleted. Do you wish to continue ?') ) { return false;}; return true; ">

											<f:setPropertyActionListener value="#{list}"
												target="#{bR_19_20Action.bopd }" />

										</h:commandButton>
									</rich:column>








									<rich:column
										rendered="#{bR_19_20Action.approvingFlg}">
										<f:facet name="header">
											<h:outputText value="Finalize" />
										</f:facet>
										<h:commandButton
											action="#{bR_19_20Action.brand_Finalize}"
											style="background: transparent; height : 30px;"
											image="/img/approve.png"
											rendered="#{list.show_brand_Finalize_flag eq 'N'}">

											<f:setPropertyActionListener value="#{list}"
												target="#{bR_19_20Action.bopd }" />

										</h:commandButton>
										<h:outputText value="Finalize Done"
											style="color: red; font-weight: bold; "
											rendered="#{list.show_brand_Finalize_flag eq 'F'}" />


									</rich:column>

									<f:facet name="footer">
										<rich:datascroller for="table1"></rich:datascroller>
									</f:facet>

								</rich:dataTable>

							</div>
						</div>


					</h:panelGroup>


				</a4j:outputPanel>
			</div>


			<div class="row">
				<rich:spacer height="30px;"></rich:spacer>
			</div>
		</h:form>
	</f:view>

</ui:composition>