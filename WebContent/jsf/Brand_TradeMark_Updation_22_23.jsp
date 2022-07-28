 <ui:composition
       xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich"
	xmlns:h="http://java.sun.com/jsf/html">

	<f:view>
	<h:form>
	
	<style>
.table{
box-shadow: 1px 1px 15px grey;

}
.TableHead{

background-color:#F0F0F0;
height:20px;

font-size: 12px;
}
.table{
box-shadow: 1px 1px 15px grey;

}
.TableFooter{background-color: white; }
.textarea1 {
	border-radius: 3px;
	border-style: none;
	width: 100%;
	box-shadow: 1px 1px 15px lightsteelblue;
	border: 1px solid #669999;
}
</style>
			<div class="panel panel-default">

				<div class="panel-body">
				
				<div class="row">
				</div>
				<div class="row"><h:inputHidden
									value="#{brand_TradeMark_Updation_22_23Action.hidden}"></h:inputHidden>
				</div>
					<div align="center">
						<h:outputText value="Update Trademark No. for Brand   "
							style="FONT-SIZE: x-large;  COLOR: #0000a0; FONT-WEIGHT: bold; TEXT-DECORATION: underline;">
						</h:outputText>
					</div>
					<div class="row">
						<rich:spacer height="10px" />
					</div>
										<div><rich:separator lineType="dashed"></rich:separator></div>
										
										
										 
									
										
										
										<div align="center" colspan="2"><h:outputLabel
												value="#{brand_TradeMark_Updation_22_23Action.user_Name}"
												style="COLOR: #000000; FONT-SIZE: x-large;"></h:outputLabel></div>
												
										<rich:spacer height="20px"></rich:spacer>
									
										
									
										
									
										<rich:separator lineType="dashed"></rich:separator>
									
					 
				
					<div class="row">
						<div class="col-md-12 wow shake" align="left">
							<h:messages errorStyle="color:red" layout="TABLE" id="messages"
								infoStyle="color:green"
								style="FONT-FAMILY: 'Yu Gothic UI Semibold'; background-color: #eee6ff; font-size:14px; font-weight: bold ;decoration:none;">
							</h:messages>

						</div>
					</div>
						<rich:spacer height="20px"></rich:spacer>
					
				<div align="center" style="overflow-y: scroll; max-height: 400px" >
					
					 
					<rich:dataTable id="tableunit10"   width="100%" var="list"
						value="#{brand_TradeMark_Updation_22_23Action.dataTable}"
						
						headerClass="TableHead" footerClass="TableFooter"
						rowClasses="TableRow1,TableRow2" styleClass="table table-hover">


						<rich:column align="center">
							<f:facet name="header">
								<h:outputText value="Sr.No."
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.sr_no}">

							</h:outputText>
						</rich:column>
						<rich:column>
							<f:facet name="header">
								<h:outputText value="Brand Name."
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<h:outputText value="#{list.brand_name}">
							
							</h:outputText>
						</rich:column>
			
						<rich:column  >
							<f:facet name="header">
								<h:outputText value="Trademark No. (Only in Digits)"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<center>
							
							<h:inputText value="#{list.trade_mark_no}"
							 converterMessage="Please enter numeric value only." required="true" requiredMessage="Field cannot be empty"
							  disabled="#{list.disable_flg_dt eq 'T' }">
							
							</h:inputText>
							</center>
						</rich:column>



						  

                         
						<rich:column>
							<f:facet name="header">
								<h:outputText value="Action"
									styleClass="generalHeaderOutputTable"
									style=" FONT-WEIGHT: bold;"></h:outputText>
							</f:facet>
							<center>

											<h:selectBooleanCheckbox value="#{list.select}"
											rendered="#{list.disable_flg_dt eq 'F' }"></h:selectBooleanCheckbox>

<h:outputText value="Updated"
	rendered="#{list.disable_flg_dt eq 'T' }"></h:outputText>

										</center>
						</rich:column>
						<f:facet name="footer">
							 
						</f:facet>

					</rich:dataTable>
					</div>
					<div class="row">
						<rich:spacer height="20px" />
					</div>
					<div align="center">
					<h:commandButton class="btn btn-primary"
														action="#{brand_TradeMark_Updation_22_23Action.save}" value="Update"
														onclick="return confirm('ALERT : The request will be recommended for Saved. Do you wish to continue?');"/>
					</div>
				
				
					
					<div class="row">
						<rich:spacer height="20px" />
					</div>
					
					<div class="row">
						<rich:spacer height="30px" />
					</div>
					
				</div>
			</div>	
	</h:form>
	</f:view>
</ui:composition>