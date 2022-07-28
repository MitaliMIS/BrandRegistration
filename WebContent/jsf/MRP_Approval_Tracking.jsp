<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<f:view>
		<style>
	 
hr.style-seven {
	overflow: visible; /* For IE */
	height: 30px;
	border-style: solid;
	border-color: black;
	border-width: 1px 0 0 0;
	border-radius: 20px;
	width: 70%;
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

.preformatted {
	white-space: pre-wrap;
}

.inputtext {
	border-radius: 6px;
	padding: 5px 5px;
	height: 30px;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>

		<h:form>
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

				<div class="row">
					<div align="center">					
						<h1>
							<h:outputText value=" MRP Approval Tracking 2022-23"
								style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
						</h1>
					</div>
				</div>

				<div align="center">
					<div
						style="FONT-SIZE: x-large; FONT-WEIGHT: bold; width: 80%; height: 10px;">
						<hr class="style-seven"></hr>
					</div>
				</div>



				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
			

				<div class="row" align="center">
				     <div class="row" align="center"  style="padding: 3px; border: 1px groove #2948a4; BACKGROUND-COLOR:#689fb1; width: 90%;">
						<div class="col-md-12" align="center">
							<h:selectOneRadio style="width:25%"
								value="#{mRP_Approval_Tracking_action.radio}"
								valueChangeListener="#{mRP_Approval_Tracking_action.clickRadio}"
								onchange="this.form.submit();">
								
								<f:selectItem itemValue="NA" itemLabel="Inprocess" />
								<f:selectItem itemValue="A" itemLabel="Approved" />
								<f:selectItem itemValue="R" itemLabel="Rejected" />
							</h:selectOneRadio>
						</div>
					</div>
					</div>
				
				
				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>

			<h:panelGroup rendered="#{mRP_Approval_Tracking_action.check_data_flg1}">	

					<rich:spacer height="10px"></rich:spacer>
					<div align="center">
						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table" width="80%" rows="10"
							value="#{mRP_Approval_Tracking_action.applicationList}"
							var="list">


							<rich:column>
								<f:facet name="header">
									<h:outputText value="Sr.No." />
								</f:facet>
								<h:outputText value="#{list.sr_no}" />
							</rich:column>
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Unit Type" />
								</f:facet>
								<h:outputText value="#{list.unit_type}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Unit Name" />
								</f:facet>
								<h:outputText value="#{list.unit_name}" />
							</rich:column>




							<rich:column>
								<f:facet name="header">
									<h:outputText value="Brand Name" />
								</f:facet>
								<h:outputText value="#{list.brand_name}" />
							</rich:column>



							<rich:column>
								<f:facet name="header">
									<h:outputText value="Size" />
								</f:facet>
								<h:outputText value="#{list.size}" />
							</rich:column>

<rich:column>
								<f:facet name="header">
									<h:outputText value="Label/Brand Request Date" />
								</f:facet>
								<h:outputText value="#{list.label_brand_request_date}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="Label/Brand Approval Date" />
								</f:facet>
								<h:outputText value="#{list.label_brand_approval_date}" />
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="MRP Application Date" />
								</f:facet>
								<h:outputText value="#{list.mrp_application_date}" />
							</rich:column>
							
							<rich:column 
							rendered="#{mRP_Approval_Tracking_action.radio eq 'A'}">
							<f:facet name="header">
							
								<h:outputText value="MRP Approval Date" />
							</f:facet>
							<h:outputText value="#{list.mrp_approval_date}" />
						</rich:column>
						<rich:column 
							rendered="#{mRP_Approval_Tracking_action.radio eq 'R'}">
							<f:facet name="header">
							
								<h:outputText value="MRP Rejection Date" />
							</f:facet>
							<h:outputText value="#{list.mrp_approval_date}" />
						</rich:column>
							
							
							<rich:column>
							<f:facet name="header">
								<h:outputText value="Status" />
							</f:facet>
							<h:outputText value="#{list.status}" />
						</rich:column>
						<rich:column>
							<f:facet name="header">
								<h:outputText value="Remarks" />
							</f:facet>
							<h:commandButton value="View"
									actionListener="#{mRP_Approval_Tracking_action.viewDetails}"
									styleClass="btn btn-primary">
								</h:commandButton>
						</rich:column>

							<f:facet name="footer">
								<rich:datascroller for="table"></rich:datascroller>
							</f:facet>


						</rich:dataTable>
					</div>
				
		
		 <div class="row" align="center" >
			<h:commandButton styleClass="btn btn-primary"
						action="#{mRP_Approval_Tracking_action.excel}"
						value="Generate Excel" rendered="true" />

					<h:outputLink styleClass="outputLinkEx"
						value="/doc/ExciseUp/MIS/Excel/#{mRP_Approval_Tracking_action.exlname}.xls"
						target="_blank">
						<h:outputText styleClass="outputText" value="Download Excel"
							rendered="#{mRP_Approval_Tracking_action.excelFlag==true}"
							style="color: blue; font-family: serif; font-size: 12pt"></h:outputText>
					</h:outputLink>
					<rich:spacer width="15px"></rich:spacer>
					<h:commandButton
									action="#{mRP_Approval_Tracking_action.close_uploading}"
									value="Close"   styleClass="btn btn-danger" />
			</div>
		
		
		
		 
		
		</h:panelGroup>
		
							<div class="row " align="center">
								<rich:spacer height="30px"></rich:spacer>
							</div>	
							
							
																
								
							</div>
							
	</h:form>
	<rich:modalPanel id="popup34"  minWidth="800" minHeight="300" autosized="false"
	showWhenRendered="#{mRP_Approval_Tracking_action.panle_flg1}" >
			<f:facet name="header">
				<h:outputText value="Users Remark..." />

			</f:facet>

			<h:form>

<div style="overflow: auto; max-height: 200px">
				<div class="col-md-12">


					<rich:dataTable id="table3" width="100%"  
						value="#{mRP_Approval_Tracking_action.showremarklist}"
						var="list" headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2">

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Sr. No."
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.srno}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>
						<rich:column>
							<f:facet name="header">
								<h:outputText value="User Name"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_name}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Remark"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_remark}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>


						<rich:column>
							<f:facet name="header">
								<h:outputText value="Remark Date/time"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.user_dt_tm}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Status"
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.vch_forwarded}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<rich:column>
							<f:facet name="header">
								<h:outputText value="Action  "
									style="FONT-FAMILY: 'Times New Roman'; FONT-WEIGHT: bold; FONT-SIZE: small;">
								</h:outputText>
							</f:facet>
							<h:outputText value="#{list.forward_type}"
								styleClass="generalHeaderStyleOutput">
							</h:outputText>
						</rich:column>

						<f:facet name="footer">
							<rich:datascroller for="table3"></rich:datascroller>
						</f:facet>



					</rich:dataTable>

				</div>
				</div>

				<div class="col-md-12" align="center">


					<a4j:commandButton value="Close" styleClass="btn btn-danger btn-sm"
					action="#{mRP_Approval_Tracking_action.close_poup}"
						oncomplete="#{rich:component('popup34')}.hide()" />
				</div>

			</h:form>
		</rich:modalPanel>			
</f:view>
</ui:composition>