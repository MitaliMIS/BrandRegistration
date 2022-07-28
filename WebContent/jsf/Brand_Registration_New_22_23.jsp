
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
									value="Application for Brand/Label Registration 2022-23"
									style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Agency FB;"></h:outputText>
								<h:inputHidden value="#{brand_Registration_New_22_23Action.hidden}"   >
									
									 
									</h:inputHidden>
								
								  
									 
							</div>
						</div>
						<div class="col-md-1">
							<h:commandButton value="BACK" styleClass="btn btn-warning"
								action="#{brand_Registration_New_22_23Action.bck}">
							</h:commandButton>
						</div>
					</div>

					<hr style="border-top: 4px #D0D3D4; border-top-style: dashed;"></hr>

					<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_Registration_New_22_23Action.user_Name}"
								style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
						</div>
					</div>

					<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_Registration_New_22_23Action.user_Address}"
								style="COLOR: #000000; FONT-SIZE: medium;"></h:outputLabel>
						</div>
					</div>

					<hr style="border-top: 4px #D0D3D4; border-top-style: dashed;"></hr>
					<div   align="center">

						<div class="row" align="center" style="BACKGROUND-COLOR: #dee0e2;">
							<div class="col-md-12" align="center">
								<h:selectOneRadio style="width:35%" disabled="true"
									value="#{brand_Registration_New_22_23Action.radioType}"
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
								value="#{brand_Registration_New_22_23Action.app_type}" disabled="true"
								valueChangeListener="#{brand_Registration_New_22_23Action.app_typelistner}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="N" itemLabel="New Brand" />
								<f:selectItem itemValue="RNEW"
									itemLabel="Existing Brand with New Package" />
									<f:selectItem itemValue="LBC"
									itemLabel="Brand and Label Approved to Label Change" />

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
												 
													value="#{brand_Registration_New_22_23Action.dist_Brwry_bwfl_Id}"
													styleClass="dropdown-menu1"
													disabled="#{brand_Registration_New_22_23Action.edit_flag or brand_Registration_New_22_23Action.app_type ne 'N'}"
													valueChangeListener="#{brand_Registration_New_22_23Action.getLicenceNo}"
													onchange="this.form.submit();">
													<f:selectItems
														value="#{brand_Registration_New_22_23Action.dist_Brwry_bwfl_List}" />
												</h:selectOneMenu>
											</div>
											<div class="col-md-1"></div>
											<div class="col-md-2" align="right">
												<h:outputLabel value="License Type :"
													style="FONT-WEIGHT: bold;"
													rendered="#{brand_Registration_New_22_23Action.radioType ne 'IMPORTUNIT'}"></h:outputLabel>

												<h:outputLabel value="Unit Type :"
													style="FONT-WEIGHT: bold;"
													rendered="#{brand_Registration_New_22_23Action.radioType eq 'IMPORTUNIT'}"></h:outputLabel>
											</div>


											<div class="col-md-3" align="left">
												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_New_22_23Action.type_Bwfl_Shop}"
												 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
													valueChangeListener="#{brand_Registration_New_22_23Action.lic_no}"
													rendered="#{brand_Registration_New_22_23Action.radioType eq 'D'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="FL3" itemValue="FL3" />
													<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
													 
													<f:selectItem itemLabel="CLB1" itemValue="CLB1" />
													<f:selectItem itemLabel="CBL2" itemValue="CLB2" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_New_22_23Action.type_Bwfl_Shop}"
													 
													rendered="#{brand_Registration_New_22_23Action.radioType eq 'BWFL'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="BWFL2A" itemValue="BWFL2A" />
													<f:selectItem itemLabel="BWFL2B" itemValue="BWFL2B" />
													<f:selectItem itemLabel="BWFL2C" itemValue="BWFL2C" />
													<f:selectItem itemLabel="BWFL2D" itemValue="BWFL2D" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_New_22_23Action.type_Bwfl_Shop}"
												 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
													valueChangeListener="#{brand_Registration_New_22_23Action.lic_no}"
													rendered="#{brand_Registration_New_22_23Action.radioType eq 'B'}"
													onchange="this.form.submit();">
													<f:selectItem itemLabel="----Select----" itemValue="" />
													<f:selectItem itemLabel="FL3" itemValue="FL3" />
													<f:selectItem itemLabel="FL3A" itemValue="FL3A" />
												</h:selectOneMenu>

												<h:selectOneMenu styleClass="dropdown-menu1"
													value="#{brand_Registration_New_22_23Action.type_Bwfl_Shop}"
													 valueChangeListener="#{brand_Registration_New_22_23Action.type_Bwfl_Shopunitname}"
													disabled="#{brand_Registration_New_22_23Action.edit_flag}"
													rendered="#{brand_Registration_New_22_23Action.radioType eq 'IMPORTUNIT'}"
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
															rendered="#{brand_Registration_New_22_23Action.app_type eq 'N'}"
															value="#{brand_Registration_New_22_23Action.brand_Name }">
														</h:inputText>


														<h:selectOneMenu
															rendered="#{brand_Registration_New_22_23Action.app_type ne 'N'  }"
															value="#{brand_Registration_New_22_23Action.brand_Name}"
															onchange="this.form.submit();"
															
															valueChangeListener="#{brand_Registration_New_22_23Action.brandlistner1}"
															styleClass="dropdown-menu1">
															<f:selectItems
																value="#{brand_Registration_New_22_23Action.brandeList1}" />
														</h:selectOneMenu>

													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputLabel value=" Brand Strength :"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
															value="#{brand_Registration_New_22_23Action.brand_Strength}">
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
														value="#{brand_Registration_New_22_23Action.countrystateid}"
														styleClass="dropdown-menu1"
														  
														valueChangeListener="#{brand_Registration_New_22_23Action.countrystate}"
														onchange="this.form.submit();">
														<f:selectItems
															value="#{brand_Registration_New_22_23Action.countrystatelist}" />
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
													 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														value="#{brand_Registration_New_22_23Action.yearforbrand}"
														styleClass="dropdown-menu1">
														 

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
													<h:outputText value=" For Domain (Sale In) :"
														style="FONT-WEIGHT: bold;"></h:outputText>
												</div>
												<div class="col-md-3" align="left">
													<h:selectOneMenu styleClass="dropdown-menu1"
													 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														value="#{brand_Registration_New_22_23Action.domain}" onchange="this.form.submit();">
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
													rendered="#{brand_Registration_New_22_23Action.app_type ne 'N' }"
														value="#{brand_Registration_New_22_23Action.licenceNoId}"
														id="bb"   
														disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T' or brand_Registration_New_22_23Action.radioType eq 'BWFL' or brand_Registration_New_22_23Action.radioType eq 'IMPORTUNIT'}">
														<a4j:support reRender="bb, table1" event="onblur"></a4j:support>
													</h:inputText>
													<h:selectOneMenu
															rendered="#{brand_Registration_New_22_23Action.app_type eq 'N'  }"
															value="#{brand_Registration_New_22_23Action.licenceNoId}"
															onchange="this.form.submit();"
															
															 
															styleClass="dropdown-menu1">
															<f:selectItems
																value="#{brand_Registration_New_22_23Action.licencelist}" />
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
														value="#{brand_Registration_New_22_23Action.liquorTypeId}"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														styleClass="dropdown-menu1" onchange="this.form.submit();">
														<f:selectItems
															value="#{brand_Registration_New_22_23Action.liquorTypeList}" />
													</h:selectOneMenu>

												</div>
												<div class="col-md-1"></div>
												<div class="col-md-2" align="right">
													<h:outputLabel value="Liquor Category :" style="FONT-WEIGHT: bold;"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId ne 'F'}"></h:outputLabel>


												</div>
												<div class="col-md-3" align="left">
												  
													<h:selectOneMenu styleClass="dropdown-menu1" rendered="#{brand_Registration_New_22_23Action.liquorTypeId ne 'F'}"
														value="#{brand_Registration_New_22_23Action.liquor_Category_id}"  disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}" >
														 
														<f:selectItems value="#{brand_Registration_New_22_23Action.liquor_Category_id_list}" />
														
													</h:selectOneMenu>
													 
												</div>
												
												<div class="col-md-1"></div>
											</div>
											
											<div class="col-md-12">

												<div class="col-md-2" align="right">
													 
												</div>
												<div class="col-md-3" align="left">
													 

												</div>
												<div class="col-md-1"></div>
												<div class="col-md-2" align="right">
													<h:outputLabel value="SubType :" style="FONT-WEIGHT: bold;"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId ne 'F'}"></h:outputLabel>


												</div>
												<div class="col-md-3" align="left">
												<h:panelGroup 	rendered="#{brand_Registration_New_22_23Action.app_type eq 'N'}" >
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="IMFL"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'FL'  and brand_Registration_New_22_23Action.radioType eq 'D'}">
														<f:selectItem itemLabel="----Select----" itemValue="0" />

														<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
															<f:selectItem itemLabel="Other" itemValue="NA" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="FL"  disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.radioType eq 'IMPORTUNIT' and brand_Registration_New_22_23Action.liquorTypeId eq 'FL' or brand_Registration_New_22_23Action.radioType eq 'IMPORTUNIT' and brand_Registration_New_22_23Action.liquorTypeId eq 'IMPORTED FL'}">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
														<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
														<f:selectItem itemLabel="Other" itemValue="NA" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'FL'   and brand_Registration_New_22_23Action.radioType eq 'BWFL'}">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
														<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
															<f:selectItem itemLabel="Other" itemValue="NA" />
													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="Beer"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'BEER' or brand_Registration_New_22_23Action.liquorTypeId eq 'IMPORTED BEER'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
														<f:selectItem itemLabel="Strong" itemValue="9" />
														<f:selectItem itemLabel="Mild" itemValue="8" />

													</h:selectOneMenu>

													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="Wine"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'WINE' or brand_Registration_New_22_23Action.liquorTypeId eq 'IMPORTED WINE'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
														<f:selectItem itemLabel="Wine" itemValue="16" />

													</h:selectOneMenu>

													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="LAB"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'LAB'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
														<f:selectItem itemLabel="LAB" itemValue="20" />

													</h:selectOneMenu>
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"
														id="CL"
														 disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}"
														rendered="#{brand_Registration_New_22_23Action.liquorTypeId eq 'CL'}"
														onchange="this.form.submit();">
														<f:selectItem itemLabel="----Select----" itemValue="0" />
													 
														<f:selectItem itemLabel="25% Spiced" itemValue="21" />
														<f:selectItem itemLabel="36% Spiced" itemValue="22" />
													    <f:selectItem itemLabel="42.8% Spiced" itemValue="23" />
														<f:selectItem itemLabel="42.8% UP Made Liquor" itemValue="24" />
														 

													</h:selectOneMenu>
													</h:panelGroup>
													<h:panelGroup 	rendered="#{brand_Registration_New_22_23Action.app_type ne 'N' and brand_Registration_New_22_23Action.liquorTypeId ne 'F'}">
													<h:selectOneMenu styleClass="dropdown-menu1"
														value="#{brand_Registration_New_22_23Action.sub_type}"  disabled="#{brand_Registration_New_22_23Action.existing_flg eq 'T'}" >
														<f:selectItem itemLabel="----Select----" itemValue="0" />

														 
															<f:selectItem itemLabel="Whisky" itemValue="17" />
														<f:selectItem itemLabel="Rum" itemValue="19" />
														<f:selectItem itemLabel="Brandy" itemValue="18" />
														<f:selectItem itemLabel="Vodka" itemValue="15" />
														<f:selectItem itemLabel="Gin" itemValue="14" />
														<f:selectItem itemLabel="Other" itemValue="0" />
														<f:selectItem itemLabel="Strong" itemValue="9" />
														<f:selectItem itemLabel="Mild" itemValue="8" />
														<f:selectItem itemLabel="Wine" itemValue="16" />
															<f:selectItem itemLabel="LAB" itemValue="20" />
															 
														<f:selectItem itemLabel="25% Spiced" itemValue="21" />
														<f:selectItem itemLabel="36% Spiced" itemValue="22" /> 
														  <f:selectItem itemLabel="42.8% Spiced" itemValue="23" />
														<f:selectItem itemLabel="42.8% UP Made Liquor" itemValue="24" />
															<f:selectItem itemLabel="Other" itemValue="NA" />
														
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
															value="#{brand_Registration_New_22_23Action.forCSD_Civil}"
															 disabled="#{brand_Registration_New_22_23Action.app_type ne 'N'}"
															onchange="this.form.submit();">
															<f:selectItem itemLabel="----Select----" itemValue="" />
															<f:selectItem itemLabel="Civil" itemValue="Civil" />
															<f:selectItem itemLabel="CSD" itemValue="CSD" />

														</h:selectOneMenu>
													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputText rendered="#{brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD'}"
															value="Whether this brand is already registered for Civil :" 
															style="FONT-WEIGHT: bold;"></h:outputText>
															<h:outputText rendered="#{brand_Registration_New_22_23Action.forCSD_Civil eq 'Civil'}"
															value="Whether this brand is already registered for CSD:" 
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"  disabled="#{brand_Registration_New_22_23Action.app_type ne 'N'}"
															value="#{brand_Registration_New_22_23Action.forCSD_Civilsubtype}"
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
															value="#{brand_Registration_New_22_23Action.brandRegistration_Date}">
														</rich:calendar>
													</div>
													<div class="col-md-2" align="right">
														<h:outputLabel value="Civil Brand :" 
														 
														rendered="#{brand_Registration_New_22_23Action.app_type eq 'N' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'
														 and brand_Registration_New_22_23Action.forCSD_Civil eq  'CSD'}"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
															
															<h:outputLabel value="CSD Brand :" 
														 
														rendered="#{brand_Registration_New_22_23Action.app_type eq 'N' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'
														 and brand_Registration_New_22_23Action.forCSD_Civil eq 'Civil'}"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
														 onchange="this.form.submit();"
															rendered="#{brand_Registration_New_22_23Action.app_type eq 'N' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'}"
															 
															value="#{brand_Registration_New_22_23Action.civil_brand_id}">
 
                                          <f:selectItems value="#{brand_Registration_New_22_23Action.civilbrandeListnew}" />
														</h:selectOneMenu>
													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														<h:outputLabel value="Label Change :" 
														rendered="#{brand_Registration_New_22_23Action.app_type eq 'LBC'}"
															style="FONT-WEIGHT: bold;"></h:outputLabel>
													</div>

													<div class="col-md-3" align="left">
														<h:selectOneMenu styleClass="dropdown-menu1"
															rendered="#{brand_Registration_New_22_23Action.app_type eq 'LBC'}"
															disabled="true"
															value="#{brand_Registration_New_22_23Action.labelchange}">

															<f:selectItem itemLabel="NO" itemValue="NO" />
															<f:selectItem itemLabel="YES" itemValue="YES" />

														</h:selectOneMenu>
													</div>
													 
													
													 
												</div>

												<div class="row">
													<rich:spacer height="5px"></rich:spacer>
												</div>
												<div class="col-md-12">

													<div class="col-md-2" align="right">
														<h:outputText value="Trademark No. (Only in Digits) :"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															disabled="#{brand_Registration_New_22_23Action.app_type ne 'N'}"
															value="#{brand_Registration_New_22_23Action.trade_mark_no_new}">
														</h:inputText>


														 
													</div>
													<div class="col-md-1"></div>
													<div class="col-md-2" align="right">
														 
													</div>

													<div class="col-md-3" align="left">
														 
													</div>
													<div class="col-md-1"></div>
												</div>
												<div class="col-md-12">

													<div class="col-md-2" align="right"></div>
													<div class="col-md-3" align="left"></div>
													<div class="col-md-1"></div>

													<div class="col-md-2" align="right">
														<h:outputText value="2020-21 Licence No:"
															rendered="#{!brand_Registration_New_22_23Action.renewal_flag and  brand_Registration_New_22_23Action.radioType eq 'BWFL' and brand_Registration_New_22_23Action.yesno eq 'YES'}"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															rendered="#{!brand_Registration_New_22_23Action.renewal_flag and  brand_Registration_New_22_23Action.radioType eq 'BWFL' and brand_Registration_New_22_23Action.yesno eq 'YES'}"
															value="#{brand_Registration_New_22_23Action.brandlic_No}">
														</h:inputText>
														<h:commandButton value="Get Brands"
															rendered="#{!brand_Registration_New_22_23Action.renewal_flag and  brand_Registration_New_22_23Action.radioType eq 'BWFL' and brand_Registration_New_22_23Action.yesno eq 'YES'}"
															action="#{brand_Registration_New_22_23Action.getBrands}"
															styleClass="btn btn-success btn-sm"></h:commandButton>
													</div>
												</div>
												<div class="row" align="center">
													<rich:spacer height="10px"></rich:spacer>
												</div>




												<div class="col-md-12">



													<div class="col-md-2" align="right">
														<h:outputText value="BWFL 2021-22 Licence No:"
															rendered="#{brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '2' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '3' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'}"
															style="FONT-WEIGHT: bold;"></h:outputText>
													</div>
													<div class="col-md-3" align="left">
														<h:inputText styleClass="inputtext"
															rendered="#{brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '2' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '3' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'}"
															value="#{brand_Registration_New_22_23Action.brandlic_No_csd}">
														</h:inputText>
														<h:commandButton value="Get Brands"
															rendered="#{brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '2' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y' or brand_Registration_New_22_23Action.yesno20_21 eq 'YES' and brand_Registration_New_22_23Action.domain eq '3' and brand_Registration_New_22_23Action.forCSD_Civil eq 'CSD' and  brand_Registration_New_22_23Action.uniy_type1 eq 'CSD' and brand_Registration_New_22_23Action.forCSD_Civilsubtype eq 'Y'}"
															action="#{brand_Registration_New_22_23Action.getBrands_csd}"
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
													value="#{brand_Registration_New_22_23Action.addRowBranding}"
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
															disabled="#{brand_Registration_New_22_23Action.yesno eq 'YES' or brand_Registration_New_22_23Action.app_type eq 'LBC'}"
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
															disabled="#{brand_Registration_New_22_23Action.yesno eq 'YES' or brand_Registration_New_22_23Action.app_type eq 'LBC'}"
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
													<rich:column rendered="#{(brand_Registration_New_22_23Action.radioType eq 'D' or brand_Registration_New_22_23Action.radioType eq 'B') and brand_Registration_New_22_23Action.domain eq '1'}">
														<f:facet name="header">
															<h:outputText value="Box Size">
															</h:outputText>
														</f:facet>

														<h:selectOneMenu styleClass="dropdown-menu" id="box"
															disabled="#{brand_Registration_New_22_23Action.yesno eq 'YES' or brand_Registration_New_22_23Action.app_type eq 'LBC'}"
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
																action="#{brand_Registration_New_22_23Action.addRowMethodBranding}"
																image="/img/add.png"
																disabled="#{list.show_Edit_addRow_Flag or brand_Registration_New_22_23Action.yesno eq 'YES' or brand_Registration_New_22_23Action.app_type eq 'LBC'}" />
														</f:facet>
														<h:commandButton class="imag"
															actionListener="#{brand_Registration_New_22_23Action.deleteRowMethodBranding}"
															style="background: transparent;height:30px "
															image="/img/del.png"
															disabled="#{list.show_Edit_addRow_Flag or brand_Registration_New_22_23Action.yesno eq 'YES' }" />
													</rich:column>



													<f:facet name="footer">
														<rich:datascroller for="table3"></rich:datascroller>
													</f:facet>
												</rich:dataTable>
											</div>
										</div>


										<div class="row" style="margin-top: 15px;" align="center">
											<h:commandButton value="Save"
												action="#{brand_Registration_New_22_23Action.saveMethod}"
												styleClass="btn btn-success btn-sm"></h:commandButton>
											<rich:spacer width="15px;"></rich:spacer>
											<h:commandButton value="Reset"
												action="#{brand_Registration_New_22_23Action.reset_Buttn}"
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
													value="#{brand_Registration_New_22_23Action.showDataTablelist}"
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
															action="#{brand_Registration_New_22_23Action.brand_Edit}"
															value="Edit" styleClass="btn btn-primary"
															disabled="#{list.show_brand_Finalize_flag eq 'F'}"
															onclick="if (! confirm('Your Brand will be Modify. Do you wish to continue ?') ) { return false;}; return true; ">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_New_22_23Action.bopd}" />

														</h:commandButton>
													</rich:column>


													<rich:column>
														<f:facet name="header">
															<h:outputText value="Delete" />
														</f:facet>
														<h:commandButton
															action="#{brand_Registration_New_22_23Action.brand_Delete}"
															value="Delete" styleClass="btn btn-danger"
															disabled="#{list.show_brand_Finalize_flag eq 'F'}"
															onclick="if (! confirm('Your Brand will be Deleted. Do you wish to continue ?') ) { return false;}; return true; ">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_New_22_23Action.bopd }" />

														</h:commandButton>
													</rich:column>

													<rich:column>
														<f:facet name="header">
															<h:outputText value="Finalize" />
														</f:facet>
														<h:commandButton
															action="#{brand_Registration_New_22_23Action.brand_Finalize}"
															style="background: transparent; height : 30px;"
															image="/img/approve.png"
															rendered="#{list.show_brand_Finalize_flag eq 'N'}">

															<f:setPropertyActionListener value="#{list}"
																target="#{brand_Registration_New_22_23Action.bopd }" />

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
		
		
		
		
			<rich:modalPanel id="popup34" minWidth="1000" autosized="true" showWhenRendered="#{brand_Registration_New_22_23Action.panle_flg}">
			 <f:facet name="header" >
				<h:outputText value="Renewal Brand List" style="FONT-SIZE: large; FONT-WEIGHT: bold;"/>

			</f:facet>

			<h:form>


				<div class="col-md-12">

