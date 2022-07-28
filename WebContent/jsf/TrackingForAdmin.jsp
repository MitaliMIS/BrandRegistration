<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<style>
.box {
	margin: auto;
	height: 150px;
	width: 230px;
	background-color: white;
	color: #6a615d;
	font-size: 15px;
	text-align: center;
	font-weight: bold;
	padding: 10px;
	border: 1px solid #e1e1e1;
}

.minibox {
	margin-left: 20px;
	margin-top: -25px;
	background: white;
	width: 60px;
	height: 60px;
	background: url('/img/applications.png');
}

.header {
	float: right;
	margin-right: 30px;
}

.number {
	color: #252728;
	font-size: 40px;
	font-weight: 900;
}

.button {
	margin-top: 20px;
	cursor: pointer;
}
</style>

	<h:form style="background-color: #f0eeea;">
		<f:view>
			<div  >
				<rich:spacer height="25px" style=" widt_flagh : 1px;" />

				<div class="row">
					<h:messages errorStyle="color:red" layout="table" id="messages"
						style="font-size: 20px" infoStyle="color:green">
					</h:messages>
				</div>

				<rich:spacer height="15px" style=" widt_flagh : 1px;" />

				<div class="row"
					style="text-align: center; font-size: 35px; font-weight: 700">
					<h2>

						<h:outputText align="center" value="Brand and Label Tracking"
							style="COLOR: #000040; FONT-WEIGHT: bold; FONT-SIZE: 35px;">
						</h:outputText>
					</h2>
				</div>

				<rich:spacer height="35px" style=" widt_flagh : 1px;" />

				<h:panelGroup
					rendered="#{!trackingForAdminAction.revenue_dt_flag and !trackingForAdminAction.brands_dt_flag and  !trackingForAdminAction.total_dt_flag and  !trackingForAdminAction.approved_dt_flag and !trackingForAdminAction.rejected_dt_flag and !trackingForAdminAction.pending_dt_flag and !trackingForAdminAction.objected_dt_flag }">
					<div class="row">
					
									<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/approved.png"
										style="width:100%; height: 100%;" />
								</div>
								<br />Brands Renewed<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.renewd}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.approved_dt_enableren}"
									value="View Details"></h:commandButton>

							</div>
						</div>
									
											<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/registrations.png"
										style="width:100%; height: 100%;" />
								</div>
								<br /> Brands Registered<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_brands}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.brands_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
							</div>
					
						<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/applications.png"
										style="width:100%; height: 100%;" />
								</div>
								<br />  Label Applications<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_app}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.total_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
							</div>


						<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/objected.png"
										style="width:100%; height: 100%;" />
								</div>
								<br /> Objection Raised<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_objected}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.objected_dt_enable}"
									value="View Details"></h:commandButton>
							</div>
						</div>
						


					</div>
					
					<div class="row">
					<rich:spacer height="80px" />
					</div>
					
					<div class="row">
					<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/approved.png"
										style="width:100%; height: 100%;" />
								</div>
								<br />Approved Applications<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_approved}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.approved_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
						</div>
											<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/pending.png"
										style="width:100%; height: 100%;" />
								</div>
								<br /> Pending for Approval<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_pending}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.pending_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
						</div>
					
					<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/rejected.png"
										style="width:100%; height: 100%;" />
								</div>
								<br /> Rejected Applications<br />
								<h:outputText style="color:#252728;">#{trackingForAdminAction.total_rejected}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.rejected_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
						</div>
						
												<div class="col-md-3">
							<div class="box">
								<div class="minibox">
									<h:graphicImage value="/img/money.png"
										style="width:100%; height: 100%;" />
								</div>
								<br /> Revenue Collected<br />
								<h:outputText style="color:#252728;">Rs.#{trackingForAdminAction.total_revenue}</h:outputText>
								<br />
								<h:commandButton styleClass="btn btn-primary button"
									action="#{trackingForAdminAction.revenue_dt_enable}"
									value="View Details"></h:commandButton>

							</div>
						</div>
					</div>

					<rich:spacer height="40px" style=" widt_flagh : 1px;" />


				</h:panelGroup>
				
				<h:panelGroup
					rendered="#{trackingForAdminAction.brands_dt_flag}">
					<br />
				<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>List Of Registered Brands</h:outputText><br/>
						<h:commandButton class="btn btn-primary" value="PDF Report" action="#{trackingForAdminAction.printPDF}"/>
							<h:outputLink styleClass="outputLinkEx" rendered="#{trackingForAdminAction.br_flag}"
					value="/doc/ExciseUp/LabelRegistration/pdf/#{trackingForAdminAction.br_name}"
					target="_blank">
					<h:graphicImage value="/img/pdf_img.png" 
					alt="view document" style="width : 60px; height : 35px;"></h:graphicImage><br/>
				</h:outputLink>
					</div>
					<br />
					
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.brands_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter1}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="OtherUnit" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="brand_dt" />
						</h:selectOneRadio>
					
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="brand_dt"
						value="#{trackingForAdminAction.brands_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Registration No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Brand Name" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Strength" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Licence Type" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Licence Number" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Size(ml)" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Package Type" />
								</rich:column>






							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.br_no}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.br_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.br_str}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.a}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.type}" />
						</rich:column>
						
						<f:facet name="footer">
							<rich:datascroller for="brand_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>
				

				<h:panelGroup
					rendered="#{trackingForAdminAction.total_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText> Applications For Label Approval</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.total_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter2}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="total_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="total_dt"
						value="#{trackingForAdminAction.total_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
							
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Status" />
								</rich:column>







							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.status}" />
						</rich:column>
						


                    <f:facet name="footer">
							<rich:datascroller for="total_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>

				<h:panelGroup
					rendered="#{trackingForAdminAction.approved_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>List Of Approved Applications</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.approved_dt_flag}"
							value="#{trackingForAdminAction.unitType }" 
							valueChangeListener="#{trackingForAdminAction.filter3}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="approved_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="approved_dt"
						value="#{trackingForAdminAction.approved_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Approval Date" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value=" Remark" />
								</rich:column>







							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user3_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user3_remark}" />
						</rich:column>


                    <f:facet name="footer">
							<rich:datascroller for="approved_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>

				<h:panelGroup
					rendered="#{trackingForAdminAction.rejected_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>List Of Rejected Applications</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.rejected_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter4}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="rejected_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="rejected_dt"
						value="#{trackingForAdminAction.rejected_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Rejection Date" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Remark" />
								</rich:column>






							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user3_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user3_remark}" />
						</rich:column>
						
						<f:facet name="footer">
							<rich:datascroller for="rejected_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>
				
				<h:panelGroup
					rendered="#{trackingForAdminAction.revenue_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>Total Revenue Collected</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.revenue_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter5}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="revenue_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="revenue_dt"
						value="#{trackingForAdminAction.revenue_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Total Labels" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Fees Paid" />
								</rich:column>






							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.total_labels}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="Rs.#{record.total_fees}" />
						</rich:column>
						
						<f:facet name="footer">
							<rich:datascroller for="revenue_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>
				

				<h:panelGroup
					rendered="#{trackingForAdminAction.pending_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>Pending For Approval</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.pending_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter6}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="pending_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="pending_dt"
						value="#{trackingForAdminAction.pending_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Domain Name" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Type" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Total Labels" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Total Fees" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Current Status" />
								</rich:column>





							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.domain_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.total_labels}" />
						</rich:column>
						<rich:column colspan="1">

							<h:outputText value="#{record.total_fees}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.status}" />
						</rich:column>

                     <f:facet name="footer">
							<rich:datascroller for="pending_dt" />
						</f:facet>

					</rich:dataTable>


				</h:panelGroup>

				<h:panelGroup
					rendered="#{trackingForAdminAction.objected_dt_flag}">
					<br />
					<br />
					<div class="row"
						style="text-align: center; font-size: 25px; font-weight: 600">
						<h:outputText>List Of Objected Applications</h:outputText>
					</div>
					<br />
					<rich:spacer height="15px" />
						<h:selectOneRadio
							style="font-weight : 400; margin:auto; font-size 20px;"
							rendered="#{trackingForAdminAction.objected_dt_flag}"
							value="#{trackingForAdminAction.unitType }"
							valueChangeListener="#{trackingForAdminAction.filter7}">
							<f:selectItem itemLabel="All" itemValue="All" />
							<f:selectItem itemLabel="Bonds" itemValue="BWFL" />
							<f:selectItem itemLabel="Brewery" itemValue="B" />
							<f:selectItem itemLabel="Distillery" itemValue="D" />
							<f:selectItem itemLabel="Other Units" itemValue="O" />
							<a4j:support event="onclick" ajaxSingle="true"
								reRender="objected_dt" />
						</h:selectOneRadio>
					<br />


					<rich:dataTable rows="15"
						style="width: 100%; text-align: center; border : 2px solid black; margin:auto; "
						var="record" id="objected_dt"
						value="#{trackingForAdminAction.objected_list}">
						<f:facet name="header">
							<rich:columnGroup>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application No." />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Application Date" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="License Type" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Unit Name" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Objection Date" />
								</rich:column>
								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Objection Reason" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="Objection Status" />
								</rich:column>

								<rich:column rowspan="2">
									<h:outputText style="font-size: 15px" value="ObjectedBy" />
								</rich:column>

								





							</rich:columnGroup>
						</f:facet>

						<rich:column colspan="1">
							<h:outputText value="#{record.app_id}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.app_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.lic_type}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.unit_name}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.user3_date}" />
						</rich:column>
						<rich:column colspan="1">
							<h:inputTextarea disabled="true" value="#{record.user3_remark}" />
						</rich:column>
						<rich:column colspan="1">
							<h:outputText value="#{record.status}" />

						</rich:column>

						<rich:column colspan="1">
							<h:outputText value="#{record.user}" />

						</rich:column>
					
                  <f:facet name="footer">
							<rich:datascroller for="objected_dt" />
						</f:facet>


					</rich:dataTable>


				</h:panelGroup>

				<div style="text-align: center">




					<h:commandButton style="margin : 30px;" class="btn btn-danger"
						rendered="#{trackingForAdminAction.revenue_dt_flag or trackingForAdminAction.brands_dt_flag or trackingForAdminAction.total_dt_flag or trackingForAdminAction.approved_dt_flag or trackingForAdminAction.rejected_dt_flag or trackingForAdminAction.pending_dt_flag or trackingForAdminAction.objected_dt_flag }"
						value="Back" action="#{trackingForAdminAction.goBack}" />

				</div>


			</div>

		</f:view>

	</h:form>

	<rich:spacer height="15px" style=" widt_flagh : 1px;" />




</ui:composition>