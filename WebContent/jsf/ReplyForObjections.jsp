<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

   <h:form>
   <f:view>
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
   <div>
				<a4j:outputPanel id="msg">
					<div class="col-md-12 wow shake" align="center">
						<h:messages errorStyle="color:red" layout="table" id="messages"
							infoStyle="color:green" style="font-weight: bold">
						</h:messages>

					</div>
				</a4j:outputPanel>
			</div>
			<h:inputHidden value="#{replyForObjectionsAction.hidden}" />
			<div class="row " align="center">
				<div align="center">
					<h1
						style="COLOR: #000000; TEXT-DECORATION: underline; font-family: Monotype Corsiva; font-weight: 900;">
						<b> <h:outputText value="Reply To Given Objections For Brand Registration" /></b>

					</h1>

				</div>
			</div>
			<div class="row">
				<rich:spacer height="10px;"></rich:spacer>
			</div>
			<h2>
				<rich:separator lineType="dashed" />
			</h2>
			<div>
			
			<div class="row" style="margin-top: 5px;" align="center">
						<rich:dataTable align="center" id="table1" rows="10" width="100%"
							var="list"
							value="#{replyForObjectionsAction.objectionlist}"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" style="FONT-SIZE: medium; FONT-FAMILY: 'Arial Black';">

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Sr.No. "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText disabled="true" value="#{list.srNo}"
									styleClass="form-control" />
								
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* App id"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								
								<h:outputText
									
									value="#{list.appid}" styleClass="form-control" />
								
							</rich:column>
							
							<rich:column>
								<f:facet name="header">
									<h:outputText value="Objection By" 
									styleClass="generalHeaderOutputTable"/>
								</f:facet>
								
									<h:outputText
										value="#{list.objectionRaisedBy_dt}" styleClass="form-control"/>
								
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Licence Type"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								
								<h:outputText
									
									value="#{list.lic_type}" styleClass="form-control" />
								
							</rich:column>



							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Objection Title"
										styleClass="generalHeaderOutputTable" />
								</f:facet>

								
								<h:outputText
									
									value="#{list.title}" styleClass="form-control" />
								

							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value="* Status"
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<h:outputText
								
									value="#{list.status}" styleClass="form-control" />
								
							</rich:column>

							<rich:column>
								<f:facet name="header">
									<h:outputText value=" "
										styleClass="generalHeaderOutputTable" />
								</f:facet>
								<center>
								<h:commandButton class="btn btn-primary"
									actionListener="#{replyForObjectionsAction.view}" value="view" disabled="#{list.disableFlg }"/>
								</center>
							</rich:column>

							

						</rich:dataTable>

					</div>
			
			</div>
			
				</f:view>
   
   </h:form>
			 <h:panelGroup rendered="#{replyForObjectionsAction.viewPanelFlg}">
					
				
					
					<rich:spacer height="10px;"></rich:spacer>
		
			
			<div align="center" class="row">
					<div align="center" class="col-md-2">
					</div>
						<div align="center" class="col-md-4">
							<h:outputLabel  value="Objection Title:" />
							<h:inputText class="form-control"  disabled="true"
								value="#{replyForObjectionsAction.title}" />
						</div>
					
					
						<div  class="col-md-4">
						<div>
							<h:outputLabel value="Objection Date:" /></div>
							<rich:calendar  value="#{replyForObjectionsAction.obj_date }" disabled="true"/>
								
						</div>
					
					</div>
					<rich:spacer height="10px;"></rich:spacer>
			
				
  
					<div align="center">
					Upload pdf (if any):
					</div>
					<div align="center"><form class="dropzone" 
					action="/BrandRegistration/ReplyForObjections?appID=#{replyForObjectionsAction.allId} "
					method="post" enctype="multipart/form-data"
					style="BACKGROUND-COLOR: #6ed3f1; border: 5px outset whitesmoke;">
					<div class="dz-default dz-message">
						<span style="FONT-SIZE: small; COLOR: #464646;"><i>Click
								here to choose PDF</i></span>
					</div>
					<input class="dz-hidden-input" type="file" name="file"
						accept="application/pdf"
						style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;" />
				</form></div>
					
					<f:view>
			<h:form style="FONT-SIZE: xx-small;">
				<div class="row"
					style="BACKGROUND-COLOR: #5bc0de; padding: 0px 0px 15px 0px;">
					<div class="row" align="center">
						<div class="col-md-3 col-sm-4"></div>

						<div class="col-md-6 col-sm-1">
							<h:commandButton value="Upload PDF File"
								styleClass="btn btn-sm btn-primary"
								action="#{replyForObjectionsAction.save1}" />
								<h:outputLink target="_blank"
								rendered="#{replyForObjectionsAction.pdfDone}"
								value="/doc/ExciseUp/LabelRegistration/objection/#{replyForObjectionsAction.uploadedPdf}">

								<h:graphicImage value="/img/download.gif" alt="view document"
									style="height : 35px;"></h:graphicImage>
							</h:outputLink>

						</div>
						
					</div>
					<div class="col-md-12">
						<div class="col-md-3 col-sm-4">
							<b><h:outputText value="Remarks :" style="font-size:15px"/></b>
						</div>
						<div class="col-md-6 col-sm-8">

							<div class="row">
								<h:inputTextarea
									value="#{replyForObjectionsAction.fillComment}"
									styleClass="form-control"
									style="FONT-STYLE: italic;width: 100%;"></h:inputTextarea>
							</div>
						</div>

					</div>
				</div>
				<div class="row" align="center">

					<h:commandButton value="Submit" styleClass="btn btn-success"
						action="#{replyForObjectionsAction.save}" />
					<h:commandButton value="Reset" styleClass="btn btn-warning"
						action="#{replyForObjectionsAction.reset}" />
						
				</div>
				 
			</h:form>
		</f:view>
				</h:panelGroup>	
				<f:view>
				<h:form>
					
					<div align="center"> 
					<h:commandButton value="Back" styleClass="btn btn-danger"
						action="#{replyForObjectionsAction.back}" /></div>
			
  </h:form>
		</f:view>
</ui:composition>