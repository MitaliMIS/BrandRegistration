<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
	<f:view>
		<h:form>
			<div>
				<h:inputHidden value="#{labelUploadingAction.hidden}" />
			</div>
			<rich:spacer height="30px;" />
			<div class="row " align="center">
				<div align="center">
					<div class="col-md-2" align="right"></div>
					<div class="col-md-8" align="center">
						<b> <h:outputText value=" Upload Label And Other Documents"
								style="FONT-SIZE: xx-large; FONT-FAMILY: 'Agency FB'; COLOR: #182528; TEXT-DECORATION: underline;" /></b>
					</div>
					<div class="col-md-2" align="right"></div>


				</div>

			</div>
			<h5>
				<rich:separator lineType="dashed" />
			</h5>
			<div class="row" align="center">
				<a4j:outputPanel id="msg">
					<div class="row col-md-12 wow shake" style="margin-top: 10px;">
						<h:messages errorStyle="color:red" style="font-weight: bold"
							styleClass="generalExciseStyle" layout="table"
							infoStyle="color:green" />
					</div>
				</a4j:outputPanel>
				<h:inputHidden value="#{labelUploadingAction.hidden}" />
			</div>
			<h:panelGroup rendered="#{labelUploadingAction.app_panel}">
				<div class="row" align="center">
					<rich:dataTable align="center" id="table3" width="90%"
						var="app_list" value="#{labelUploadingAction.applicationlist}"
						headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2">
						<f:facet name="header">
							<h:outputText value="Application List"
								style="FONT-SIZE: medium; FONT-WEIGHT: bold;" />
						</f:facet>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Application No." style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.app_id}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="App Date" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.app_date}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Type" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.apptype}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Liqour Category" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.lic_cat}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="License Type" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.lic_type}" />

						</rich:column>

						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Domain Name" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{app_list.domain_name}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:commandButton value="View Brands"
								onclick="this.form.submit();"
								actionListener="#{labelUploadingAction.viewBrands}"
								class="btn btn-primary" />

						</rich:column>
					</rich:dataTable>
					<div class="row" align="center">
						<h:commandButton styleClass="btn btn-danger"
							action="#{labelUploadingAction.bck}" value="Back To Dashboard" />

					</div>
				</div>
			</h:panelGroup>


			<h:panelGroup rendered="#{labelUploadingAction.brand_panel}">
				<div class="row" align="center" style="margin-bottom: 15px;">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4" align="left">
								<h:outputText value="Application No:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.app_id }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Application Date :- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.app_date }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Liqour Category:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.lic_cat }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="License Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.lic_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Domain Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.domain_name }" />
							</div>


						</div>
					</div>
					<div class="col-sm-1"></div>


				</div>
				<div class="row" align="center">
					<rich:dataTable align="center" id="table2" width="90%"
						var="brand_list" value="#{labelUploadingAction.brandlist}"
						headerClass="TableHead" footerClass="TableHead"
						rowClasses="TableRow1,TableRow2">
						<f:facet name="header">
							<h:outputText value="Brand List"
								style="FONT-SIZE: medium; FONT-WEIGHT: bold;" />
						</f:facet>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Brand Name" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{brand_list.brand_name}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Size" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{brand_list.size}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Package Type" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{brand_list.package_type}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="No. Of Label" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{brand_list.noOfLabel}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:commandButton value="Upload Labels And Other Documents"
								onclick="this.form.submit();"
								actionListener="#{labelUploadingAction.viewLabels}"
								class="btn btn-primary" />

						</rich:column>
					</rich:dataTable>
				</div>
				<div class="row" align="center">
					<h:commandButton styleClass="btn btn-danger"
						action="#{labelUploadingAction.bck}" value="Back To Dashboard" />
					<h:commandButton value="Back to Applications"
						onclick="this.form.submit();"
						actionListener="#{labelUploadingAction.application_visible}"
						class="btn btn-success" />

				</div>
			</h:panelGroup>
			<h:panelGroup rendered="#{labelUploadingAction.label_panel}">
				<div class="row" align="center" style="margin-bottom: 15px;">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4" align="left">
								<h:outputText value="Application No:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.app_id }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Application Date :- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.app_date }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Liqour Category:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.lic_cat }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="License Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.lic_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Domain Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.domain_name }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Brand Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.brand_name }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Size:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.size }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Package Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.package_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="No. of Label:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploadingAction.noOfLabel }" />
							</div>

						</div>
					</div>
					<div class="col-sm-1"></div>


				</div>
				<div class="row" align="center">
					<rich:dataTable align="center" id="table1" width="90%" var="list"
						value="#{labelUploadingAction.list}" headerClass="TableHead"
						footerClass="TableHead" rowClasses="TableRow1,TableRow2">
						<f:facet name="header">
							<h:outputText value="Label List"
								style="FONT-SIZE: medium; FONT-WEIGHT: bold;" />
						</f:facet>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="Sr.No." style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{list.sno}" />

						</rich:column>
						<rich:column align="center">
							<f:facet name="header">
								<h:outputText value="Description" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:inputTextarea value="#{list.description}"
								styleClass="form-control"
								disabled="#{labelUploadingAction.finalize_flg }" />

						</rich:column>
						<rich:column align="center" width="270px">
							<f:facet name="header">
								<h:outputText value="Upload Images" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<rich:fileUpload listHeight="10px" listWidth="230px"
								fileUploadListener="#{labelUploadingAction.uploadImg}"
								maxFilesQuantity="1" clearControlLabel="Clear"
								clearAllControlLabel="Clear All"
								ontyperejected="if (!confirm('Only jpg files are accepted')) return false"
								sizeErrorLabel="" acceptedTypes="jpg" addControlLabel="Add Jpg">
								<a4j:support event="onuploadcomplete"
									reRender="renpdffalse , renpdftrue, table1"></a4j:support>
							</rich:fileUpload>

						</rich:column>
						<rich:column align="center" width="50px">

							<h:commandButton value="Confirm" onclick="this.form.submit();"
								class="btn btn-sm btn-warning" />

						</rich:column>


						<rich:column align="center" width="200px">
							<f:facet name="header">
								<h:outputText value="View Images" style="FONT-WEIGHT: bold;" />
							</f:facet>

							<a4j:outputPanel id="renpdffalse">
								<h:outputLink rendered="#{list.imgFlg}" target="_blank"
									value="#{list.img}">

									<h:graphicImage value="/img/download.gif"
										style="width : 60px; height : 35px;"></h:graphicImage>
								</h:outputLink>
							</a4j:outputPanel>


							<a4j:outputPanel id="renpdftrue">
								<a4j:outputPanel rendered="#{!list.imgFlg}">
									<h:graphicImage value="/img/nodoc.png"
										style="width : 60px; height : 35px;"></h:graphicImage>

								</a4j:outputPanel>
							</a4j:outputPanel>

						</rich:column>


					</rich:dataTable>



					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<h:panelGroup rendered="#{labelUploadingAction.brnd_reg_in_20_21 ne 'YES'}">
					<h:panelGroup
						rendered="#{labelUploadingAction.lic_type ne 'FL2D'}">
						<div class="col-md-12" style="background-color: beige;">
							<div class="col-md-4" align="right">
								<b>*Upload Affidavit</b>
								<h:outputLink styleClass="outputLinkEx"
									rendered="#{labelUploadingAction.renewalid==0}"
									value="/doc/ExciseUp/Applications/format/affidavitFormat.pdf"
									target="_blank">
									<h:outputText style="COLOR: #ff0000; font-weight:bold"
										value=" (Download Format for Affidavit) :"
										styleClass="generalExciseStyle" />
								</h:outputLink>
								<h:outputLink styleClass="outputLinkEx"
									rendered="#{labelUploadingAction.renewalid>0}"
									value="/doc/ExciseUp/Applications/format/renewalaffidavitFormat.pdf"
									target="_blank">
									<h:outputText style="COLOR: #ff0000; font-weight:bold"
										value=" (Download Format for Affidavit) :"
										styleClass="generalExciseStyle" />
								</h:outputLink>
							</div>
							<div class="col-md-3" align="left">
								<rich:fileUpload clearControlLabel="clear"
									stopControlLabel="Stop"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{labelUploadingAction.uploadAffidavit}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse1 , renpdftrue1"></a4j:support>
								</rich:fileUpload>

							</div>
							<div class="col-md-5 img-responsive" align="left">
								<h:commandButton value="Confirm" onclick="this.form.submit();"
									class="btn btn-sm btn-warning" />
								<a4j:outputPanel id="renpdftrue1">
									<h:outputLink rendered="#{labelUploadingAction.doc1Flg}"
										target="_blank" value="#{labelUploadingAction.saveAffidavit}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse1">
									<a4j:outputPanel rendered="#{!labelUploadingAction.doc1Flg}">
										<h:graphicImage value="/img/nodoc.png"
											style="width : 60px; height : 35px;"></h:graphicImage>

									</a4j:outputPanel>
								</a4j:outputPanel>
							</div>


						</div>

						<h:panelGroup rendered="#{labelUploadingAction.renewalid>0}">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">
									<b>*Upload 2019-20 Brand Approval Letter :</b>
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploadingAction.uploadApprovedBR}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse22 , renpdftrue22"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue22">
										<h:outputLink rendered="#{labelUploadingAction.doc2Flg}"
											target="_blank"
											value="#{labelUploadingAction.saveApprovedBR}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse22">
										<a4j:outputPanel rendered="#{!labelUploadingAction.doc2Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">
									<b>*Upload 2019-20 Label Approval :</b>
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploadingAction.uploadManualReciept}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse33 , renpdftrue33"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue33">
										<h:outputLink rendered="#{labelUploadingAction.doc3Flg}"
											target="_blank"
											value="#{labelUploadingAction.saveManualReciept}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse33">
										<a4j:outputPanel rendered="#{!labelUploadingAction.doc3Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
						</h:panelGroup>
						<h:panelGroup
							rendered="#{labelUploadingAction.renewalid==0 and labelUploadingAction.trademark==0}">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">
									<b>*Upload Trademark Registration :</b>
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploadingAction.uploadApprovedBR}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse2 , renpdftrue2"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue2">
										<h:outputLink rendered="#{labelUploadingAction.doc2Flg}"
											target="_blank"
											value="#{labelUploadingAction.saveApprovedBR}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse2">
										<a4j:outputPanel rendered="#{!labelUploadingAction.doc2Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>

						</h:panelGroup>
						<h:panelGroup rendered="#{labelUploadingAction.renewalid==0}">
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">

									<h:outputText style="  font-weight:bold"
										rendered="#{  labelUploadingAction.trademark==0}"
										value=" *Upload Certificate of Brand ownership :" />
									<h:outputText style="  font-weight:bold"
										rendered="#{ labelUploadingAction.trademark>0}"
										value=" *Upload 2019-20 Brand Approval Letter :" />
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploadingAction.uploadManualReciept}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse3 , renpdftrue3"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue3">
										<h:outputLink rendered="#{labelUploadingAction.doc3Flg}"
											target="_blank"
											value="#{labelUploadingAction.saveManualReciept}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse3">
										<a4j:outputPanel rendered="#{!labelUploadingAction.doc3Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
						</h:panelGroup>
					</h:panelGroup>



					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>
					<h:panelGroup
						rendered="#{labelUploadingAction.lic_type eq 'FL2D'}">
						<div class="col-md-12 btn " style="background-color: beige;">
							<div class="col-md-4" align="right">

								<h:outputText style="  font-weight:bold"
									value=" *Upload Authorization of Brand ownership :" />

							</div>
							<div class="col-md-3" align="left">
								<rich:fileUpload clearControlLabel="clear"
									stopControlLabel="Stop"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{labelUploadingAction.uploadManualReciept}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse4 , renpdftrue4"></a4j:support>
								</rich:fileUpload>


							</div>
							<div class="col-md-5 img-responsive" align="left">
								<h:commandButton value="Confirm" onclick="this.form.submit();"
									class="btn btn-sm btn-warning" />
								<a4j:outputPanel id="renpdftrue4">
									<h:outputLink rendered="#{labelUploadingAction.doc3Flg}"
										target="_blank"
										value="#{labelUploadingAction.saveManualReciept}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse4">
									<a4j:outputPanel rendered="#{!labelUploadingAction.doc3Flg}">
										<h:graphicImage value="/img/nodoc.png"
											style="width : 60px; height : 35px;"></h:graphicImage>

									</a4j:outputPanel>
								</a4j:outputPanel>
							</div>

						</div>

						<div class="col-md-12 btn " style="background-color: beige;">
							<div class="col-md-4" align="right">
								<b>*Upload Trademark Registration :</b>
							</div>
							<div class="col-md-3" align="left">
								<rich:fileUpload clearControlLabel="clear"
									stopControlLabel="Stop"
									ontyperejected="if (!confirm('Only pdf allowed !')) return false"
									acceptedTypes="pdf" clearAllControlLabel="Clear All"
									listWidth="220" listHeight="10" maxFilesQuantity="1"
									fileUploadListener="#{labelUploadingAction.uploadApprovedBR}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse5 , renpdftrue5"></a4j:support>
								</rich:fileUpload>


							</div>
							<div class="col-md-5 img-responsive" align="left">
								<h:commandButton value="Confirm" onclick="this.form.submit();"
									class="btn btn-sm btn-warning" />
								<a4j:outputPanel id="renpdftrue5">
									<h:outputLink rendered="#{labelUploadingAction.doc2Flg}"
										target="_blank" value="#{labelUploadingAction.saveApprovedBR}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse5">
									<a4j:outputPanel rendered="#{!labelUploadingAction.doc2Flg}">
										<h:graphicImage value="/img/nodoc.png"
											style="width : 60px; height : 35px;"></h:graphicImage>

									</a4j:outputPanel>
								</a4j:outputPanel>
							</div>

						</div>

					</h:panelGroup>
					</h:panelGroup>
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>

					<div class="row" align="center">

						<h:commandButton value="Save"
							action="#{labelUploadingAction.save }"
							disabled="#{labelUploadingAction.finalize_flg }"
							class="btn btn-primary" />
						<h:commandButton value="Finalize"
							action="#{labelUploadingAction.finalize }"
							disabled="#{labelUploadingAction.finalize_flg }"
							class="btn btn-danger" />
					</div>
					<div class="row" align="center">
						<h:commandButton styleClass="btn btn-danger"
							action="#{labelUploadingAction.bck}" value="Back To Dashboard" />
						<h:commandButton value="Back to Applications"
							onclick="this.form.submit();"
							actionListener="#{labelUploadingAction.application_visible}"
							class="btn btn-success" />
						<h:commandButton value="Back to Brands"
							onclick="this.form.submit();"
							actionListener="#{labelUploadingAction.brand_visible}"
							class="btn btn-warning" />
					</div>
				</div>
			</h:panelGroup>
			<rich:spacer height="20px" />
		</h:form>
	</f:view>
</ui:composition>