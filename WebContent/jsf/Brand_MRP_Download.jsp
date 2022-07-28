<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">


	<style>
.hindi_style {
	text-align: justify;
	text-justify: inter-word;
	COLOR: #0000ff;
	padding-bottom: 5px;
}

.eng_style {
	padding-bottom: 2px;
	text-align: justify;
	text-justify: inter-word;
}

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

.rich-table-subheader {
	background-color: #092066;;
}

.rich-table-footer {
	background-color: #092066;;
}
</style>

	<h:form>
		<f:view>
			<div >


				<rich:spacer height="15px" style=" widt_flagh : 1px;" />

				 



				<div class="row"
					style="text-align: center; font-size: 35px; font-weight: 700; height : 59px;">
					<h2>

						<h:outputText align="center" value="MRP Approval Letter Download 2021-22"
							style="COLOR: #000040; FONT-WEIGHT: bold; FONT-SIZE: 35px;">
						</h:outputText>
					</h2>
					<h:inputHidden value="#{brand_MRP_DownloadAction.hidden}" />
				</div>

				<div class="row">
					<rich:separator lineType="dashed" />
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_MRP_DownloadAction.unit_name}"
								style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel>
						</div>
					</div>

					<div class="row">
						<div align="center">
							<h:outputLabel
								value="#{brand_MRP_DownloadAction.unit_address}"
								style="COLOR: #000000; FONT-SIZE: medium;"></h:outputLabel>
						</div>
					</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				
				<div class="row">
					<rich:separator lineType="dashed" />
				</div>

				<rich:spacer height="25px" style=" widt_flagh : 1px;" />

				 

				<rich:spacer height="10px" style=" widt_flagh : 1px;" />

				<div class="row" style="BACKGROUND-COLOR: #eaf9ed;">
					 
				</div>

				<div class="row" align="center">
					<div class="col-md-12">
						<rich:dataTable id="table22" rows="10" width="100%"
							value="#{brand_MRP_DownloadAction.orderList}" var="list"
							headerClass="TableHead" footerClass="TableHead"
							onRowMouseOver="this.style.backgroundColor='rgba(62, 218, 230, 0.18)'"
							onRowMouseOut="this.style.backgroundColor='#{a4jSkin.tableBackgroundColor}'"
							styleClass="DataTable" rowClasses="TableRow1,TableRow2">




							<rich:column id="column1" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Sr.No."
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.sr_no}" style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column>

							<rich:column style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Reference No."
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.requestid_displ}"
										style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column>
							<rich:column id="column3" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Approval Date"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.request_date}"
										style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column> 
							
							<rich:column >
	
								<f:facet name="header">
									<h:outputText value="Download Order"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: none">
									</h:outputText>
								</f:facet>
								<center>
								<h:outputLink rendered="#{list.dsc_flg eq 'T' and list.updatetype eq '1'}"
								value="/doc/ExciseUp/LabelRegistration_21_22/Applications/pdf//F-#{list.requestid}_BrandFinancialDetail_esign.pdf"
								target="_blank">
								<h:outputText value="View Order">
								</h:outputText>
							</h:outputLink>
							<h:outputLink rendered="#{list.dsc_flg eq 'T' and list.updatetype eq '2'}"
								value="/doc/ExciseUp/LabelRegistration_21_22/Applications/pdf//F-#{list.requestid}_BrandFinancialDetail_New_esign.pdf"
								target="_blank">
								<h:outputText value="View Order">
								</h:outputText>
							</h:outputLink>
								 
								
									<h:outputText value="-" rendered="#{list.dsc_flg eq 'F'}" style="COLOR: #002db3; FONT-WEIGHT: bold; align:center">
									</h:outputText>
								</center>
							</rich:column>
							

							<f:facet name="footer">
								<rich:datascroller for="table22"></rich:datascroller>
							</f:facet>
						</rich:dataTable>
					</div>
				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
			 
				 

			</div>

		</f:view>

	</h:form>

	<rich:spacer height="15px" style=" widt_flagh : 1px;" />

</ui:composition>