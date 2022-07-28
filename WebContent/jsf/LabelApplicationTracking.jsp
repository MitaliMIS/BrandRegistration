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
			<div class="container">


				<rich:spacer height="15px" style=" widt_flagh : 1px;" />

				<div class="row">
					<rich:separator lineType="dashed" />
				</div>



				<div class="row"
					style="text-align: center; font-size: 35px; font-weight: 700">
					<h2>

						<h:outputText align="center" value="Label Application Tracking"
							style="COLOR: #000040; FONT-WEIGHT: bold; FONT-SIZE: 35px;">
						</h:outputText>
					</h2>
					<h:inputHidden value="#{labelApplicationTrackingAction.hidden}" />
				</div>

				<div class="row">
					<rich:separator lineType="dashed" />
				</div>

				<rich:spacer height="25px" style=" widt_flagh : 1px;" />

				<div class="row">
					<h:messages errorStyle="color:red" layout="table" id="messages"
						style="font-size: 20px" infoStyle="color:green">
					</h:messages>
				</div>

				<rich:spacer height="35px" style=" widt_flagh : 1px;" />

				<div class="row" style="BACKGROUND-COLOR: #eaf9ed;">
					<div class="col-md-12">
						<h:outputLabel value="Applications Status : "
							style="COLOR: #000040; FONT-WEIGHT: bold; FONT-SIZE: large;"></h:outputLabel>
					</div>
				</div>

				<div class="row" align="center">
					<div class="col-md-12">
						<rich:dataTable id="table22" rows="10" width="100%"
							value="#{labelApplicationTrackingAction.appList}" var="list"
							headerClass="TableHead" footerClass="TableHead"
							onRowMouseOver="this.style.backgroundColor='rgba(62, 218, 230, 0.18)'"
							onRowMouseOut="this.style.backgroundColor='#{a4jSkin.tableBackgroundColor}'"
							styleClass="DataTable" rowClasses="TableRow1,TableRow2">




							<rich:column id="column1" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="App.No."
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.app_id}" style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column>

							<rich:column style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Dated"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.app_date}"
										style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column>
							<rich:column id="column3" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="License Type"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<center>
									<h:outputText value="#{list.lic_type}"
										style="FONT-SIZE: small;"></h:outputText>
								</center>
							</rich:column>

							<rich:column id="column2" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Domain Name"
										style="FONT-SIZE: small; COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<center>
									<h:outputText value="#{list.domain_name}"
										style="FONT-SIZE: small;">
									</h:outputText>
								</center>
							</rich:column>





							<rich:column id="column5" style="BACKGROUND-COLOR: #e2cffb;">
								<f:facet name="header">
									<h:outputText value="Unit Name"
										style="FONT-SIZE: small; COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<center>
									<h:outputText value="#{list.unit_name}"
										style="FONT-SIZE: small;">
									</h:outputText>
								</center>
							</rich:column>
                              <rich:column id="column7">
								<f:facet name="header">
									<h:outputText value="Number of Labels Uploaded"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal; text-align:center;">
									</h:outputText>
								</f:facet>

								<div align="center">

									<h:outputText value="#{list.total_labels}"
										style="COLOR: #008040; FONT-WEIGHT: bold;text-align:center;" />

								</div>

							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Challan Upload Date"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>

								<div align="center">
									<h:outputText value="#{list.challan_date}"
										style="COLOR: #008040; FONT-WEIGHT: bold;" />
								</div>

							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Label Upload Date"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>
								<div align="center">
									<h:outputText value="#{list.label_date}"
										style="COLOR: #008040; FONT-WEIGHT: bold;" />
								</div>
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Receiving Date of Physical Copy "
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: normal;">
									</h:outputText>
								</f:facet>
								<div align="center">
									<h:outputText value="#{list.challan_receive_date}"
										style="COLOR: #008040; FONT-WEIGHT: bold;" />
								</div>
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Application Status"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: none">
									</h:outputText>
								</f:facet>
								<h:outputText value="#{list.app_status}"
									style="COLOR: #008040; FONT-WEIGHT: bold;" />

							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Objection"
										style=" COLOR: #ffffff;white-space: none">
									</h:outputText>
								</f:facet>

								<div align="center">
									<h:outputText rendered="#{!list.flag}"
										value="#{list.objection}"
										style="COLOR: #008040; FONT-WEIGHT: bold;" />
								</div>


								<h:commandButton rendered="#{list.flag}"
									styleClass="btn btn-primary" value="Reply"
									actionListener="#{labelApplicationTrackingAction.getApp_id}"
									action="#{labelApplicationTrackingAction.replyMethod}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Approval Status"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: none">
									</h:outputText>
								</f:facet>
								<h:outputText value="#{list.approval_status}"
									style="COLOR: #008040; FONT-WEIGHT: bold;" />

							</rich:column>
						
							<rich:column >
	
								<f:facet name="header">
									<h:outputText value="Download Permit"
										style="FONT-SIZE: small; COLOR: #ffffff;white-space: none">
									</h:outputText>
								</f:facet>
								<center>
								<h:outputLink rendered="#{list.digitalSignPdf}" 
									value="/doc/ExciseUp/Applications/pdf//#{list.app_id}_ApprovedLicensing_esign.pdf"
									target="_blank">
									<h:outputText value="View Digitally Sign Order" style="COLOR: #002db3; FONT-WEIGHT: bold;" >
									</h:outputText>
								</h:outputLink>
								 
								
									<h:outputText value="-" rendered="#{!list.digitalSignPdf}" style="COLOR: #002db3; FONT-WEIGHT: bold; align:center">
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
				<div class="row" style="BACKGROUND-COLOR: #eaf9ed;">
					<div class="col-md-12">
						<h:outputLabel value="Summary : "
							style="FONT-WEIGHT: bold; COLOR: #000040; FONT-SIZE: large;"></h:outputLabel>
					</div>
				</div>
				<div class="row" align="center">
					<div class="col-md-12" style="overflow-x: scroll;">
						<rich:dataTable id="table2" width="100%"
							value="#{labelApplicationTrackingAction.summaryList}" var="list"
							headerClass="TableHead" footerClass="TableHead"
							styleClass="DataTable" rowClasses="TableRow1,TableRow2">




							<rich:column id="column9">
								<f:facet name="header">
									<h:outputText value="Online Submitted Application"
										style="COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<div align="center">
									<h:outputText
										style="  'COLOR: #0000ff;FONT-WEIGHT: bold; FONT-SIZE: 14px;' "
										value="#{list.a}">
									</h:outputText>
								</div>
							</rich:column>



							<rich:column id="column11">
								<f:facet name="header">
									<h:outputText
										value="Applications For Which Physical Copies Have Been Submitted"
										style="COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<div align="center">

									<h:outputText
										style="  'COLOR: #0000ff;FONT-WEIGHT: bold; FONT-SIZE: 14px;' "
										value="#{list.b}"></h:outputText>
								</div>
							</rich:column>
							<rich:column id="column10">
								<f:facet name="header">
									<h:outputText value="Objected" style="COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<div align="center">

									<h:outputText
										style="  'COLOR: #0000ff;FONT-WEIGHT: bold; FONT-SIZE: 14px;' "
										value="#{list.c}"></h:outputText>
								</div>
							</rich:column>
							<rich:column id="column12">
								<f:facet name="header">
									<h:outputText value="Approved" style="COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<div align="center">

									<h:outputText
										style="  'COLOR: #0000ff;FONT-WEIGHT: bold; FONT-SIZE: 14px;' "
										value="#{list.d}"/>
									
                                   </div>
							</rich:column>

							<rich:column id="column13">
								<f:facet name="header">
									<h:outputText value="Rejected" style="COLOR: #ffffff;">
									</h:outputText>
								</f:facet>
								<div align="center">

									<h:outputText
										style="  'COLOR: #0000ff;FONT-WEIGHT: bold; FONT-SIZE: 14px;' "
										value="#{list.e}">

									</h:outputText>
								</div>
							</rich:column>


						</rich:dataTable>
					</div>

				</div>
				<div class="row">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				<div class="row" align="center">
					<h:commandButton style="margin : 30px;" class="btn btn-danger"
						value="Back to Dashboard"
						action="#{labelApplicationTrackingAction.back}" />
				</div>

			</div>

		</f:view>

	</h:form>

	<rich:spacer height="15px" style=" widt_flagh : 1px;" />

</ui:composition>