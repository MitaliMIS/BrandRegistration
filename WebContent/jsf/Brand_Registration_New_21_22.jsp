
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
	width: 100%;
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
			<h:panelGroup>

				<h:form>
					<div class="row" align="center">
						<rich:spacer height="30px"></rich:spacer>
					</div>

					<div class="row">
						<div class="col-md-12">
							<h:messages errorStyle="color:red" layout="table" id="messages"
								infoStyle="color:green"
								style="FONT-SIZE: x-large; BACKGROUND-COLOR: #b6f8f8;" />
						</div>
					</div>
					<div class="row" align="center">
						<rich:spacer height="10px"></rich:spacer>
					</div>
					<div class="row">
						<div class="col-md-1"></div>
						<div align="center">
							<div class="col-md-10">
								<h:outputText
									value="Application for Brand/Label Registration 2021-22"
									style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Agency FB;"></h:outputText>
								<h:inputHidden
									value="#{brand_Registration_2021_22Action.hidden}"></h:inputHidden>
							</div>
						</div>
						<div class="col-md-1">
							<h:commandButton value="BACK" styleClass="btn btn-warning"
								action="#{brand_Registration_2021_22Action.bck}">
							</h:commandButton>
						</div>
					</div>

					<hr style="border-top: 4px #D0D3D4; border-top-style: dashed;"></hr>

					<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_Registration_2021_22Action.user_Name}"
								style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
						</div>
					</div>

					<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_Registration_2021_22Action.user_Address}"
								style="COLOR: #000000; FONT-SIZE: medium;"></h:outputLabel>
						</div>
					</div>

					<hr style="border-top: 4px #D0D3D4; border-top-style: dashed;"></hr>
					<div   align="center">

						<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
							<div class="col-md-12" align="center">
								<h:selectOneRadio style="width:35%" disabled="true"
									value="#{brand_Registration_2021_22Action.radioType}"
									onchange="this.form.submit();">
									<f:selectItem itemValue="D" itemLabel="Distillery" />
									<f:selectItem itemValue="B" itemLabel="Brewery" />
									<f:selectItem itemValue="BWFL" itemLabel="BWFL" />
									<f:selectItem itemValue="IMPORTUNIT" itemLabel="Importing Unit" />
								</h:selectOneRadio>
							</div>
						</div>


						<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
						<div class="row" style="BACKGROUND-COLOR: #dee0e2;">

							<h:selectOneRadio
								value="#{brand_Registration_2021_22Action.app_type}" disabled="#{brand_Registration_2021_22Action.app_type_flg eq 'T'}"
								valueChangeListener="#{brand_Registration_2021_22Action.app_typelistner}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="N" itemLabel="New Brand Registeration and New Package Size" />
								<f:selectItem itemValue="RNEW"
									itemLabel="Brand already Registered 2021-22 Add New Package" />
									<f:selectItem itemValue="LBC"
									itemLabel="Brand already Registered 2021-22 Package Label Change" />

							</h:selectOneRadio>

						</div>


						<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>








						<div  >
							<a4j:outputPanel id="lic">
								<h:panelGroup>
									<div
										style="border: 1px solid black; padding-bottom: 10px; padding-top: 10px; padding-left: 10px; padding-right: 10px; margin-left: 5px; margin-right: 5px; border-radius: 4px;">





										<div class="col-md-12">

											<div class="col-md-2" align="right">
												<h:outputText value=" Unit Name :"
													style="FONT-WEIGHT: bold;"></h:outputText>
											</div>
											<div class="col-md-3" align="left">
												<h:selectOneMenu
													value="#{brand_Registration_2021_22Action.dist_Brwry_bwfl_Id}"
													styleClass="dropdown-menu1"
													disabled="#{brand_Registration_2021_22Action.edit_flag}"
													valueChangeListener="#{brand_Registration_2021_22Action.getLicenceNo}"
													onchange="this.form.submit();">
													<f:selectItems
														value="#{brand_Registration_2021_22Action.dist_Brwry_bwfl_List}" />
												</h:selectOneMenu>
											</div>
											<div class="col-md-1"></div>
											<div class="col-md-2" align="right">
												<h:outputLabel value="License Type :"
													style="FONT-WEIGHT: bold;"
													rendered="#{brand_Registration_2021_22Action.radioType ne 'IMPORTUNIT'}"></h:outputLabel>

												<h:outputLabel value="Unit Type :"
													style="FONT-WEIGHT: bold;"
													rendered="#{brand_Registration_2021_22Action.radioType eq 'IMPORTUNIT'}"></h:outputLabel>
											</div>


											<div class="col-md-3" align="left">
												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_2021_22Action.type_Bwfl_Shop}"
												 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
													valueChangeListener="#{brand_Registration_2021_22Action.lic_no}"
													rendered="#{brand_Registration_2021_22Action.radioType eq 'D'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="FL3" itemValue="FL3" />
													<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
													<f:selectItem itemLabel="PD2" itemValue="PD2" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_2021_22Action.type_Bwfl_Shop}"
													 
													rendered="#{brand_Registration_2021_22Action.radioType eq 'BWFL'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="BWFL2A" itemValue="BWFL2A" />
													<f:selectItem itemLabel="BWFL2B" itemValue="BWFL2B" />
													<f:selectItem itemLabel="BWFL2C" itemValue="BWFL2C" />
													<f:selectItem itemLabel="BWFL2D" itemValue="BWFL2D" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_2021_22Action.type_Bwfl_Shop}"
												 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
													valueChangeListener="#{brand_Registration_2021_22Action.lic_no}"
													rendered="#{brand_Registration_2021_22Action.radioType eq 'B'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="FL3" itemValue="FL3" />
													<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_2021_22Action.type_Bwfl_Shop}"
													 valueChangeListener="#{brand_Registration_2021_22Action.type_Bwfl_Shopunitname}"
													disabled="#{brand_Registration_2021_22Action.edit_flag}"
													rendered="#{brand_Registration_2021_22Action.radioType eq 'IMPORTUNIT'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="NA" />
													<f:selectItem itemLabel="Importing Unit(Outside India)"
														itemValue="IU" />
													<f:selectItem itemLabel="Distillery For CSD(Outside UP)"
														itemValue="DCSD" />
													<f:selectItem itemLabel="Brewery For CSD(Outside UP)"
														itemValue="BCSD" />
													<f:selectItem itemLabel="Bottling Unit For CSD(Outside UP)"
														itemValue="BUCSD" />
													<f:selectItem itemLabel="Winery For CSD(Outside UP)"
														itemValue="WCSD" />
												</h:selectOneMenu>
											</div>

											<div class="col-md-1"></div>
										</div>
										
										<div class="row">
											<rich:spacer height="5px"></rich:spacer>
										</div>
										<div class="col-md-12">

													<div class="col-md-2" align="right">
														<h:outputText value=" Brand Name :"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															rendered="#{brand_Registration_2021_22Action.app_type eq 'N'}"
															value="#{brand_Registration_2021_22Action.brand_Name }">
														</h:inputText>


														<h:selectOneMenu
															rendered="#{brand_Registration_2021_22Action.app_type ne 'N'  }"
															value="#{brand_Registration_2021_22Action.brand_Name}"
															onchange="this.form.submit();"
															
															valueChangeListener="#{brand_Registration_2021_22Action.brandlistner1}"
															styleClass="dropdown-menu1">
															<f:selectItems
																value="#{brand_Registration_2021_22Action.brandeList1}" />
														</h:selectOneMenu>

													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputLabel value=" Brand Strength :"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
															value="#{brand_Registration_2021_22Action.brand_Strength}">
														</h:inputText>
													</div>
													<div class="col-md-1"></div>
												</div>

												<div class="row" align="center">
													<rich:spacer height="10px"></rich:spacer>
												</div>
										<div class="row" align="center">
											<div class="col-md-12" align="center">
												<div class="col-md-2" align="right">
													<h:outputLabel value="Origin :" style="FONT-WEIGHT: bold;" />
												</div>

												<div class="col-md-3" align="left">
													<h:selectOneMenu
														value="#{brand_Registration_2021_22Action.countrystateid}"
														styleClass="dropdown-menu1"
														 
														valueChangeListener="#{brand_Registration_2021_22Action.countrystate}"
														onchange="this.form.submit();">
														<f:selectItems
															value="#{brand_Registration_2021_22Action.countrystatelist}" />
													</h:selectOneMenu>
												</div>
												<div class="col-md-1" align="right"></div>
												<div class="col-md-2" align="right">
													<h:outputLabel
														value="How much Year for Brand registration :"
														style="FONT-WEIGHT: bold;"></h:outputLabel>
												</div>
												<div class="col-md-3" align="left">
													<h:selectOneMenu
													 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														value="#{brand_Registration_2021_22Action.yearforbrand}"
														styleClass="dropdown-menu1">
														<f:selectItem itemLabel="----Select----" itemValue="0" />

														<f:selectItem itemLabel="1 Year" itemValue="1" />
														 
														<f:selectItem itemLabel="3 years" itemValue="3" />
													</h:selectOneMenu>
												</div>

											</div>
										</div>
										<div class="row">
											<rich:spacer height="5px"></rich:spacer>
										</div>

										<div class="row">





											<div class="col-md-12">
												<div class="col-md-2" align="right">
													<h:outputText value=" For Domain :"
														style="FONT-WEIGHT: bold;"></h:outputText>
												</div>
												<div class="col-md-3" align="left">
													<h:selectOneMenu styleClass="dropdown-menu1"
													 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														value="#{brand_Registration_2021_22Action.domain}" onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="" />
														<f:selectItem itemLabel="Within UP" itemValue="1" />
														<f:selectItem itemLabel="Export Within India "
															itemValue="2" />
														<f:selectItem itemLabel="Export Outside India "
															itemValue="3" />
													</h:selectOneMenu>
												</div>
												<div class="col-md-1"></div>
												<div class="col-md-2" align="right">
													<h:outputLabel
														value="License Number(If bottle within state) :"
														style="FONT-WEIGHT: bold;"></h:outputLabel>
												</div>


												<div class="col-md-3" align="left">


													<h:inputText styleClass="inputtext"
													rendered="#{brand_Registration_2021_22Action.app_type ne 'N' }"
														value="#{brand_Registration_2021_22Action.licenceNoId}"
														id="bb"   
														disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T' or brand_Registration_2021_22Action.radioType eq 'BWFL' or brand_Registration_2021_22Action.radioType eq 'IMPORTUNIT'}">
														<a4j:support reRender="bb, table1" event="onblur"></a4j:support>
													</h:inputText>
													<h:selectOneMenu
															rendered="#{brand_Registration_2021_22Action.app_type eq 'N'  }"
															value="#{brand_Registration_2021_22Action.licenceNoId}"
															onchange="this.form.submit();"
															
															 
															styleClass="dropdown-menu1">
															<f:selectItems
																value="#{brand_Registration_2021_22Action.licencelist}" />
														</h:selectOneMenu>
												</div>
												<div class="col-md-1"></div>
											</div>
											<div class="row">
												<rich:spacer height="5px"></rich:spacer>
											</div>






											<div class="col-md-12">

												<div class="col-md-2" align="right">
													<h:outputText value=" Liquor Type :"
														style="FONT-WEIGHT: bold;"></h:outputText>
												</div>
												<div class="col-md-3" align="left">
													<h:selectOneMenu
														value="#{brand_Registration_2021_22Action.liquorTypeId}"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														styleClass="dropdown-menu1" onchange="this.form.submit();">
														<f:selectItems
															value="#{brand_Registration_2021_22Action.liquorTypeList}" />
													</h:selectOneMenu>

												</div>
												<div class="col-md-1"></div>
												<div class="col-md-2" align="right">
													<h:outputLabel value="SubType :" style="FONT-WEIGHT: bold;"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId ne 'F'}"></h:outputLabel>


												</div>
												<div class="col-md-3" align="left">
												<h:panelGroup 	rendered="#{brand_Registration_2021_22Action.app_type eq 'N'}" >
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="IMFL"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'FL'  and brand_Registration_2021_22Action.radioType eq 'D'}">
														<f:selectItem itemLabel="----Select----" itemValue="" />

														<f:selectItem itemLabel="Scotch" itemValue="4" />
														<f:selectItem itemLabel="Super Premium" itemValue="7" />
														<f:selectItem itemLabel="Premium" itemValue="6" />
														<f:selectItem itemLabel="Regular" itemValue="2" />
														<f:selectItem itemLabel="Medium" itemValue="3" />
														<f:selectItem itemLabel="Economy" itemValue="1" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="FL"  disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.radioType eq 'IMPORTUNIT' and brand_Registration_2021_22Action.liquorTypeId eq 'FL' or brand_Registration_2021_22Action.radioType eq 'IMPORTUNIT' and brand_Registration_2021_22Action.liquorTypeId eq 'IMPORTED FL'}">
														<f:selectItem itemLabel="----Select----" itemValue="" />
														<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
														<f:selectItem itemLabel="Other" itemValue="0" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'FL'   and brand_Registration_2021_22Action.radioType eq 'BWFL'}">
														<f:selectItem itemLabel="----Select----" itemValue="" />
														<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
														<f:selectItem itemLabel="Other" itemValue="0" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="Beer"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'BEER' or brand_Registration_2021_22Action.liquorTypeId eq 'IMPORTED BEER'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="" />
														<f:selectItem itemLabel="Strong" itemValue="9" />
														<f:selectItem itemLabel="Mild" itemValue="8" />

													</h:selectOneMenu>

													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="Wine"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'WINE' or brand_Registration_2021_22Action.liquorTypeId eq 'IMPORTED WINE'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="" />
														<f:selectItem itemLabel="Wine" itemValue="16" />

													</h:selectOneMenu>

													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="LAB"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'LAB'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="NA" />
														<f:selectItem itemLabel="LAB" itemValue="21" />

													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"
														id="CL"
														 disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_2021_22Action.liquorTypeId eq 'CL'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="NA" />
														<f:selectItem itemLabel="25% Plain" itemValue="10" />
														<f:selectItem itemLabel="25% Spiced" itemValue="21" />
														<f:selectItem itemLabel="36% Spiced" itemValue="22" />
														<f:selectItem itemLabel="42.8% Spiced" itemValue="23" />
														<f:selectItem itemLabel="42.8% UP Made Liquor" itemValue="24" />
														 

													</h:selectOneMenu>
													</h:panelGroup>
													<h:panelGroup 	rendered="#{brand_Registration_2021_22Action.app_type ne 'N'}">
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_2021_22Action.sub_type}"  disabled="#{brand_Registration_2021_22Action.existing_flg eq 'T'}" >
														<f:selectItem itemLabel="----Select----" itemValue="" />

														<f:selectItem itemLabel="Scotch" itemValue="4" />
														<f:selectItem itemLabel="Super Premium" itemValue="7" />
														<f:selectItem itemLabel="Premium" itemValue="6" />
														<f:selectItem itemLabel="Regular" itemValue="2" />
														<f:selectItem itemLabel="Medium" itemValue="3" />
														<f:selectItem itemLabel="Economy" itemValue="1" />
															<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
														<f:selectItem itemLabel="Other" itemValue="0" />
														<f:selectItem itemLabel="Strong" itemValue="9" />
														<f:selectItem itemLabel="Mild" itemValue="8" />
														<f:selectItem itemLabel="Wine" itemValue="16" />
															<f:selectItem itemLabel="LAB" itemValue="21" />
															<f:selectItem itemLabel="25% Plain" itemValue="10" />
														<f:selectItem itemLabel="25% Spiced" itemValue="21" />
														<f:selectItem itemLabel="36% Spiced" itemValue="22" />
														<f:selectItem itemLabel="42.8% Spiced" itemValue="23" />
														<f:selectItem itemLabel="42.8% UP Made Liquor" itemValue="24" />
														
													</h:selectOneMenu>
													</h:panelGroup>
												</div>
												<div class="col-md-1"></div>
											</div>
											<div class="row">
												<rich:spacer height="5px"></rich:spacer>

												<div class="col-md-12">
													<div class="col-md-2" align="right">
														<h:outputLabel value="For :" style="FONT-WEIGHT: bold;"
															></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
															value="#{brand_Registration_2021_22Action.forCSD_Civil}"
															 
															onchange="this.form.submit();">
															<f:selectItem itemLabel="----Select----" itemValue="" />
															<f:selectItem itemLabel="Civil" itemValue="Civil" />
															<f:selectItem itemLabel="CSD" itemValue="CSD" />

														</h:selectOneMenu>
													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputText
															value="Whether this brand is already registered for Civil:"
															rendered="#{brand_Registration_2021_22Action.forCSD_Civil eq 'CSD'}"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
															rendered="#{brand_Registration_2021_22Action.forCSD_Civil eq 'CSD'}"
															value="#{brand_Registration_2021_22Action.forCSD_Civilsubtype}"
															onchange="this.form.submit();" >

															<f:selectItem itemLabel="NO" itemValue="N" />
															<f:selectItem itemLabel="YES" itemValue="Y" />

														</h:selectOneMenu>

													</div>


													<div class="col-md-1"></div>
												</div>


												<div class="row">
													<rich:spacer height="10px"></rich:spacer>
												</div>


												<div class="col-md-12">


													<div class="col-md-2" align="right">
														<h:outputLabel value="Request Date :"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<rich:calendar disabled="true"
															value="#{brand_Registration_2021_22Action.brandRegistration_Date}">
														</rich:calendar>
													</div>
													<div class="col-md-2" align="right">
														<h:outputLabel value="Civil Brand :" 
														 
														rendered="#{brand_Registration_2021_22Action.app_type eq 'N' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y'}"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
														 onchange="this.form.submit();"
															rendered="#{brand_Registration_2021_22Action.app_type eq 'N' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y'}"
															 
															value="#{brand_Registration_2021_22Action.civil_brand_id}">
 
                                          <f:selectItems value="#{brand_Registration_2021_22Action.civilbrandeListnew}" />
														</h:selectOneMenu>
													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputLabel value="Label Change :" 
														rendered="#{brand_Registration_2021_22Action.app_type eq 'LBC'}"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
															rendered="#{brand_Registration_2021_22Action.app_type eq 'LBC'}"
															disabled="true"
															value="#{brand_Registration_2021_22Action.labelchange}">

															<f:selectItem itemLabel="NO" itemValue="NO" />
															<f:selectItem itemLabel="YES" itemValue="YES" />

														</h:selectOneMenu>
													</div>
													 
													
													 
												</div>

												<div class="row">
													<rich:spacer height="5px"></rich:spacer>
												</div>
												<div class="col-md-12">

													<div class="col-md-2" align="right"></div>
													<div class="col-md-3" align="left"></div>
													<div class="col-md-1"></div>

													<div class="col-md-2" align="right">
														<h:outputText value="2020-21 Licence No:"
															rendered="#{!brand_Registration_2021_22Action.renewal_flag and  brand_Registration_2021_22Action.radioType eq 'BWFL' and brand_Registration_2021_22Action.yesno eq 'YES'}"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															rendered="#{!brand_Registration_2021_22Action.renewal_flag and  brand_Registration_2021_22Action.radioType eq 'BWFL' and brand_Registration_2021_22Action.yesno eq 'YES'}"
															value="#{brand_Registration_2021_22Action.brandlic_No}">
														</h:inputText>
														<h:commandButton value="Get Brands"
															rendered="#{!brand_Registration_2021_22Action.renewal_flag and  brand_Registration_2021_22Action.radioType eq 'BWFL' and brand_Registration_2021_22Action.yesno eq 'YES'}"
															action="#{brand_Registration_2021_22Action.getBrands}"
															styleClass="btn btn-success btn-sm"></h:commandButton>
													</div>
												</div>
												<div class="row" align="center">
													<rich:spacer height="10px"></rich:spacer>
												</div>




												<div class="col-md-12">



													<div class="col-md-2" align="right">
														<h:outputText value="BWFL 2021-22 Licence No:"
															rendered="#{brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '2' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '3' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y'}"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															rendered="#{brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '2' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '3' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y'}"
															value="#{brand_Registration_2021_22Action.brandlic_No_csd}">
														</h:inputText>
														<h:commandButton value="Get Brands"
															rendered="#{brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '2' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_2021_22Action.yesno20_21 eq 'YES' and brand_Registration_2021_22Action.domain eq '3' and brand_Registration_2021_22Action.forCSD_Civil eq 'CSD' and  brand_Registration_2021_22Action.uniy_type1 eq 'CSD' and brand_Registration_2021_22Action.forCSD_Civilsubtype eq 'Y'}"
															action="#{brand_Registration_2021_22Action.getBrands_csd}"
															styleClass="btn btn-success btn-sm"></h:commandButton>
													</div>
												</div>

												<div class="row" align="center">
													<rich:spacer height="10px"></rich:spacer>
												</div>




												 

												<div class="row" align="center">
													<rich:spacer height="10px"></rich:spacer>
												</div>
											</div>
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
													value="#{brand_Registration_2021_22Action.addRowBranding}"
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
															disabled="#{brand_Registration_2021_22Action.yesno eq 'YES'}"
															styleClass="form-control">
															<a4j:support event="onkeyup" reRender="box">
															</a4j:support>
														</h:inputText>
													</rich:column>

													<rich:column>
														<f:facet name="header">
															<h:outputText value="Package Type">
															</h:outputText>
														</f:facet>

														<h:selectOneMenu styleClass="dropdown-menu" id="menu"
															disabled="#{brand_Registration_2021_22Action.yesno eq 'YES'}"
															value="#{list.pakageType_BrandAdd}"
															style=" width : 134px;">
															<f:selectItem itemValue="O" itemLabel="Select" />
															<f:selectItem itemValue="2" itemLabel="CAN" />
															<f:selectItem itemValue="1" itemLabel="Glass Bottle" />
															<f:selectItem itemValue="4" itemLabel="Tetra Pack" />
															<f:selectItem itemValue="3" itemLabel="Pet Bottle" />
															<f:selectItem itemValue="5" itemLabel="Sachet" />
															<f:selectItem itemValue="6" itemLabel="Keg" />
														</h:selectOneMenu>



													</rich:column>
													<rich:column rendered="#{(brand_Registration_2021_22Action.radioType eq 'D' or brand_Registration_2021_22Action.radioType eq 'B') and brand_Registration_2021_22Action.domain eq '1'}">
														<f:facet name="header">
															<h:outputText value="Box Size">
															</h:outputText>
														</f:facet>

														<h:selectOneMenu styleClass="dropdown-menu" id="box"
															value="#{list.box_size_id}" style=" width : 134px;">
															<f:selectItems value="#{list.box_sizelist}" />

														</h:selectOneMenu>



													</rich:column>


													<rich:column>
														<f:facet name="header">
															<h:outputText value="Remark">
															</h:outputText>
														</f:facet>

														<h:inputText value="#{list.remark_BrandAdd}"
															styleClass="form-control">
														</h:inputText>



													</rich:column>



													<rich:column>
														<f:facet name="header">
															<h:commandButton class="imag"
																action="#{brand_Registration_2021_22Action.addRowMethodBranding}"
																image="/img/add.png"
																disabled="#{list.show_Edit_addRow_Flag or brand_Registration_2021_22Action.yesno eq 'YES'}" />
														</f:facet>
														<h:commandButton class="imag"
															actionListener="#{brand_Registration_2021_22Action.deleteRowMethodBranding}"
															style="background: transparent;height:30px "
															image="/img/del.png"
															disabled="#{list.show_Edit_addRow_Flag or brand_Registration_2021_22Action.yesno eq 'YES'}" />
													</rich:column>



													<f:facet name="footer">
														<rich:datascroller for="table3"></rich:datascroller>
													</f:facet>
												</rich:dataTable>
											</div>
										</div>


										<div class="row" style="margin-top: 15px;" align="center">
											<h:commandButton value="Save"
												action="#{brand_Registration_2021_22Action.saveMethod}"
												styleClass="btn btn-success btn-sm"></h:commandButton>
											<rich:spacer width="15px;"></rich:spacer>
											<h:commandButton value="Reset"
												action="#{brand_Registration_2021_22Action.reset_Buttn}"
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
													value="#{brand_Registration_2021_22Action.showDataTablelist}"
													headerClass="TableHead" footerClass="TableHead"
													rowClasses="TableRow1,TableRow2">
													<rich:column>
														<f:facet name="header">
															<h:outputText value="Sr.No."
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_srNo}"></h:outputText>
													</rich:column>

													 


