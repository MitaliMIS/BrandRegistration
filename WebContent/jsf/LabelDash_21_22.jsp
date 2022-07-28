
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:rich="http://richfaces.org/rich">
	<style>
.grafico {
	min-width: 310px;
	max-width: 400px;
	height: 280px;
	margin: 0 auto
}

.main-header {
	font-size: x-large;
	color: #888;
	font-family: Verdana;
	margin-bottom: 20px;
}

.destaque {
	color: #f88;
	font-weight: bolder;
}
</style>

<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</head>


	<f:view>
		<h:form>
			<div class="row" style="height: 30px;">

				<h:inputHidden value="#{labelDash_21_22Action.hidden}"></h:inputHidden>
			</div>

			<div  >
				<div class="row">
					<div class="col-md-4 main-header">
						Band Label Application <span class="destaque">Dashboard </span>
					</div>
					<div class="col-md-8 text-right announcement-heading">
						<h:outputLink target="_blank"
								value="/doc/ExciseUP/LabelRegistrationInstruction.pdf">
						   <i class="fa fa-arrow-circle-down"></i> Download Instructions
						   </h:outputLink>
						   <rich:spacer width="30px"></rich:spacer>
						   <h:outputLink target="_blank"
								value="/doc/ExciseUp/Applications/format/affidavitFormat.pdf">
						   <i class="fa fa-arrow-circle-down"></i> Download Affidavit Format For New Brand
						   </h:outputLink>
						   <rich:spacer width="30px"></rich:spacer>
						   <h:outputLink target="_blank"
								value="/doc/ExciseUp/Applications/format/renewalaffidavitFormat.pdf">
						   <i class="fa fa-arrow-circle-down"></i> Download Affidavit Format For Renewal
						   </h:outputLink>
						   <h:inputHidden value="#{labelDash_21_22Action.hidden}" />
					</div>
					
				</div>
				<div class="row" align="center">
				<div class="col-md-6" align="right">
							 <h:outputLabel value="Year"></h:outputLabel>
						</div>
				<div class="col-md-6" align="left">
							 <h:selectOneRadio
								value="#{labelDash_21_22Action.year}" valueChangeListener="#{labelDash_21_22Action.yearchange}" onchange="this.form.submit();">
								<f:selectItem itemValue="21_22" itemLabel="2021-22" />
								<f:selectItem itemValue="22_23" itemLabel="2022-23" />
								 </h:selectOneRadio>
						</div>
				</div>
				<div class="row">


