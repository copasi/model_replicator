<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.43 (Build 288) (http://www.copasi.org) at 2024-07-03T23:43:58Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="43" versionDevel="288" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_9" name="Hill Cooperativity" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_9">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*(substrate/Shalve)^h/(1+(substrate/Shalve)^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_42" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_43" name="Shalve" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_44" name="V" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_50" name="h" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
    <Function key="Function_41" name="IP3R_kinetics" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v*(M1/(M1+k1))^3*(M2/(M2+k2))^3*h^3*(c0-(1+c1)*M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="v" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="k1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="h" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="c0" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="c1" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Ca_leak_kinetics" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v*(c0-(1+c1)*M)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="v" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="c0" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="c1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="PLC_delta kinetics" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vmax/(1+P/K_delta))*(M^2/(M^2+K_PLC_delta))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="K_delta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="M" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="K_PLC_delta" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="IP3-3K kinetics" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(M^4/(M^4+K_D))*(S/(S+K3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="M" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_291" name="K_D" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="K3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="Vmax" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Hill Transport" type="Function" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V * ( S ^ h - P ^ h ) / ( Km ^ h + S ^ h + P ^ h )
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_681" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_683" name="h" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_684" name="P" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_677" name="Km" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="a set of 12 replicas of ChI model of calcium oscillations" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="cm²" lengthUnit="cm" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Equations for InsP3 Receptor-mediated [Ca2+]i Oscillations Derived from a Detailed Kinetic Model: A Hodgkin-Huxley Like Formalism</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/jtbi.1994.1041"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-06-20T13:19:22+00:00</dcterms:W3CDTF>
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
            <vCard:Orgname>University of Connecticut School of Medicine</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-07-03T19:36:16.971897</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>ChI model of calcium oscillations</h1>
<p>This is a core model of calcium oscillations dependent on IP3 developed by <a href="https://doi.org/10.1007/s10867-009-9155-y">De Pittà et al. (2009)</a> .</p>
 
<h2>History</h2>
<p>This model is an extension to a 2-variable model of calcium-induced calcium release by <a href="https://doi.org/10.1006/jtbi.1994.1041">Li and Rinzel</a>, where the active role of IP3 was added (it is constant in the Li-Rinzel model). The Li-Rinzel model was, in its turn, developed as a reduced version of a previous model by <a href="https://doi.org/10.1073/pnas.89.20.9895">De Young and Keizer</a>, which contained a detailed mechanism of the IP3R and has 9 variables. The reduction, based on time scale separation, follows a formalism similar to that used by Hodgkin and Huxley to develop a model of excitability of the neuronal plasma membrane.</p>

<p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p><hr /><p>Processed with sbmodelr to produce a set of 12 replicas of ChI_DePitta2009.cps</p><pre style="font-size:small">../../sbmodelr --output ex2case2.cps --Hill-transport IP3 --transport-Vmax 2 --transport-Km 0.72 --transport-h 4 -n row_of_12.gv ChI_DePitta2009.cps 12</pre></body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_24" name="Cytoplasm_1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_25" name="ER_1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_26" name="Cytoplasm_2" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_27" name="ER_2" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_28" name="Cytoplasm_3" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_29" name="ER_3" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_30" name="Cytoplasm_4" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_31" name="ER_4" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_32" name="Cytoplasm_5" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_33" name="ER_5" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_34" name="Cytoplasm_6" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_35" name="ER_6" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_36" name="Cytoplasm_7" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_37" name="ER_7" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_38" name="Cytoplasm_8" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_39" name="ER_8" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_40" name="Cytoplasm_9" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_41" name="ER_9" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_42" name="Cytoplasm_10" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_43" name="ER_10" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_44" name="Cytoplasm_11" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_45" name="ER_11" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_46" name="Cytoplasm_12" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_47" name="ER_12" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_36" name="Ca_1" simulationType="reactions" compartment="Compartment_24" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="IP3_1" simulationType="fixed" compartment="Compartment_24" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595"/>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Ca_ER_1" simulationType="assignment" compartment="Compartment_25" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_1],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[Ca_1],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_1],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Ca_2" simulationType="reactions" compartment="Compartment_26" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="IP3_2" simulationType="reactions" compartment="Compartment_26" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Ca_ER_2" simulationType="assignment" compartment="Compartment_27" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_2],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[Ca_2],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_2],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Ca_3" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="IP3_3" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Ca_ER_3" simulationType="assignment" compartment="Compartment_29" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_3],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[Ca_3],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_3],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Ca_4" simulationType="reactions" compartment="Compartment_30" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="IP3_4" simulationType="reactions" compartment="Compartment_30" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Ca_ER_4" simulationType="assignment" compartment="Compartment_31" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_4],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[Ca_4],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_4],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="Ca_5" simulationType="reactions" compartment="Compartment_32" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="IP3_5" simulationType="reactions" compartment="Compartment_32" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="Ca_ER_5" simulationType="assignment" compartment="Compartment_33" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_5],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[Ca_5],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_5],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Ca_6" simulationType="reactions" compartment="Compartment_34" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="IP3_6" simulationType="reactions" compartment="Compartment_34" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Ca_ER_6" simulationType="assignment" compartment="Compartment_35" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_6],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[Ca_6],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_6],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Ca_7" simulationType="reactions" compartment="Compartment_36" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="IP3_7" simulationType="reactions" compartment="Compartment_36" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Ca_ER_7" simulationType="assignment" compartment="Compartment_37" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_7],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[Ca_7],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_7],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Ca_8" simulationType="reactions" compartment="Compartment_38" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="IP3_8" simulationType="reactions" compartment="Compartment_38" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Ca_ER_8" simulationType="assignment" compartment="Compartment_39" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_8],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[Ca_8],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_8],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="Ca_9" simulationType="reactions" compartment="Compartment_40" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="IP3_9" simulationType="reactions" compartment="Compartment_40" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Ca_ER_9" simulationType="assignment" compartment="Compartment_41" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_9],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[Ca_9],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_9],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="Ca_10" simulationType="reactions" compartment="Compartment_42" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="IP3_10" simulationType="reactions" compartment="Compartment_42" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="Ca_ER_10" simulationType="assignment" compartment="Compartment_43" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_10],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[Ca_10],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_10],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="Ca_11" simulationType="reactions" compartment="Compartment_44" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="IP3_11" simulationType="reactions" compartment="Compartment_44" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="Ca_ER_11" simulationType="assignment" compartment="Compartment_45" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_11],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[Ca_11],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_11],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Ca_12" simulationType="reactions" compartment="Compartment_46" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="IP3_12" simulationType="reactions" compartment="Compartment_46" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="Ca_ER_12" simulationType="assignment" compartment="Compartment_47" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108" />
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_12],Reference=Value>-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[Ca_12],Reference=Concentration>)/&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_12],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_242" name="r_L_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="v_ER_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_243">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="K_ER_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_244">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="r_C_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_245">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="d1_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="d2_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_247">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="d3_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_248">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="C0_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_249">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="Q2_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_250">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_1],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[IP3_1],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_1],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[IP3_1],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_1],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="c1_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_251">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="a2_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_252">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="h_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_253">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_1],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[Ca_1],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_1],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_1],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[Ca_1],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_1],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_1],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="d5_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_254">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="v_delta_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_255">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_256" name="K_delta_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_256">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="K_PLC_delta_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_257">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="v3K_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_258">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="K_D_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_259">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="K3_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_260">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_261" name="r5P_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_261">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="r_L_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_262">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_263" name="v_ER_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_263">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_264" name="K_ER_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_264">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_265" name="r_C_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_265">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_266" name="d1_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_266">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_267" name="d2_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_267">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_268" name="d3_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_268">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_269" name="C0_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_269">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_270" name="Q2_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_270">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_2],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[IP3_2],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_2],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[IP3_2],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_2],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_271" name="c1_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_271">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_272" name="a2_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_272">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_273" name="h_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_273">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_2],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[Ca_2],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_2],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_2],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[Ca_2],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_2],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_2],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_274" name="d5_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_274">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_275" name="v_delta_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_275">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_276" name="K_delta_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_276">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_277" name="K_PLC_delta_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_277">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_278" name="v3K_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_278">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_279" name="K_D_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_279">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_280" name="K3_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_280">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_281" name="r5P_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_281">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_282" name="r_L_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_282">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_283" name="v_ER_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_283">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_284" name="K_ER_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_284">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_285" name="r_C_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_285">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_286" name="d1_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_286">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_287" name="d2_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_287">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_288" name="d3_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_288">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_289" name="C0_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_289">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_290" name="Q2_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_290">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_3],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[IP3_3],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_3],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[IP3_3],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_3],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_291" name="c1_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_291">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_292" name="a2_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_292">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_293" name="h_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_293">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_3],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[Ca_3],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_3],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_3],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[Ca_3],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_3],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_3],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_294" name="d5_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_294">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_295" name="v_delta_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_295">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_296" name="K_delta_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_296">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_297" name="K_PLC_delta_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_297">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_298" name="v3K_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_298">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_299" name="K_D_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_299">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_300" name="K3_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_300">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_301" name="r5P_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_301">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_302" name="r_L_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_302">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_303" name="v_ER_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_303">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_304" name="K_ER_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_304">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_305" name="r_C_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_305">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_306" name="d1_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_306">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_307" name="d2_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_307">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_308" name="d3_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_308">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_309" name="C0_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_309">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_310" name="Q2_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_310">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_4],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[IP3_4],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_4],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[IP3_4],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_4],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_311" name="c1_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_311">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_312" name="a2_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_312">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_313" name="h_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_313">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_4],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[Ca_4],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_4],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_4],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[Ca_4],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_4],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_4],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_314" name="d5_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_314">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_315" name="v_delta_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_315">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_316" name="K_delta_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_316">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_317" name="K_PLC_delta_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_317">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_318" name="v3K_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_318">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_319" name="K_D_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_319">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_320" name="K3_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_320">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_321" name="r5P_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_321">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_322" name="r_L_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_322">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_323" name="v_ER_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_323">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_324" name="K_ER_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_324">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_325" name="r_C_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_325">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_326" name="d1_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_326">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_327" name="d2_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_327">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_328" name="d3_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_328">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_329" name="C0_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_329">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_330" name="Q2_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_330">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_5],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[IP3_5],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_5],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[IP3_5],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_5],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_331" name="c1_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_331">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_332" name="a2_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_332">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_333" name="h_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_333">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_5],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[Ca_5],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_5],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_5],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[Ca_5],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_5],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_5],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_334" name="d5_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_334">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_335" name="v_delta_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_335">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_336" name="K_delta_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_336">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_337" name="K_PLC_delta_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_337">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_338" name="v3K_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_338">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_339" name="K_D_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_339">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_340" name="K3_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_340">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_341" name="r5P_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_341">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_342" name="r_L_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_342">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_343" name="v_ER_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_343">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_344" name="K_ER_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_344">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_345" name="r_C_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_345">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_346" name="d1_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_346">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_347" name="d2_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_347">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_348" name="d3_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_348">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_349" name="C0_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_349">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_350" name="Q2_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_350">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_6],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[IP3_6],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_6],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[IP3_6],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_6],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_351" name="c1_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_351">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_352" name="a2_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_352">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_353" name="h_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_353">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_6],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[Ca_6],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_6],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_6],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[Ca_6],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_6],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_6],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_354" name="d5_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_354">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_355" name="v_delta_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_355">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_356" name="K_delta_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_356">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_357" name="K_PLC_delta_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_357">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_358" name="v3K_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_358">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_359" name="K_D_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_359">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_360" name="K3_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_360">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_361" name="r5P_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_361">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_362" name="r_L_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_362">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_363" name="v_ER_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_363">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_364" name="K_ER_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_364">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_365" name="r_C_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_365">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_366" name="d1_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_366">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_367" name="d2_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_367">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_368" name="d3_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_368">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_369" name="C0_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_369">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_370" name="Q2_7" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_370">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_7],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[IP3_7],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_7],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[IP3_7],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_7],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_371" name="c1_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_371">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_372" name="a2_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_372">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_373" name="h_7" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_373">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_7],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[Ca_7],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_7],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_7],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[Ca_7],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_7],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_7],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_374" name="d5_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_374">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_375" name="v_delta_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_375">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_376" name="K_delta_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_376">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_377" name="K_PLC_delta_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_377">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_378" name="v3K_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_378">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_379" name="K_D_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_379">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_380" name="K3_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_380">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_381" name="r5P_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_381">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_382" name="r_L_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_382">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_383" name="v_ER_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_383">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_384" name="K_ER_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_384">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_385" name="r_C_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_385">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_386" name="d1_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_386">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_387" name="d2_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_387">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_388" name="d3_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_388">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_389" name="C0_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_389">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_390" name="Q2_8" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_390">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_8],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[IP3_8],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_8],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[IP3_8],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_8],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_391" name="c1_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_391">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_392" name="a2_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_392">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_393" name="h_8" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_393">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_8],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[Ca_8],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_8],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_8],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[Ca_8],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_8],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_8],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_394" name="d5_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_394">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_395" name="v_delta_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_395">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_396" name="K_delta_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_396">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_397" name="K_PLC_delta_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_397">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_398" name="v3K_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_398">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_399" name="K_D_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_399">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_400" name="K3_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_400">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_401" name="r5P_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_401">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_402" name="r_L_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_402">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_403" name="v_ER_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_403">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_404" name="K_ER_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_404">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_405" name="r_C_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_405">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_406" name="d1_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_406">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_407" name="d2_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_407">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_408" name="d3_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_408">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_409" name="C0_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_409">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_410" name="Q2_9" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_410">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_9],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[IP3_9],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_9],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[IP3_9],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_9],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_411" name="c1_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_411">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_412" name="a2_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_412">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_413" name="h_9" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_413">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_9],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[Ca_9],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_9],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_9],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[Ca_9],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_9],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_9],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_414" name="d5_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_414">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_415" name="v_delta_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_415">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_416" name="K_delta_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_416">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_417" name="K_PLC_delta_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_417">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_418" name="v3K_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_418">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_419" name="K_D_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_419">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_420" name="K3_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_420">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_421" name="r5P_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_421">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_422" name="r_L_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_422">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_423" name="v_ER_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_423">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_424" name="K_ER_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_424">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_425" name="r_C_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_425">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_426" name="d1_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_426">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_427" name="d2_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_427">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_428" name="d3_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_428">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_429" name="C0_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_429">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_430" name="Q2_10" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_430">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_10],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[IP3_10],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_10],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[IP3_10],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_10],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_431" name="c1_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_431">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_432" name="a2_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_432">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_433" name="h_10" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_433">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_10],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[Ca_10],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_10],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_10],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[Ca_10],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_10],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_10],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_434" name="d5_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_434">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_435" name="v_delta_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_435">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_436" name="K_delta_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_436">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_437" name="K_PLC_delta_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_437">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_438" name="v3K_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_438">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_439" name="K_D_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_439">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_440" name="K3_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_440">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_441" name="r5P_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_441">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_442" name="r_L_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_442">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_443" name="v_ER_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_443">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_444" name="K_ER_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_444">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_445" name="r_C_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_445">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_446" name="d1_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_446">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_447" name="d2_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_447">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_448" name="d3_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_448">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_449" name="C0_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_449">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_450" name="Q2_11" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_450">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_11],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[IP3_11],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_11],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[IP3_11],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_11],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_451" name="c1_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_451">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_452" name="a2_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_452">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_453" name="h_11" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_453">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_11],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[Ca_11],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_11],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_11],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[Ca_11],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_11],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_11],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_454" name="d5_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_454">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_455" name="v_delta_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_455">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_456" name="K_delta_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_456">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_457" name="K_PLC_delta_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_457">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_458" name="v3K_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_458">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_459" name="K_D_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_459">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_460" name="K3_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_460">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_461" name="r5P_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_461">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_462" name="r_L_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_462">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_463" name="v_ER_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_463">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_464" name="K_ER_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_464">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_465" name="r_C_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_465">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_466" name="d1_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_466">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_467" name="d2_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_467">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_468" name="d3_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_468">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_469" name="C0_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_469">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_470" name="Q2_12" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_470">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_12],Reference=Value>*((&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[IP3_12],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_12],Reference=Value>)/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[IP3_12],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_12],Reference=Value>))
        </Expression>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_471" name="c1_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_471">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_472" name="a2_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_472">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_473" name="h_12" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_473">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_12],Reference=Value>*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[Ca_12],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_12],Reference=Value>)*(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_12],Reference=Value>/(&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[Ca_12],Reference=Concentration>+&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_12],Reference=Value>)-&lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_12],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_474" name="d5_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_474">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_475" name="v_delta_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_475">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_476" name="K_delta_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_476">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_477" name="K_PLC_delta_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_477">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_478" name="v3K_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_478">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_479" name="K_D_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_479">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_480" name="K3_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_480">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          umol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_481" name="r5P_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_481">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_482" name="Vmax_IP3_transport" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_483" name="Km_IP3_transport" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_484" name="h_IP3_transport" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_83" name="leak_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7022" name="v" value="0.11"/>
          <Constant key="Parameter_7025" name="c0" value="2"/>
          <Constant key="Parameter_11707" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_242"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="pump_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11701" name="Shalve" value="0.05"/>
          <Constant key="Parameter_5655" name="V" value="0.9"/>
          <Constant key="Parameter_7021" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7021"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="chan_1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5654" name="v" value="6"/>
          <Constant key="Parameter_5657" name="k1" value="0.13"/>
          <Constant key="Parameter_5653" name="k2" value="0.08234"/>
          <Constant key="Parameter_7018" name="h" value="0.856847"/>
          <Constant key="Parameter_5656" name="c0" value="2"/>
          <Constant key="Parameter_7019" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_251"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="PLC_delta_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7020" name="Vmax" value="0.7"/>
          <Constant key="Parameter_7017" name="K_delta" value="1.5"/>
          <Constant key="Parameter_7016" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_257"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="IP-5P_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7015" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="IP3-3K_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7014" name="K_D" value="0.7"/>
          <Constant key="Parameter_7046" name="K3" value="1"/>
          <Constant key="Parameter_8450" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_255"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="leak_2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8447" name="v" value="0.11"/>
          <Constant key="Parameter_8448" name="c0" value="2"/>
          <Constant key="Parameter_7052" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_262"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="pump_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11708" name="Shalve" value="0.05"/>
          <Constant key="Parameter_7978" name="V" value="0.9"/>
          <Constant key="Parameter_7980" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_263"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7980"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="chan_2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6373" name="v" value="6"/>
          <Constant key="Parameter_7912" name="k1" value="0.13"/>
          <Constant key="Parameter_7976" name="k2" value="0.08234"/>
          <Constant key="Parameter_7943" name="h" value="0.856847"/>
          <Constant key="Parameter_7942" name="c0" value="2"/>
          <Constant key="Parameter_7934" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_271"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="PLC_delta_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7941" name="Vmax" value="0.7"/>
          <Constant key="Parameter_7945" name="K_delta" value="1.5"/>
          <Constant key="Parameter_12934" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_277"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="IP-5P_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_12933" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="IP3-3K_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_12936" name="K_D" value="0.7"/>
          <Constant key="Parameter_11686" name="K3" value="1"/>
          <Constant key="Parameter_12071" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_275"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="leak_3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6886" name="v" value="0.11"/>
          <Constant key="Parameter_4830" name="c0" value="2"/>
          <Constant key="Parameter_4828" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="pump_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6885" name="Shalve" value="0.05"/>
          <Constant key="Parameter_4829" name="V" value="0.9"/>
          <Constant key="Parameter_7913" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7913"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="chan_3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7915" name="v" value="6"/>
          <Constant key="Parameter_7979" name="k1" value="0.13"/>
          <Constant key="Parameter_6371" name="k2" value="0.08234"/>
          <Constant key="Parameter_7911" name="h" value="0.856847"/>
          <Constant key="Parameter_6370" name="c0" value="2"/>
          <Constant key="Parameter_6372" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_285"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_291"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="PLC_delta_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7914" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6367" name="K_delta" value="1.5"/>
          <Constant key="Parameter_6369" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_297"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="IP-5P_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8517" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_301"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="IP3-3K_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8518" name="K_D" value="0.7"/>
          <Constant key="Parameter_6368" name="K3" value="1"/>
          <Constant key="Parameter_8519" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_295"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="leak_4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8520" name="v" value="0.11"/>
          <Constant key="Parameter_7807" name="c0" value="2"/>
          <Constant key="Parameter_7808" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_302"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="pump_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8516" name="Shalve" value="0.05"/>
          <Constant key="Parameter_7809" name="V" value="0.9"/>
          <Constant key="Parameter_7810" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_304"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7810"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="chan_4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6365" name="v" value="6"/>
          <Constant key="Parameter_6364" name="k1" value="0.13"/>
          <Constant key="Parameter_7806" name="k2" value="0.08234"/>
          <Constant key="Parameter_6362" name="h" value="0.856847"/>
          <Constant key="Parameter_6366" name="c0" value="2"/>
          <Constant key="Parameter_4512" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_314"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_311"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="PLC_delta_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4518" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6363" name="K_delta" value="1.5"/>
          <Constant key="Parameter_4511" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_317"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="IP-5P_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4514" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="IP3-3K_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8202" name="K_D" value="0.7"/>
          <Constant key="Parameter_8203" name="K3" value="1"/>
          <Constant key="Parameter_4515" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_315"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="leak_5" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8205" name="v" value="0.11"/>
          <Constant key="Parameter_8201" name="c0" value="2"/>
          <Constant key="Parameter_11863" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_322"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="pump_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11862" name="Shalve" value="0.05"/>
          <Constant key="Parameter_11486" name="V" value="0.9"/>
          <Constant key="Parameter_11855" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_11855"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="chan_5" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11493" name="v" value="6"/>
          <Constant key="Parameter_6871" name="k1" value="0.13"/>
          <Constant key="Parameter_11808" name="k2" value="0.08234"/>
          <Constant key="Parameter_11809" name="h" value="0.856847"/>
          <Constant key="Parameter_6870" name="c0" value="2"/>
          <Constant key="Parameter_11811" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_331"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="PLC_delta_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11576" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6827" name="K_delta" value="1.5"/>
          <Constant key="Parameter_6829" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_335"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_336"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_337"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="IP-5P_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11584" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="IP3-3K_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6828" name="K_D" value="0.7"/>
          <Constant key="Parameter_6747" name="K3" value="1"/>
          <Constant key="Parameter_6751" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_335"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="leak_6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6748" name="v" value="0.11"/>
          <Constant key="Parameter_7610" name="c0" value="2"/>
          <Constant key="Parameter_6749" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="pump_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6360" name="Shalve" value="0.05"/>
          <Constant key="Parameter_6359" name="V" value="0.9"/>
          <Constant key="Parameter_8204" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_8204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="chan_6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6357" name="v" value="6"/>
          <Constant key="Parameter_6361" name="k1" value="0.13"/>
          <Constant key="Parameter_7802" name="k2" value="0.08234"/>
          <Constant key="Parameter_7803" name="h" value="0.856847"/>
          <Constant key="Parameter_6358" name="c0" value="2"/>
          <Constant key="Parameter_7804" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_345"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_346"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_351"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="PLC_delta_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7805" name="Vmax" value="0.7"/>
          <Constant key="Parameter_7786" name="K_delta" value="1.5"/>
          <Constant key="Parameter_7787" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_356"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_357"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="IP-5P_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7801" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="IP3-3K_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7790" name="K_D" value="0.7"/>
          <Constant key="Parameter_7789" name="K3" value="1"/>
          <Constant key="Parameter_6405" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_355"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="leak_7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6408" name="v" value="0.11"/>
          <Constant key="Parameter_6407" name="c0" value="2"/>
          <Constant key="Parameter_6404" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="pump_7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6411" name="Shalve" value="0.05"/>
          <Constant key="Parameter_7788" name="V" value="0.9"/>
          <Constant key="Parameter_6349" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_6349"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="chan_7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7785" name="v" value="6"/>
          <Constant key="Parameter_6347" name="k1" value="0.13"/>
          <Constant key="Parameter_6348" name="k2" value="0.08234"/>
          <Constant key="Parameter_8245" name="h" value="0.856847"/>
          <Constant key="Parameter_8243" name="c0" value="2"/>
          <Constant key="Parameter_6904" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_366"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_371"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="PLC_delta_7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8307" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6903" name="K_delta" value="1.5"/>
          <Constant key="Parameter_6346" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_377"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="IP-5P_7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6344" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="IP3-3K_7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6350" name="K_D" value="0.7"/>
          <Constant key="Parameter_6342" name="K3" value="1"/>
          <Constant key="Parameter_6343" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_380"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_375"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="leak_8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6345" name="v" value="0.11"/>
          <Constant key="Parameter_6341" name="c0" value="2"/>
          <Constant key="Parameter_7710" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_382"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_391"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="pump_8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_126">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7712" name="Shalve" value="0.05"/>
          <Constant key="Parameter_7711" name="V" value="0.9"/>
          <Constant key="Parameter_7714" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_384"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_383"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7714"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="chan_8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_127">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7713" name="v" value="6"/>
          <Constant key="Parameter_8411" name="k1" value="0.13"/>
          <Constant key="Parameter_8413" name="k2" value="0.08234"/>
          <Constant key="Parameter_8412" name="h" value="0.856847"/>
          <Constant key="Parameter_8415" name="c0" value="2"/>
          <Constant key="Parameter_11671" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_385"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_386"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_394"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_393"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_389"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_391"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="PLC_delta_8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_128">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11674" name="Vmax" value="0.7"/>
          <Constant key="Parameter_12067" name="K_delta" value="1.5"/>
          <Constant key="Parameter_12070" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_395"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_396"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_397"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="IP-5P_8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_129">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_12068" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="IP3-3K_8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_130">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8414" name="K_D" value="0.7"/>
          <Constant key="Parameter_8275" name="K3" value="1"/>
          <Constant key="Parameter_8273" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_399"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_395"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="leak_9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_131">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="v" value="0.11"/>
          <Constant key="Parameter_8192" name="c0" value="2"/>
          <Constant key="Parameter_4985" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_409"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_411"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="pump_9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_132">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6337" name="Shalve" value="0.05"/>
          <Constant key="Parameter_6338" name="V" value="0.9"/>
          <Constant key="Parameter_6339" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_6339"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="chan_9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_133">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6340" name="v" value="6"/>
          <Constant key="Parameter_8420" name="k1" value="0.13"/>
          <Constant key="Parameter_8416" name="k2" value="0.08234"/>
          <Constant key="Parameter_8418" name="h" value="0.856847"/>
          <Constant key="Parameter_8579" name="c0" value="2"/>
          <Constant key="Parameter_8417" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_405"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_406"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_409"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_411"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="PLC_delta_9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_134">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4484" name="Vmax" value="0.7"/>
          <Constant key="Parameter_4482" name="K_delta" value="1.5"/>
          <Constant key="Parameter_4485" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_415"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_417"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="IP-5P_9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_135">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4486" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="IP3-3K_9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_136">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4488" name="K_D" value="0.7"/>
          <Constant key="Parameter_8705" name="K3" value="1"/>
          <Constant key="Parameter_8701" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_415"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="leak_10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_137">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8703" name="v" value="0.11"/>
          <Constant key="Parameter_8709" name="c0" value="2"/>
          <Constant key="Parameter_8702" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_429"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_431"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="pump_10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_138">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4605" name="Shalve" value="0.05"/>
          <Constant key="Parameter_4602" name="V" value="0.9"/>
          <Constant key="Parameter_4603" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_4603"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="chan_10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_139">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4606" name="v" value="6"/>
          <Constant key="Parameter_4604" name="k1" value="0.13"/>
          <Constant key="Parameter_9194" name="k2" value="0.08234"/>
          <Constant key="Parameter_9197" name="h" value="0.856847"/>
          <Constant key="Parameter_9198" name="c0" value="2"/>
          <Constant key="Parameter_11805" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_426"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_434"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_433"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_429"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_431"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="PLC_delta_10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_140">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_9196" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6336" name="K_delta" value="1.5"/>
          <Constant key="Parameter_6334" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_435"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_436"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_437"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="IP-5P_10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_141">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6333" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="IP3-3K_10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_142">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6335" name="K_D" value="0.7"/>
          <Constant key="Parameter_6332" name="K3" value="1"/>
          <Constant key="Parameter_11645" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_435"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="leak_11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_143">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11649" name="v" value="0.11"/>
          <Constant key="Parameter_11652" name="c0" value="2"/>
          <Constant key="Parameter_11651" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="pump_11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_144">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11648" name="Shalve" value="0.05"/>
          <Constant key="Parameter_4567" name="V" value="0.9"/>
          <Constant key="Parameter_4571" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_4571"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="chan_11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_145">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4569" name="v" value="6"/>
          <Constant key="Parameter_4570" name="k1" value="0.13"/>
          <Constant key="Parameter_8715" name="k2" value="0.08234"/>
          <Constant key="Parameter_4568" name="h" value="0.856847"/>
          <Constant key="Parameter_8419" name="c0" value="2"/>
          <Constant key="Parameter_8711" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_451"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="PLC_delta_11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_146">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8713" name="Vmax" value="0.7"/>
          <Constant key="Parameter_8712" name="K_delta" value="1.5"/>
          <Constant key="Parameter_6331" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_457"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="IP-5P_11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_147">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6330" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_461"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="IP3-3K_11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_148">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6328" name="K_D" value="0.7"/>
          <Constant key="Parameter_6327" name="K3" value="1"/>
          <Constant key="Parameter_6329" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_455"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="leak_12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_149">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11787" name="v" value="0.11"/>
          <Constant key="Parameter_11795" name="c0" value="2"/>
          <Constant key="Parameter_11789" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_462"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_471"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="pump_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_150">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_11788" name="Shalve" value="0.05"/>
          <Constant key="Parameter_4492" name="V" value="0.9"/>
          <Constant key="Parameter_11791" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_463"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_11791"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="chan_12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_151">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_70" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4498" name="v" value="6"/>
          <Constant key="Parameter_4491" name="k1" value="0.13"/>
          <Constant key="Parameter_4495" name="k2" value="0.08234"/>
          <Constant key="Parameter_6326" name="h" value="0.856847"/>
          <Constant key="Parameter_4494" name="c0" value="2"/>
          <Constant key="Parameter_6325" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_465"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_471"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="PLC_delta_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_152">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6324" name="Vmax" value="0.7"/>
          <Constant key="Parameter_6322" name="K_delta" value="1.5"/>
          <Constant key="Parameter_8554" name="K_PLC_delta" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_475"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_476"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_477"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="IP-5P_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_153">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6323" name="k1" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="IP3-3K_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_154">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8553" name="K_D" value="0.7"/>
          <Constant key="Parameter_4777" name="K3" value="1"/>
          <Constant key="Parameter_8555" name="Vmax" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_475"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="t_IP3_1-2" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6321" name="V" value="2"/>
          <Constant key="Parameter_8551" name="h" value="4"/>
          <Constant key="Parameter_6320" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_156" name="t_IP3_2-3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_156">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6319" name="V" value="2"/>
          <Constant key="Parameter_6317" name="h" value="4"/>
          <Constant key="Parameter_6316" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_157" name="t_IP3_3-4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_157">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6318" name="V" value="2"/>
          <Constant key="Parameter_6315" name="h" value="4"/>
          <Constant key="Parameter_6314" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_158" name="t_IP3_4-5" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_158">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6668" name="V" value="2"/>
          <Constant key="Parameter_6665" name="h" value="4"/>
          <Constant key="Parameter_6672" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_159" name="t_IP3_5-6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_159">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6666" name="V" value="2"/>
          <Constant key="Parameter_6669" name="h" value="4"/>
          <Constant key="Parameter_8368" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_160" name="t_IP3_6-7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_160">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8366" name="V" value="2"/>
          <Constant key="Parameter_8370" name="h" value="4"/>
          <Constant key="Parameter_8367" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_161" name="t_IP3_7-8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_161">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4832" name="V" value="2"/>
          <Constant key="Parameter_6312" name="h" value="4"/>
          <Constant key="Parameter_6311" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_162" name="t_IP3_8-9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_162">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6313" name="V" value="2"/>
          <Constant key="Parameter_6310" name="h" value="4"/>
          <Constant key="Parameter_8217" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_163" name="t_IP3_9-10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_163">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6308" name="V" value="2"/>
          <Constant key="Parameter_8218" name="h" value="4"/>
          <Constant key="Parameter_6309" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_164" name="t_IP3_10-11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_164">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8220" name="V" value="2"/>
          <Constant key="Parameter_8777" name="h" value="4"/>
          <Constant key="Parameter_8426" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_165" name="t_IP3_11-12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_165">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8430" name="V" value="2"/>
          <Constant key="Parameter_6949" name="h" value="4"/>
          <Constant key="Parameter_8423" name="Km" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_483"/>
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
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_1]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_2]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_3]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_4]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_5]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_6]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_7]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_8]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_9]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_10]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_11]" value="0.185" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_12]" value="0.185" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[Ca_1]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[IP3_1]" value="6.02214076e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_1],Vector=Metabolites[Ca_ER_1]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[Ca_2]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[IP3_2]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_2],Vector=Metabolites[Ca_ER_2]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[Ca_3]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[IP3_3]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_3],Vector=Metabolites[Ca_ER_3]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[Ca_4]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[IP3_4]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_4],Vector=Metabolites[Ca_ER_4]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[Ca_5]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[IP3_5]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_5],Vector=Metabolites[Ca_ER_5]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[Ca_6]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[IP3_6]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_6],Vector=Metabolites[Ca_ER_6]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[Ca_7]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[IP3_7]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_7],Vector=Metabolites[Ca_ER_7]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[Ca_8]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[IP3_8]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_8],Vector=Metabolites[Ca_ER_8]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[Ca_9]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[IP3_9]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_9],Vector=Metabolites[Ca_ER_9]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[Ca_10]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[IP3_10]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_10],Vector=Metabolites[Ca_ER_10]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[Ca_11]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[IP3_11]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_11],Vector=Metabolites[Ca_ER_11]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[Ca_12]" value="16966434410934114" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[IP3_12]" value="15540543414550456" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_12],Vector=Metabolites[Ca_ER_12]" value="1.187461717589066e+18" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_1]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_1]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_1]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_1]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_1]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_1]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_1]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_1]" value="0.60994648554080466" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_1]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_1]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_1]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_1]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_1]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_1]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_1]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_1]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_1]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_2]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_2]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_2]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_2]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_2]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_2]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_2]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_2]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_2]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_2]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_2]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_2]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_2]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_2]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_2]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_2]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_3]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_3]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_3]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_3]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_3]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_3]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_3]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_3]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_3]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_3]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_3]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_3]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_3]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_3]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_3]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_3]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_3]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_4]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_4]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_4]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_4]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_4]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_4]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_4]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_4]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_4]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_4]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_4]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_4]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_4]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_4]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_4]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_4]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_4]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_4]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_4]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_5]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_5]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_5]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_5]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_5]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_5]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_5]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_5]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_5]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_5]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_5]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_5]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_5]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_5]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_5]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_5]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_5]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_5]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_5]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_6]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_6]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_6]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_6]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_6]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_6]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_6]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_6]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_6]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_6]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_6]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_6]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_6]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_6]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_6]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_6]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_6]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_6]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_6]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_6]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_7]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_7]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_7]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_7]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_7]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_7]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_7]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_7]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_7]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_7]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_7]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_7]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_7]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_7]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_7]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_7]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_7]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_7]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_7]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_7]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_8]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_8]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_8]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_8]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_8]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_8]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_8]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_8]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_8]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_8]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_8]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_8]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_8]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_8]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_8]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_8]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_8]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_8]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_8]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_9]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_9]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_9]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_9]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_9]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_9]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_9]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_9]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_9]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_9]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_9]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_9]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_9]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_9]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_9]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_9]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_9]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_9]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_9]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_9]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_10]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_10]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_10]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_10]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_10]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_10]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_10]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_10]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_10]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_10]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_10]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_10]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_10]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_10]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_10]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_10]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_10]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_10]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_10]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_10]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_11]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_11]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_11]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_11]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_11]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_11]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_11]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_11]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_11]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_11]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_11]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_11]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_11]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_11]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_11]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_11]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_11]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_11]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_11]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_11]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_12]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_12]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_12]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_12]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_12]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d2_12]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d3_12]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_12]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_12]" value="0.16863309947686161" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_12]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[a2_12]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_12]" value="0.85684708911839735" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_12]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_12]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_12]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_12]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v3K_12]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_12]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_12]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_12]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport]" value="0.71999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport]" value="8" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_1],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_1],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_1],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_1],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_1],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_1],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_1],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_1],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_1],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_1],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_1],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_2],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_2],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_2],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_2],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_2],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_2],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_2],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_2],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_2],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_2],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_2],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_3],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_3],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_3],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_3],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_3],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_3],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_3],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_3],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_3],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_3],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_3],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_3],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_3],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_3],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_4],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_4],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_4],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_4],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_4],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_4],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_4],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_4],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_4],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_4],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_4],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_4],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_4],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_5],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_5],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_5],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_5],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_5],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_5],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_5],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_5],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_5],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_5],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_5],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_5],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_5],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_5],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_6],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_6],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_6],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_6],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_6],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_6],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_6],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_6],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_6],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_6],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_6],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_6],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_6],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_6],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_7],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_7],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_7],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_7],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_7],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_7],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_7],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_7],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_7],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_7],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_7],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_7],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_7],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_7],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_8],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_8],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_8],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_8],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_8],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_8],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_8],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_8],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_8],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_8],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_8],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_8],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_8],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_8],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_9],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_9],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_9],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_9],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_9],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_9],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_9],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_9],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_9],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_9],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_9],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_9],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_9],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_9],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_10],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_10],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_10],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_10],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_10],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_10],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_10],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_10],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_10],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_10],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_10],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_10],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_10],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_10],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_11],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_11],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_11],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_11],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_11],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_11],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_11],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_11],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_11],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_11],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_11],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_11],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_11],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_11],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_12],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_L_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_12],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[leak_12],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_12],ParameterGroup=Parameters,Parameter=Shalve" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_ER_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_12],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_ER_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[pump_12],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r_C_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=k1" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d1_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[d5_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=h" value="0.85684708911839735" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[C0_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[chan_12],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[c1_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_12],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_12],ParameterGroup=Parameters,Parameter=K_delta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_delta_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[PLC_delta_12],ParameterGroup=Parameters,Parameter=K_PLC_delta" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_PLC_delta_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP-5P_12],ParameterGroup=Parameters,Parameter=k1" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[r5P_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_12],ParameterGroup=Parameters,Parameter=K_D" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K_D_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_12],ParameterGroup=Parameters,Parameter=K3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[K3_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[IP3-3K_12],ParameterGroup=Parameters,Parameter=Vmax" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[v_delta_12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_1-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_1-2],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_1-2],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_1-2],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_2-3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_2-3],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_2-3],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_2-3],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_3-4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_3-4],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_3-4],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_3-4],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_4-5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_4-5],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_4-5],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_4-5],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_5-6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_5-6],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_5-6],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_5-6],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_6-7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_6-7],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_6-7],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_6-7],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_7-8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_7-8],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_7-8],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_7-8],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_8-9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_8-9],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_8-9],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_8-9],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_9-10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_9-10],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_9-10],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_9-10],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_10-11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_10-11],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_10-11],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_10-11],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_11-12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_11-12],ParameterGroup=Parameters,Parameter=V" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Vmax_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_11-12],ParameterGroup=Parameters,Parameter=h" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Reactions[t_IP3_11-12],ParameterGroup=Parameters,Parameter=Km" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Km_IP3_transport],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_273"/>
      <StateTemplateVariable objectReference="ModelValue_293"/>
      <StateTemplateVariable objectReference="ModelValue_313"/>
      <StateTemplateVariable objectReference="ModelValue_333"/>
      <StateTemplateVariable objectReference="ModelValue_353"/>
      <StateTemplateVariable objectReference="ModelValue_373"/>
      <StateTemplateVariable objectReference="ModelValue_393"/>
      <StateTemplateVariable objectReference="ModelValue_413"/>
      <StateTemplateVariable objectReference="ModelValue_433"/>
      <StateTemplateVariable objectReference="ModelValue_453"/>
      <StateTemplateVariable objectReference="ModelValue_473"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_270"/>
      <StateTemplateVariable objectReference="ModelValue_290"/>
      <StateTemplateVariable objectReference="ModelValue_310"/>
      <StateTemplateVariable objectReference="ModelValue_330"/>
      <StateTemplateVariable objectReference="ModelValue_350"/>
      <StateTemplateVariable objectReference="ModelValue_370"/>
      <StateTemplateVariable objectReference="ModelValue_390"/>
      <StateTemplateVariable objectReference="ModelValue_410"/>
      <StateTemplateVariable objectReference="ModelValue_430"/>
      <StateTemplateVariable objectReference="ModelValue_450"/>
      <StateTemplateVariable objectReference="ModelValue_470"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Compartment_24"/>
      <StateTemplateVariable objectReference="Compartment_25"/>
      <StateTemplateVariable objectReference="Compartment_26"/>
      <StateTemplateVariable objectReference="Compartment_27"/>
      <StateTemplateVariable objectReference="Compartment_28"/>
      <StateTemplateVariable objectReference="Compartment_29"/>
      <StateTemplateVariable objectReference="Compartment_30"/>
      <StateTemplateVariable objectReference="Compartment_31"/>
      <StateTemplateVariable objectReference="Compartment_32"/>
      <StateTemplateVariable objectReference="Compartment_33"/>
      <StateTemplateVariable objectReference="Compartment_34"/>
      <StateTemplateVariable objectReference="Compartment_35"/>
      <StateTemplateVariable objectReference="Compartment_36"/>
      <StateTemplateVariable objectReference="Compartment_37"/>
      <StateTemplateVariable objectReference="Compartment_38"/>
      <StateTemplateVariable objectReference="Compartment_39"/>
      <StateTemplateVariable objectReference="Compartment_40"/>
      <StateTemplateVariable objectReference="Compartment_41"/>
      <StateTemplateVariable objectReference="Compartment_42"/>
      <StateTemplateVariable objectReference="Compartment_43"/>
      <StateTemplateVariable objectReference="Compartment_44"/>
      <StateTemplateVariable objectReference="Compartment_45"/>
      <StateTemplateVariable objectReference="Compartment_46"/>
      <StateTemplateVariable objectReference="Compartment_47"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
      <StateTemplateVariable objectReference="ModelValue_263"/>
      <StateTemplateVariable objectReference="ModelValue_264"/>
      <StateTemplateVariable objectReference="ModelValue_265"/>
      <StateTemplateVariable objectReference="ModelValue_266"/>
      <StateTemplateVariable objectReference="ModelValue_267"/>
      <StateTemplateVariable objectReference="ModelValue_268"/>
      <StateTemplateVariable objectReference="ModelValue_269"/>
      <StateTemplateVariable objectReference="ModelValue_271"/>
      <StateTemplateVariable objectReference="ModelValue_272"/>
      <StateTemplateVariable objectReference="ModelValue_274"/>
      <StateTemplateVariable objectReference="ModelValue_275"/>
      <StateTemplateVariable objectReference="ModelValue_276"/>
      <StateTemplateVariable objectReference="ModelValue_277"/>
      <StateTemplateVariable objectReference="ModelValue_278"/>
      <StateTemplateVariable objectReference="ModelValue_279"/>
      <StateTemplateVariable objectReference="ModelValue_280"/>
      <StateTemplateVariable objectReference="ModelValue_281"/>
      <StateTemplateVariable objectReference="ModelValue_282"/>
      <StateTemplateVariable objectReference="ModelValue_283"/>
      <StateTemplateVariable objectReference="ModelValue_284"/>
      <StateTemplateVariable objectReference="ModelValue_285"/>
      <StateTemplateVariable objectReference="ModelValue_286"/>
      <StateTemplateVariable objectReference="ModelValue_287"/>
      <StateTemplateVariable objectReference="ModelValue_288"/>
      <StateTemplateVariable objectReference="ModelValue_289"/>
      <StateTemplateVariable objectReference="ModelValue_291"/>
      <StateTemplateVariable objectReference="ModelValue_292"/>
      <StateTemplateVariable objectReference="ModelValue_294"/>
      <StateTemplateVariable objectReference="ModelValue_295"/>
      <StateTemplateVariable objectReference="ModelValue_296"/>
      <StateTemplateVariable objectReference="ModelValue_297"/>
      <StateTemplateVariable objectReference="ModelValue_298"/>
      <StateTemplateVariable objectReference="ModelValue_299"/>
      <StateTemplateVariable objectReference="ModelValue_300"/>
      <StateTemplateVariable objectReference="ModelValue_301"/>
      <StateTemplateVariable objectReference="ModelValue_302"/>
      <StateTemplateVariable objectReference="ModelValue_303"/>
      <StateTemplateVariable objectReference="ModelValue_304"/>
      <StateTemplateVariable objectReference="ModelValue_305"/>
      <StateTemplateVariable objectReference="ModelValue_306"/>
      <StateTemplateVariable objectReference="ModelValue_307"/>
      <StateTemplateVariable objectReference="ModelValue_308"/>
      <StateTemplateVariable objectReference="ModelValue_309"/>
      <StateTemplateVariable objectReference="ModelValue_311"/>
      <StateTemplateVariable objectReference="ModelValue_312"/>
      <StateTemplateVariable objectReference="ModelValue_314"/>
      <StateTemplateVariable objectReference="ModelValue_315"/>
      <StateTemplateVariable objectReference="ModelValue_316"/>
      <StateTemplateVariable objectReference="ModelValue_317"/>
      <StateTemplateVariable objectReference="ModelValue_318"/>
      <StateTemplateVariable objectReference="ModelValue_319"/>
      <StateTemplateVariable objectReference="ModelValue_320"/>
      <StateTemplateVariable objectReference="ModelValue_321"/>
      <StateTemplateVariable objectReference="ModelValue_322"/>
      <StateTemplateVariable objectReference="ModelValue_323"/>
      <StateTemplateVariable objectReference="ModelValue_324"/>
      <StateTemplateVariable objectReference="ModelValue_325"/>
      <StateTemplateVariable objectReference="ModelValue_326"/>
      <StateTemplateVariable objectReference="ModelValue_327"/>
      <StateTemplateVariable objectReference="ModelValue_328"/>
      <StateTemplateVariable objectReference="ModelValue_329"/>
      <StateTemplateVariable objectReference="ModelValue_331"/>
      <StateTemplateVariable objectReference="ModelValue_332"/>
      <StateTemplateVariable objectReference="ModelValue_334"/>
      <StateTemplateVariable objectReference="ModelValue_335"/>
      <StateTemplateVariable objectReference="ModelValue_336"/>
      <StateTemplateVariable objectReference="ModelValue_337"/>
      <StateTemplateVariable objectReference="ModelValue_338"/>
      <StateTemplateVariable objectReference="ModelValue_339"/>
      <StateTemplateVariable objectReference="ModelValue_340"/>
      <StateTemplateVariable objectReference="ModelValue_341"/>
      <StateTemplateVariable objectReference="ModelValue_342"/>
      <StateTemplateVariable objectReference="ModelValue_343"/>
      <StateTemplateVariable objectReference="ModelValue_344"/>
      <StateTemplateVariable objectReference="ModelValue_345"/>
      <StateTemplateVariable objectReference="ModelValue_346"/>
      <StateTemplateVariable objectReference="ModelValue_347"/>
      <StateTemplateVariable objectReference="ModelValue_348"/>
      <StateTemplateVariable objectReference="ModelValue_349"/>
      <StateTemplateVariable objectReference="ModelValue_351"/>
      <StateTemplateVariable objectReference="ModelValue_352"/>
      <StateTemplateVariable objectReference="ModelValue_354"/>
      <StateTemplateVariable objectReference="ModelValue_355"/>
      <StateTemplateVariable objectReference="ModelValue_356"/>
      <StateTemplateVariable objectReference="ModelValue_357"/>
      <StateTemplateVariable objectReference="ModelValue_358"/>
      <StateTemplateVariable objectReference="ModelValue_359"/>
      <StateTemplateVariable objectReference="ModelValue_360"/>
      <StateTemplateVariable objectReference="ModelValue_361"/>
      <StateTemplateVariable objectReference="ModelValue_362"/>
      <StateTemplateVariable objectReference="ModelValue_363"/>
      <StateTemplateVariable objectReference="ModelValue_364"/>
      <StateTemplateVariable objectReference="ModelValue_365"/>
      <StateTemplateVariable objectReference="ModelValue_366"/>
      <StateTemplateVariable objectReference="ModelValue_367"/>
      <StateTemplateVariable objectReference="ModelValue_368"/>
      <StateTemplateVariable objectReference="ModelValue_369"/>
      <StateTemplateVariable objectReference="ModelValue_371"/>
      <StateTemplateVariable objectReference="ModelValue_372"/>
      <StateTemplateVariable objectReference="ModelValue_374"/>
      <StateTemplateVariable objectReference="ModelValue_375"/>
      <StateTemplateVariable objectReference="ModelValue_376"/>
      <StateTemplateVariable objectReference="ModelValue_377"/>
      <StateTemplateVariable objectReference="ModelValue_378"/>
      <StateTemplateVariable objectReference="ModelValue_379"/>
      <StateTemplateVariable objectReference="ModelValue_380"/>
      <StateTemplateVariable objectReference="ModelValue_381"/>
      <StateTemplateVariable objectReference="ModelValue_382"/>
      <StateTemplateVariable objectReference="ModelValue_383"/>
      <StateTemplateVariable objectReference="ModelValue_384"/>
      <StateTemplateVariable objectReference="ModelValue_385"/>
      <StateTemplateVariable objectReference="ModelValue_386"/>
      <StateTemplateVariable objectReference="ModelValue_387"/>
      <StateTemplateVariable objectReference="ModelValue_388"/>
      <StateTemplateVariable objectReference="ModelValue_389"/>
      <StateTemplateVariable objectReference="ModelValue_391"/>
      <StateTemplateVariable objectReference="ModelValue_392"/>
      <StateTemplateVariable objectReference="ModelValue_394"/>
      <StateTemplateVariable objectReference="ModelValue_395"/>
      <StateTemplateVariable objectReference="ModelValue_396"/>
      <StateTemplateVariable objectReference="ModelValue_397"/>
      <StateTemplateVariable objectReference="ModelValue_398"/>
      <StateTemplateVariable objectReference="ModelValue_399"/>
      <StateTemplateVariable objectReference="ModelValue_400"/>
      <StateTemplateVariable objectReference="ModelValue_401"/>
      <StateTemplateVariable objectReference="ModelValue_402"/>
      <StateTemplateVariable objectReference="ModelValue_403"/>
      <StateTemplateVariable objectReference="ModelValue_404"/>
      <StateTemplateVariable objectReference="ModelValue_405"/>
      <StateTemplateVariable objectReference="ModelValue_406"/>
      <StateTemplateVariable objectReference="ModelValue_407"/>
      <StateTemplateVariable objectReference="ModelValue_408"/>
      <StateTemplateVariable objectReference="ModelValue_409"/>
      <StateTemplateVariable objectReference="ModelValue_411"/>
      <StateTemplateVariable objectReference="ModelValue_412"/>
      <StateTemplateVariable objectReference="ModelValue_414"/>
      <StateTemplateVariable objectReference="ModelValue_415"/>
      <StateTemplateVariable objectReference="ModelValue_416"/>
      <StateTemplateVariable objectReference="ModelValue_417"/>
      <StateTemplateVariable objectReference="ModelValue_418"/>
      <StateTemplateVariable objectReference="ModelValue_419"/>
      <StateTemplateVariable objectReference="ModelValue_420"/>
      <StateTemplateVariable objectReference="ModelValue_421"/>
      <StateTemplateVariable objectReference="ModelValue_422"/>
      <StateTemplateVariable objectReference="ModelValue_423"/>
      <StateTemplateVariable objectReference="ModelValue_424"/>
      <StateTemplateVariable objectReference="ModelValue_425"/>
      <StateTemplateVariable objectReference="ModelValue_426"/>
      <StateTemplateVariable objectReference="ModelValue_427"/>
      <StateTemplateVariable objectReference="ModelValue_428"/>
      <StateTemplateVariable objectReference="ModelValue_429"/>
      <StateTemplateVariable objectReference="ModelValue_431"/>
      <StateTemplateVariable objectReference="ModelValue_432"/>
      <StateTemplateVariable objectReference="ModelValue_434"/>
      <StateTemplateVariable objectReference="ModelValue_435"/>
      <StateTemplateVariable objectReference="ModelValue_436"/>
      <StateTemplateVariable objectReference="ModelValue_437"/>
      <StateTemplateVariable objectReference="ModelValue_438"/>
      <StateTemplateVariable objectReference="ModelValue_439"/>
      <StateTemplateVariable objectReference="ModelValue_440"/>
      <StateTemplateVariable objectReference="ModelValue_441"/>
      <StateTemplateVariable objectReference="ModelValue_442"/>
      <StateTemplateVariable objectReference="ModelValue_443"/>
      <StateTemplateVariable objectReference="ModelValue_444"/>
      <StateTemplateVariable objectReference="ModelValue_445"/>
      <StateTemplateVariable objectReference="ModelValue_446"/>
      <StateTemplateVariable objectReference="ModelValue_447"/>
      <StateTemplateVariable objectReference="ModelValue_448"/>
      <StateTemplateVariable objectReference="ModelValue_449"/>
      <StateTemplateVariable objectReference="ModelValue_451"/>
      <StateTemplateVariable objectReference="ModelValue_452"/>
      <StateTemplateVariable objectReference="ModelValue_454"/>
      <StateTemplateVariable objectReference="ModelValue_455"/>
      <StateTemplateVariable objectReference="ModelValue_456"/>
      <StateTemplateVariable objectReference="ModelValue_457"/>
      <StateTemplateVariable objectReference="ModelValue_458"/>
      <StateTemplateVariable objectReference="ModelValue_459"/>
      <StateTemplateVariable objectReference="ModelValue_460"/>
      <StateTemplateVariable objectReference="ModelValue_461"/>
      <StateTemplateVariable objectReference="ModelValue_462"/>
      <StateTemplateVariable objectReference="ModelValue_463"/>
      <StateTemplateVariable objectReference="ModelValue_464"/>
      <StateTemplateVariable objectReference="ModelValue_465"/>
      <StateTemplateVariable objectReference="ModelValue_466"/>
      <StateTemplateVariable objectReference="ModelValue_467"/>
      <StateTemplateVariable objectReference="ModelValue_468"/>
      <StateTemplateVariable objectReference="ModelValue_469"/>
      <StateTemplateVariable objectReference="ModelValue_471"/>
      <StateTemplateVariable objectReference="ModelValue_472"/>
      <StateTemplateVariable objectReference="ModelValue_474"/>
      <StateTemplateVariable objectReference="ModelValue_475"/>
      <StateTemplateVariable objectReference="ModelValue_476"/>
      <StateTemplateVariable objectReference="ModelValue_477"/>
      <StateTemplateVariable objectReference="ModelValue_478"/>
      <StateTemplateVariable objectReference="ModelValue_479"/>
      <StateTemplateVariable objectReference="ModelValue_480"/>
      <StateTemplateVariable objectReference="ModelValue_481"/>
      <StateTemplateVariable objectReference="ModelValue_482"/>
      <StateTemplateVariable objectReference="ModelValue_483"/>
      <StateTemplateVariable objectReference="ModelValue_484"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 0.85684708911839735 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 15540543414550456 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 16966434410934114 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 1.187461717589066e+18 0.60994648554080466 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 0.16863309947686161 6.02214076e+17 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 1 0.185 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 0.11 0.90000000000000002 0.050000000000000003 6 0.13 1.0489999999999999 0.94340000000000002 2 0.185 0.20000000000000001 0.082339999999999997 0.69999999999999996 1.5 0.10000000000000001 4.5 0.69999999999999996 1 0.20999999999999999 2 0.71999999999999997 8 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="9.9999999999999995e-07"/>
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1200"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <ListOfPlotItems>
        <PlotItem name="[Ca_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_1],Vector=Metabolites[Ca_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_1],Vector=Metabolites[Ca_ER_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[Ca_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_2],Vector=Metabolites[IP3_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_2],Vector=Metabolites[Ca_ER_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[Ca_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_3],Vector=Metabolites[IP3_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_3],Vector=Metabolites[Ca_ER_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[Ca_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_4],Vector=Metabolites[IP3_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_4],Vector=Metabolites[Ca_ER_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[Ca_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_5],Vector=Metabolites[IP3_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_5],Vector=Metabolites[Ca_ER_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[Ca_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_6],Vector=Metabolites[IP3_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_6],Vector=Metabolites[Ca_ER_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[Ca_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_7],Vector=Metabolites[IP3_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_7],Vector=Metabolites[Ca_ER_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[Ca_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_8],Vector=Metabolites[IP3_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_8],Vector=Metabolites[Ca_ER_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[Ca_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_9],Vector=Metabolites[IP3_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_9],Vector=Metabolites[Ca_ER_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[Ca_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_10],Vector=Metabolites[IP3_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_10],Vector=Metabolites[Ca_ER_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[Ca_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_11],Vector=Metabolites[IP3_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_11],Vector=Metabolites[Ca_ER_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[Ca_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[Cytoplasm_12],Vector=Metabolites[IP3_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_ER_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Compartments[ER_12],Vector=Metabolites[Ca_ER_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_6],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_6],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_8],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_8],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_9],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_9],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_10],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_10],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_11],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_11],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Q2_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[Q2_12],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 12 replicas of ChI model of calcium oscillations,Vector=Values[h_12],Reference=Value"/>
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
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
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
