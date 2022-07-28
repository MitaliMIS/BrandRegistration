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
						value="Application for Renewal of Brand / Label 2022-23"
						style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Monotype Corsiva;">
					</h:outputText>
				</h2>
				<h:inputHidden value="#{brand_Registration_New_22_23Action.hidden}"></h:inputHidden>
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
													value="#{brand_Registration_New_22_23Action.user_Name}"
													style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel></TD>

										</tr>
										<tr>
											<TD><rich:spacer height="5px"></rich:spacer></TD>
										</tr>
										<TR>

											<TD align="center" colspan="2"><h:outputLabel
													value="#{brand_Registration_New_22_23Action.user_Address}"
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
				rendered="#{brand_Registration_New_22_23Action.viewlabflg}">
				<h:form>


					<div class="col-md-12" align="center">


						<rich:dataTable align="center" width="70%" var="list22"
							value="#{brand_Registration_New_22_23Action.renewalLabelList }"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2">

							<f:facet name="header">
								<h:outputText
									value="#{brand_Registration_New_22_23Action.bopd.brand_namerenew } - #{brand_Registration_New_22_23Action.labledt.package_name }"
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
							action="#{brand_Registration_New_22_23Action.closelab}" />
					</div>

				</h:form>
			</h:panelGroup>
			<h:panelGroup
				rendered="#{brand_Registration_New_22_23Action.viewpckflg}">

				<h:form>

					<div class="col-md-12">
						<div class="col-md-2" align="right">
							<h:outputLabel value="How many Year for Brand registration :"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu
								disabled="#{brand_Registration_New_22_23Action.renewal_flg_21_22 eq 'T'}"
								value="#{brand_Registration_New_22_23Action.renewyearforbrand}"
								styleClass="dropdown-menu1">
								<f:selectItem itemLabel="----Select----" itemValue="0" />

								<f:selectItem itemLabel="1 Year" itemValue="1" />

								<f:selectItem itemLabel="3 years" itemValue="3" />
							</h:selectOneMenu>
						</div>
						<div class="col-md-2" align="right">
							<h:outputLabel value="Whether this brand is already registered for Civil in 2022-23:"
							rendered="#{brand_Registration_New_22_23Action.civilcsd eq 'CSD'}"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
								
								<h:outputLabel value="Whether this brand is already registered for CSD in 2022-23:"
							rendered="#{brand_Registration_New_22_23Action.civilcsd eq 'Civil'}"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu
							 onchange="this.form.submit();" rendered="#{brand_Registration_New_22_23Action.civilcsd eq 'CSD' or brand_Registration_New_22_23Action.civilcsd eq 'Civil'}"
							disabled="#{brand_Registration_New_22_23Action.renewal_flg_21_22 eq 'T'}"
								value="#{brand_Registration_New_22_23Action.forCSD_Civil_renew}"
								styleClass="dropdown-menu1">
							 

								<f:selectItem itemLabel="NO" itemValue="NO" />
								<f:selectItem itemLabel="YES" itemValue="YES" />
							</h:selectOneMenu>
						</div>
						<div class="col-md-2" align="right">
							<h:outputLabel value="Civil Brand in 2022-23 :"
							rendered="#{brand_Registration_New_22_23Action.forCSD_Civil_renew eq 'YES'  and  brand_Registration_New_22_23Action.civilcsd eq 'CSD' }"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
								
								<h:outputLabel value="CSD Brand in 2022-23 :"
							rendered="#{brand_Registration_New_22_23Action.forCSD_Civil_renew eq 'YES' and  brand_Registration_New_22_23Action.civilcsd eq 'Civil'}"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu rendered="#{brand_Registration_New_22_23Action.forCSD_Civil_renew eq 'YES'}"
						disabled="#{brand_Registration_New_22_23Action.renewal_flg_21_22 eq 'T'}"
								 onchange="this.form.submit();"
								value="#{brand_Registration_New_22_23Action.civil_brand}"
								styleClass="dropdown-menu1">
							 <f:selectItems value="#{brand_Registration_New_22_23Action.civilbrandeList}" />
							</h:selectOneMenu>
						</div>
						<div class="row">
							<rich:spacer height="30px"></rich:spacer>

						</div>

					</div>
					<div class="col-md-12">
						<div class="col-md-2" align="right">
							<h:outputLabel value="want to add package in this brand:" rendered="#{brand_Registration_New_22_23Action.domain_type eq 'EXPORT' or brand_Registration_New_22_23Action.domain_type eq 'EOI'}"
								style="FONT-WEIGHT: bold;"></h:outputLabel>
						</div>
						<div class="col-md-2" align="left">
							<h:selectOneMenu value="#{brand_Registration_New_22_23Action.add_pack_yes_no}"
							rendered="#{brand_Registration_New_22_23Action.domain_type eq 'EXPORT' or brand_Registration_New_22_23Action.domain_type eq 'EOI'}"
								styleClass="dropdown-menu1" onchange="this.form.submit();">
								 <f:selectItem itemLabel="NO" itemValue="NO" />

								<f:selectItem itemLabel="YES" itemValue="YES" />
							</h:selectOneMenu>
						</div>
						 
						 
						 
						 
						<div class="row">
							<rich:spacer height="30px"></rich:spacer>

						</div>

					</div>
					
					<div class="col-md-12">
						<div class="col-md-2" align="right">
							 
						</div>
						<div class="col-md-2" align="left">
							 
						</div>
						 
						 
						 
						 
						 

					</div>
					<div class="row">
							<rich:spacer height="30px"></rich:spacer>

						</div>
					<div class="col-md-12">


						<rich:dataTable align="center" width="100%" var="list22"
							value="#{brand_Registration_New_22_23Action.renewalPackageList }"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2">

							<f:facet name="header">
								<h:outputText
									value="#{brand_Registration_New_22_23Action.bopd.brand_namerenew }"
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
							<rich:column>
								<f:facet name="header">
									<h:outputText value="*Label Change"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								<h:selectOneMenu
							 
							disabled="#{list22.renwel_check_flg eq 'T' }"
								value="#{list22.label_change_flg1}" onchange="this.form.submit();"
								styleClass="dropdown-menu1">
								<f:selectItem itemLabel="NO" itemValue="NO" />
								<f:selectItem itemLabel="YES" itemValue="YES" />
							</h:selectOneMenu>
							</rich:column>
							<rich:column rendered="#{brand_Registration_New_22_23Action.add_pack_yes_no eq 'NO'}" >
									<f:facet name="header">
										<h:outputText value="* Number of labels "
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									<h:selectOneMenu styleClass="dropdown-menu1"  rendered="#{list22.label_change_flg1 eq 'YES'}"
									disabled="#{list22.renwel_check_flg eq 'T' }" 
										value="#{list22.numOfLabels}"  onchange="this.form.submit();" >
										<f:selectItem itemLabel="0" itemValue="0" />
										<f:selectItem itemLabel="1" itemValue="1" />
								        <f:selectItem itemLabel="2" itemValue="2" />
								        <f:selectItem itemLabel="3" itemValue="3" />
								        <f:selectItem itemLabel="4" itemValue="4" />
								        <f:selectItem itemLabel="5" itemValue="5" />
								        <f:selectItem itemLabel="6" itemValue="6" />
										 
									</h:selectOneMenu>
									<h:outputText value="-" rendered="#{list22.label_change_flg1 eq 'NO'}"/>
									 
								</rich:column>

							<rich:column align="center">
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								<h:commandButton value="View Label"
									action="#{brand_Registration_New_22_23Action.viewlabel}"
									styleClass="btn btn-info btn-sm">
									<f:setPropertyActionListener value="#{list22}"
										target="#{brand_Registration_New_22_23Action.labledt }" />
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
											<div class="col-md-12" align="center">
												<rich:dataTable columnClasses="columnClass1"
													headerClass="TableHead" footerClass="TableHead"
													rowClasses="TableRow1,TableRow2" styleClass="DataTable"
													id="table3" rows="10" width="100%" rendered="#{brand_Registration_New_22_23Action.add_pack_yes_no eq 'YES'}"
													value="#{brand_Registration_New_22_23Action.addRowBranding}"
													var="list">
													<rich:column>
														<f:facet name="header">
															<h:outputText value="Sr.No">
															</h:outputText>
														</f:facet>
														<h:outputText value="#{list.sr_no_ren}"
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
															disabled="#{brand_Registration_New_22_23Action.yesno eq 'YES'}"
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
																action="#{brand_Registration_New_22_23Action.addRowMethodBranding_renew}"
																image="/img/add.png"
																  />
														</f:facet>
														<h:commandButton class="imag"
															actionListener="#{brand_Registration_New_22_23Action.deleteRowMethodBranding_renew}"
															style="background: transparent;height:30px "
															image="/img/del.png"
															  />
													</rich:column>



													<f:facet name="footer">
														<rich:datascroller for="table3"></rich:datascroller>
													</f:facet>
												</rich:dataTable>
											</div>
										</div>
					<div class="row" align="center">
						<rich:spacer height="20px"></rich:spacer>
					</div>

					<div class="col-md-12" align="center">

						<h:commandButton
							action="#{brand_Registration_New_22_23Action.renewal}"
							value="Renew" styleClass="btn btn-success"
							rendered="#{brand_Registration_New_22_23Action.renewal_flg eq 'T'}"
							onclick="if (! confirm('Your Brand will be forwarded for renewal. Do you consent ?') ) { return false;}; return true; ">



						</h:commandButton>
						<rich:spacer width="30px"></rich:spacer>
						<h:commandButton value="BACK" styleClass="btn btn-danger"
							action="#{brand_Registration_New_22_23Action.closepckg}" />
					</div>

				</h:form>
			</h:panelGroup>
			<div class="row" align="right">
				<h:commandButton value="BACK" styleClass="btn btn-warning"
					rendered="#{!brand_Registration_New_22_23Action.viewpckflg and !brand_Registration_New_22_23Action.viewlabflg}"
					action="#{brand_Registration_New_22_23Action.homerenew}">
				</h:commandButton>
			</div>
			<div class="row" align="center">
						<rich:spacer height="20px"></rich:spacer>
					</div>
			<div class="col-md-12"  >
			<div  class="col-md-2" align="right">
			<h:selectOneRadio
						 rendered="#{(!brand_Registration_New_22_23Action.viewpckflg and !brand_Registration_New_22_23Action.viewlabflg) }"
						value="#{brand_Registration_New_22_23Action.civilcsd}"
						disabled="#{brand_Registration_New_22_23Action.csd_civil_disableflg eq 'T' }"
						onchange="this.form.submit();"
						valueChangeListener="#{brand_Registration_New_22_23Action.forcivilcsd}">
						<f:selectItem itemValue="Civil" itemLabel="Civil" />
						<f:selectItem itemValue="CSD" itemLabel="CSD" />

					</h:selectOneRadio>
			</div>
			<div class="col-md-2" align="right">
					<h:outputLabel value="Domain (Sale In)" 	 rendered="#{(!brand_Registration_New_22_23Action.viewpckflg and !brand_Registration_New_22_23Action.viewlabflg) and brand_Registration_New_22_23Action.domain_flg eq 'T'}"></h:outputLabel>
				</div>
				<div class="col-md-4" align="left">
					<h:selectOneRadio  
						 rendered="#{(!brand_Registration_New_22_23Action.viewpckflg and !brand_Registration_New_22_23Action.viewlabflg) and   brand_Registration_New_22_23Action.domain_flg eq 'T'}"
						value="#{brand_Registration_New_22_23Action.domain_type}"
						onchange="this.form.submit();"
						valueChangeListener="#{brand_Registration_New_22_23Action.valuechangedomain}">
						<f:selectItem itemValue="UP" itemLabel="U.P" />
						<f:selectItem itemValue="EXPORT" itemLabel="Export(Other State)" />
						<f:selectItem itemValue="EOI" itemLabel="Overseas(Other Country)" />
						 

					</h:selectOneRadio>
					 
					 
					 
					 
					 
				</div>
			
			</div>
			<div class="row" align="center">
						<rich:spacer height="20px"></rich:spacer>
					</div>
			<div class="container-fuild">
				<rich:dataTable id="table1"
					rendered="#{!brand_Registration_New_22_23Action.viewpckflg and !brand_Registration_New_22_23Action.viewlabflg}"
					rows="8" width="100%" var="list"
					value="#{brand_Registration_New_22_23Action.renewalDetailList}">
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
							<h:outputText value="Valid Till"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:outputText value="#{list.valid_till}"></h:outputText>
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
							<h:outputText value="Liquor Category"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						 
						 <h:selectOneMenu styleClass="dropdown-menu1"   onchange="this.form.submit();"
														value="#{list.liquor_categoryrenew}"  style=" width : 155px;">
														 
														<f:selectItems value="#{list.liquor_Category_id_list}" />
														<a4j:support reRender="lic_cat" event="onblur"></a4j:support>
														 
													</h:selectOneMenu>
													 
												<h:commandButton  
											actionListener="#{brand_Registration_New_22_23Action.update_liquor_Category}"
											value="Update" styleClass="btn btn-success btn-sm" >
										</h:commandButton>
					</rich:column>
					 
					
					<rich:column>
						<f:facet name="header">
							<h:outputText value="Sub Type"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						  
						 <h:selectOneMenu styleClass="dropdown-menu1"   onchange="this.form.submit();"
														value="#{list.sub_type_renewel}"  style=" width : 155px;">
														 
														<f:selectItems value="#{list.sub_type_renewel_list}" />
														<a4j:support  reRender="sub_type" event="onblur"    />
													</h:selectOneMenu>
													 
													<h:commandButton  
											actionListener="#{brand_Registration_New_22_23Action.update_sub_type}"
											value="Update" styleClass="btn btn-success btn-sm" >
											
										</h:commandButton>
					</rich:column>
					
					 <rich:column>
						<f:facet name="header">
							<h:outputText value="Trademark No. (Only in Digits)"
								styleClass="generalHeaderOutputTable" style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						  
						<h:inputText value="#{list.trade_mark_no}" disabled="#{list.trade_mark_date ne 'NA'}"
							 converterMessage="Please enter numeric value only." required="true" requiredMessage="Field cannot be empty"
							  >
							
							</h:inputText>
													 
													<h:commandButton   disabled="#{list.trade_mark_date ne 'NA'}"
											actionListener="#{brand_Registration_New_22_23Action.update_trade_mark_no}"
											value="Update" styleClass="btn btn-success btn-sm" >
											
										</h:commandButton>
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
						<h:commandButton disabled="#{list.valid_till eq '2023-24'}"
							value="View Packages"  
							action="#{brand_Registration_New_22_23Action.viewpckg}"
							styleClass="btn btn-warning btn-sm">
							<f:setPropertyActionListener value="#{list}"
								target="#{brand_Registration_New_22_23Action.bopd }" />

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