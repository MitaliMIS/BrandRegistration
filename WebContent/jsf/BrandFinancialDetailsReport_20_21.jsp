<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

<f:view>
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
														value="Financial Details Of Brands Reports"
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
		<h:selectOneRadio value="#{brandFinancialDetailsReport_20_21Action.unitType}" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsReport_20_21Action.unitChange}">
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
		<h:selectOneRadio value="#{brandFinancialDetailsReport_20_21Action.brandType}" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsReport_20_21Action.onBrandType }">
		<f:selectItem itemLabel="Renewed" itemValue="R"/>
		<f:selectItem itemLabel="NewBrand" itemValue="N"/>
		</h:selectOneRadio>
		</div>
		</div>
		
		
		
		
		
		
		<rich:separator lineType="dashed"></rich:separator>
		
		<div class="row" align="center">
		<div class="col-md-4"></div>
		<div class="col-md-4">
		<h:selectOneMenu value="#{brandFinancialDetailsReport_20_21Action.unitId}" styleClass="form-control" onchange="this.form.submit();" valueChangeListener="#{brandFinancialDetailsReport_20_21Action.onChangeDropdown }">
		<f:selectItems  value="#{brandFinancialDetailsReport_20_21Action.unitName}"/>
		</h:selectOneMenu>
		</div>
		<div class="col-md-4"></div>
		</div>
		
		<rich:separator lineType="dashed"></rich:separator>
		
		<div class="row" align="center">
		
		<div class="col-md-4"></div>
		<div class="col-md-4">
		<h:commandButton value="Print Report" action="#{brandFinancialDetailsReport_20_21Action.printReport }" styleClass="btn btn-primary"></h:commandButton>
		
		
		<h:commandButton value="Reset" styleClass="btn btn-danger" action="#{brandFinancialDetailsReport_20_21Action.reset }"></h:commandButton>
		
		<h:outputLink value="/doc/ExciseUp/FinancialReport/pdf/#{brandFinancialDetailsReport_20_21Action.printReport }" target="_blank" rendered="#{brandFinancialDetailsReport_20_21Action.printFlag }">
		<h:outputText value="DownloadPdf" />
		</h:outputLink>
		
		
		
		<h:outputLink value="/doc/ExciseUp/FinancialReport/pdf/#{brandFinancialDetailsReport_20_21Action.printReportExcel }" target="_blank" rendered="#{brandFinancialDetailsReport_20_21Action.printFlagExcel }">
		<h:outputText value="DownloadExcel" />
		</h:outputLink>
		</div>
		<div class="col-md-4"></div>
		</div>
		
		
		
</h:form>
</f:view>

</ui:composition>