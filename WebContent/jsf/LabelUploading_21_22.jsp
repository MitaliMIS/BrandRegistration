<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
	<f:view>
		<h:form>
			<div>
				<h:inputHidden value="#{labelUploading_21_22Action.hidden}" />
			</div>
			<rich:spacer height="30px;" />
			<div class="row " align="center">
				<div align="center">
					<div class="col-md-2" align="right"></div>
					<div class="col-md-8" align="center">
						<b> <h:outputText value=" Upload Label And Other Documents 2021-22"
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
				<h:inputHidden value="#{labelUploading_21_22Action.hidden}" />
			</div>
			<h:panelGroup rendered="#{labelUploading_21_22Action.app_panel}">
				<div class="row" align="center">
					<rich:dataTable align="center" id="table3" width="90%"
						var="app_list" value="#{labelUploading_21_22Action.applicationlist}"
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
								actionListener="#{labelUploading_21_22Action.viewBrands}"
								class="btn btn-primary" />

						</rich:column>
					</rich:dataTable>
					<div class="row" align="center">
						<h:commandButton styleClass="btn btn-danger"
							action="#{labelUploading_21_22Action.bck}" value="Back To Dashboard" />

					</div>
				</div>
			</h:panelGroup>


			<h:panelGroup rendered="#{labelUploading_21_22Action.brand_panel}">
				<div class="row" align="center" style="margin-bottom: 15px;">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4" align="left">
								<h:outputText value="Application No:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.app_id }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Application Date :- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.app_date }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Liqour Category:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.lic_cat }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="License Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.lic_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Domain Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.domain_name }" />
							</div>


						</div>
					</div>
					<div class="col-sm-1"></div>


				</div>
				<div class="row" align="center">
					<rich:dataTable align="center" id="table2" width="90%"
						var="brand_list" value="#{labelUploading_21_22Action.brandlist}"
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
								<h:outputText value="No. Of Years" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:outputText value="#{brand_list.yearforbrand}" />

						</rich:column>
						<rich:column align="center" width="50px">
							<f:facet name="header">
								<h:outputText value="" style="FONT-WEIGHT: bold;" />
							</f:facet>
							<h:commandButton value="Upload Labels And Other Documents"
								onclick="this.form.submit();"
								actionListener="#{labelUploading_21_22Action.viewLabels}"
								class="btn btn-primary" />

						</rich:column>
					</rich:dataTable>
				</div>
				<div class="row" align="center">
					<h:commandButton styleClass="btn btn-danger"
						action="#{labelUploading_21_22Action.bck}" value="Back To Dashboard" />
					<h:commandButton value="Back to Applications"
						onclick="this.form.submit();"
						actionListener="#{labelUploading_21_22Action.application_visible}"
						class="btn btn-success" />

				</div>
			</h:panelGroup>
			<h:panelGroup rendered="#{labelUploading_21_22Action.label_panel}">
				<div class="row" align="center" style="margin-bottom: 15px;">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-4" align="left">
								<h:outputText value="Application No:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.app_id }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Application Date :- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.app_date }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Liqour Category:- "
									style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.lic_cat }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="License Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.lic_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Domain Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.domain_name }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Brand Name:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.brand_name }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Size:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.size }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="Package Type:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.package_type }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="No. of Label:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.noOfLabel }" />
							</div>
							<div class="col-sm-4" align="left">
								<h:outputText value="No. Of Years:- " style="FONT-WEIGHT: bold;" />
								<h:outputText value="#{labelUploading_21_22Action.yearforbrand }" />
							</div>

						</div>
					</div>
					<div class="col-sm-1"></div>


				</div>
				<div class="row" align="center">
					<rich:dataTable align="center" id="table1" width="90%" var="list"
						value="#{labelUploading_21_22Action.list}" headerClass="TableHead"
						footerClass="TableHead" rowClasses="TableRow1,TableRow2">
						<f:facet name="header">
							<h:outputText value="Label List "
								style="FONT-SIZE: medium; FONT-WEIGHT: bold; " />
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
								disabled="#{labelUploading_21_22Action.finalize_flg }" />

						</rich:column>
						<rich:column align="center" width="270px">
							<f:facet name="header">

								<h:outputText value="Upload Images (DEO/AEC/Competent) " style="FONT-SIZE: small; font-weight:bold;COLOR: #ff0000;"/>

							</f:facet>
							<rich:fileUpload listHeight="10px" listWidth="230px"
								fileUploadListener="#{labelUploading_21_22Action.uploadImg}"
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
					 
					
					<div class="col-md-12" style="background-color: beige;">
							<div class="col-md-4" align="right">
								<b>*Upload Affidavit</b>
								<h:outputLink styleClass="outputLinkEx"
									rendered="#{labelUploading_21_22Action.renewalid==0}"
									value="/doc/ExciseUp/Applications/format/affidavitFormat.pdf"
									target="_blank">
									<h:outputText style="COLOR: #ff0000; font-weight:bold"
										value=" (Download Format for Affidavit) :"
										styleClass="generalExciseStyle" />
								</h:outputLink>
								<h:outputLink styleClass="outputLinkEx"
									rendered="#{labelUploading_21_22Action.renewalid>0}"
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
									fileUploadListener="#{labelUploading_21_22Action.uploadAffidavit}">
									<a4j:support event="onuploadcomplete"
										reRender="renpdffalse1 , renpdftrue1"></a4j:support>
								</rich:fileUpload>

							</div>
							<div class="col-md-5 img-responsive" align="left">
								<h:commandButton value="Confirm" onclick="this.form.submit();"
									class="btn btn-sm btn-warning" />
								<a4j:outputPanel id="renpdftrue1">
									<h:outputLink rendered="#{labelUploading_21_22Action.doc1Flg}"
										target="_blank" value="#{labelUploading_21_22Action.saveAffidavit}">

										<h:graphicImage value="/img/download.gif"
											style="width : 60px; height : 35px;"></h:graphicImage>
									</h:outputLink>
								</a4j:outputPanel>
								<a4j:outputPanel id="renpdffalse1">
									<a4j:outputPanel rendered="#{!labelUploading_21_22Action.doc1Flg}">
										<h:graphicImage value="/img/nodoc.png"
											style="width : 60px; height : 35px;"></h:graphicImage>

									</a4j:outputPanel>
								</a4j:outputPanel>
							</div>


						</div>
						
						<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">
									<b>*Upload Trademark Registration/ Trademark Application Receipt :</b>
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploading_21_22Action.uploadApprovedBR}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse2 , renpdftrue2"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue2">
										<h:outputLink rendered="#{labelUploading_21_22Action.doc2Flg}"
											target="_blank"
											value="#{labelUploading_21_22Action.saveApprovedBR}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse2">
										<a4j:outputPanel rendered="#{!labelUploading_21_22Action.doc2Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">

									<h:outputText style="  font-weight:bold"
										rendered="#{labelUploading_21_22Action.app_type eq 'N'}"
										value=" *Upload Certificate of Brand ownership :" />
									<h:outputText style="  font-weight:bold"
										rendered="#{labelUploading_21_22Action.app_type ne 'N' and labelUploading_21_22Action.app_type ne 'RNEW' and labelUploading_21_22Action.app_type ne 'LBC'  }"
										value=" *Upload 2020-21 Brand Approval Letter :" />
										<h:outputText style="  font-weight:bold"
										rendered="#{labelUploading_21_22Action.app_type eq 'RNEW' or labelUploading_21_22Action.app_type eq 'LBC'  }"
										value=" *Upload 2021-22 Brand Approval Letter :" />
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploading_21_22Action.uploadManualReciept}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse3 , renpdftrue3"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue3">
										<h:outputLink rendered="#{labelUploading_21_22Action.doc3Flg}"
											target="_blank"
											value="#{labelUploading_21_22Action.saveManualReciept}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse3">
										<a4j:outputPanel rendered="#{!labelUploading_21_22Action.doc3Flg}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
							
							<div class="col-md-12 btn " style="background-color: beige;">
								<div class="col-md-4" align="right">
									<b>*GS1 Certificate/ Affidavit in this regards :</b>
								</div>
								<div class="col-md-3" align="left">
									<rich:fileUpload clearControlLabel="clear"
										stopControlLabel="Stop"
										ontyperejected="if (!confirm('Only pdf allowed !')) return false"
										acceptedTypes="pdf" clearAllControlLabel="Clear All"
										listWidth="220" listHeight="10" maxFilesQuantity="1"
										fileUploadListener="#{labelUploading_21_22Action.uploadgsi}">
										<a4j:support event="onuploadcomplete"
											reRender="renpdffalse2123 , renpdftrue2123"></a4j:support>
									</rich:fileUpload>


								</div>
								<div class="col-md-5 img-responsive" align="left">
									<h:commandButton value="Confirm" onclick="this.form.submit();"
										class="btn btn-sm btn-warning" />
									<a4j:outputPanel id="renpdftrue2123">
										<h:outputLink rendered="#{labelUploading_21_22Action.doc2Flggsi}"
											target="_blank"
											value="#{labelUploading_21_22Action.savegsi}">

											<h:graphicImage value="/img/download.gif"
												style="width : 60px; height : 35px;"></h:graphicImage>
										</h:outputLink>
									</a4j:outputPanel>
									<a4j:outputPanel id="renpdffalse2123">
										<a4j:outputPanel rendered="#{!labelUploading_21_22Action.doc2Flggsi}">
											<h:graphicImage value="/img/nodoc.png"
												style="width : 60px; height : 35px;"></h:graphicImage>

										</a4j:outputPanel>
									</a4j:outputPanel>
								</div>

							</div>
					
					
					
					
					
					<div class="row">
						<rich:spacer height="20px"></rich:spacer>
					</div>

					<div class="row" align="center">

						<h:commandButton value="Save"
							action="#{labelUploading_21_22Action.save }"
							disabled="#{labelUploading_21_22Action.finalize_flg }"
							class="btn btn-primary" />
						<h:commandButton value="Finalize"
							action="#{labelUploading_21_22Action.finalize }"
							disabled="#{labelUploading_21_22Action.finalize_flg }"
							class="btn btn-danger" />
					</div>
					<div class="row" align="center">
						<h:commandButton styleClass="btn btn-danger"
							action="#{labelUploading_21_22Action.bck}" value="Back To Dashboard" />
						<h:commandButton value="Back to Applications"
							onclick="this.form.submit();"
							actionListener="#{labelUploading_21_22Action.application_visible}"
							class="btn btn-success" />
						<h:commandButton value="Back to Brands"
							onclick="this.form.submit();"
							actionListener="#{labelUploading_21_22Action.brand_visible}"
							class="btn btn-warning" />
					</div>
				</div>
			</h:panelGroup>
			<rich:spacer height="20px" />
		</h:form>
	</f:view>
</ui:composition>