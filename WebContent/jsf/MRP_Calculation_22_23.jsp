
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich">

	<h:form>
		<style>
		hr.style-seven {
    overflow: visible; /* For IE */
    height: 30px;
    border-style: solid;
    border-color: black;
    border-width: 1px 0 0 0;
    border-radius: 20px;
    width:70%;
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
.preformatted {
	white-space: pre-wrap;
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
</style>



		<f:view>
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
<a4j:outputPanel  id='msg23'>
											<h:outputLabel value="#{mRP_Calculation_22_23Action.err}" style="color: red"
											 rendered="#{mRP_Calculation_22_23Action.err_flag}">
											
											</h:outputLabel>
										</a4j:outputPanel>


				<div class="row " align="center">
					<div align="center"  class="pghead">



						<h1>
                           <h:inputHidden value="#{advanceDutyRegister_Brand_Label_22_23Action.hidden }" />
							<h:outputText value="MRP Calculation"
								style="FONT-STYLE: italic; COLOR: #0000a0; FONT-WEIGHT: bold; FONT-SIZE: x-large;" />
						</h1>
					</div>
				</div> 
 
				<div align="center" style=" height : 29px;">
					<div style="FONT-SIZE: x-large; FONT-WEIGHT: bold; width: 80%">
						<hr class="style-seven"></hr>
					</div>
				</div>
 
				 


				<div class="row " align="center">
					<rich:spacer height="15px"></rich:spacer>
				</div>
				<div class="col-md-12" align="center">
				
					<div
						style="padding: 10px; border: 4px groove #2948a4; background-color: #caefff; width: 95%;">
<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div> 
						<div class="row col-md-12" align="center"
							style="FONT-STYLE: italic; FONT-WEIGHT: bold;">
						 
						 
							<h:selectOneRadio  
								value="#{mRP_Calculation_22_23Action.unit_type}"
								valueChangeListener="#{mRP_Calculation_22_23Action.unit_typeListener}"
								
								onchange="this.form.submit();">
								<f:selectItem itemValue="DFL" itemLabel="Distillery FL" />
								<f:selectItem itemValue="B" itemLabel="Brewery" />
								<f:selectItem itemValue="BWFL2A" itemLabel="BWFL-2A" />
								<f:selectItem itemValue="BWFL2B" itemLabel="BWFL-2B" />
								<f:selectItem itemValue="BWFL2C" itemLabel="BWFL-2C" />
								<f:selectItem itemValue="BWFL2D" itemLabel="BWFL-2D" />
								
								<f:selectItem itemValue="IMPORTEDFL" itemLabel="IMPORTED FL" />
								<f:selectItem itemValue="IMPORTEDWINE" itemLabel="IMPORTED WINE" />
								<f:selectItem itemValue="IMPORTEDBEER" itemLabel="IMPORTED BEER / LAB" />
								
								 
							</h:selectOneRadio>
						</div>

						<div class=" row col-md-12">
							<rich:spacer height="20px" />
						</div>
						<h:panelGroup rendered="#{mRP_Calculation_22_23Action.unit_type   ne 'IMPORTEDFL' and  mRP_Calculation_22_23Action.unit_type   ne 'IMPORTEDWINE' and mRP_Calculation_22_23Action.unit_type   ne 'IMPORTEDBEER'}" >
						
						<h:panelGroup rendered="#{mRP_Calculation_22_23Action.unit_type   eq 'BWFL2C'}" >
						<div class="row">
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="MRP without corona cess of 750ml"  ></h:outputLabel>
							 
						</div>
						<div class=" row col-md-2" align="left" style=" height : 24px;">
							 <h:inputText value="#{mRP_Calculation_22_23Action.mrp_750ml}"
							 valueChangeListener="#{mRP_Calculation_22_23Action.duty_cal}" >
							 
							      <a4j:support event="onblur" ajaxSingle="true"
												reRender="table22" />
							  
							 </h:inputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="ML of Proposed Packing"></h:outputLabel>
							  
						</div>
						<div class=" row col-md-2" align="left">
							 <h:inputText value="#{mRP_Calculation_22_23Action.ml_praposed}"
							  
							   valueChangeListener="#{mRP_Calculation_22_23Action.edpChange_other}" >
							     
							    <a4j:support event="onblur" ajaxSingle="true"
												reRender="table223,edp_otherml,msg23" />
							   </h:inputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							  
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
							   
						</div>
						
						</div>
						<div class="row">
							<div class=" row col-md-2" align="right"> </div>
						<div class=" row col-md-2" align="left" style=" height : 24px;"> </div>
						 
							<div class=" row col-md-2" align="right"> </div>
						<div class=" row col-md-2" align="left"> </div>
						 
							<div class=" row col-md-2" align="right">
							 
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
							  
						</div>
						
						</div>
						</h:panelGroup>
						<h:panelGroup rendered="#{mRP_Calculation_22_23Action.unit_type   ne 'BWFL2C'}" >
						<div class="row">
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="EDP of 180ml" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'DFL' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2A'}" ></h:outputLabel>
							  <h:outputLabel value="EDP of 500ml"  rendered="#{mRP_Calculation_22_23Action.unit_type eq 'B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2D'}" ></h:outputLabel>
						</div>
						<div class=" row col-md-2" align="left" style=" height : 24px;">
							 <h:inputText value="#{mRP_Calculation_22_23Action.edp_180ml}"
							 valueChangeListener="#{mRP_Calculation_22_23Action.edpChange}" >
							 <a4j:support event="onblur" ajaxSingle="true"
												reRender="table22,edp_750ml" />
							 </h:inputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="EDP of 750ml" 	rendered="#{mRP_Calculation_22_23Action.unit_type eq 'DFL' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2A'}" ></h:outputLabel>
							  <h:outputLabel value="EDP of 500ml"   rendered="#{mRP_Calculation_22_23Action.unit_type eq 'B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2D'}" ></h:outputLabel>
						</div>
						<div class=" row col-md-2" align="left">
							 <h:outputText id="edp_750ml" value="#{mRP_Calculation_22_23Action.edp_750ml}"></h:outputText>
						</div>
						 
							<div class=" row col-md-2" align="right">
							 <h:outputLabel value="ML of Proposed Packing"></h:outputLabel>
						</div>
						<div class=" row col-md-2" align="left" style=" height : 44px;">
							  <h:inputText value="#{mRP_Calculation_22_23Action.ml_praposed}"
							  
							   valueChangeListener="#{mRP_Calculation_22_23Action.edpChange_other}" >
							     
							    <a4j:support event="onblur" ajaxSingle="true"
												reRender="table223,edp_otherml,msg23" />
							   </h:inputText>
						</div>
						
						</div>
						</h:panelGroup>
						<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel value="Calculated sheet for 750ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
					rendered="#{mRP_Calculation_22_23Action.unit_type eq 'DFL' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2A' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
						   
						   </h:outputLabel>
						   <h:outputLabel value="Calculated sheet for 500ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
						   rendered="#{mRP_Calculation_22_23Action.unit_type eq 'B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2D'}" >
						   
						   </h:outputLabel>
				</div>
				<div class="  col-md-6" align="right">
					 
				</div>
			</div>
					<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
					
						<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table22" width="100%"
							value="#{mRP_Calculation_22_23Action.calculation_750ml_list}"
							var="list">
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.size_ml_750}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'DFL' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2A'}" >
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>
								 <center>
										<h:outputText   
											value="#{list.liq_cat}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
						  
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C' and mRP_Calculation_22_23Action.unit_type ne 'BWFL2B' and  mRP_Calculation_22_23Action.unit_type ne 'B'}" >
								 
								<f:facet name="header"  >
									<h:outputText value="EDP" />
									 
								</f:facet>
							 
								 
								 <center>
										<h:outputText  
											value="#{list.edp_base}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C' and (mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or  mRP_Calculation_22_23Action.unit_type eq 'B')}" >
								 
								<f:facet name="header"  >
									<h:outputText value="EBP" />
									 
								</f:facet>
								
								 
								 <center>
										<h:outputText  
											value="#{list.edp_base}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText value="MRP without corona cess of 750ml" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.mrp_wine}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText value="#{list.addnl_duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:outputText value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:inputText value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;width:70px;"  
									 valueChangeListener="#{mRP_Calculation_22_23Action.duty_cal22}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										  <a4j:support event="onblur"   ajaxSingle="true"
												reRender="wholesale_margin,table22" >
								</a4j:support>
								 
								</h:inputText>
								 
								
							</rich:column>




							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:outputText value="#{list.retailmargin_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="wholesale_margin" value="#{list.wholesalemargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText value="#{list.retailmargin_base }"  
									style="COLOR: #0000a0;width:70px;"
									 valueChangeListener="#{mRP_Calculation_22_23Action.duty_cal33}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
											<a4j:support event="onblur"    ajaxSingle="true" 
												reRender="retail_margin,table22" >
								</a4j:support>
								</h:inputText>
								 
								 
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<a4j:outputPanel id="retail_margin">
								<h:outputText   value="#{list.retailmargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								 
								</h:outputText>
								</a4j:outputPanel>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText value="#{list.spl_addl_cess_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2A' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2D' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Import Fee" />
								</f:facet>
								<h:outputText value="#{list.import_bwfl_2a_2b }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%"  
							rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText value="#{list.mrp_bwfl_base }" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>
 
						</rich:dataTable>

					</div>
				</div>
				
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel id="edp_otherml"  value="Calculated sheet for #{mRP_Calculation_22_23Action.ml_praposed} ml :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;">
						   
						   </h:outputLabel>
				</div>
				<div class="  col-md-6" align="right">
					 
				</div>
			</div>
					<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
					
						<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table223" width="100%"
							value="#{mRP_Calculation_22_23Action.calculation_list}"
							var="list">
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.size_ml_750_}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'DFL' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2A'}"  >
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>
								 <center>
										<h:outputText   
											value="#{list.liq_cat_}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
						  
							<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C' and mRP_Calculation_22_23Action.unit_type ne 'BWFL2B' and  mRP_Calculation_22_23Action.unit_type ne 'B'}">
								<f:facet name="header">
									<h:outputText value="EDP" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.edp_base_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C' and (mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or  mRP_Calculation_22_23Action.unit_type eq 'B')}">
								<f:facet name="header">
									<h:outputText value="EBP" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.edp_base_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText value="MRP without corona cess of 750ml" />
								</f:facet>
								 <center>
										<h:outputText  
											value="#{list.mrp_wine_}" 	  style="COLOR: #0000a0;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										</h:outputText>
									</center>
							</rich:column>


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText value="#{list.duty_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText value="#{list.addnl_duty_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								<h:outputText value="#{list.wholesalemargin_base_ }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>




							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:outputText value="#{list.retailmargin_base_ }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText value="#{list.spl_addl_cess_base_ }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type eq 'BWFL2A' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2B' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2D' or mRP_Calculation_22_23Action.unit_type eq 'BWFL2C'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Import Fee" />
								</f:facet>
								<h:outputText value="#{list.import_bwfl_2a_2b_}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText value="#{list.max_retailmargin_base_}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type ne 'BWFL2C'}">
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText value="#{list.actual_retailmargin_10mult_base_}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText value="#{list.mrp_bwfl_base_ }" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>
 
						</rich:dataTable>

					</div>
				</div>
						 
 </h:panelGroup>
 	<h:panelGroup rendered="#{mRP_Calculation_22_23Action.unit_type   eq 'IMPORTEDFL' or  mRP_Calculation_22_23Action.unit_type   eq 'IMPORTEDWINE' or mRP_Calculation_22_23Action.unit_type   eq 'IMPORTEDBEER'}" >
		<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="row col-md-12">
				<div class="  col-md-6" align="left">
					<h:outputLabel value="Calculation sheet :-" style="FONT-SIZE: x-large; COLOR: red; FONT-WEIGHT: bold;"
					 >
						   
						   </h:outputLabel>
						    
				</div>
				<div class="  col-md-6" align="right">
					 
				</div>
			</div>
					<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
					
						<div class="row" align="center">
					<div class="col-md-12">

						<rich:dataTable columnClasses="columnClass1"
							headerClass="TableHead" footerClass="TableHead"
							rowClasses="TableRow1,TableRow2" styleClass="DataTable"
							id="table224" width="100%"
							value="#{mRP_Calculation_22_23Action.calculation_750ml_list33}"
							var="list">
							
							 <rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="Size (ML)" />
								</f:facet>
								 <center>
										<h:inputText  
											value="#{list.size_ml_750}" 	  style="COLOR: #0000a0;;width:70px;" >
											  <a4j:support event="onblur" ajaxSingle="true"
												reRender="size" />
										</h:inputText>
									</center>
							</rich:column>
							<rich:column width="7%" rendered="false" >
								<f:facet name="header">
									<h:outputText value=" " />
								</f:facet>
								 <center>
										<h:outputText  id="size"
											value="#{list.size_ml_750_cal}" 	  style="COLOR: #0000a0;" >
											 
										</h:outputText>
									</center>
							</rich:column>
							<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText value="Category" />
								</f:facet>
								 <center>
								 <h:selectOneMenu value="#{list.liq_cat}"
									styleClass="dropdown-menu1" style=" width : 110px;"   >
									 
									<f:selectItems value="#{list.lic_category }" />
								</h:selectOneMenu>
									 
									</center>
							</rich:column>
								<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText value="CIF" />
								</f:facet>
								 <center>
										<h:inputText  
											value="#{list.cif}" 	  style="COLOR: #0000a0;width:70px;" >
											 <f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onblur" ajaxSingle="true"
												reRender="cif" />
										</h:inputText>
									</center>
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="cif" value="#{list.cif_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							
							<rich:column width="7%"  >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Margin" />
								</f:facet>
								<h:inputText value="#{list.profit }"  
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onblur" ajaxSingle="true"
												reRender="profit" />
								</h:inputText>
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText id="profit" value="#{list.profit_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
								<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type eq 'IMPORTEDBEER'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:inputText    value="#{list.wholesalemargin_base }"
								
									style="COLOR: #0000a0;;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										   
										  <a4j:support event="onkeyup" 
												reRender="wholesale_margin" >
								</a4j:support>
								</h:inputText>
								
								 
							</rich:column>
							<rich:column width="7%"  rendered="false" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value=" " />
								</f:facet>
								 
								<h:outputText   id="wholesale_margin"  value="#{list.wholesalemargin_base_cal }"
									style="COLOR: #0000a0;;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>




							
							
							 
							
							 
							<rich:column width="7%"  rendered="#{mRP_Calculation_22_23Action.unit_type eq 'IMPORTEDBEER'}" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Retail Margin" />
								</f:facet>
								<h:inputText    value="#{list.retailmargin_base }"  
									style="COLOR: #0000a0;width:70px;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
									<a4j:support event="onkeyup"  
												reRender="retail_margin" >
								</a4j:support>	
								</h:inputText>
								 
								 
							</rich:column>
								
							<rich:column width="7%"  rendered="false"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value=" " />
								</f:facet>
								<h:outputText  id="retail_margin"  value="#{list.retailmargin_base_cal }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										
								</h:outputText>
								 
								 
							</rich:column>
						  	<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Custom Bond handling Charges" />
								</f:facet>
								<h:inputText value="#{list.custom_bond_handling_charge}"
									 style="COLOR: #0000a0;width:70px;"
									 valueChangeListener="#{mRP_Calculation_22_23Action.edpChangebase_edp}" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 <a4j:support event="onkeyup" ajaxSingle="true"
												reRender="change,change1,change2,change3,change4,change5,change6,change7,change8,change11,change12,change13,change14,iuedp,msg23" />
								</h:inputText>
								 
							 
								 
							</rich:column>
							<rich:column width="7%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Ex-Custom Bond" />
								</f:facet>
								<h:outputText value="#{list.ex_custom_bond }"  id="change8"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							 


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText value="DUTY" />
								</f:facet>
								 
								<h:outputText  id="change" value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Custom Duty" />
								</f:facet>
								 
								<h:outputText  id="change14" value="#{list.duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Additional Duty" />
								</f:facet>
								<h:outputText  id="change1" value="#{list.addnl_duty_base }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Permit fee" />
								</f:facet>
								<h:outputText value="#{list.permit_fee }"  id="change11"
									style="COLOR: #0000a0;width:70px;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
								</h:outputText>
								 
							</rich:column>
							 


							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Wholesale" />
								</f:facet>
								 
								<h:outputText  id="change12" value="#{list.landed_cost_wholesale }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText  styleClass="preformatted" value="Landed Cost at Retail" />
								</f:facet>
								 
								<h:outputText  id="change13" value="#{list.landed_cost_retail }"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>

							 





							
							<rich:column width="7%"   rendered="#{mRP_Calculation_22_23Action.unit_type eq 'IMPORTEDWINE' or mRP_Calculation_22_23Action.unit_type eq 'IMPORTEDFL' }" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted"
										value="Wholesale Margin" />
								</f:facet>
								 
								<h:outputText  id="change2" value="#{list.wholesalemargin_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
										 
										 
								</h:outputText>
								
								 
							</rich:column>
						
							 




							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Spl. Addl. CESS" />
								</f:facet>
								<h:outputText  id="change4" value="#{list.spl_addl_cess_base }"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
						
							<rich:column width="7%"   >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Calculated MRP" />
								</f:facet>
								<h:outputText  id="change5" value="#{list.max_retailmargin_base}"  
									style="COLOR: #0000a0;">
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>





							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP interms of 10" />
								</f:facet>
								<h:outputText  id="change6" value="#{list.actual_retailmargin_10mult_base}"
									style="COLOR: #0000a0;"  >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								 
							</rich:column>
							<rich:column width="7%" >
								<f:facet name="header">
									<h:outputText styleClass="preformatted" value="Actual MRP" />
								</f:facet>
								 
								<h:outputText  id="change7" value="#{list.mrp_bwfl_base }" style="COLOR: #0000a0;" >
									<f:convertNumber maxFractionDigits="2"
										pattern="#############0.00" />
								</h:outputText>
								
								 
								 
							</rich:column>
 
						</rich:dataTable>

					</div>
				</div>
				
				<div class="row " align="center">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
		
						
    </h:panelGroup>
						 
						 



<div class="row" align="left">
					<rich:spacer height="20px"></rich:spacer>
				</div>
				
				<div class="col-md-12" align="center">





				 

 

					<h:commandButton
						action="#{mRP_Calculation_22_23Action.reset}"
						value="Reset" styleClass="btn btn-default btn-sm" />

				</div>

							
						<div class="row " align="center">
					<rich:spacer height="10px"></rich:spacer>
				</div>
					</div>
					
				</div>

				<div class="row" align="left">
					<rich:spacer height="10px"></rich:spacer>
				</div>


				<div class="col-md-12" align="center">

					 
				</div>



				<div class="row" align="left">
					<rich:spacer height="30px"></rich:spacer>
				</div>

				 



				<div class="col-md-12" align="center"></div>

				 


			</div>
		</f:view>
	</h:form>



</ui:composition>