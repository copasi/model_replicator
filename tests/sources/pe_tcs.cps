<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.37 (Build 264) (http://www.copasi.org) at 2024-08-28T01:34:40Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="37" versionDevel="264" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
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
    <Function key="Function_40" name="MM(expl. enzyme)" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kcat*E*(S-P/Keq)/(S+Kms*(1+P/Kmp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="S" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="E" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="Kms" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Kmp" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Prot synth" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*mRNA/(K+mRNA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="mRNA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="V" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="K" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="mRNA synthesis w/ repressor &amp; inducer" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V/(1+(Repressor/Kr)^hr +(Ki/Inducer)^hi)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="Repressor" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_269" name="Inducer" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="V" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="Kr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="hr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Ki" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="hi" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="3-enzyme linear pathway with gene expression" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T15:47:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      We attempt to fit 36 parameters of this model against 1 trajectory. This is the problem first proposed in Mendes (2001) in Foundations of Systems Biology (Kitano ed.) MIT Press, 
Cambidge, MA, pp. 163-186.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="S" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="M1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:03:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="M2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="P" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="E1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="E2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="E3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:04:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="G1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:05:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="G2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:05:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="G3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:05:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T16:03:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7486" name="kcat" value="0.0912698"/>
          <Constant key="Parameter_7485" name="Keq" value="1"/>
          <Constant key="Parameter_7491" name="Kms" value="8.20009e+10"/>
          <Constant key="Parameter_7487" name="Kmp" value="18606"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_7486"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_7485"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_7491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_7487"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7489" name="kcat" value="252974"/>
          <Constant key="Parameter_7490" name="Keq" value="1"/>
          <Constant key="Parameter_8513" name="Kms" value="0.00400667"/>
          <Constant key="Parameter_7492" name="Kmp" value="0.633694"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_7489"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_7490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_8513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_7492"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7493" name="kcat" value="3.48331e-12"/>
          <Constant key="Parameter_8514" name="Keq" value="1"/>
          <Constant key="Parameter_8515" name="Kms" value="188640"/>
          <Constant key="Parameter_8511" name="Kmp" value="6.37804e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_7493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_8514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_8515"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_8511"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8512" name="V" value="0.000145861"/>
          <Constant key="Parameter_7496" name="K" value="2.92705e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_8512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_7496"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="E1d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T21:20:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7494" name="k1" value="1.36308e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="E2s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7501" name="V" value="1.18071"/>
          <Constant key="Parameter_7497" name="K" value="0.000873788"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_7501"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_7497"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="E2d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7620" name="k1" value="418.156"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7620"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="E3s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7499" name="V" value="3.91648e+09"/>
          <Constant key="Parameter_7498" name="K" value="0.0590694"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_7499"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_7498"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="E3d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7623" name="k1" value="5.43385e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7623"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="G1s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7622" name="V" value="8.0471e-06"/>
          <Constant key="Parameter_7495" name="Kr" value="3.86399e+09"/>
          <Constant key="Parameter_7621" name="hr" value="1.17071"/>
          <Constant key="Parameter_7619" name="Ki" value="128.423"/>
          <Constant key="Parameter_8165" name="hi" value="0.237438"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_7622"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_7495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_7621"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_7619"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_8165"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="G1d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8163" name="k1" value="2713.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="G2s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7502" name="V" value="5.54494e-11"/>
          <Constant key="Parameter_7518" name="Kr" value="0.00165854"/>
          <Constant key="Parameter_7504" name="hr" value="0.58"/>
          <Constant key="Parameter_7512" name="Ki" value="1.99661e-06"/>
          <Constant key="Parameter_7513" name="hi" value="1.04453"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_7502"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_7518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_7504"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_7512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_7513"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="G2d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8162" name="k1" value="6.38701e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_8162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="G3s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7500" name="V" value="17319.1"/>
          <Constant key="Parameter_7511" name="Kr" value="452.268"/>
          <Constant key="Parameter_8316" name="hr" value="0.451442"/>
          <Constant key="Parameter_7503" name="Ki" value="0.140194"/>
          <Constant key="Parameter_8319" name="hi" value="0.936739"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_7500"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_7511"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_8316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_7503"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_8319"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="G3d" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T23:52:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7508" name="k1" value="9170.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7508"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[S]" value="6.0221417900000003e+21" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[M1]" value="8.5456216085945752e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[M2]" value="5.6285174080355933e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[P]" value="6.0221417900000005e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E1]" value="2.4088567159935739e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E2]" value="2.1925733386581279e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E3]" value="1.7739528629097041e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G1]" value="4.0147611933333337e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G2]" value="3.4479048222822833e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G3]" value="2.514717648606094e+20" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=kcat" value="0.091269799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Keq" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kms" value="82000900000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kmp" value="18606" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=kcat" value="252974" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Keq" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Kms" value="0.0040066700000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Kmp" value="0.63369399999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=kcat" value="3.48331e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Keq" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kms" value="188640" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kmp" value="63780400000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V" value="0.000145861" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=K" value="2.92705e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E1d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E1d],ParameterGroup=Parameters,Parameter=k1" value="13630800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2s],ParameterGroup=Parameters,Parameter=V" value="1.1807099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2s],ParameterGroup=Parameters,Parameter=K" value="0.00087378800000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2d],ParameterGroup=Parameters,Parameter=k1" value="418.15600000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3s],ParameterGroup=Parameters,Parameter=V" value="3916480000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3s],ParameterGroup=Parameters,Parameter=K" value="0.059069400000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3d],ParameterGroup=Parameters,Parameter=k1" value="5.43385e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=V" value="8.0470999999999996e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=Kr" value="3863990000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=hr" value="1.1707099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=Ki" value="128.423" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=hi" value="0.23743800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1d],ParameterGroup=Parameters,Parameter=k1" value="2713.9000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=V" value="5.5449400000000002e-11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=Kr" value="0.00165854" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=hr" value="0.57999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=Ki" value="1.9966099999999999e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=hi" value="1.04453" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2d],ParameterGroup=Parameters,Parameter=k1" value="6387010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=V" value="17319.099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=Kr" value="452.26799999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=hr" value="0.45144200000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=Ki" value="0.14019400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=hi" value="0.93673899999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3d]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3d],ParameterGroup=Parameters,Parameter=k1" value="9170.7000000000007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 8.5456216085945752e+20 2.4088567159935739e+20 2.1925733386581279e+20 1.7739528629097041e+20 4.0147611933333337e+20 3.4479048222822833e+20 2.514717648606094e+20 5.6285174080355933e+20 6.0221417900000003e+21 6.0221417900000005e+20 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="0"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="0"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="20"/>
        <Parameter name="StepSize" type="float" value="6"/>
        <Parameter name="Duration" type="float" value="120"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="0"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="true" updateModel="false">
      <Report reference="Report_23" target="Mendes2001.out" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=kcat,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kms,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Kmp,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=kcat,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Kms,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=Kmp,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=kcat,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kms,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Kmp,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=K,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E1d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2s],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2s],ParameterGroup=Parameters,Parameter=K,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3s],ParameterGroup=Parameters,Parameter=K,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3s],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E3d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=Kr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=hr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=Ki,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1s],ParameterGroup=Parameters,Parameter=hi,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G1d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=Kr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=hr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=Ki,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2s],ParameterGroup=Parameters,Parameter=hi,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G2d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=Kr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=hr,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=Ki,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3s],ParameterGroup=Parameters,Parameter=hi,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[G3d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.9999999999999995e-08"/>
            <Parameter name="UpperBound" type="cn" value="1e6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="1"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="linear3.perturbations.dyn"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="20"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="9"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[M1],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[M2],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E1],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E2],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E3],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G1],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G2],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[G3],Reference=Concentration"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="3000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="200"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="0"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_3" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
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
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="true" updateModel="false">
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
          <Parameter name="ParameterCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Reactions[E2d],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
          <Parameter name="TargetCN" type="cn" value="CN=Root,Model=3-enzyme linear pathway with gene expression,Vector=Compartments[compartment],Vector=Metabolites[E3],Reference=Concentration"/>
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_22" name="Generations" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Header>
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
    </Report>
    <Report key="Report_23" name="PEStats" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Timer=CPU Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Timer=Wall Clock Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,CN=Information,Reference=COPASI Version"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Progress of Fit" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="sum of squares" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Experiment" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[E1](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E1](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E2](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E2](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E3](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E3](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G2](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[6],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G2](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[6],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G3](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[7],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G3](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[7],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M1](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M1](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M2](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M2](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
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