<rich:dataTable id="table1" rows="10" width="100%" var="list"
					value="#{brand_Registration_New_22_23Action.renewalDetailList_popup}">
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Sr.No."
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.srno_popup}"></h:outputText>
					</rich:column>
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Application No."
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.application_no_popup}"></h:outputText>
					</rich:column>
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Valid Till"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.valid_till_popup}"></h:outputText>
					</rich:column>
					

					<rich:column>
						<f:facet name="header">
							<h:outputText value="Brand Name "
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.brand_namerenew_popup}"></h:outputText>
					</rich:column>



					<rich:column>
						<f:facet name="header">
							<h:outputText value="License Type"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.liquor_typerenew_popup}"></h:outputText>
					</rich:column>







					<rich:column>
						<f:facet name="header">
							<h:outputText value="Category"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.liquor_categoryrenewdesc_popup}"></h:outputText>
					</rich:column>
					 






					<rich:column>
						<f:facet name="header">
							<h:outputText value="Strength "
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.strengthrenew_popup}">

						</h:outputText>
					</rich:column>
                 <f:facet name="footer">
						<rich:datascroller for="table1"></rich:datascroller>
					</f:facet>

				</rich:dataTable>

				</div>
				<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
				<div class="row"  >
				<div class="col-md-12">
								
								<div class="col-md-7" align="right">
									 
									<h:outputText
										value="Brand is present in above table."
										styleClass="generalExciseStyle" style="FONT-SIZE: large; FONT-WEIGHT: bold;"></h:outputText>
									</div>	<div class="col-md-3" align="left">
                                 <h:selectOneRadio
								value="#{brand_Registration_New_22_23Action.yes_no_renew}" 
								 valueChangeListener="#{brand_Registration_New_22_23Action.yes_no_renewlistner}"
								onchange="this.form.submit();">
								<f:selectItem itemValue="YES" itemLabel="Yes" />
								<f:selectItem itemValue="NO" itemLabel="No" />
									 

							</h:selectOneRadio  >
								</div>

							</div>
							<h:panelGroup rendered="#{brand_Registration_New_22_23Action.yes_no_renew eq 'NO'}">
							<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
							<div class="col-md-12">
								
								<div class="col-md-7" align="right">
									 
									<h:outputText
										value="Do you want to add new package size in existing Brand."
										styleClass="generalExciseStyle" style="FONT-SIZE: large; FONT-WEIGHT: bold;"></h:outputText>
									</div>	<div class="col-md-3" align="left">
                                 <h:selectOneRadio
								value="#{brand_Registration_New_22_23Action.yes_no_excist}" 
								valueChangeListener="#{brand_Registration_New_22_23Action.yes_no_excistlistner}"
								onchange="this.form.submit();"
								disabled="#{brand_Registration_New_22_23Action.yes_no_new eq 'YES' or brand_Registration_New_22_23Action.yes_no_label eq 'YES'}">
								<f:selectItem itemValue="YES" itemLabel="Yes" />
								<f:selectItem itemValue="NO" itemLabel="No" />
									 

							</h:selectOneRadio>
								</div>

							</div>
							<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
							<div class="col-md-12">
								
								<div class="col-md-7" align="right">
									 
									<h:outputText
										value="Have you already renewed/registered Brand/Label but want to change label."
										styleClass="generalExciseStyle" style="FONT-SIZE: large; FONT-WEIGHT: bold;"></h:outputText>
									</div>	<div class="col-md-3" align="left">
                                 <h:selectOneRadio
								value="#{brand_Registration_New_22_23Action.yes_no_label}" 
							 valueChangeListener="#{brand_Registration_New_22_23Action.yes_no_labellistner}"
								onchange="this.form.submit();"
								disabled="#{brand_Registration_New_22_23Action.yes_no_excist eq 'YES' or brand_Registration_New_22_23Action.yes_no_new eq 'YES'}"  >
								<f:selectItem itemValue="YES" itemLabel="Yes" />
								<f:selectItem itemValue="NO" itemLabel="No" />
									 

							</h:selectOneRadio>
								</div>

							</div>
							<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
							<div class="col-md-12">
								
								<div class="col-md-7" align="right">
									 
									<h:outputText
										value="Do you want to add new Brand and package size."
										styleClass="generalExciseStyle" style="FONT-SIZE: large; FONT-WEIGHT: bold;"></h:outputText>
									</div>	<div class="col-md-3" align="left">
                                 <h:selectOneRadio
								value="#{brand_Registration_New_22_23Action.yes_no_new}" 
								 valueChangeListener="#{brand_Registration_New_22_23Action.yes_no_newlistner}"
								onchange="this.form.submit();"
								disabled="#{brand_Registration_New_22_23Action.yes_no_excist eq 'YES' or brand_Registration_New_22_23Action.yes_no_label eq 'YES'}">
								<f:selectItem itemValue="YES" itemLabel="Yes" />
								<f:selectItem itemValue="NO" itemLabel="No" />
									 

							</h:selectOneRadio>
								</div>

							</div>
							<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
						</h:panelGroup>
						<h:panelGroup rendered="#{brand_Registration_New_22_23Action.yes_no_renew eq 'YES'}">
						<div align="center">
						<h:outputText 
										value="Go to the Renewal section and Renew the brand. if you are register the brand in this section, then ETIN New generated.You can't rollover the brand."
										styleClass="generalExciseStyle" style="FONT-SIZE: x-large; FONT-WEIGHT: bold; color: red"></h:outputText>
						</div>
						<div>
							<rich:spacer height="20px;"></rich:spacer>
						</div>
						</h:panelGroup>
						
				
				</div>

				<div class="col-md-12" align="center">


					<a4j:commandButton value="Back" styleClass="btn btn-danger btn-sm"
					 rendered="#{brand_Registration_New_22_23Action.yes_no_renew eq 'YES'}"
						oncomplete="#{rich:component('popup34')}.hide()" 
						action="#{brand_Registration_New_22_23Action.bck}"/>
						
						<a4j:commandButton value="Submit" styleClass="btn btn-success btn-sm"
						 rendered="#{brand_Registration_New_22_23Action.yes_no_renew eq 'NO'}"
						 disabled="#{brand_Registration_New_22_23Action.yes_no_renew eq 'NO'  
						 and brand_Registration_New_22_23Action.yes_no_excist eq 'NO' and brand_Registration_New_22_23Action.yes_no_new eq 'NO'}"
						oncomplete="#{rich:component('popup34')}.hide()" />
						<a4j:commandButton value="Back" styleClass="btn btn-danger btn-sm"
						 rendered="#{brand_Registration_New_22_23Action.yes_no_renew eq 'NO'}"
						 action="#{brand_Registration_New_22_23Action.bck}"
						oncomplete="#{rich:component('popup34')}.hide()" />
						 
				</div>

			</h:form>
		</rich:modalPanel>
		
		
		
		
		
		
	</f:view>
</ui:composition>