<div class="col-md-2">

						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										<i class="fa fa-clipboard fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 text-right">

										<p class="announcement-heading">
											<h:outputLabel value="#{labelDash_21_22Action.totrenewal}"></h:outputLabel>
										</p>
										<p class="announcement-text">Requested Renewals</p>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer announcement-bottom">
									<div class="row"  style=" height : 35px;">
										<div class="col-xs-9" align="left">
											<h:commandButton disabled="#{labelDash_21_22Action.imprtflg eq 'T' }"
												style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;" 
												action="#{labelDash_21_22Action.renewbrands}"
												value="Renew Brand" />
										</div>
										<div class="col-xs-3  text-right">
											<i class="fa fa-arrow-circle-right"></i>
										</div>
									</div>
								</div>
							</a>
						</div>

					</div>
					<div class="col-md-2">

						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										<i class="fa fa-list-ol fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 text-right">

										<p class="announcement-heading">
											<h:outputLabel value="#{labelDash_21_22Action.totapp}"></h:outputLabel>
										</p>
										<p class="announcement-text">Brands Requested</p>
									</div>
								</div>
							</div>

							<div class="panel-footer announcement-bottom">
								<div class="row"  style=" height : 35px;">
									<div class="col-xs-9" align="left">

										<h:commandButton
											style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;"
											action="#{labelDash_21_22Action.newapp}" value="New Brand" />
									</div>
									<div class="col-xs-3  text-right">
										<i class="fa fa-arrow-circle-right"></i>
									</div>
								</div>
							</div>

						</div>

					</div>




					



					 
					<div class="col-md-2">

						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										<i class="fa fa-list-ol fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 text-right">

										<p class="announcement-heading">
											<h:outputLabel value="#{labelDash_21_22Action.totapp}"></h:outputLabel>
										</p>
										<p class="announcement-text">Labels Added</p>
									</div>
								</div>
							</div>

							<div class="panel-footer announcement-bottom">
								<div class="row"   style=" height : 35px;">
									<div class="col-xs-9" align="left">

										<h:commandButton
											style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;"
											action="#{labelDash_21_22Action.uploadLabel}" value="Add Labels For New Brands " />
									</div>
									<div class="col-xs-3 text-right">
										<i class="fa fa-arrow-circle-right"></i>
									</div>
								</div>
							</div>

						</div>

					</div>




					



					<div class="col-md-2">

						<div class="panel panel-warning">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										<i class="fa fa-upload fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 text-right">

										<p class="announcement-heading">
											<h:outputLabel value="#{labelDash_21_22Action.totcompletd}"></h:outputLabel>
										</p>
										<p class="announcement-text">Applications Completed</p>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer announcement-bottom">
									<div class="row" style=" height : 35px;">
									<div class="col-xs-9" align="left">
											<h:commandButton
												style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;"
												action="#{labelDash_21_22Action.uploaddoc}"
												value="Upload Documents" />
										</div>
										<div class="col-xs-3  text-right">
											<i class="fa fa-arrow-circle-right"></i>
										</div>
									</div>
								</div>
							</a>
						</div>

					</div>

<div class="col-md-2">

						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										<i class="fa fa-clipboard fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 text-right">

										<p class="announcement-heading">
											<h:outputLabel value="#{labelDash_21_22Action.totchallan}"></h:outputLabel>
										</p>
										<p class="announcement-text">Final Submit</p>
									</div>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer announcement-bottom">
									<div class="row"  style=" height : 35px;">
										<div class="col-xs-9" align="left">
											<h:commandButton
												style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;"
												action="#{labelDash_21_22Action.uploadChallan}"
												value="Finalize Application" />
										</div>
										<div class="col-xs-3  text-right">
											<i class="fa fa-arrow-circle-right"></i>
										</div>
									</div>
								</div>
							</a>
						</div>

					</div>


					<div class="col-md-2">

						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-4">
										 <i class="fa fa-check-square-o fa-4x"></i>
									</div>
									<div style="height: 100px; height: 120px; padding-top: 40px;"
										class="col-xs-8 ">

										<p  class="announcement-heading">
										<br/>
										</p>
										<p class="announcement-text text-right">Application Status</p>
										
									</div>

								</div>
								<div class="row" align="center">
								<h:outputLabel  class="label label-danger" style="width:100%;" rendered="#{labelDash_21_22Action.flag}"
										  value="#{labelDash_21_22Action.obj_mssg}"></h:outputLabel>
								</div>
							</div>
							<a href="#">
								<div class="panel-footer announcement-bottom">
									<div class="row" style=" height : 35px;">
									<div class="col-xs-9" align="left">
											<h:commandButton
												style="FONT-WEIGHT: bold; background: transparent;border: none;white-space: normal;font-size:.8em;text-align: left;"
												action="#{labelDash_21_22Action.viewDetail}" value="View Details" />
										</div>
										<div class="col-xs-3  text-right">
											<i class="fa fa-arrow-circle-right"></i>
										</div>
									</div>
								</div>
							</a>
						</div>

					</div>
					
					
				</div>
				

			</div>
<div class="row" style="height: 100px;">

				<h:inputHidden value="#{labelDash_21_22Action.hidden}"></h:inputHidden>
			</div>
		</h:form>
	</f:view>
</ui:composition>