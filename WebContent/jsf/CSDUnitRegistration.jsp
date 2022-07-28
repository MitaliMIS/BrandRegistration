 <ui:composition
        xmlns="http://www.w3.org/1999/xhtml"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:h="http://java.sun.com/jsf/html"
       xmlns:a4j="http://richfaces.org/a4j"
   	xmlns:rich="http://richfaces.org/rich" >

<style type="text/css">
#h9
{
   background-image: url('/doc/ExciseUp/welcome/homepage/top/back1.png');
   font-size: 16px;
   font-weight: bolder;
   font-family: verdana;
   color:  	black;
 }
</style>
<head>
      <link href="/css/style.css" rel="stylesheet"
				type="text/css" />
			
    </head>
    <h:form >
      <f:view >
         <div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
       <div class="row" style=" width: 100%;" align="center" ></div>
				<div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
       			 </div>
       			 
       			 <div class="row" align="center">
       			<rich:separator lineType="dashed"></rich:separator>
       			</div>
       			 
       			 <div class="row" align="center">
				
				<h2>
					<h:outputText
						value="Unit Registration 2019-2020"
						style="COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: 35px;font-family:Monotype Corsiva;">
					</h:outputText>
				</h2>
				<h:inputHidden value="#{cSDUnitRegistrationAction.hidden}"></h:inputHidden>
			</div>
       			<div class="row" align="center">
       			<rich:separator lineType="dashed"></rich:separator>
       			</div>
       			
       			<div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
       			 </div> 
       			 
       			 
       			 
        <div style="background-color:#e1fcdf; width: 100%;height: 35px;">
       		 <div style="padding-top: 2px;padding-bottom: 2px;margin-top: 2px;" align="center">
		      	<h:outputText value="Unit Registration Detail" styleClass="generalExciseStyle1" style="font-weight: bold;  font-size: 20;text-decoration: underline;margin-top: 2px;"></h:outputText>
		    </div>
        </div>
        
        <div class="row col-md-12 wow shake">
        <h:messages errorStyle="color:red" style="font-size: 18;font-weight: bold;"
												styleClass="generalExciseStyle" layout="table" id="messages"
												infoStyle="color:green">
											</h:messages>
											
		<h:outputText value="#{cSDUnitRegistrationAction.errorMsg}" style="color: red"></h:outputText>		
		<h:outputText value="#{cSDUnitRegistrationAction.succMsg}" style="color: green"></h:outputText>							
        </div>
        
        <div class="row">
        	<rich:spacer height="10px;"></rich:spacer>
        </div>
        
    <div id="All">   
       <a4j:outputPanel id="All" > 
        <div class="row " align="center">
        
        	<div class="col-md-2" align="right">
        	<h:outputText value="Mobile No.*" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.wrk_mobno}" styleClass="form-control" maxlength="10" >
        		<a4j:support  event="onblur"  actionListener="#{cSDUnitRegistrationAction.fetch}"  reRender="All,s1"></a4j:support>
				</h:inputText>
        	</div>
        	
	        <div class="col-md-2" >
	        	<h:outputText value="Unit Type *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
	        </div>
	        <div class="col-md-2">
		           
		           <h:selectOneMenu style="width: 150px" value="#{cSDUnitRegistrationAction.indType}"  
		          styleClass="form-control">
											<f:selectItem itemLabel="----Select----" itemValue="NA" />
											<f:selectItem itemLabel="Importing Unit" itemValue="IU" />
											<f:selectItem itemLabel="Distillery For CSD" itemValue="DCSD" />
											<f:selectItem itemLabel="Brewery For CSD" itemValue="BCSD" />
											<f:selectItem itemLabel="Bottling Unit For CSD" itemValue="BUCSD" />
											<f:selectItem itemLabel="Winery For CSD" itemValue="WCSD" />
											
											
										</h:selectOneMenu>
		           
		           
		           
		           
		           
		           
	        </div>
	        
	         <div class="col-md-2" >
	        	<h:outputText value="Unit Name *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
	         </div>
	        
	         <div class="col-md-2">
	         	<h:inputText value="#{cSDUnitRegistrationAction.name}" styleClass="form-control"  />
	         </div>
        
        	
        </div>
        
    	  <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
        
        <div class="row " align="center">
        
        
        <div class="col-md-2" align="right" >
        		<h:outputText value=" Unit license No." styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.indLicenseNo}" styleClass="form-control" maxlength="50" />
        	</div>
        	<div class="col-md-2" >
        		<h:outputText value="Year of Establishment *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        	</div>
        	
        	<div class="col-md-2" >
        		<h:inputText value="#{cSDUnitRegistrationAction.year}" styleClass="form-control"  />
        	</div>
        	
        	<div class="col-md-2"  >
        		<h:outputText value="Pan No. *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.panNo}" styleClass="form-control"  maxlength="10"/>
        	</div>
        	
        	
        </div>
        
        <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
        
        
        
        <div class="row " align="center">
          	
          	
          	<div class="col-md-2"  align="right">
        		<h:outputText value="GSTIN No. *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        	</div>
        		
        	<div class="col-md-2"  >
        		<h:inputText value="#{cSDUnitRegistrationAction.gstinNo}" styleClass="form-control" maxlength="15" />
        	</div>
        	
        	</div>
        
         <h:panelGroup rendered="false">
         
          <div class="row " align="center">
          	
          	
          	<div class="col-md-2"  align="right">
        		<h:outputText value="GSTIN No. *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        	</div>
        		
        	<div class="col-md-2"  >
        		<h:inputText value="#{cSDUnitRegistrationAction.gstinNo}" styleClass="form-control" maxlength="15" />
        	</div>
          		<div class="col-md-2" >
          			<h:outputText value="VAT/ GST Deposited in Last 3 years *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
          		</div>
          		
          		<div class="col-md-2">
          			<h:inputText value="#{cSDUnitRegistrationAction.vatGst}" styleClass="form-control"  />
          		</div>
          		
          		<div class="col-md-2"  align="right">
          			<h:outputText value="Production of Last year *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
          		</div>
          		
          		<div class="col-md-2">
          			<h:inputText value="#{cSDUnitRegistrationAction.prod_last_year}" styleClass="form-control" ></h:inputText>
          		</div>
          		
          		
          </div>
          
          
           <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
          
          
          <div class="row " align="center">
          
          <div class="col-md-2" align="right">
          			<h:outputText value="Anuual Consumption Capacity *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
          		</div>
          		
          		<div class="col-md-2">
          			<h:inputText value="#{cSDUnitRegistrationAction.annu_capacity }" styleClass="form-control" />
          		</div>
          	<div class="col-md-2" >
          		<h:outputText value="Molasses Storage Capacity *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
          	</div>
          	
          	<div class="col-md-2">
          		<h:inputText value="#{cSDUnitRegistrationAction.stor_capacity}" styleClass="form-control" />
          	</div>
          
          <div class="col-md-2">
          		<h:outputText value="Establishment.Date" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
          </div>
          
          <div class="col-md-2">
          		<rich:calendar value="#{cSDUnitRegistrationAction.date}"  ></rich:calendar>
          </div>
          </div>
          
          </h:panelGroup>
          
          <div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
        
          <div style="background-color:#e1fcdf; width: 100%;height: 35px;">
       		 <div style="padding-top: 2px;padding-bottom: 2px;margin-top: 2px;" align="center">
		      	<h:outputText value="Address of Registrant Unit" styleClass="generalExciseStyle1" style="font-weight: bold; font-size: 20;text-decoration: underline;margin-top: 2px;"></h:outputText>
		    </div>
        </div>
        
         <div class="row">
        	<rich:spacer height="10px;"></rich:spacer>
        </div>
        
        
        <div class="row " align="center">
        		<div class="col-md-2" align="right">
        			<h:outputText value="State *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        		</div>
        		
        		<div class="col-md-2">
        			<h:selectOneMenu styleClass="form-control" valueChangeListener="#{cSDUnitRegistrationAction.stateChange}"  onchange="this.form.submit();"  value="#{cSDUnitRegistrationAction.stateId}">
        			
        			 <f:selectItems value="#{cSDUnitRegistrationAction.stateList}"></f:selectItems>
        			 
        			</h:selectOneMenu>
        		</div>
        		
        		<div class="col-md-2">
        			<h:outputText value="District *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"  rendered="#{cSDUnitRegistrationAction.disableText==true}" />
        		</div>
        		
        		<div class="col-md-2">
        			<h:selectOneMenu styleClass="form-control" value="#{cSDUnitRegistrationAction.districtId}"  rendered="#{cSDUnitRegistrationAction.disable==true}" >
		           <f:selectItems value="#{cSDUnitRegistrationAction.districtList}" />
		           </h:selectOneMenu>
		           
		           <h:inputText value="#{cSDUnitRegistrationAction.reg_district}" styleClass="form-control" rendered="#{cSDUnitRegistrationAction.disableTextField==true}"/>
		           
        		</div>
        		
        		<div class="col-md-2" >
        			<h:outputText value="Mobile No. *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        		</div>
        		
        		<div class="col-md-2">
        			<h:inputText value="#{cSDUnitRegistrationAction.reg_mobno}" styleClass="form-control" maxlength="10"/>
        		</div>
        </div>
        
         <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
        
        
        <div class="row " align="center">
        	<div class="col-md-2"  align="right">
        		<h:outputText value="Fax " styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.reg_fax}" styleClass="form-control" maxlength="16" ></h:inputText>
        	</div>
        		
        		<div class="col-md-2">
        			<h:outputText value="Email *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        		</div>
        		
        		<div class="col-md-2">
        			<h:inputText value="#{cSDUnitRegistrationAction.reg_email}" styleClass="form-control" maxlength="30" ></h:inputText>
        		</div>
        		
        		<div class="col-md-2">
        			<h:outputText value="Address *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        		</div>
        		
        		<div class="col-md-2">
        			<h:inputTextarea value="#{cSDUnitRegistrationAction.reg_address}" styleClass="form-control" maxlength="50" />
        		</div>
        </div>
        
        <div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
        
         <div style="background-color:#e1fcdf; width: 100%;height: 35px;">
       		 <div style="padding-top: 2px;padding-bottom: 2px;margin-top: 2px;" align="center">
		      	<h:outputText value="Address Of Manufacture Unit" styleClass="generalExciseStyle1" style="font-weight: bold; font-size: 20;text-decoration: underline;margin-top: 2px;"></h:outputText>
		    </div>
        </div>
        
        <div class="row">
        	<rich:spacer height="10px;"></rich:spacer>
        </div>
        
        <div class="row " align="center">
        
        	<div class="col-md-2" align="right">
        	<h:outputText value="Mobile No.*" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.wrk_mobno}" styleClass="form-control" maxlength="10"  disabled="true" />
        	</div>
        	
        	<div class="col-md-2">
        		<h:outputText value="Fax" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.wrk_fax }" styleClass="form-control" maxlength="16" ></h:inputText>
        	</div>
        	
        	<div class="col-md-2">
        		<h:outputText value="Email*" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
        	</div>
        	
        	<div class="col-md-2">
        		<h:inputText value="#{cSDUnitRegistrationAction.wrk_email }" styleClass="form-control" maxlength="30" ></h:inputText>
        	</div>
        </div>
        
         <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
						
        
         <div class="row " align="center">
       		<div class="col-md-2" align="right">
       		<h:outputText value="Country" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"/>
       		</div>
       		<div class="col-md-2">
       			<h:selectOneMenu styleClass="form-control"
       			disabled="#{cSDUnitRegistrationAction.indType eq 'IU' }"
       			 value="#{cSDUnitRegistrationAction.districtIdWorkAdd}" onchange="this.form.submit();"  >
		           <f:selectItems value="#{cSDUnitRegistrationAction.country_List}" />
		           <a4j:support event="oncomplete" reRender="st,st1"></a4j:support>
		           </h:selectOneMenu>
       		</div>
       		
       		
       		<div class="col-md-2">
       			<h:outputText value="State" styleClass="generalExciseStyle" id="st"  disabled="#{cSDUnitRegistrationAction.districtIdWorkAdd eq '1'}" style="FONT-WEIGHT: bold;"></h:outputText>
       		</div>
       		
       		<div class="col-md-2">
       			<h:selectOneMenu styleClass="form-control" id="st1" value="#{cSDUnitRegistrationAction.stateId_WorkAdd}"  disabled="#{cSDUnitRegistrationAction.districtIdWorkAdd ne '1'}" >
		           <f:selectItems value="#{cSDUnitRegistrationAction.stateList}" />
		           </h:selectOneMenu>
       		</div>	
       		
       		
       		
       		
       		<div class="col-md-2">
       			<h:outputText value="Address*" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       		</div>
       		
       		<div class="col-md-2">
       			<h:inputTextarea value="#{cSDUnitRegistrationAction.wrk_address}" styleClass="form-control" maxlength="50" />
       		</div>	
       
        </div>
        
        <div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
        
        <h:panelGroup rendered="false">
        <div style="background-color:#e1fcdf; width: 100%;height: 35px;">
       		 <div style="padding-top: 2px;padding-bottom: 2px;margin-top: 2px;" align="center">
		      	<h:outputText value="Details of Properietor's of Unit / Director of the Company" styleClass="generalExciseStyle1" style="font-weight: bold; font-size: 20;text-decoration: underline;margin-top: 2px;"></h:outputText>
		    </div>
        </div>
        
         <div class="row">
        	<rich:spacer height="10px;"></rich:spacer>
        </div>
        
         <div class="row " align="center">
       		<div class="col-md-2" align="right">
       			<h:outputText value="Name *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       		</div>
       		
       		<div class="col-md-2">
       			<h:inputText value="#{cSDUnitRegistrationAction.occ_name }" styleClass="form-control" />
       		</div>
       		
       		<div class="col-md-2">
       			<h:outputText value="Designation *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       		</div>
       		
       		<div class="col-md-2">
       			<h:inputText value="#{cSDUnitRegistrationAction.occ_desg }" styleClass="form-control"  ></h:inputText>
       		</div>
       		
       		<div class="col-md-2">
       			<h:outputText value="Address *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       		</div>
       		<div class="col-md-2">
       			<h:inputTextarea value="#{cSDUnitRegistrationAction.occ_address }" styleClass="form-control" />
       		</div>
       		</div>
       		
       		
       		 <div class="row" align="center">
				<rich:spacer height="10px"></rich:spacer>
						</div>
       		
       		<div class="row " align="center">
       			<div class="col-md-2"  align="right">
       				<h:outputText value="Mobile No. *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       			</div>
       			
       			<div class="col-md-2">
       			<h:inputText value="#{cSDUnitRegistrationAction.occ_mobno }" styleClass="form-control" maxlength="10" />
       		</div>
       		
       		<div class="col-md-2">
       				<h:outputText value="Fax" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       			</div>
       			
       			<div class="col-md-2">
       			<h:inputText value="#{cSDUnitRegistrationAction.occ_fax }" styleClass="form-control" />
       		</div>
       			
       			<div class="col-md-2">
       				<h:outputText value="Email *" styleClass="generalExciseStyle" style="FONT-WEIGHT: bold;"></h:outputText>
       			</div>
       			
       			<div class="col-md-2">
       			<h:inputText value="#{cSDUnitRegistrationAction.occ_email }" styleClass="form-control" />
       		</div>
       		</div>
       		
       		</h:panelGroup>
       		
       		</a4j:outputPanel>
     </div>  		
       		
       		<div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
        
        	<div class="row" align="center">
        	
        	<h:commandButton value="Save" action="#{cSDUnitRegistrationAction.save}"  id="s1" disabled="#{cSDUnitRegistrationAction.finalize_Check eq 'F'}" ></h:commandButton>
        	
        	<rich:spacer width="10px;"></rich:spacer>
        	 <h:commandButton  value="Reset" action="#{cSDUnitRegistrationAction.reSetData}"></h:commandButton>  
        	 
        	 
        	<rich:spacer width="10px;"></rich:spacer>
        	 <h:commandButton  value="Back" action="#{cSDUnitRegistrationAction.back_reg}"></h:commandButton>  
        	</div>
        
        
        	<div class="row" align="center" style="margin-top: 20px;">
        	
        	</div>
        	<div class="row" align="center">
							<div class="col-md-12" align="center">
								<rich:dataTable id="table1" style="background: #ffffff"
									rendered="true" rows="8" width="100%" var="list"
									value="#{cSDUnitRegistrationAction.showDataTablelist}"
									headerClass="TableHead" footerClass="TableHead"
									rowClasses="TableRow1,TableRow2">
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Sr.No."
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.show_srNo}"
											styleClass="form-control"></h:outputText>
									</rich:column>
									
									
									
									
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Reg. ID"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="U-#{list.show_app_Id}"
											styleClass="form-control"></h:outputText>
									</rich:column>
									
									
									

									<rich:column rendered="false">
										<f:facet name="header">
											<h:outputText value="Mobile No"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.mobile_no}"
											styleClass="form-control"></h:outputText>
									</rich:column>

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Unit Type"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.unit_type}"
											styleClass="form-control"></h:outputText>
									</rich:column>



									<rich:column>
										<f:facet name="header">
											<h:outputText value="Unit Name"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<a4j:outputPanel>
											<h:outputText value="#{list.unit_name}"
												styleClass="form-control"></h:outputText>
										</a4j:outputPanel>
									</rich:column>
									
									
									
									<rich:column>
										<f:facet name="header">
											<h:outputText value=" Unit Address"
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.unit_name_address}"
											styleClass="form-control"></h:outputText>
									</rich:column>
									
									
									

									<rich:column>
										<f:facet name="header">
											<h:outputText value="Licence No "
												styleClass="generalHeaderOutputTable"
												style="FONT-WEIGHT: bold;"></h:outputText>
										</f:facet>
										<h:outputText value="#{list.licenceNo}"
											styleClass="form-control"></h:outputText>
									</rich:column>
									
									
									
									
									

									
									
									<rich:column>
										<f:facet name="header">
											<h:outputText value="Finalize" />
										</f:facet>
										<h:commandButton
											 action="#{cSDUnitRegistrationAction.finalli}"  
											style="background: transparent; height : 30px;"
											image="/img/approve.png"
											rendered="#{list.finalize_flag ne 'V'}">

											<f:setPropertyActionListener value="#{list}"
												target="#{cSDUnitRegistrationAction.dt }" />

										</h:commandButton>
										<h:outputText value="Finalize Done"
											style="color: red; font-weight: bold; "
											rendered="#{list.finalize_flag eq 'V'}" />


									</rich:column>

									<f:facet name="footer">
										<rich:datascroller for="table1"></rich:datascroller>
									</f:facet>

								</rich:dataTable>

							</div>
						</div>
        <div class="row">
        	<rich:spacer height="20px;"></rich:spacer>
        </div>
      </f:view>
    </h:form>
</ui:composition>