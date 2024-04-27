<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.42 (Build 284) (http://www.copasi.org) at 2024-04-27T01:40:43Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="42" versionDevel="284" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_19" name="Noncompetitive inhibition (irr)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_19">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/((Km+substrate)*(1+Inhibitor/Ki))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_119" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_118" name="Inhibitor" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_117" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_116" name="V" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_115" name="Ki" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Model with pulsed drug" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-09-30T13:00:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>pmendes@uchc.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mendes</vCard:Family>
            <vCard:Given>Pedro</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Connecticut</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-04-26T21:40:33</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>Example of using events to provide pulses of a species</h1>
<h2>Description</h2>
<p>The model consists of a simple linear pathway with two intermediates (<b>A</b> and <b>B</b>), where the reaction that converts <b>A</b> into <b>B</b> is inhibited by another species <b>drug</b>. There are two external species, a substrate <b>S</b> and a product <b>P</b> of the pathway that are kept fixed.</p>

<pre>
              drug 
                  |
                  v
   S ---> A ---> B ---> P
</pre>

<p>The main point of this example is to demonstrate how to set events such that they can simulate a pulse in the drug concentration (ie change its concentration at specific time points). The example here is to turn it "on" for 1 second (set it to a fixed value) and then turn it "off" for 3 second (set it to zero). Like this:</p>
<pre>
▁▁▁▁▁▁▁▁▁▛▀▜▁▁▁▁▁▁▁▁▁▛▀▜▁▁▁▁▁▁▁▁▁▛▀▜▁ . . .
</pre>
<h2>Approach</h2>
<p>A few auxiliary <b>global quantities</b> are created:</p>
<table>
<tr><td>Drug_dose  &nbsp;&nbsp;&nbsp;</td><td>to set the value of the [drug] during on time</td></tr>
<tr><td>off_time</td><td>to set the duration of the off time (here 3 second)</td></tr>
<tr><td>on_time</td><td>to set the duration of the on time (here 1 second)</td></tr>
<tr><td>Next_On</td><td>to store the next time when the drug pulse is turned on</td></tr>
<tr><td>Next_Off</td><td>to store the next time when the drug pulse is turned off</td></tr>
</table>
<p>Then two <b>events</b> are created to turn on and turn off the pulse:</p>
<table>
<tr><td>Drug_On &nbsp;&nbsp;&nbsp;</td><td>happens when time > Next_On<br />sets the [drug]=Drug_dose<br />adds the time of a whole period (off_time+on_time) to Next_On (so that it can turn on the next time).</td></tr>
<tr><td>Drug_Off</td><td>happens when time > Next_Off<br />sets the [drug]=0<br />adds the time of a whole period (off_time+on_time) to Next_Off (so that it can turn off the next time).</td></tr>
</table>
<h2>Further improvements</h2>
<p>It is possible to change the on and off times, simply by adjusting the global quantities <b>on_time</b> and <b>off_time</b>.</p>
<p>It is possible to adjust the drug dose by adjusting <b>Drug_dose</b>. </p>
<p>It is even possible to change these values at some point in time by adding another event that changes any of these global quantitites...</p>
<p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="S" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="B" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="P" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="drug" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Next_On" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Drug_dose" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="on_time" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="off_time" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Next_Off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=InitialValue>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[on_time],Reference=InitialValue>
        </InitialExpression>
        <Unit>
          s
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7381" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7380" name="Km" value="0.05"/>
          <Constant key="Parameter_7378" name="V" value="5"/>
          <Constant key="Parameter_7377" name="Ki" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_19" unitType="Default" scalingCompartment="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_119">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_118">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_117">
              <SourceParameter reference="Parameter_7380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_116">
              <SourceParameter reference="Parameter_7378"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_115">
              <SourceParameter reference="Parameter_7377"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7379" name="k1" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Drug on" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Model with pulsed drug,Reference=Time> > &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[Next_On],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[drug]">
            <Expression>
              &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[Drug_dose],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Model with pulsed drug,Vector=Values[Next_On]">
            <Expression>
              &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[Next_On],Reference=Value>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=Value>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[on_time],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Drug_off" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Model with pulsed drug,Reference=Time> > &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[Next_Off],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[drug]">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Model with pulsed drug,Vector=Values[Next_Off]">
            <Expression>
              &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[Next_Off],Reference=Value>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=Value>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[on_time],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[A]" value="1.2044281519999843e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[S]" value="6.0221407599999757e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[B]" value="1.6059042026666633e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[P]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[drug]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Values[Next_On]" value="3" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Values[Drug_dose]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Values[on_time]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Values[off_time]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Values[Next_Off]" value="4" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Model with pulsed drug,Vector=Values[off_time],Reference=InitialValue>+&lt;CN=Root,Model=Model with pulsed drug,Vector=Values[on_time],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Km" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=V" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Ki" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Model with pulsed drug,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=k1" value="15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.2044281519999843e+23 1.6059042026666633e+23 6.0221407599999757e+23 0 0 1 3 0.10000000000000001 1 3 4 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="true">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.050000000000000003"/>
        <Parameter name="Duration" type="float" value="50"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[A]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[A],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[B]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[B],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[drug]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Model with pulsed drug,Vector=Compartments[compartment],Vector=Metabolites[drug],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_0" name="reaction diagram">
      <Dimensions width="571.35968872373701" height="108.70536116847552"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_2" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="189.86003857441528" y="79.916194703948349"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="0" y="78.858274319082284"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="369.72383755305623" y="79.217554196031074"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="543.35968872373701" y="80.70536116847552"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="249.52377139849614" y="0"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_12" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="116.24478612024427" y="93.241635564605303"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="106.75178419152351" y="93.188739545361997"/>
                <End x="125.73778804896503" y="93.29453158384861"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_13" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="106.75178419152351" y="93.188739545361997"/>
                    <End x="33" y="92.916143842711477"/>
                    <BasePoint1 x="87.765780334081981" y="93.082947506875385"/>
                    <BasePoint2 x="55.636389202680604" y="92.973097665171792"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_14" name="MetabReferenceGlyph" metaboliteGlyph="Layout_2" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="125.73778804896503" y="93.29453158384861"/>
                    <End x="184.86003857441528" y="93.75044947825495"/>
                    <BasePoint1 x="144.72379190640655" y="93.400323622335222"/>
                    <BasePoint2 x="169.53841620477129" y="93.601834559916739"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_15" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="284.81783952102126" y="95.335470060638499"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="275.82464957208919" y="95.37040208603436"/>
                <End x="293.81102946995333" y="95.300538035242639"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_16" name="MetabReferenceGlyph" metaboliteGlyph="Layout_2" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="275.82464957208919" y="95.37040208603436"/>
                    <End x="222.86003857441528" y="94.452658323349524"/>
                    <BasePoint1 x="257.8382696742251" y="95.440266136826082"/>
                    <BasePoint2 x="235.85255914985416" y="94.963928242785741"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_17" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="293.81102946995333" y="95.300538035242639"/>
                    <End x="364.72383755305623" y="93.749337532768863"/>
                    <BasePoint1 x="311.79740936781741" y="95.230673984450917"/>
                    <BasePoint2 x="342.75721843490282" y="94.472539745911945"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_18" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="283.85809683788193" y="33"/>
                    <End x="284.77899706125214" y="85.335545497757082"/>
                    <BasePoint1 x="284.31854694956701" y="59.167772748878541"/>
                    <BasePoint2 x="284.74015460148303" y="75.335620934875664"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_19" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="462.94781410562246" y="94.499790711293826"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="454.26602154708843" y="94.42540036267161"/>
                <End x="471.62960666415648" y="94.574181059916043"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_20" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="454.26602154708843" y="94.42540036267161"/>
                    <End x="402.72383755305623" y="93.595944081125282"/>
                    <BasePoint1 x="436.90243643002037" y="94.276619665427162"/>
                    <BasePoint2 x="415.47224071227129" y="93.899086698965107"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_21" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="471.62960666415648" y="94.574181059916043"/>
                    <End x="538.35968872373701" y="94.710252616772124"/>
                    <BasePoint1 x="488.99319178122454" y="94.72296175716049"/>
                    <BasePoint2 x="518.01733653174779" y="94.753802361277423"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_3" name="TextGlyph" graphicalObject="Layout_2" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="189.86003857441528" y="79.916194703948349"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_5" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="0" y="78.858274319082284"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_7" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="369.72383755305623" y="79.217554196031074"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_9" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="543.35968872373701" y="80.70536116847552"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_11" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="249.52377139849614" y="0"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
