<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
	<f:view>
		<head>
<style>
.inputtext {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.dropdown-menu1 {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}

.textarea1 {
	border-radius: 3px;
	border-style: none;
	
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>
		
		</head>
		
		<h:form>
		
		
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
											<TD align="center" colspan="2"><h2>
													<h:outputText align="center"
														value="Financial Details Of Brands"
														style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px; font-family:Times New Roman;">
													</h:outputText>

												
												</h2></TD>
										</tr>

										<tr>
											<td><rich:separator lineType="dashed"></rich:separator>
											</td>
										</tr>
									</TBODY>
								</TABLE></TD></TR></TABLE>
		<div class="container">
		
		<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row">
					<div class="col-md-12 wow shake" align="center">
						<h:messages errorStyle="color:red" layout="TABLE" id="messages1"
							infoStyle="color:green"
							style="font-size:18px; background-color:#e1fcdf; font-weight: bold">
						</h:messages>

					</div>
				</div>
		
		<div class="row">
		<div align="center">
		<div class="col-md-12">
		<h:selectOneRadio value="#{brandFinancialDetailsAction_20_21.unitType}" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsAction_20_21.unitChange}">
		<f:selectItem itemValue="D" itemLabel="Distillery Up."/>
		<f:selectItem itemValue="B" itemLabel="Brewary up"/>
		<f:selectItem itemValue="BW" itemLabel="Bwfl (Civil OutsideUp)"/>
		<f:selectItem itemValue="F" itemLabel="ImportedUnit"/>
		<f:selectItem itemValue="FL" itemLabel="FL2A (OutsideUp)"/>
		</h:selectOneRadio>
		</div>
		</div>
		</div>
		<rich:separator lineType="dashed"></rich:separator>
		<div class="row">
		<div align="center">
		<h:selectOneRadio value="#{brandFinancialDetailsAction_20_21.brandType}" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsAction_20_21.onBrandType }">
		<f:selectItem itemLabel="Renewed" itemValue="R"/>
		<f:selectItem itemLabel="NewBrand" itemValue="N"/>
		</h:selectOneRadio>
		</div>
		</div>
		
		
		
		
		
		
		<rich:separator lineType="dashed"></rich:separator>
		
		<div class="row" align="center">
		<div class="col-md-4"></div>
		<div class="col-md-4">
		<h:selectOneMenu value="#{brandFinancialDetailsAction_20_21.unitId}" styleClass="form-control" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsAction_20_21.onChangeDropdown }">
		<f:selectItems  value="#{brandFinancialDetailsAction_20_21.unitName}"/>
		</h:selectOneMenu>
		</div>
		<div class="col-md-4"></div>
		</div>
		
		<rich:separator lineType="dashed"></rich:separator>
		
		<div class="row">
		
		<div class="col-md-12">
		<rich:dataTable width="100%" var="list" value="#{brandFinancialDetailsAction_20_21.displayBrandDetails}">
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Sr.No." />
		</f:facet>
		<h:outputText value="#{list.srNo }" />
		</rich:column>
		
		
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Registered Unit" />
		</f:facet>
		<h:outputText value="#{list.registered_unit_name}" />
		</rich:column>
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Brand" />
		</f:facet>
		<h:outputText value="#{list.brand_Name }" />
		</rich:column>
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Size(in ml)" />
		</f:facet>
		<h:outputText value="#{list.size }" />
		</rich:column>
		
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="LiquorType" />
		</f:facet>
		<h:outputText value="#{list.liquor_type }" />
		</rich:column>
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="License Type" />
		</f:facet>
		<h:outputText value="#{list.license_type }" />
		</rich:column>
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Brand Approval No." />
		</f:facet>
		<h:outputText value="#{list.brand_approval_no }" />
		</rich:column>
		
		<rich:column>
		<f:facet name="header">
		<h:outputText value="Category" />
		</f:facet>
		
		<h:selectOneMenu
											value="#{list.liq_cat}"
											styleClass="dropdown-menu1"
											valueChangeListener="#{brandFinancialDetailsAction_20_21.catChange}">
											<a4j:support event="onchange" ajaxSingle="true"
												reRender="table22" />
				                          	<f:selectItem itemLabel="Select" itemValue="0" />					
											<f:selectItem itemLabel="Economy" itemValue="1" />
											<f:selectItem itemLabel="Regular" itemValue="2" />
											<f:selectItem itemLabel="Medium" itemValue="3" />
											<f:selectItem itemLabel="Scotch" itemValue="4" />
											<f:selectItem itemLabel="Super Premium" itemValue="5" />
											<f:selectItem itemLabel="Premium" itemValue="6" />
											<f:selectItem itemLabel="Super Premium" itemValue="7" />
											<f:selectItem itemLabel="Mild" itemValue="8" />
											<f:selectItem itemLabel="Strong" itemValue="9" />
											<f:selectItem itemLabel="25% Plain" itemValue="10" />
											<f:selectItem itemLabel="Spice" itemValue="11" />
											<f:selectItem itemLabel="36%" itemValue="12" />
											<f:selectItem itemLabel="42.8%" itemValue="13" />
											<f:selectItem itemLabel="Gin" itemValue="14" />
											<f:selectItem itemLabel="Vodka" itemValue="15" />
											<f:selectItem itemLabel="Wine" itemValue="16" />
											<f:selectItem itemLabel="Whisky" itemValue="17" />
											<f:selectItem itemLabel="Brandy" itemValue="18" />
											<f:selectItem itemLabel="Rum" itemValue="19" />
											<f:selectItem itemLabel="LAB" itemValue="20" />
										</h:selectOneMenu>
		
		</rich:column>
		
		
		<rich:column width="7%" rendered="#{ (brandFinancialDetailsAction_20_21.unitType ne 'F' ) }">
		<f:facet name="header">
		<h:outputText value="EDP" />
		</f:facet>
		<h:inputText value="#{list.edp }" class="form-control" />
		</rich:column>
		
		
		<rich:column width="7%" rendered="#{ (brandFinancialDetailsAction_20_21.unitType ne 'F' ) }">
		<f:facet name="header">
		<h:outputText value="DUTY" />
		</f:facet>
		<h:inputText value="#{list.duty }" class="form-control"  />
		</rich:column>
		
		
		
		
		<rich:column width="7%" rendered="#{ (brandFinancialDetailsAction_20_21.unitType ne 'F' ) }">
		<f:facet name="header">
		<h:outputText value="Additional Duty" />
		</f:facet>
		<h:inputText value="#{list.addnl_duty }" class="form-control" />
		</rich:column>
		
		
		
		<rich:column width="7%">
		<f:facet name="header">
		<h:outputText value="MRP" />
		</f:facet>
		<h:inputText value="#{list.mrp }" class="form-control" />
		</rich:column>
		
		<rich:column width="7%">
		<f:facet name="header">
		<h:outputText value="CESS" />
		</f:facet>
		<h:inputText value="#{list.cesh }" class="form-control" />
		</rich:column>
		
		<rich:column width="7%" rendered="#{ (brandFinancialDetailsAction_20_21.unitType eq 'BW' or brandFinancialDetailsAction_20_21.unitType eq 'FL' or brandFinancialDetailsAction_20_21.unitType eq 'F') }">
		<f:facet name="header">
		<h:outputText value="PermitFee" />
		</f:facet>
		<h:inputText value="#{list.permit_fee }" class="form-control" />
		</rich:column>
		
		
		<rich:column width="7%" rendered="#{list.domain eq 'EXP' and (brandFinancialDetailsAction_20_21.unitType eq 'D' or brandFinancialDetailsAction_20_21.unitType eq 'B') }">
		<f:facet name="header">
		<h:outputText value="Export Fee" />
		</f:facet>
		<h:inputText value="#{list.export_fee }"  class="form-control" />
		</rich:column>
		
		
		
		<rich:column width="7%" rendered="#{(brandFinancialDetailsAction_20_21.unitType eq 'F' or brandFinancialDetailsAction_20_21.unitType eq 'FL') }">
		<f:facet name="header">
		<h:outputText value="Special Fee" />
		</f:facet>
		<h:inputText value="#{list.special_fee }"  class="form-control" />
		</rich:column>
		
		
		
		</rich:dataTable>
		
		</div>
		
		</div>
		<rich:separator lineType="dashed"></rich:separator>
		
		<div class="row" align="center">
		
		<div class="col-md-4"></div>
		<div class="col-md-4">
		<h:commandButton value="SAVE" styleClass="btn btn-primary" action="#{brandFinancialDetailsAction_20_21.save}"></h:commandButton>
		</div>
		<div class="col-md-4"></div>
		</div>
		
		
		
		
		</div>
	</h:form></f:view>
		
		
		
		

</ui:composition>