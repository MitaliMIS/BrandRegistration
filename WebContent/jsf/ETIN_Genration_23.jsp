<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">
	<f:view>
		<h:form style="background-color:whitesmoke;">

			<div class="form-group">
				<div class="row">
					<a4j:outputPanel id="msg">
						<div class="row col-md-12 wow shake" style="margin-top: 10px;">
							<h:messages errorStyle="color:red" style="font-size: 18px;"
								styleClass="generalExciseStyle" layout="table"
								infoStyle="color:green" />
						</div>
					</a4j:outputPanel>
				</div>
				<div class="row " align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>
				<div class="row">
					<div align="center">
						<h:outputText value="ETIN Generation 2022-23"
							style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Comic Sans MS;"></h:outputText>
						 
					</div>
				</div>

				<hr style="border-top: 7px #D0D3D4; border-top-style: dashed;"></hr>


				 
				 
				 

				 

				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>

 
				<div class="row" align="center">
					<div class="row col-md-12" align="center"
					style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
					Package ID :
					<h:inputText value="#{eTIN_GenrationAction.package_id}" style="width: 200px"
						 ></h:inputText> 
				</div>
						 
				</div>

			
                  <rich:spacer height="20px"></rich:spacer>
			
				<div class="row" align="center">

					<h:commandButton value="Generate Code" styleClass="btn btn-primary"
						action="#{eTIN_GenrationAction.getetin_code}">
					</h:commandButton>



					<rich:spacer width="10px;"></rich:spacer>
					<h:commandButton value="Reset" styleClass="btn btn-warning"
						action="#{eTIN_GenrationAction.reset}">
					</h:commandButton>
				</div>
				<div class="row" align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				 
				<div class="row" align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				 

				 
				 
				
				
				 
					
					
					
					
					 
					
					<h:panelGroup rendered="#{eTIN_GenrationAction.panel_check eq 'show'}">
				 
					<div class="row" align="center">
                  <h:outputText value="Already Generated ETIN Code ( #{eTIN_GenrationAction.code_generate_through} ) and Generated ETIN Code ( #{eTIN_GenrationAction.etin_code} )" style="FONT-WEIGHT: bold; BACKGROUND-COLOR: #ffffff; COLOR: #ff0000; FONT-SIZE: x-large;"/>
                  </div>
                  
                  <rich:spacer height="15px"></rich:spacer>
                  <div style="overflow: auto; max-height:500px" id="aman" >
				  <div class="row" align="center">
							 
						</div></div>

                <rich:spacer height="15px"></rich:spacer>
				

				     <div class="col-md-12" align="center">
					 <h:commandButton value="Update ETIN Code" styleClass="btn btn-primary" rendered="#{eTIN_GenrationAction.code_generate_through eq 'ABC' }"
						action="#{eTIN_GenrationAction.updateetin_code}">
					</h:commandButton>



					<rich:spacer width="10px;"></rich:spacer>
 
					<h:commandButton value="Close" styleClass="btn btn-danger"
						action="#{eTIN_GenrationAction.reset}"/>
				</div>
					
					</h:panelGroup>
					 
					
			 
			</div>
		</h:form>
	</f:view>
</ui:composition>