<rich:column>
														<f:facet name="header">
															<h:outputText value="Application Type"
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_apptype}"></h:outputText>
													</rich:column>
													 

													 



													<rich:column>
														<f:facet name="header">
															<h:outputText value="Licence / Unit Type"
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<a4j:outputPanel>
															<h:outputText value="#{list.show_LicenceType}"></h:outputText>
														</a4j:outputPanel>
													</rich:column>

													 

													<rich:column>
														<f:facet name="header">
															<h:outputText value="Brand Name "
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_brand_Name}">

														</h:outputText>
													</rich:column>




													<rich:column>
														<f:facet name="header">
															<h:outputText value="Strength "
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_brand_Strength}">

														</h:outputText>
													</rich:column>
													<rich:column>
														<f:facet name="header">
															<h:outputText value="Domain "
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_Domain}">

														</h:outputText>
													</rich:column>
													<rich:column>
														<f:facet name="header">
															<h:outputText value="For Civil/CSD "
																styleClass="generalHeaderOutputTable"
																style="FONT-WEIGHT: bold;"></h:outputText>
														</f:facet>
														<h:outputText value="#{list.show_civil_csd}">

														</h:outputText>
													</rich:column>



													<rich:column>
														<f:facet name="header">
															<h:outputText value="Edit" />
														</f:facet>
														<h:commandButton
															action="#{brand_Registration_2021_22Action.brand_Edit}"
															value="Edit" styleClass="btn btn-primary"
															disabled="#{list.show_brand_Finalize_flag eq 'F'}"
															onclick="if (! confirm('Your Brand will be Modify. Do you wish to continue ?') ) { return false;}; return true; ">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_2021_22Action.bopd}" />

														</h:commandButton>
													</rich:column>


													<rich:column>
														<f:facet name="header">
															<h:outputText value="Delete" />
														</f:facet>
														<h:commandButton
															action="#{brand_Registration_2021_22Action.brand_Delete}"
															value="Delete" styleClass="btn btn-danger"
															disabled="#{list.show_brand_Finalize_flag eq 'F'}"
															onclick="if (! confirm('Your Brand will be Deleted. Do you wish to continue ?') ) { return false;}; return true; ">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_2021_22Action.bopd }" />

														</h:commandButton>
													</rich:column>

													<rich:column>
														<f:facet name="header">
															<h:outputText value="Finalize" />
														</f:facet>
														<h:commandButton
															action="#{brand_Registration_2021_22Action.brand_Finalize}"
															style="background: transparent; height : 30px;"
															image="/img/approve.png"
															rendered="#{list.show_brand_Finalize_flag eq 'N'}">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_2021_22Action.bopd }" />

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

									</div>
								</h:panelGroup>


							</a4j:outputPanel>
						</div>











					</div>
				</h:form>
			</h:panelGroup>






			<div class="col-md-10">
				<!-- brand request pane -->

				<!-- add label pane -->



			</div>









		</h:form>
	</f:view>
</ui:composition>