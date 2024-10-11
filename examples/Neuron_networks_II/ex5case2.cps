<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44.295 (Source) (http://www.copasi.org) at 2024-10-09T19:51:37Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <Model key="Model_2" name="a set of 100 replicas of Izhikevich Neuron" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_2">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18244602"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2007-07-16T09:41:14+00:00</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>enuo@caltech.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>He</vCard:Family>
            <vCard:Given>Enuo</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>BNMC</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-14T11:28:54+00:00</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-10-09T15:51:24.849409</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-09-05T14:19:34</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><p>Processed with sbmodelr to produce a set of 100 replicas of Izhikevich.cps</p><pre style="font-size:small">../../sbmodelr --output ex5case2.cps -n network100-200_sf.dot --ode-synaptic v --synapse-g 0.2 --synapse-link-g Izhikevich.cps 100</pre><p>notes of original file below:</p><hr/>
<h1>Izhikevich neuron model</h1>
    <p>This neuron model, formulated by Izhikevich, is a minimal model that still has easy biological interpretation, yet is as computationally efficient as the integrate-and-fire model. Known types of neurons can be simulated with this model by using different values for the parameters <i>a</i>, <i>b</i>, <i>c</i>, and <i>d</i> in the model.</p>
<ul>
    <li>RS: a=0.02,  b=0.2,  c=-65, d=8.</li>
    <li>IB:  a=0.02, b=0.2, c=-55,d=4</li>
    <li>CH: a=0.02, b=0.2, c=-50,d=2</li>
    <li>FS: a=0.1, b=0.2, c=-65, d=2</li>
    <li>LTS: a=0.02, b=0.25, c=-65, d=2</li>
</ul>
<p>Izhikevich EM (2003) <a href="https://doi.org/10.1109/TNN.2003.820440">Simple model of spiking neurons</a>. IEEE Transactions on Neural Networks 14:1569–1572</p>

  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cell_1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="cell_2" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="cell_3" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="cell_4" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_5" name="cell_5" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_6" name="cell_6" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="cell_7" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_8" name="cell_8" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_8">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_9" name="cell_9" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_9">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_10" name="cell_10" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_11" name="cell_11" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_11">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_12" name="cell_12" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_12">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_13" name="cell_13" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_13">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_14" name="cell_14" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_14">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_15" name="cell_15" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_15">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_16" name="cell_16" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_16">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_17" name="cell_17" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_17">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_18" name="cell_18" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_18">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_19" name="cell_19" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_19">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_20" name="cell_20" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_20">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_21" name="cell_21" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_21">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_22" name="cell_22" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_22">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_23" name="cell_23" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_23">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_24" name="cell_24" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_24">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_25" name="cell_25" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_25">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_26" name="cell_26" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_26">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_27" name="cell_27" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_27">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_28" name="cell_28" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_28">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_29" name="cell_29" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_29">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_30" name="cell_30" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_30">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_31" name="cell_31" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_31">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_32" name="cell_32" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_32">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_33" name="cell_33" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_33">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_34" name="cell_34" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_34">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_35" name="cell_35" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_35">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_36" name="cell_36" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_36">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_37" name="cell_37" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_37">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_38" name="cell_38" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_38">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_39" name="cell_39" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_39">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_40" name="cell_40" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_40">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_41" name="cell_41" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_41">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_42" name="cell_42" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_42">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_43" name="cell_43" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_43">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_44" name="cell_44" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_44">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_45" name="cell_45" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_45">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_46" name="cell_46" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_46">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_47" name="cell_47" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_47">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_48" name="cell_48" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_48">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_49" name="cell_49" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_49">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_50" name="cell_50" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_50">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_51" name="cell_51" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_51">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_52" name="cell_52" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_52">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_53" name="cell_53" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_53">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_54" name="cell_54" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_54">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_55" name="cell_55" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_55">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_56" name="cell_56" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_56">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_57" name="cell_57" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_57">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_58" name="cell_58" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_58">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_59" name="cell_59" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_59">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_60" name="cell_60" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_60">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_61" name="cell_61" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_61">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_62" name="cell_62" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_62">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_63" name="cell_63" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_63">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_64" name="cell_64" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_64">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_65" name="cell_65" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_65">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_66" name="cell_66" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_66">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_67" name="cell_67" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_67">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_68" name="cell_68" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_68">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_69" name="cell_69" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_69">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_70" name="cell_70" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_70">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_71" name="cell_71" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_71">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_72" name="cell_72" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_72">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_73" name="cell_73" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_73">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_74" name="cell_74" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_74">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_75" name="cell_75" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_75">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_76" name="cell_76" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_76">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_77" name="cell_77" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_77">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_78" name="cell_78" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_78">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_79" name="cell_79" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_79">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_80" name="cell_80" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_80">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_81" name="cell_81" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_81">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_82" name="cell_82" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_82">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_83" name="cell_83" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_83">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_84" name="cell_84" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_84">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_85" name="cell_85" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_85">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_86" name="cell_86" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_86">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_87" name="cell_87" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_87">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_88" name="cell_88" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_88">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_89" name="cell_89" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_89">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_90" name="cell_90" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_90">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_91" name="cell_91" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_91">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_92" name="cell_92" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_92">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_93" name="cell_93" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_93">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_94" name="cell_94" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_94">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_95" name="cell_95" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_95">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_96" name="cell_96" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_96">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_97" name="cell_97" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_97">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_98" name="cell_98" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_98">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_99" name="cell_99" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_99">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_100" name="cell_100" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_100">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfModelValues>
      <ModelValue key="ModelValue_8" name="g_c_v_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="a_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="b_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="c_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="d_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Vthresh_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="i_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="v_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_1],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="U_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_1],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_1],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_1],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="a_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="b_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="c_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="d_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Vthresh_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="i_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="v_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_2],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="U_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_2],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_2],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_2],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="a_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="b_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="c_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="d_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Vthresh_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="i_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="v_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_3],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="U_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_3],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_3],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_3],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="a_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="b_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="c_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="d_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Vthresh_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="i_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="v_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_4],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_4],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="U_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_4],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_4],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_4],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="a_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="b_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="c_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="d_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Vthresh_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="i_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="v_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_5],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_5],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="U_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_5],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_5],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_5],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="a_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="b_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="c_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="d_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Vthresh_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="i_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="v_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_6],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_6],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="U_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_6],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_6],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_6],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="a_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="b_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="c_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="d_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="Vthresh_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="i_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="v_7" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_7],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_7],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="U_7" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_7],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_7],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_7],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="a_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="b_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="c_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="d_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Vthresh_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="i_8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="v_8" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_8],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_8],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="U_8" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_8],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_8],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_8],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="a_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="b_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="c_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="d_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="Vthresh_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="i_9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="v_9" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_9],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_9],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="U_9" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_9],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_9],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_9],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="a_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="b_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="c_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="d_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="Vthresh_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="i_10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="v_10" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_10],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_10],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="U_10" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_10],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_10],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_10],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="a_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="b_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="c_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="d_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="Vthresh_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="i_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="v_11" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_11],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_11],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="U_11" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_11],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_11],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_11],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="a_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="b_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="c_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="d_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="Vthresh_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="i_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="v_12" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_12],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_12],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="U_12" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_12],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_12],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_12],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="a_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="b_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="c_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="d_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="Vthresh_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="i_13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="v_13" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_13],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_13],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="U_13" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_13],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_13],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_13],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="a_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="b_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="c_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="d_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="Vthresh_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="i_14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="v_14" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_14],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_14],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="U_14" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_14],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_14],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_14],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="a_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="b_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="c_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="d_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="Vthresh_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="i_15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_126">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="v_15" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_15],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_15],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="U_15" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_128">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_15],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_15],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_15],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="a_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_129">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="b_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_130">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="c_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_131">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="d_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_132">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_133" name="Vthresh_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_133">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_134" name="i_16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_134">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="v_16" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_135">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_16],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_16],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="U_16" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_136">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_16],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_16],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_16],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="a_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_137">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="b_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_138">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="c_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_139">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="d_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_140">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="Vthresh_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_141">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="i_17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_142">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="v_17" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_143">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_17],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_17],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="U_17" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_144">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_17],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_17],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_17],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="a_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_145">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="b_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_146">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="c_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_147">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="d_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_148">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="Vthresh_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_149">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="i_18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_150">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_151" name="v_18" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_151">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_18],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_18],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_152" name="U_18" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_152">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_18],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_18],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_18],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="a_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_153">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="b_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_154">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_155" name="c_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_155">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="d_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_156">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="Vthresh_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_157">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="i_19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_158">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="v_19" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_159">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_19],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_19],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="U_19" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_160">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_19],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_19],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_19],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="a_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_161">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="b_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_162">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="c_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_163">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="d_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_164">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="Vthresh_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_165">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="i_20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_166">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="v_20" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_167">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_20],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_20],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="U_20" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_168">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_20],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_20],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_20],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="a_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_169">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="b_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_170">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="c_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_171">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="d_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_172">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="Vthresh_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_173">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="i_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_174">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="v_21" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_175">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_21],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_21],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="U_21" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_176">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_21],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_21],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_21],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="a_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="b_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_178">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="c_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="d_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_180">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="Vthresh_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="i_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_182">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="v_22" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_183">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_22],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_22],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="U_22" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_22],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_22],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_22],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="a_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_185">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="b_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_186">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="c_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_187">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="d_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_188">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="Vthresh_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_189">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="i_23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_190">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="v_23" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_191">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_23],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_23],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_192" name="U_23" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_192">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_23],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_23],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_23],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_193" name="a_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_193">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="b_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_194">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="c_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_195">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="d_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_196">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="Vthresh_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_197">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="i_24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="v_24" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_199">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_24],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_24],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="U_24" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_24],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_24],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_24],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="a_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_201">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="b_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="c_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_203">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="d_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="Vthresh_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_206" name="i_25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_206">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_207" name="v_25" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_207">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_25],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_25],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_208" name="U_25" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_208">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_25],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_25],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_25],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_209" name="a_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_209">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_210" name="b_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_210">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_211" name="c_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_212" name="d_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_212">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_213" name="Vthresh_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_213">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_214" name="i_26" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_214">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_215" name="v_26" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_215">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_26],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_26],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_216" name="U_26" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_26],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_26],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_26],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_217" name="a_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_218" name="b_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_219" name="c_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_220" name="d_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_220">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_221" name="Vthresh_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_221">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_222" name="i_27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_222">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="v_27" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_223">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_27],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_27],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="U_27" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_224">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_27],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_27],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_27],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="a_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_225">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="b_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_226">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="c_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_227">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="d_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_228">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="Vthresh_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_229">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_230" name="i_28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_230">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_231" name="v_28" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_231">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_28],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_28],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_232" name="U_28" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_232">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_28],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_28],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_28],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_233" name="a_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_233">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="b_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_234">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="c_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_235">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="d_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_236">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="Vthresh_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_237">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="i_29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_238">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="v_29" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_239">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_29],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_29],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="U_29" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_240">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_29],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_29],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_29],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="a_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_241">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="b_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="c_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_243">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="d_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_244">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="Vthresh_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_245">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="i_30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="v_30" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_247">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_30],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_30],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="U_30" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_248">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_30],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_30],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_30],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="a_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_249">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="b_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_250">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="c_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_251">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="d_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_252">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="Vthresh_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_253">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="i_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_254">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="v_31" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_255">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_31],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_31],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_256" name="U_31" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_256">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_31],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_31],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_31],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="a_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_257">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="b_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_258">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="c_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_259">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="d_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_260">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_261" name="Vthresh_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_261">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="i_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_262">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_263" name="v_32" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_263">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_32],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_32],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_264" name="U_32" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_264">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_32],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_32],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_32],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_265" name="a_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_265">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_266" name="b_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_266">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_267" name="c_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_267">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_268" name="d_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_268">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_269" name="Vthresh_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_269">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_270" name="i_33" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_270">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_271" name="v_33" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_271">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_33],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_33],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_272" name="U_33" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_272">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_33],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_33],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_33],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_273" name="a_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_273">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_274" name="b_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_274">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_275" name="c_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_275">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_276" name="d_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_276">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_277" name="Vthresh_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_277">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_278" name="i_34" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_278">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_279" name="v_34" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_279">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_34],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_34],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_280" name="U_34" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_280">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_34],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_34],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_34],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_281" name="a_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_281">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_282" name="b_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_282">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_283" name="c_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_283">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_284" name="d_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_284">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_285" name="Vthresh_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_285">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_286" name="i_35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_286">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_287" name="v_35" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_287">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_35],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_35],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_288" name="U_35" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_288">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_35],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_35],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_35],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_289" name="a_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_289">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_290" name="b_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_290">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_291" name="c_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_291">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_292" name="d_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_292">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_293" name="Vthresh_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_293">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_294" name="i_36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_294">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_295" name="v_36" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_295">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_36],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_36],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_296" name="U_36" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_296">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_36],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_36],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_36],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_297" name="a_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_297">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_298" name="b_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_298">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_299" name="c_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_299">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_300" name="d_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_300">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_301" name="Vthresh_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_301">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_302" name="i_37" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_302">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_303" name="v_37" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_303">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_37],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_37],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_304" name="U_37" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_304">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_37],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_37],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_37],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_305" name="a_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_305">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_306" name="b_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_306">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_307" name="c_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_307">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_308" name="d_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_308">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_309" name="Vthresh_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_309">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_310" name="i_38" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_310">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_311" name="v_38" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_311">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_38],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_38],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_312" name="U_38" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_312">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_38],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_38],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_38],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_313" name="a_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_313">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_314" name="b_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_314">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_315" name="c_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_315">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_316" name="d_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_316">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_317" name="Vthresh_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_317">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_318" name="i_39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_318">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_319" name="v_39" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_319">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_39],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_39],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_320" name="U_39" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_320">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_39],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_39],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_39],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_321" name="a_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_321">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_322" name="b_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_322">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_323" name="c_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_323">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_324" name="d_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_324">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_325" name="Vthresh_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_325">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_326" name="i_40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_326">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_327" name="v_40" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_327">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_40],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_40],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_328" name="U_40" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_328">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_40],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_40],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_40],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_329" name="a_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_329">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_330" name="b_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_330">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_331" name="c_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_331">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_332" name="d_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_332">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_333" name="Vthresh_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_333">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_334" name="i_41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_334">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_335" name="v_41" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_335">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_41],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_41],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_336" name="U_41" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_336">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_41],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_41],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_41],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_337" name="a_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_337">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_338" name="b_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_338">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_339" name="c_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_339">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_340" name="d_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_340">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_341" name="Vthresh_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_341">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_342" name="i_42" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_342">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_343" name="v_42" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_343">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_42],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_42],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_344" name="U_42" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_344">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_42],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_42],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_42],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_345" name="a_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_345">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_346" name="b_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_346">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_347" name="c_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_347">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_348" name="d_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_348">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_349" name="Vthresh_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_349">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_350" name="i_43" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_350">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_351" name="v_43" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_351">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_43],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_43],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_352" name="U_43" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_352">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_43],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_43],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_43],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_353" name="a_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_353">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_354" name="b_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_354">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_355" name="c_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_355">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_356" name="d_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_356">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_357" name="Vthresh_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_357">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_358" name="i_44" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_358">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_359" name="v_44" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_359">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_44],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_44],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_360" name="U_44" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_360">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_44],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_44],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_44],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_361" name="a_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_361">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_362" name="b_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_362">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_363" name="c_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_363">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_364" name="d_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_364">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_365" name="Vthresh_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_365">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_366" name="i_45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_366">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_367" name="v_45" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_367">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_45],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_45],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_368" name="U_45" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_368">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_45],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_45],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_45],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_369" name="a_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_369">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_370" name="b_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_370">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_371" name="c_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_371">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_372" name="d_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_372">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_373" name="Vthresh_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_373">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_374" name="i_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_374">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_375" name="v_46" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_375">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_46],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_46],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_376" name="U_46" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_376">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_46],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_46],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_46],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_377" name="a_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_377">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_378" name="b_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_378">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_379" name="c_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_379">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_380" name="d_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_380">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_381" name="Vthresh_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_381">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_382" name="i_47" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_382">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_383" name="v_47" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_383">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_47],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_47],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_384" name="U_47" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_384">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_47],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_47],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_47],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_385" name="a_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_385">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_386" name="b_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_386">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_387" name="c_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_387">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_388" name="d_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_388">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_389" name="Vthresh_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_389">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_390" name="i_48" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_390">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_391" name="v_48" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_391">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_48],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_48],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_392" name="U_48" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_392">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_48],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_48],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_48],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_393" name="a_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_393">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_394" name="b_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_394">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_395" name="c_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_395">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_396" name="d_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_396">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_397" name="Vthresh_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_397">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_398" name="i_49" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_398">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_399" name="v_49" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_399">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_49],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_49],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_400" name="U_49" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_400">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_49],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_49],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_49],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_401" name="a_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_401">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_402" name="b_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_402">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_403" name="c_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_403">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_404" name="d_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_404">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_405" name="Vthresh_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_405">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_406" name="i_50" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_406">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_407" name="v_50" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_407">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_50],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_50],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_408" name="U_50" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_408">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_50],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_50],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_50],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_409" name="a_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_409">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_410" name="b_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_410">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_411" name="c_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_411">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_412" name="d_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_412">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_413" name="Vthresh_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_413">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_414" name="i_51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_414">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_415" name="v_51" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_415">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_51],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_51],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_416" name="U_51" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_416">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_51],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_51],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_51],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_417" name="a_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_417">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_418" name="b_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_418">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_419" name="c_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_419">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_420" name="d_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_420">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_421" name="Vthresh_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_421">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_422" name="i_52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_422">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_423" name="v_52" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_423">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_52],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_52],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_424" name="U_52" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_424">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_52],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_52],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_52],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_425" name="a_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_425">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_426" name="b_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_426">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_427" name="c_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_427">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_428" name="d_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_428">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_429" name="Vthresh_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_429">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_430" name="i_53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_430">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_431" name="v_53" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_431">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_53],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_53],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_432" name="U_53" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_432">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_53],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_53],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_53],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_433" name="a_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_433">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_434" name="b_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_434">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_435" name="c_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_435">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_436" name="d_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_436">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_437" name="Vthresh_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_437">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_438" name="i_54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_438">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_439" name="v_54" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_439">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_54],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_54],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_440" name="U_54" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_440">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_54],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_54],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_54],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_441" name="a_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_441">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_442" name="b_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_442">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_443" name="c_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_443">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_444" name="d_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_444">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_445" name="Vthresh_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_445">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_446" name="i_55" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_446">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_447" name="v_55" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_447">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_55],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_55],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_448" name="U_55" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_448">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_55],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_55],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_55],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_449" name="a_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_449">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_450" name="b_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_450">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_451" name="c_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_451">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_452" name="d_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_452">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_453" name="Vthresh_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_453">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_454" name="i_56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_454">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_455" name="v_56" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_455">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_56],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_56],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_456" name="U_56" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_456">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_56],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_56],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_56],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_457" name="a_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_457">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_458" name="b_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_458">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_459" name="c_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_459">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_460" name="d_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_460">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_461" name="Vthresh_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_461">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_462" name="i_57" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_462">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_463" name="v_57" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_463">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_57],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_57],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_464" name="U_57" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_464">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_57],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_57],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_57],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_465" name="a_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_465">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_466" name="b_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_466">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_467" name="c_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_467">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_468" name="d_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_468">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_469" name="Vthresh_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_469">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_470" name="i_58" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_470">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_471" name="v_58" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_471">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_58],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_58],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_472" name="U_58" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_472">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_58],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_58],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_58],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_473" name="a_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_473">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_474" name="b_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_474">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_475" name="c_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_475">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_476" name="d_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_476">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_477" name="Vthresh_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_477">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_478" name="i_59" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_478">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_479" name="v_59" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_479">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_59],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_59],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_480" name="U_59" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_480">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_59],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_59],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_59],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_481" name="a_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_481">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_482" name="b_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_482">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_483" name="c_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_483">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_484" name="d_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_484">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_485" name="Vthresh_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_485">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_486" name="i_60" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_486">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_487" name="v_60" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_487">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_60],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_60],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_488" name="U_60" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_488">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_60],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_60],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_60],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_489" name="a_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_489">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_490" name="b_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_490">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_491" name="c_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_491">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_492" name="d_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_492">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_493" name="Vthresh_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_493">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_494" name="i_61" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_494">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_495" name="v_61" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_495">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_61],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_61],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_496" name="U_61" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_496">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_61],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_61],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_61],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_497" name="a_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_497">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_498" name="b_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_498">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_499" name="c_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_499">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_500" name="d_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_500">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_501" name="Vthresh_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_501">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_502" name="i_62" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_502">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_503" name="v_62" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_503">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_62],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_62],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_504" name="U_62" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_504">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_62],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_62],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_62],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_505" name="a_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_505">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_506" name="b_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_506">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_507" name="c_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_507">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_508" name="d_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_508">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_509" name="Vthresh_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_509">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_510" name="i_63" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_510">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_511" name="v_63" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_511">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_63],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_63],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_512" name="U_63" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_512">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_63],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_63],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_63],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_513" name="a_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_513">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_514" name="b_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_514">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_515" name="c_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_515">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_516" name="d_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_516">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_517" name="Vthresh_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_517">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_518" name="i_64" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_518">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_519" name="v_64" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_519">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_64],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_64],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_520" name="U_64" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_520">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_64],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_64],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_64],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_521" name="a_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_521">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_522" name="b_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_522">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_523" name="c_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_523">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_524" name="d_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_524">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_525" name="Vthresh_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_525">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_526" name="i_65" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_526">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_527" name="v_65" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_527">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_65],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_65],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_528" name="U_65" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_528">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_65],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_65],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_65],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_529" name="a_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_529">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_530" name="b_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_530">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_531" name="c_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_531">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_532" name="d_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_532">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_533" name="Vthresh_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_533">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_534" name="i_66" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_534">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_535" name="v_66" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_535">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_66],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_66],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_536" name="U_66" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_536">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_66],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_66],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_66],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_537" name="a_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_537">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_538" name="b_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_538">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_539" name="c_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_539">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_540" name="d_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_540">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_541" name="Vthresh_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_541">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_542" name="i_67" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_542">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_543" name="v_67" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_543">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_67],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_67],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_544" name="U_67" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_544">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_67],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_67],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_67],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_545" name="a_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_545">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_546" name="b_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_546">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_547" name="c_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_547">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_548" name="d_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_548">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_549" name="Vthresh_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_549">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_550" name="i_68" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_550">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_551" name="v_68" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_551">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_68],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_68],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_552" name="U_68" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_552">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_68],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_68],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_68],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_553" name="a_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_553">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_554" name="b_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_554">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_555" name="c_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_555">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_556" name="d_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_556">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_557" name="Vthresh_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_557">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_558" name="i_69" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_558">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_559" name="v_69" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_559">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_69],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_69],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_560" name="U_69" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_560">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_69],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_69],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_69],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_561" name="a_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_561">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_562" name="b_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_562">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_563" name="c_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_563">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_564" name="d_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_564">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_565" name="Vthresh_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_565">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_566" name="i_70" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_566">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_567" name="v_70" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_567">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_70],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_70],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_568" name="U_70" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_568">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_70],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_70],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_70],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_569" name="a_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_569">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_570" name="b_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_570">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_571" name="c_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_571">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_572" name="d_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_572">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_573" name="Vthresh_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_573">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_574" name="i_71" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_574">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_575" name="v_71" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_575">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_71],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_71],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_576" name="U_71" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_576">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_71],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_71],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_71],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_577" name="a_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_577">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_578" name="b_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_578">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_579" name="c_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_579">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_580" name="d_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_580">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_581" name="Vthresh_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_581">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_582" name="i_72" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_582">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_583" name="v_72" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_583">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_72],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_72],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_584" name="U_72" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_584">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_72],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_72],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_72],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_585" name="a_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_585">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_586" name="b_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_586">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_587" name="c_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_587">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_588" name="d_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_588">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_589" name="Vthresh_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_589">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_590" name="i_73" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_590">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_591" name="v_73" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_591">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_73],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_73],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_592" name="U_73" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_592">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_73],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_73],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_73],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_593" name="a_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_593">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_594" name="b_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_594">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_595" name="c_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_595">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_596" name="d_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_596">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_597" name="Vthresh_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_597">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_598" name="i_74" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_598">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_599" name="v_74" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_599">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_74],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_74],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_600" name="U_74" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_600">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_74],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_74],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_74],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_601" name="a_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_601">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_602" name="b_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_602">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_603" name="c_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_603">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_604" name="d_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_604">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_605" name="Vthresh_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_605">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_606" name="i_75" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_606">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_607" name="v_75" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_607">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_75],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_75],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_608" name="U_75" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_608">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_75],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_75],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_75],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_609" name="a_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_609">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_610" name="b_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_610">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_611" name="c_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_611">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_612" name="d_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_612">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_613" name="Vthresh_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_613">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_614" name="i_76" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_614">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_615" name="v_76" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_615">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_76],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_76],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_616" name="U_76" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_616">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_76],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_76],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_76],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_617" name="a_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_617">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_618" name="b_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_618">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_619" name="c_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_619">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_620" name="d_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_620">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_621" name="Vthresh_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_621">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_622" name="i_77" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_622">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_623" name="v_77" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_623">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_77],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_77],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_624" name="U_77" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_624">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_77],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_77],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_77],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_625" name="a_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_625">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_626" name="b_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_626">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_627" name="c_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_627">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_628" name="d_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_628">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_629" name="Vthresh_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_629">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_630" name="i_78" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_630">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_631" name="v_78" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_631">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_78],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_78],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_632" name="U_78" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_632">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_78],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_78],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_78],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_633" name="a_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_633">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_634" name="b_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_634">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_635" name="c_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_635">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_636" name="d_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_636">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_637" name="Vthresh_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_637">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_638" name="i_79" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_638">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_639" name="v_79" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_639">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_79],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_79],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_640" name="U_79" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_640">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_79],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_79],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_79],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_641" name="a_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_641">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_642" name="b_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_642">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_643" name="c_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_643">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_644" name="d_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_644">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_645" name="Vthresh_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_645">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_646" name="i_80" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_646">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_647" name="v_80" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_647">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_80],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_80],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_648" name="U_80" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_648">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_80],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_80],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_80],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_649" name="a_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_649">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_650" name="b_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_650">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_651" name="c_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_651">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_652" name="d_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_652">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_653" name="Vthresh_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_653">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_654" name="i_81" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_654">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_655" name="v_81" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_655">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_81],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_81],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_656" name="U_81" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_656">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_81],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_81],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_81],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_657" name="a_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_657">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_658" name="b_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_658">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_659" name="c_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_659">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_660" name="d_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_660">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_661" name="Vthresh_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_661">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_662" name="i_82" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_662">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_663" name="v_82" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_663">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_82],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_82],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_664" name="U_82" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_664">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_82],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_82],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_82],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_665" name="a_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_665">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_666" name="b_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_666">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_667" name="c_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_667">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_668" name="d_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_668">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_669" name="Vthresh_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_669">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_670" name="i_83" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_670">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_671" name="v_83" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_671">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_83],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_83],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_672" name="U_83" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_672">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_83],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_83],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_83],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_673" name="a_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_673">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_674" name="b_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_674">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_675" name="c_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_675">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_676" name="d_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_676">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_677" name="Vthresh_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_677">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_678" name="i_84" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_678">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_679" name="v_84" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_679">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_84],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_84],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_680" name="U_84" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_680">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_84],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_84],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_84],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_681" name="a_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_681">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_682" name="b_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_682">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_683" name="c_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_683">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_684" name="d_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_684">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_685" name="Vthresh_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_685">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_686" name="i_85" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_686">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_687" name="v_85" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_687">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_85],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_85],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_688" name="U_85" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_688">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_85],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_85],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_85],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_689" name="a_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_689">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_690" name="b_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_690">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_691" name="c_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_691">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_692" name="d_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_692">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_693" name="Vthresh_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_693">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_694" name="i_86" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_694">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_695" name="v_86" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_695">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_86],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_86],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_696" name="U_86" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_696">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_86],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_86],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_86],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_697" name="a_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_697">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_698" name="b_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_698">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_699" name="c_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_699">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_700" name="d_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_700">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_701" name="Vthresh_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_701">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_702" name="i_87" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_702">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_703" name="v_87" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_703">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_87],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_87],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_704" name="U_87" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_704">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_87],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_87],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_87],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_705" name="a_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_705">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_706" name="b_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_706">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_707" name="c_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_707">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_708" name="d_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_708">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_709" name="Vthresh_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_709">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_710" name="i_88" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_710">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_711" name="v_88" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_711">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_88],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_88],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_712" name="U_88" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_712">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_88],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_88],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_88],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_713" name="a_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_713">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_714" name="b_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_714">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_715" name="c_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_715">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_716" name="d_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_716">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_717" name="Vthresh_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_717">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_718" name="i_89" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_718">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_719" name="v_89" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_719">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_89],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_89],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_720" name="U_89" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_720">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_89],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_89],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_89],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_721" name="a_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_721">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_722" name="b_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_722">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_723" name="c_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_723">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_724" name="d_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_724">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_725" name="Vthresh_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_725">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_726" name="i_90" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_726">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_727" name="v_90" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_727">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_90],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_90],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_728" name="U_90" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_728">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_90],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_90],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_90],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_729" name="a_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_729">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_730" name="b_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_730">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_731" name="c_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_731">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_732" name="d_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_732">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_733" name="Vthresh_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_733">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_734" name="i_91" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_734">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_735" name="v_91" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_735">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_91],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_91],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_736" name="U_91" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_736">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_91],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_91],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_91],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_737" name="a_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_737">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_738" name="b_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_738">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_739" name="c_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_739">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_740" name="d_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_740">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_741" name="Vthresh_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_741">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_742" name="i_92" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_742">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_743" name="v_92" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_743">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_92],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_92],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_744" name="U_92" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_744">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_92],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_92],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_92],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_745" name="a_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_745">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_746" name="b_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_746">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_747" name="c_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_747">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_748" name="d_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_748">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_749" name="Vthresh_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_749">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_750" name="i_93" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_750">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_751" name="v_93" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_751">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_93],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_93],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_752" name="U_93" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_752">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_93],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_93],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_93],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_753" name="a_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_753">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_754" name="b_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_754">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_755" name="c_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_755">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_756" name="d_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_756">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_757" name="Vthresh_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_757">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_758" name="i_94" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_758">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_759" name="v_94" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_759">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_94],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_94],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_760" name="U_94" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_760">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_94],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_94],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_94],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_761" name="a_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_761">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_762" name="b_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_762">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_763" name="c_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_763">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_764" name="d_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_764">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_765" name="Vthresh_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_765">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_766" name="i_95" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_766">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_767" name="v_95" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_767">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_95],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_95],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_768" name="U_95" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_768">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_95],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_95],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_95],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_769" name="a_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_769">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_770" name="b_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_770">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_771" name="c_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_771">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_772" name="d_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_772">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_773" name="Vthresh_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_773">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_774" name="i_96" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_774">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_775" name="v_96" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_775">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_96],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_96],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_776" name="U_96" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_776">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_96],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_96],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_96],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_777" name="a_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_777">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_778" name="b_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_778">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_779" name="c_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_779">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_780" name="d_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_780">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_781" name="Vthresh_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_781">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_782" name="i_97" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_782">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_783" name="v_97" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_783">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_97],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_97],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_784" name="U_97" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_784">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_97],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_97],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_97],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_785" name="a_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_785">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_786" name="b_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_786">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_787" name="c_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_787">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_788" name="d_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_788">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_789" name="Vthresh_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_789">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_790" name="i_98" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_790">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_791" name="v_98" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_791">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_98],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_98],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_792" name="U_98" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_792">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_98],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_98],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_98],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_793" name="a_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_793">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_794" name="b_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_794">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_795" name="c_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_795">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_796" name="d_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_796">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_797" name="Vthresh_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_797">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_798" name="i_99" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_798">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_799" name="v_99" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_799">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_99],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_99],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_800" name="U_99" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_800">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_99],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_99],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_99],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_801" name="a_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_801">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_802" name="b_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_802">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_803" name="c_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_803">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_804" name="d_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_804">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_805" name="Vthresh_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_805">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_806" name="i_100" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_806">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_807" name="v_100" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_807">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.040000000000000001*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100],Reference=Value>^2+5*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100],Reference=Value>+140-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_100],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_100],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_808" name="U_100" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_808">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_100],Reference=Value>*(&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_100],Reference=Value>*&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100],Reference=Value>-&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_100],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_809" name="tau_r_v_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_809">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_810" name="tau_d_v_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_810">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_811" name="V0_v_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_811">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_812" name="Vsyn_v_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_812">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_2" name="reset_1" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_1],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_1],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_1],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="reset_2" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_2],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_2],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="reset_3" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_3],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_3],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_3]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_3],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_3],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="reset_4" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_4],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_4],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_4]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_4],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_4],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="reset_5" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_5],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_5],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_5]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_5],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_5],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="reset_6" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_6],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_6],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_6]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_6],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_6],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="reset_7" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_7],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_7],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_7]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_7],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_7],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="reset_8" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_8],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_8],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_8]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_8],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_8],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="reset_9" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_9],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_9],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_9]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_9],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_9],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="reset_10" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_10],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_10],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_10]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_10],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_10],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="reset_11" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_11],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_11],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_11]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_11],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_11],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="reset_12" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_12],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_12],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_12]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_12],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_12],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="reset_13" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_13],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_13],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_13]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_13],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_13],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="reset_14" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_14],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_14],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_14]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_14],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_14],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="reset_15" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_15],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_15],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_15]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_15],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_15],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="reset_16" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_16],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_16],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_16]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_16],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_16],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="reset_17" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_17],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_17],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_17]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_17],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_17],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="reset_18" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_18],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_18],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_18]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_18],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_18],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="reset_19" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_19],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_19],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_19]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_19],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_19],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_21" name="reset_20" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_20],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_20],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_20]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_20],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_20],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_22" name="reset_21" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_21],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_21],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_21]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_21],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_21],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_23" name="reset_22" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_22],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_22],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_22]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_22],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_22],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_24" name="reset_23" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_23],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_23],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_23]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_23],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_23],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_25" name="reset_24" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_24],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_24],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_24]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_24],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_24],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_26" name="reset_25" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_25],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_25],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_25]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_25],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_25],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_27" name="reset_26" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_26],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_26],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_26]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_26],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_26],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_28" name="reset_27" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_27],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_27],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_27]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_27],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_27],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_29" name="reset_28" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_28],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_28],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_28]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_28],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_28],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_30" name="reset_29" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_29],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_29],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_29]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_29],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_29],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_31" name="reset_30" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_30],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_30],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_30]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_30],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_30],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_32" name="reset_31" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_31],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_31],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_31]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_31],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_31],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_33" name="reset_32" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_32],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_32],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_32]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_32],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_32],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_34" name="reset_33" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_33],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_33],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_33]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_33],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_33],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_35" name="reset_34" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_34],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_34],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_34]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_34],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_34],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_36" name="reset_35" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_35],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_35],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_35]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_35],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_35],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_37" name="reset_36" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_36],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_36],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_36]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_36],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_36],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_38" name="reset_37" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_37],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_37],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_37]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_37],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_37],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_39" name="reset_38" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_38],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_38],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_38]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_38],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_38],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_40" name="reset_39" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_39],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_39],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_39]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_39],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_39],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_41" name="reset_40" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_40],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_40],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_40]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_40],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_40],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_42" name="reset_41" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_41],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_41],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_41]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_41],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_41],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_43" name="reset_42" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_42],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_42],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_42]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_42],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_42],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_44" name="reset_43" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_43],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_43],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_43]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_43],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_43],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_45" name="reset_44" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_44],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_44],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_44]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_44],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_44],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_46" name="reset_45" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_45],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_45],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_45]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_45],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_45],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_47" name="reset_46" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_46],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_46],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_46]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_46],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_46],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_48" name="reset_47" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_47],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_47],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_47]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_47],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_47],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_49" name="reset_48" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_48],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_48],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_48]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_48],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_48],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_50" name="reset_49" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_49],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_49],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_49]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_49],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_49],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_51" name="reset_50" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_50],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_50],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_50]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_50],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_50],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_52" name="reset_51" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_51],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_51],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_51]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_51],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_51],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_53" name="reset_52" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_52],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_52],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_52]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_52],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_52],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_54" name="reset_53" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_53],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_53],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_53]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_53],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_53],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_55" name="reset_54" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_54],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_54],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_54]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_54],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_54],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_56" name="reset_55" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_55],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_55],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_55]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_55],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_55],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_57" name="reset_56" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_56],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_56],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_56]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_56],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_56],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_58" name="reset_57" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_57],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_57],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_57]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_57],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_57],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_59" name="reset_58" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_58],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_58],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_58]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_58],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_58],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_60" name="reset_59" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_59],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_59],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_59]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_59],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_59],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_61" name="reset_60" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_60],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_60],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_60]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_60],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_60],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_62" name="reset_61" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_61],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_61],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_61]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_61],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_61],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_63" name="reset_62" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_62],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_62],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_62]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_62],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_62],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_64" name="reset_63" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_63],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_63],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_63]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_63],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_63],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_65" name="reset_64" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_64],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_64],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_64]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_64],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_64],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_66" name="reset_65" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_65],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_65],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_65]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_65],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_65],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_67" name="reset_66" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_66],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_66],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_66]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_66],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_66],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_68" name="reset_67" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_67],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_67],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_67]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_67],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_67],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_69" name="reset_68" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_68],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_68],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_68]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_68],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_68],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_70" name="reset_69" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_69],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_69],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_69]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_69],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_69],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_71" name="reset_70" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_70],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_70],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_70]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_70],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_70],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_72" name="reset_71" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_71],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_71],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_71]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_71],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_71],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_73" name="reset_72" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_72],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_72],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_72]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_72],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_72],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_74" name="reset_73" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_73],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_73],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_73]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_73],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_73],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_75" name="reset_74" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_74],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_74],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_74]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_74],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_74],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_76" name="reset_75" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_75],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_75],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_75]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_75],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_75],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_77" name="reset_76" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_76],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_76],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_76]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_76],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_76],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_78" name="reset_77" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_77],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_77],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_77]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_77],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_77],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_79" name="reset_78" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_78],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_78],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_78]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_78],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_78],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_80" name="reset_79" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_79],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_79],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_79]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_79],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_79],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_81" name="reset_80" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_80],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_80],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_80]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_80],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_80],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_82" name="reset_81" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_81],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_81],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_81]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_81],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_81],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_83" name="reset_82" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_82],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_82],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_82]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_82],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_82],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_84" name="reset_83" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_83],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_83],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_83]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_83],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_83],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_85" name="reset_84" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_84],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_84],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_84]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_84],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_84],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_86" name="reset_85" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_85],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_85],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_85]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_85],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_85],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_87" name="reset_86" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_86],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_86],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_86]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_86],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_86],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_88" name="reset_87" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_87],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_87],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_87]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_87],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_87],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_89" name="reset_88" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_88],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_88],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_88]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_88],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_88],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_90" name="reset_89" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_89],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_89],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_89]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_89],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_89],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_91" name="reset_90" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_90],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_90],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_90]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_90],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_90],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_92" name="reset_91" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_91],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_91],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_91]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_91],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_91],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_93" name="reset_92" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_92],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_92],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_92]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_92],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_92],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_94" name="reset_93" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_93],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_93],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_93]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_93],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_93],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_95" name="reset_94" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_94],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_94],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_94]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_94],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_94],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_96" name="reset_95" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_95],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_95],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_95]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_95],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_95],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_97" name="reset_96" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_96],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_96],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_96]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_96],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_96],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_98" name="reset_97" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_97],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_97],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_97]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_97],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_97],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_99" name="reset_98" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_98],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_98],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_98]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_98],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_98],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_100" name="reset_99" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_99],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_99],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_99]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_99],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_99],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_101" name="reset_100" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100],Reference=Value> gt &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_100],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_100],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_100]">
            <Expression>
              &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_100],Reference=Value>+&lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_100],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_102" name="Stimulus" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Reference=Time> gt 10
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_1]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_2]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_3]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_4]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_5]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_6]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_7]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_8]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_9]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_10]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_11]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_12]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_13]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_14]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_15]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_16]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_17]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_18]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_19]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_20]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_21]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_22]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_23]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_24]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_25]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_26]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_27]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_28]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_29]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_30]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_31]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_32]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_33]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_34]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_35]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_36]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_37]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_38]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_39]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_40]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_41]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_42]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_43]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_44]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_45]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_46]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_47]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_48]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_49]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_50]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_51]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_52]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_53]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_54]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_55]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_56]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_57]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_58]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_59]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_60]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_61]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_62]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_63]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_64]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_65]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_66]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_67]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_68]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_69]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_70]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_71]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_72]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_73]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_74]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_75]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_76]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_77]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_78]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_79]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_80]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_81]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_82]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_83]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_84]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_85]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_86]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_87]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_88]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_89]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_90]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_91]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_92]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_93]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_94]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_95]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_96]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_97]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_98]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_99]">
            <Expression>
              10
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_100]">
            <Expression>
              10
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_2">
      <ModelParameterSet key="ModelParameterSet_2" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_3]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_4]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_5]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_6]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_7]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_8]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_9]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_10]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_11]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_12]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_13]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_14]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_15]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_16]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_17]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_18]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_19]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_20]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_21]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_22]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_23]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_24]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_25]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_26]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_27]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_28]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_29]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_30]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_31]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_32]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_33]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_34]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_35]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_36]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_37]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_38]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_39]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_40]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_41]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_42]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_43]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_44]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_45]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_46]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_47]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_48]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_49]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_50]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_51]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_52]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_53]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_54]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_55]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_56]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_57]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_58]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_59]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_60]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_61]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_62]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_63]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_64]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_65]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_66]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_67]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_68]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_69]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_70]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_71]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_72]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_73]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_74]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_75]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_76]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_77]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_78]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_79]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_80]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_81]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_82]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_83]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_84]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_85]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_86]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_87]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_88]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_89]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_90]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_91]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_92]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_93]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_94]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_95]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_96]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_97]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_98]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_99]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Compartments[cell_100]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[g_c_v_synapse]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_1]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_1]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_1]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_1]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_1]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_1]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_1]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_2]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_2]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_2]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_2]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_2]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_3]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_3]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_3]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_3]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_3]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_3]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_4]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_4]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_4]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_4]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_4]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_4]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_4]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_5]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_5]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_5]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_5]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_5]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_5]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_5]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_6]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_6]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_6]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_6]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_6]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_6]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_6]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_6]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_7]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_7]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_7]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_7]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_7]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_7]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_7]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_7]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_8]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_8]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_8]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_8]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_8]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_8]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_8]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_8]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_9]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_9]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_9]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_9]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_9]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_9]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_9]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_9]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_10]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_10]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_10]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_10]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_10]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_10]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_10]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_10]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_11]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_11]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_11]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_11]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_11]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_11]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_11]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_11]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_12]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_12]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_12]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_12]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_12]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_12]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_12]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_12]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_13]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_13]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_13]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_13]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_13]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_13]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_13]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_13]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_14]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_14]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_14]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_14]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_14]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_14]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_14]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_14]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_15]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_15]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_15]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_15]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_15]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_15]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_15]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_15]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_16]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_16]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_16]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_16]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_16]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_16]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_16]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_16]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_17]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_17]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_17]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_17]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_17]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_17]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_17]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_17]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_18]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_18]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_18]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_18]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_18]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_18]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_18]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_18]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_19]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_19]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_19]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_19]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_19]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_19]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_19]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_19]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_20]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_20]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_20]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_20]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_20]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_20]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_20]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_20]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_21]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_21]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_21]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_21]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_21]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_21]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_21]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_21]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_22]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_22]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_22]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_22]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_22]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_22]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_22]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_22]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_23]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_23]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_23]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_23]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_23]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_23]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_23]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_23]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_24]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_24]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_24]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_24]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_24]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_24]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_24]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_24]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_25]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_25]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_25]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_25]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_25]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_25]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_25]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_25]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_26]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_26]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_26]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_26]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_26]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_26]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_26]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_26]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_27]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_27]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_27]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_27]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_27]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_27]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_27]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_27]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_28]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_28]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_28]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_28]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_28]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_28]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_28]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_28]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_29]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_29]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_29]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_29]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_29]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_29]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_29]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_29]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_30]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_30]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_30]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_30]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_30]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_30]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_30]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_30]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_31]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_31]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_31]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_31]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_31]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_31]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_31]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_31]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_32]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_32]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_32]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_32]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_32]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_32]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_32]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_32]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_33]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_33]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_33]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_33]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_33]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_33]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_33]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_33]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_34]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_34]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_34]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_34]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_34]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_34]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_34]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_34]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_35]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_35]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_35]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_35]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_35]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_35]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_35]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_35]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_36]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_36]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_36]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_36]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_36]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_36]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_36]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_36]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_37]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_37]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_37]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_37]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_37]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_37]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_37]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_37]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_38]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_38]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_38]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_38]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_38]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_38]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_38]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_38]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_39]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_39]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_39]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_39]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_39]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_39]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_39]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_39]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_40]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_40]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_40]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_40]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_40]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_40]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_40]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_40]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_41]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_41]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_41]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_41]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_41]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_41]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_41]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_41]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_42]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_42]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_42]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_42]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_42]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_42]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_42]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_42]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_43]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_43]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_43]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_43]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_43]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_43]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_43]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_43]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_44]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_44]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_44]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_44]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_44]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_44]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_44]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_44]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_45]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_45]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_45]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_45]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_45]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_45]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_45]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_45]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_46]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_46]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_46]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_46]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_46]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_46]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_46]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_46]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_47]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_47]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_47]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_47]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_47]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_47]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_47]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_47]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_48]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_48]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_48]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_48]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_48]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_48]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_48]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_48]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_49]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_49]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_49]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_49]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_49]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_49]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_49]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_49]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_50]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_50]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_50]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_50]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_50]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_50]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_50]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_50]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_51]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_51]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_51]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_51]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_51]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_51]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_51]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_51]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_52]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_52]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_52]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_52]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_52]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_52]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_52]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_52]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_53]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_53]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_53]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_53]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_53]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_53]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_53]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_53]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_54]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_54]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_54]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_54]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_54]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_54]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_54]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_54]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_55]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_55]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_55]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_55]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_55]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_55]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_55]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_55]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_56]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_56]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_56]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_56]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_56]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_56]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_56]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_56]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_57]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_57]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_57]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_57]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_57]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_57]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_57]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_57]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_58]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_58]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_58]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_58]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_58]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_58]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_58]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_58]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_59]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_59]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_59]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_59]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_59]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_59]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_59]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_59]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_60]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_60]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_60]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_60]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_60]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_60]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_60]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_60]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_61]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_61]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_61]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_61]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_61]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_61]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_61]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_61]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_62]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_62]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_62]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_62]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_62]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_62]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_62]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_62]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_63]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_63]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_63]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_63]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_63]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_63]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_63]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_63]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_64]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_64]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_64]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_64]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_64]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_64]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_64]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_64]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_65]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_65]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_65]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_65]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_65]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_65]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_65]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_65]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_66]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_66]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_66]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_66]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_66]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_66]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_66]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_66]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_67]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_67]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_67]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_67]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_67]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_67]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_67]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_67]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_68]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_68]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_68]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_68]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_68]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_68]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_68]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_68]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_69]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_69]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_69]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_69]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_69]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_69]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_69]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_69]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_70]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_70]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_70]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_70]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_70]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_70]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_70]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_70]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_71]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_71]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_71]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_71]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_71]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_71]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_71]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_71]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_72]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_72]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_72]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_72]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_72]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_72]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_72]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_72]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_73]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_73]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_73]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_73]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_73]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_73]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_73]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_73]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_74]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_74]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_74]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_74]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_74]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_74]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_74]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_74]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_75]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_75]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_75]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_75]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_75]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_75]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_75]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_75]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_76]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_76]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_76]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_76]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_76]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_76]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_76]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_76]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_77]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_77]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_77]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_77]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_77]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_77]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_77]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_77]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_78]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_78]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_78]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_78]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_78]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_78]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_78]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_78]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_79]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_79]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_79]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_79]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_79]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_79]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_79]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_79]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_80]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_80]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_80]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_80]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_80]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_80]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_80]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_80]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_81]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_81]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_81]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_81]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_81]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_81]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_81]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_81]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_82]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_82]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_82]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_82]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_82]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_82]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_82]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_82]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_83]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_83]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_83]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_83]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_83]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_83]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_83]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_83]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_84]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_84]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_84]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_84]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_84]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_84]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_84]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_84]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_85]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_85]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_85]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_85]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_85]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_85]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_85]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_85]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_86]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_86]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_86]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_86]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_86]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_86]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_86]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_86]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_87]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_87]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_87]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_87]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_87]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_87]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_87]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_87]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_88]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_88]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_88]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_88]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_88]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_88]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_88]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_88]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_89]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_89]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_89]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_89]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_89]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_89]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_89]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_89]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_90]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_90]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_90]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_90]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_90]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_90]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_90]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_90]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_91]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_91]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_91]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_91]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_91]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_91]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_91]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_91]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_92]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_92]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_92]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_92]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_92]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_92]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_92]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_92]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_93]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_93]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_93]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_93]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_93]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_93]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_93]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_93]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_94]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_94]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_94]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_94]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_94]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_94]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_94]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_94]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_95]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_95]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_95]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_95]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_95]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_95]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_95]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_95]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_96]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_96]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_96]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_96]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_96]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_96]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_96]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_96]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_97]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_97]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_97]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_97]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_97]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_97]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_97]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_97]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_98]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_98]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_98]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_98]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_98]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_98]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_98]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_98]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_99]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_99]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_99]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_99]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_99]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_99]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_99]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_99]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[a_100]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[b_100]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[c_100]" value="-65" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[d_100]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vthresh_100]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[i_100]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[v_100]" value="-70" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[U_100]" value="-14" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[tau_r_v_synapse]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[tau_d_v_synapse]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[V0_v_synapse]" value="-20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 100 replicas of Izhikevich Neuron,Vector=Values[Vsyn_v_synapse]" value="20" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_2"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_263"/>
      <StateTemplateVariable objectReference="ModelValue_264"/>
      <StateTemplateVariable objectReference="ModelValue_271"/>
      <StateTemplateVariable objectReference="ModelValue_272"/>
      <StateTemplateVariable objectReference="ModelValue_279"/>
      <StateTemplateVariable objectReference="ModelValue_280"/>
      <StateTemplateVariable objectReference="ModelValue_287"/>
      <StateTemplateVariable objectReference="ModelValue_288"/>
      <StateTemplateVariable objectReference="ModelValue_295"/>
      <StateTemplateVariable objectReference="ModelValue_296"/>
      <StateTemplateVariable objectReference="ModelValue_303"/>
      <StateTemplateVariable objectReference="ModelValue_304"/>
      <StateTemplateVariable objectReference="ModelValue_311"/>
      <StateTemplateVariable objectReference="ModelValue_312"/>
      <StateTemplateVariable objectReference="ModelValue_319"/>
      <StateTemplateVariable objectReference="ModelValue_320"/>
      <StateTemplateVariable objectReference="ModelValue_327"/>
      <StateTemplateVariable objectReference="ModelValue_328"/>
      <StateTemplateVariable objectReference="ModelValue_335"/>
      <StateTemplateVariable objectReference="ModelValue_336"/>
      <StateTemplateVariable objectReference="ModelValue_343"/>
      <StateTemplateVariable objectReference="ModelValue_344"/>
      <StateTemplateVariable objectReference="ModelValue_351"/>
      <StateTemplateVariable objectReference="ModelValue_352"/>
      <StateTemplateVariable objectReference="ModelValue_359"/>
      <StateTemplateVariable objectReference="ModelValue_360"/>
      <StateTemplateVariable objectReference="ModelValue_367"/>
      <StateTemplateVariable objectReference="ModelValue_368"/>
      <StateTemplateVariable objectReference="ModelValue_375"/>
      <StateTemplateVariable objectReference="ModelValue_376"/>
      <StateTemplateVariable objectReference="ModelValue_383"/>
      <StateTemplateVariable objectReference="ModelValue_384"/>
      <StateTemplateVariable objectReference="ModelValue_391"/>
      <StateTemplateVariable objectReference="ModelValue_392"/>
      <StateTemplateVariable objectReference="ModelValue_399"/>
      <StateTemplateVariable objectReference="ModelValue_400"/>
      <StateTemplateVariable objectReference="ModelValue_407"/>
      <StateTemplateVariable objectReference="ModelValue_408"/>
      <StateTemplateVariable objectReference="ModelValue_415"/>
      <StateTemplateVariable objectReference="ModelValue_416"/>
      <StateTemplateVariable objectReference="ModelValue_423"/>
      <StateTemplateVariable objectReference="ModelValue_424"/>
      <StateTemplateVariable objectReference="ModelValue_431"/>
      <StateTemplateVariable objectReference="ModelValue_432"/>
      <StateTemplateVariable objectReference="ModelValue_439"/>
      <StateTemplateVariable objectReference="ModelValue_440"/>
      <StateTemplateVariable objectReference="ModelValue_447"/>
      <StateTemplateVariable objectReference="ModelValue_448"/>
      <StateTemplateVariable objectReference="ModelValue_455"/>
      <StateTemplateVariable objectReference="ModelValue_456"/>
      <StateTemplateVariable objectReference="ModelValue_463"/>
      <StateTemplateVariable objectReference="ModelValue_464"/>
      <StateTemplateVariable objectReference="ModelValue_471"/>
      <StateTemplateVariable objectReference="ModelValue_472"/>
      <StateTemplateVariable objectReference="ModelValue_479"/>
      <StateTemplateVariable objectReference="ModelValue_480"/>
      <StateTemplateVariable objectReference="ModelValue_487"/>
      <StateTemplateVariable objectReference="ModelValue_488"/>
      <StateTemplateVariable objectReference="ModelValue_495"/>
      <StateTemplateVariable objectReference="ModelValue_496"/>
      <StateTemplateVariable objectReference="ModelValue_503"/>
      <StateTemplateVariable objectReference="ModelValue_504"/>
      <StateTemplateVariable objectReference="ModelValue_511"/>
      <StateTemplateVariable objectReference="ModelValue_512"/>
      <StateTemplateVariable objectReference="ModelValue_519"/>
      <StateTemplateVariable objectReference="ModelValue_520"/>
      <StateTemplateVariable objectReference="ModelValue_527"/>
      <StateTemplateVariable objectReference="ModelValue_528"/>
      <StateTemplateVariable objectReference="ModelValue_535"/>
      <StateTemplateVariable objectReference="ModelValue_536"/>
      <StateTemplateVariable objectReference="ModelValue_543"/>
      <StateTemplateVariable objectReference="ModelValue_544"/>
      <StateTemplateVariable objectReference="ModelValue_551"/>
      <StateTemplateVariable objectReference="ModelValue_552"/>
      <StateTemplateVariable objectReference="ModelValue_559"/>
      <StateTemplateVariable objectReference="ModelValue_560"/>
      <StateTemplateVariable objectReference="ModelValue_567"/>
      <StateTemplateVariable objectReference="ModelValue_568"/>
      <StateTemplateVariable objectReference="ModelValue_575"/>
      <StateTemplateVariable objectReference="ModelValue_576"/>
      <StateTemplateVariable objectReference="ModelValue_583"/>
      <StateTemplateVariable objectReference="ModelValue_584"/>
      <StateTemplateVariable objectReference="ModelValue_591"/>
      <StateTemplateVariable objectReference="ModelValue_592"/>
      <StateTemplateVariable objectReference="ModelValue_599"/>
      <StateTemplateVariable objectReference="ModelValue_600"/>
      <StateTemplateVariable objectReference="ModelValue_607"/>
      <StateTemplateVariable objectReference="ModelValue_608"/>
      <StateTemplateVariable objectReference="ModelValue_615"/>
      <StateTemplateVariable objectReference="ModelValue_616"/>
      <StateTemplateVariable objectReference="ModelValue_623"/>
      <StateTemplateVariable objectReference="ModelValue_624"/>
      <StateTemplateVariable objectReference="ModelValue_631"/>
      <StateTemplateVariable objectReference="ModelValue_632"/>
      <StateTemplateVariable objectReference="ModelValue_639"/>
      <StateTemplateVariable objectReference="ModelValue_640"/>
      <StateTemplateVariable objectReference="ModelValue_647"/>
      <StateTemplateVariable objectReference="ModelValue_648"/>
      <StateTemplateVariable objectReference="ModelValue_655"/>
      <StateTemplateVariable objectReference="ModelValue_656"/>
      <StateTemplateVariable objectReference="ModelValue_663"/>
      <StateTemplateVariable objectReference="ModelValue_664"/>
      <StateTemplateVariable objectReference="ModelValue_671"/>
      <StateTemplateVariable objectReference="ModelValue_672"/>
      <StateTemplateVariable objectReference="ModelValue_679"/>
      <StateTemplateVariable objectReference="ModelValue_680"/>
      <StateTemplateVariable objectReference="ModelValue_687"/>
      <StateTemplateVariable objectReference="ModelValue_688"/>
      <StateTemplateVariable objectReference="ModelValue_695"/>
      <StateTemplateVariable objectReference="ModelValue_696"/>
      <StateTemplateVariable objectReference="ModelValue_703"/>
      <StateTemplateVariable objectReference="ModelValue_704"/>
      <StateTemplateVariable objectReference="ModelValue_711"/>
      <StateTemplateVariable objectReference="ModelValue_712"/>
      <StateTemplateVariable objectReference="ModelValue_719"/>
      <StateTemplateVariable objectReference="ModelValue_720"/>
      <StateTemplateVariable objectReference="ModelValue_727"/>
      <StateTemplateVariable objectReference="ModelValue_728"/>
      <StateTemplateVariable objectReference="ModelValue_735"/>
      <StateTemplateVariable objectReference="ModelValue_736"/>
      <StateTemplateVariable objectReference="ModelValue_743"/>
      <StateTemplateVariable objectReference="ModelValue_744"/>
      <StateTemplateVariable objectReference="ModelValue_751"/>
      <StateTemplateVariable objectReference="ModelValue_752"/>
      <StateTemplateVariable objectReference="ModelValue_759"/>
      <StateTemplateVariable objectReference="ModelValue_760"/>
      <StateTemplateVariable objectReference="ModelValue_767"/>
      <StateTemplateVariable objectReference="ModelValue_768"/>
      <StateTemplateVariable objectReference="ModelValue_775"/>
      <StateTemplateVariable objectReference="ModelValue_776"/>
      <StateTemplateVariable objectReference="ModelValue_783"/>
      <StateTemplateVariable objectReference="ModelValue_784"/>
      <StateTemplateVariable objectReference="ModelValue_791"/>
      <StateTemplateVariable objectReference="ModelValue_792"/>
      <StateTemplateVariable objectReference="ModelValue_799"/>
      <StateTemplateVariable objectReference="ModelValue_800"/>
      <StateTemplateVariable objectReference="ModelValue_807"/>
      <StateTemplateVariable objectReference="ModelValue_808"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_8"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
      <StateTemplateVariable objectReference="Compartment_10"/>
      <StateTemplateVariable objectReference="Compartment_11"/>
      <StateTemplateVariable objectReference="Compartment_12"/>
      <StateTemplateVariable objectReference="Compartment_13"/>
      <StateTemplateVariable objectReference="Compartment_14"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
      <StateTemplateVariable objectReference="Compartment_16"/>
      <StateTemplateVariable objectReference="Compartment_17"/>
      <StateTemplateVariable objectReference="Compartment_18"/>
      <StateTemplateVariable objectReference="Compartment_19"/>
      <StateTemplateVariable objectReference="Compartment_20"/>
      <StateTemplateVariable objectReference="Compartment_21"/>
      <StateTemplateVariable objectReference="Compartment_22"/>
      <StateTemplateVariable objectReference="Compartment_23"/>
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
      <StateTemplateVariable objectReference="Compartment_48"/>
      <StateTemplateVariable objectReference="Compartment_49"/>
      <StateTemplateVariable objectReference="Compartment_50"/>
      <StateTemplateVariable objectReference="Compartment_51"/>
      <StateTemplateVariable objectReference="Compartment_52"/>
      <StateTemplateVariable objectReference="Compartment_53"/>
      <StateTemplateVariable objectReference="Compartment_54"/>
      <StateTemplateVariable objectReference="Compartment_55"/>
      <StateTemplateVariable objectReference="Compartment_56"/>
      <StateTemplateVariable objectReference="Compartment_57"/>
      <StateTemplateVariable objectReference="Compartment_58"/>
      <StateTemplateVariable objectReference="Compartment_59"/>
      <StateTemplateVariable objectReference="Compartment_60"/>
      <StateTemplateVariable objectReference="Compartment_61"/>
      <StateTemplateVariable objectReference="Compartment_62"/>
      <StateTemplateVariable objectReference="Compartment_63"/>
      <StateTemplateVariable objectReference="Compartment_64"/>
      <StateTemplateVariable objectReference="Compartment_65"/>
      <StateTemplateVariable objectReference="Compartment_66"/>
      <StateTemplateVariable objectReference="Compartment_67"/>
      <StateTemplateVariable objectReference="Compartment_68"/>
      <StateTemplateVariable objectReference="Compartment_69"/>
      <StateTemplateVariable objectReference="Compartment_70"/>
      <StateTemplateVariable objectReference="Compartment_71"/>
      <StateTemplateVariable objectReference="Compartment_72"/>
      <StateTemplateVariable objectReference="Compartment_73"/>
      <StateTemplateVariable objectReference="Compartment_74"/>
      <StateTemplateVariable objectReference="Compartment_75"/>
      <StateTemplateVariable objectReference="Compartment_76"/>
      <StateTemplateVariable objectReference="Compartment_77"/>
      <StateTemplateVariable objectReference="Compartment_78"/>
      <StateTemplateVariable objectReference="Compartment_79"/>
      <StateTemplateVariable objectReference="Compartment_80"/>
      <StateTemplateVariable objectReference="Compartment_81"/>
      <StateTemplateVariable objectReference="Compartment_82"/>
      <StateTemplateVariable objectReference="Compartment_83"/>
      <StateTemplateVariable objectReference="Compartment_84"/>
      <StateTemplateVariable objectReference="Compartment_85"/>
      <StateTemplateVariable objectReference="Compartment_86"/>
      <StateTemplateVariable objectReference="Compartment_87"/>
      <StateTemplateVariable objectReference="Compartment_88"/>
      <StateTemplateVariable objectReference="Compartment_89"/>
      <StateTemplateVariable objectReference="Compartment_90"/>
      <StateTemplateVariable objectReference="Compartment_91"/>
      <StateTemplateVariable objectReference="Compartment_92"/>
      <StateTemplateVariable objectReference="Compartment_93"/>
      <StateTemplateVariable objectReference="Compartment_94"/>
      <StateTemplateVariable objectReference="Compartment_95"/>
      <StateTemplateVariable objectReference="Compartment_96"/>
      <StateTemplateVariable objectReference="Compartment_97"/>
      <StateTemplateVariable objectReference="Compartment_98"/>
      <StateTemplateVariable objectReference="Compartment_99"/>
      <StateTemplateVariable objectReference="Compartment_100"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_237"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
      <StateTemplateVariable objectReference="ModelValue_265"/>
      <StateTemplateVariable objectReference="ModelValue_266"/>
      <StateTemplateVariable objectReference="ModelValue_267"/>
      <StateTemplateVariable objectReference="ModelValue_268"/>
      <StateTemplateVariable objectReference="ModelValue_269"/>
      <StateTemplateVariable objectReference="ModelValue_270"/>
      <StateTemplateVariable objectReference="ModelValue_273"/>
      <StateTemplateVariable objectReference="ModelValue_274"/>
      <StateTemplateVariable objectReference="ModelValue_275"/>
      <StateTemplateVariable objectReference="ModelValue_276"/>
      <StateTemplateVariable objectReference="ModelValue_277"/>
      <StateTemplateVariable objectReference="ModelValue_278"/>
      <StateTemplateVariable objectReference="ModelValue_281"/>
      <StateTemplateVariable objectReference="ModelValue_282"/>
      <StateTemplateVariable objectReference="ModelValue_283"/>
      <StateTemplateVariable objectReference="ModelValue_284"/>
      <StateTemplateVariable objectReference="ModelValue_285"/>
      <StateTemplateVariable objectReference="ModelValue_286"/>
      <StateTemplateVariable objectReference="ModelValue_289"/>
      <StateTemplateVariable objectReference="ModelValue_290"/>
      <StateTemplateVariable objectReference="ModelValue_291"/>
      <StateTemplateVariable objectReference="ModelValue_292"/>
      <StateTemplateVariable objectReference="ModelValue_293"/>
      <StateTemplateVariable objectReference="ModelValue_294"/>
      <StateTemplateVariable objectReference="ModelValue_297"/>
      <StateTemplateVariable objectReference="ModelValue_298"/>
      <StateTemplateVariable objectReference="ModelValue_299"/>
      <StateTemplateVariable objectReference="ModelValue_300"/>
      <StateTemplateVariable objectReference="ModelValue_301"/>
      <StateTemplateVariable objectReference="ModelValue_302"/>
      <StateTemplateVariable objectReference="ModelValue_305"/>
      <StateTemplateVariable objectReference="ModelValue_306"/>
      <StateTemplateVariable objectReference="ModelValue_307"/>
      <StateTemplateVariable objectReference="ModelValue_308"/>
      <StateTemplateVariable objectReference="ModelValue_309"/>
      <StateTemplateVariable objectReference="ModelValue_310"/>
      <StateTemplateVariable objectReference="ModelValue_313"/>
      <StateTemplateVariable objectReference="ModelValue_314"/>
      <StateTemplateVariable objectReference="ModelValue_315"/>
      <StateTemplateVariable objectReference="ModelValue_316"/>
      <StateTemplateVariable objectReference="ModelValue_317"/>
      <StateTemplateVariable objectReference="ModelValue_318"/>
      <StateTemplateVariable objectReference="ModelValue_321"/>
      <StateTemplateVariable objectReference="ModelValue_322"/>
      <StateTemplateVariable objectReference="ModelValue_323"/>
      <StateTemplateVariable objectReference="ModelValue_324"/>
      <StateTemplateVariable objectReference="ModelValue_325"/>
      <StateTemplateVariable objectReference="ModelValue_326"/>
      <StateTemplateVariable objectReference="ModelValue_329"/>
      <StateTemplateVariable objectReference="ModelValue_330"/>
      <StateTemplateVariable objectReference="ModelValue_331"/>
      <StateTemplateVariable objectReference="ModelValue_332"/>
      <StateTemplateVariable objectReference="ModelValue_333"/>
      <StateTemplateVariable objectReference="ModelValue_334"/>
      <StateTemplateVariable objectReference="ModelValue_337"/>
      <StateTemplateVariable objectReference="ModelValue_338"/>
      <StateTemplateVariable objectReference="ModelValue_339"/>
      <StateTemplateVariable objectReference="ModelValue_340"/>
      <StateTemplateVariable objectReference="ModelValue_341"/>
      <StateTemplateVariable objectReference="ModelValue_342"/>
      <StateTemplateVariable objectReference="ModelValue_345"/>
      <StateTemplateVariable objectReference="ModelValue_346"/>
      <StateTemplateVariable objectReference="ModelValue_347"/>
      <StateTemplateVariable objectReference="ModelValue_348"/>
      <StateTemplateVariable objectReference="ModelValue_349"/>
      <StateTemplateVariable objectReference="ModelValue_350"/>
      <StateTemplateVariable objectReference="ModelValue_353"/>
      <StateTemplateVariable objectReference="ModelValue_354"/>
      <StateTemplateVariable objectReference="ModelValue_355"/>
      <StateTemplateVariable objectReference="ModelValue_356"/>
      <StateTemplateVariable objectReference="ModelValue_357"/>
      <StateTemplateVariable objectReference="ModelValue_358"/>
      <StateTemplateVariable objectReference="ModelValue_361"/>
      <StateTemplateVariable objectReference="ModelValue_362"/>
      <StateTemplateVariable objectReference="ModelValue_363"/>
      <StateTemplateVariable objectReference="ModelValue_364"/>
      <StateTemplateVariable objectReference="ModelValue_365"/>
      <StateTemplateVariable objectReference="ModelValue_366"/>
      <StateTemplateVariable objectReference="ModelValue_369"/>
      <StateTemplateVariable objectReference="ModelValue_370"/>
      <StateTemplateVariable objectReference="ModelValue_371"/>
      <StateTemplateVariable objectReference="ModelValue_372"/>
      <StateTemplateVariable objectReference="ModelValue_373"/>
      <StateTemplateVariable objectReference="ModelValue_374"/>
      <StateTemplateVariable objectReference="ModelValue_377"/>
      <StateTemplateVariable objectReference="ModelValue_378"/>
      <StateTemplateVariable objectReference="ModelValue_379"/>
      <StateTemplateVariable objectReference="ModelValue_380"/>
      <StateTemplateVariable objectReference="ModelValue_381"/>
      <StateTemplateVariable objectReference="ModelValue_382"/>
      <StateTemplateVariable objectReference="ModelValue_385"/>
      <StateTemplateVariable objectReference="ModelValue_386"/>
      <StateTemplateVariable objectReference="ModelValue_387"/>
      <StateTemplateVariable objectReference="ModelValue_388"/>
      <StateTemplateVariable objectReference="ModelValue_389"/>
      <StateTemplateVariable objectReference="ModelValue_390"/>
      <StateTemplateVariable objectReference="ModelValue_393"/>
      <StateTemplateVariable objectReference="ModelValue_394"/>
      <StateTemplateVariable objectReference="ModelValue_395"/>
      <StateTemplateVariable objectReference="ModelValue_396"/>
      <StateTemplateVariable objectReference="ModelValue_397"/>
      <StateTemplateVariable objectReference="ModelValue_398"/>
      <StateTemplateVariable objectReference="ModelValue_401"/>
      <StateTemplateVariable objectReference="ModelValue_402"/>
      <StateTemplateVariable objectReference="ModelValue_403"/>
      <StateTemplateVariable objectReference="ModelValue_404"/>
      <StateTemplateVariable objectReference="ModelValue_405"/>
      <StateTemplateVariable objectReference="ModelValue_406"/>
      <StateTemplateVariable objectReference="ModelValue_409"/>
      <StateTemplateVariable objectReference="ModelValue_410"/>
      <StateTemplateVariable objectReference="ModelValue_411"/>
      <StateTemplateVariable objectReference="ModelValue_412"/>
      <StateTemplateVariable objectReference="ModelValue_413"/>
      <StateTemplateVariable objectReference="ModelValue_414"/>
      <StateTemplateVariable objectReference="ModelValue_417"/>
      <StateTemplateVariable objectReference="ModelValue_418"/>
      <StateTemplateVariable objectReference="ModelValue_419"/>
      <StateTemplateVariable objectReference="ModelValue_420"/>
      <StateTemplateVariable objectReference="ModelValue_421"/>
      <StateTemplateVariable objectReference="ModelValue_422"/>
      <StateTemplateVariable objectReference="ModelValue_425"/>
      <StateTemplateVariable objectReference="ModelValue_426"/>
      <StateTemplateVariable objectReference="ModelValue_427"/>
      <StateTemplateVariable objectReference="ModelValue_428"/>
      <StateTemplateVariable objectReference="ModelValue_429"/>
      <StateTemplateVariable objectReference="ModelValue_430"/>
      <StateTemplateVariable objectReference="ModelValue_433"/>
      <StateTemplateVariable objectReference="ModelValue_434"/>
      <StateTemplateVariable objectReference="ModelValue_435"/>
      <StateTemplateVariable objectReference="ModelValue_436"/>
      <StateTemplateVariable objectReference="ModelValue_437"/>
      <StateTemplateVariable objectReference="ModelValue_438"/>
      <StateTemplateVariable objectReference="ModelValue_441"/>
      <StateTemplateVariable objectReference="ModelValue_442"/>
      <StateTemplateVariable objectReference="ModelValue_443"/>
      <StateTemplateVariable objectReference="ModelValue_444"/>
      <StateTemplateVariable objectReference="ModelValue_445"/>
      <StateTemplateVariable objectReference="ModelValue_446"/>
      <StateTemplateVariable objectReference="ModelValue_449"/>
      <StateTemplateVariable objectReference="ModelValue_450"/>
      <StateTemplateVariable objectReference="ModelValue_451"/>
      <StateTemplateVariable objectReference="ModelValue_452"/>
      <StateTemplateVariable objectReference="ModelValue_453"/>
      <StateTemplateVariable objectReference="ModelValue_454"/>
      <StateTemplateVariable objectReference="ModelValue_457"/>
      <StateTemplateVariable objectReference="ModelValue_458"/>
      <StateTemplateVariable objectReference="ModelValue_459"/>
      <StateTemplateVariable objectReference="ModelValue_460"/>
      <StateTemplateVariable objectReference="ModelValue_461"/>
      <StateTemplateVariable objectReference="ModelValue_462"/>
      <StateTemplateVariable objectReference="ModelValue_465"/>
      <StateTemplateVariable objectReference="ModelValue_466"/>
      <StateTemplateVariable objectReference="ModelValue_467"/>
      <StateTemplateVariable objectReference="ModelValue_468"/>
      <StateTemplateVariable objectReference="ModelValue_469"/>
      <StateTemplateVariable objectReference="ModelValue_470"/>
      <StateTemplateVariable objectReference="ModelValue_473"/>
      <StateTemplateVariable objectReference="ModelValue_474"/>
      <StateTemplateVariable objectReference="ModelValue_475"/>
      <StateTemplateVariable objectReference="ModelValue_476"/>
      <StateTemplateVariable objectReference="ModelValue_477"/>
      <StateTemplateVariable objectReference="ModelValue_478"/>
      <StateTemplateVariable objectReference="ModelValue_481"/>
      <StateTemplateVariable objectReference="ModelValue_482"/>
      <StateTemplateVariable objectReference="ModelValue_483"/>
      <StateTemplateVariable objectReference="ModelValue_484"/>
      <StateTemplateVariable objectReference="ModelValue_485"/>
      <StateTemplateVariable objectReference="ModelValue_486"/>
      <StateTemplateVariable objectReference="ModelValue_489"/>
      <StateTemplateVariable objectReference="ModelValue_490"/>
      <StateTemplateVariable objectReference="ModelValue_491"/>
      <StateTemplateVariable objectReference="ModelValue_492"/>
      <StateTemplateVariable objectReference="ModelValue_493"/>
      <StateTemplateVariable objectReference="ModelValue_494"/>
      <StateTemplateVariable objectReference="ModelValue_497"/>
      <StateTemplateVariable objectReference="ModelValue_498"/>
      <StateTemplateVariable objectReference="ModelValue_499"/>
      <StateTemplateVariable objectReference="ModelValue_500"/>
      <StateTemplateVariable objectReference="ModelValue_501"/>
      <StateTemplateVariable objectReference="ModelValue_502"/>
      <StateTemplateVariable objectReference="ModelValue_505"/>
      <StateTemplateVariable objectReference="ModelValue_506"/>
      <StateTemplateVariable objectReference="ModelValue_507"/>
      <StateTemplateVariable objectReference="ModelValue_508"/>
      <StateTemplateVariable objectReference="ModelValue_509"/>
      <StateTemplateVariable objectReference="ModelValue_510"/>
      <StateTemplateVariable objectReference="ModelValue_513"/>
      <StateTemplateVariable objectReference="ModelValue_514"/>
      <StateTemplateVariable objectReference="ModelValue_515"/>
      <StateTemplateVariable objectReference="ModelValue_516"/>
      <StateTemplateVariable objectReference="ModelValue_517"/>
      <StateTemplateVariable objectReference="ModelValue_518"/>
      <StateTemplateVariable objectReference="ModelValue_521"/>
      <StateTemplateVariable objectReference="ModelValue_522"/>
      <StateTemplateVariable objectReference="ModelValue_523"/>
      <StateTemplateVariable objectReference="ModelValue_524"/>
      <StateTemplateVariable objectReference="ModelValue_525"/>
      <StateTemplateVariable objectReference="ModelValue_526"/>
      <StateTemplateVariable objectReference="ModelValue_529"/>
      <StateTemplateVariable objectReference="ModelValue_530"/>
      <StateTemplateVariable objectReference="ModelValue_531"/>
      <StateTemplateVariable objectReference="ModelValue_532"/>
      <StateTemplateVariable objectReference="ModelValue_533"/>
      <StateTemplateVariable objectReference="ModelValue_534"/>
      <StateTemplateVariable objectReference="ModelValue_537"/>
      <StateTemplateVariable objectReference="ModelValue_538"/>
      <StateTemplateVariable objectReference="ModelValue_539"/>
      <StateTemplateVariable objectReference="ModelValue_540"/>
      <StateTemplateVariable objectReference="ModelValue_541"/>
      <StateTemplateVariable objectReference="ModelValue_542"/>
      <StateTemplateVariable objectReference="ModelValue_545"/>
      <StateTemplateVariable objectReference="ModelValue_546"/>
      <StateTemplateVariable objectReference="ModelValue_547"/>
      <StateTemplateVariable objectReference="ModelValue_548"/>
      <StateTemplateVariable objectReference="ModelValue_549"/>
      <StateTemplateVariable objectReference="ModelValue_550"/>
      <StateTemplateVariable objectReference="ModelValue_553"/>
      <StateTemplateVariable objectReference="ModelValue_554"/>
      <StateTemplateVariable objectReference="ModelValue_555"/>
      <StateTemplateVariable objectReference="ModelValue_556"/>
      <StateTemplateVariable objectReference="ModelValue_557"/>
      <StateTemplateVariable objectReference="ModelValue_558"/>
      <StateTemplateVariable objectReference="ModelValue_561"/>
      <StateTemplateVariable objectReference="ModelValue_562"/>
      <StateTemplateVariable objectReference="ModelValue_563"/>
      <StateTemplateVariable objectReference="ModelValue_564"/>
      <StateTemplateVariable objectReference="ModelValue_565"/>
      <StateTemplateVariable objectReference="ModelValue_566"/>
      <StateTemplateVariable objectReference="ModelValue_569"/>
      <StateTemplateVariable objectReference="ModelValue_570"/>
      <StateTemplateVariable objectReference="ModelValue_571"/>
      <StateTemplateVariable objectReference="ModelValue_572"/>
      <StateTemplateVariable objectReference="ModelValue_573"/>
      <StateTemplateVariable objectReference="ModelValue_574"/>
      <StateTemplateVariable objectReference="ModelValue_577"/>
      <StateTemplateVariable objectReference="ModelValue_578"/>
      <StateTemplateVariable objectReference="ModelValue_579"/>
      <StateTemplateVariable objectReference="ModelValue_580"/>
      <StateTemplateVariable objectReference="ModelValue_581"/>
      <StateTemplateVariable objectReference="ModelValue_582"/>
      <StateTemplateVariable objectReference="ModelValue_585"/>
      <StateTemplateVariable objectReference="ModelValue_586"/>
      <StateTemplateVariable objectReference="ModelValue_587"/>
      <StateTemplateVariable objectReference="ModelValue_588"/>
      <StateTemplateVariable objectReference="ModelValue_589"/>
      <StateTemplateVariable objectReference="ModelValue_590"/>
      <StateTemplateVariable objectReference="ModelValue_593"/>
      <StateTemplateVariable objectReference="ModelValue_594"/>
      <StateTemplateVariable objectReference="ModelValue_595"/>
      <StateTemplateVariable objectReference="ModelValue_596"/>
      <StateTemplateVariable objectReference="ModelValue_597"/>
      <StateTemplateVariable objectReference="ModelValue_598"/>
      <StateTemplateVariable objectReference="ModelValue_601"/>
      <StateTemplateVariable objectReference="ModelValue_602"/>
      <StateTemplateVariable objectReference="ModelValue_603"/>
      <StateTemplateVariable objectReference="ModelValue_604"/>
      <StateTemplateVariable objectReference="ModelValue_605"/>
      <StateTemplateVariable objectReference="ModelValue_606"/>
      <StateTemplateVariable objectReference="ModelValue_609"/>
      <StateTemplateVariable objectReference="ModelValue_610"/>
      <StateTemplateVariable objectReference="ModelValue_611"/>
      <StateTemplateVariable objectReference="ModelValue_612"/>
      <StateTemplateVariable objectReference="ModelValue_613"/>
      <StateTemplateVariable objectReference="ModelValue_614"/>
      <StateTemplateVariable objectReference="ModelValue_617"/>
      <StateTemplateVariable objectReference="ModelValue_618"/>
      <StateTemplateVariable objectReference="ModelValue_619"/>
      <StateTemplateVariable objectReference="ModelValue_620"/>
      <StateTemplateVariable objectReference="ModelValue_621"/>
      <StateTemplateVariable objectReference="ModelValue_622"/>
      <StateTemplateVariable objectReference="ModelValue_625"/>
      <StateTemplateVariable objectReference="ModelValue_626"/>
      <StateTemplateVariable objectReference="ModelValue_627"/>
      <StateTemplateVariable objectReference="ModelValue_628"/>
      <StateTemplateVariable objectReference="ModelValue_629"/>
      <StateTemplateVariable objectReference="ModelValue_630"/>
      <StateTemplateVariable objectReference="ModelValue_633"/>
      <StateTemplateVariable objectReference="ModelValue_634"/>
      <StateTemplateVariable objectReference="ModelValue_635"/>
      <StateTemplateVariable objectReference="ModelValue_636"/>
      <StateTemplateVariable objectReference="ModelValue_637"/>
      <StateTemplateVariable objectReference="ModelValue_638"/>
      <StateTemplateVariable objectReference="ModelValue_641"/>
      <StateTemplateVariable objectReference="ModelValue_642"/>
      <StateTemplateVariable objectReference="ModelValue_643"/>
      <StateTemplateVariable objectReference="ModelValue_644"/>
      <StateTemplateVariable objectReference="ModelValue_645"/>
      <StateTemplateVariable objectReference="ModelValue_646"/>
      <StateTemplateVariable objectReference="ModelValue_649"/>
      <StateTemplateVariable objectReference="ModelValue_650"/>
      <StateTemplateVariable objectReference="ModelValue_651"/>
      <StateTemplateVariable objectReference="ModelValue_652"/>
      <StateTemplateVariable objectReference="ModelValue_653"/>
      <StateTemplateVariable objectReference="ModelValue_654"/>
      <StateTemplateVariable objectReference="ModelValue_657"/>
      <StateTemplateVariable objectReference="ModelValue_658"/>
      <StateTemplateVariable objectReference="ModelValue_659"/>
      <StateTemplateVariable objectReference="ModelValue_660"/>
      <StateTemplateVariable objectReference="ModelValue_661"/>
      <StateTemplateVariable objectReference="ModelValue_662"/>
      <StateTemplateVariable objectReference="ModelValue_665"/>
      <StateTemplateVariable objectReference="ModelValue_666"/>
      <StateTemplateVariable objectReference="ModelValue_667"/>
      <StateTemplateVariable objectReference="ModelValue_668"/>
      <StateTemplateVariable objectReference="ModelValue_669"/>
      <StateTemplateVariable objectReference="ModelValue_670"/>
      <StateTemplateVariable objectReference="ModelValue_673"/>
      <StateTemplateVariable objectReference="ModelValue_674"/>
      <StateTemplateVariable objectReference="ModelValue_675"/>
      <StateTemplateVariable objectReference="ModelValue_676"/>
      <StateTemplateVariable objectReference="ModelValue_677"/>
      <StateTemplateVariable objectReference="ModelValue_678"/>
      <StateTemplateVariable objectReference="ModelValue_681"/>
      <StateTemplateVariable objectReference="ModelValue_682"/>
      <StateTemplateVariable objectReference="ModelValue_683"/>
      <StateTemplateVariable objectReference="ModelValue_684"/>
      <StateTemplateVariable objectReference="ModelValue_685"/>
      <StateTemplateVariable objectReference="ModelValue_686"/>
      <StateTemplateVariable objectReference="ModelValue_689"/>
      <StateTemplateVariable objectReference="ModelValue_690"/>
      <StateTemplateVariable objectReference="ModelValue_691"/>
      <StateTemplateVariable objectReference="ModelValue_692"/>
      <StateTemplateVariable objectReference="ModelValue_693"/>
      <StateTemplateVariable objectReference="ModelValue_694"/>
      <StateTemplateVariable objectReference="ModelValue_697"/>
      <StateTemplateVariable objectReference="ModelValue_698"/>
      <StateTemplateVariable objectReference="ModelValue_699"/>
      <StateTemplateVariable objectReference="ModelValue_700"/>
      <StateTemplateVariable objectReference="ModelValue_701"/>
      <StateTemplateVariable objectReference="ModelValue_702"/>
      <StateTemplateVariable objectReference="ModelValue_705"/>
      <StateTemplateVariable objectReference="ModelValue_706"/>
      <StateTemplateVariable objectReference="ModelValue_707"/>
      <StateTemplateVariable objectReference="ModelValue_708"/>
      <StateTemplateVariable objectReference="ModelValue_709"/>
      <StateTemplateVariable objectReference="ModelValue_710"/>
      <StateTemplateVariable objectReference="ModelValue_713"/>
      <StateTemplateVariable objectReference="ModelValue_714"/>
      <StateTemplateVariable objectReference="ModelValue_715"/>
      <StateTemplateVariable objectReference="ModelValue_716"/>
      <StateTemplateVariable objectReference="ModelValue_717"/>
      <StateTemplateVariable objectReference="ModelValue_718"/>
      <StateTemplateVariable objectReference="ModelValue_721"/>
      <StateTemplateVariable objectReference="ModelValue_722"/>
      <StateTemplateVariable objectReference="ModelValue_723"/>
      <StateTemplateVariable objectReference="ModelValue_724"/>
      <StateTemplateVariable objectReference="ModelValue_725"/>
      <StateTemplateVariable objectReference="ModelValue_726"/>
      <StateTemplateVariable objectReference="ModelValue_729"/>
      <StateTemplateVariable objectReference="ModelValue_730"/>
      <StateTemplateVariable objectReference="ModelValue_731"/>
      <StateTemplateVariable objectReference="ModelValue_732"/>
      <StateTemplateVariable objectReference="ModelValue_733"/>
      <StateTemplateVariable objectReference="ModelValue_734"/>
      <StateTemplateVariable objectReference="ModelValue_737"/>
      <StateTemplateVariable objectReference="ModelValue_738"/>
      <StateTemplateVariable objectReference="ModelValue_739"/>
      <StateTemplateVariable objectReference="ModelValue_740"/>
      <StateTemplateVariable objectReference="ModelValue_741"/>
      <StateTemplateVariable objectReference="ModelValue_742"/>
      <StateTemplateVariable objectReference="ModelValue_745"/>
      <StateTemplateVariable objectReference="ModelValue_746"/>
      <StateTemplateVariable objectReference="ModelValue_747"/>
      <StateTemplateVariable objectReference="ModelValue_748"/>
      <StateTemplateVariable objectReference="ModelValue_749"/>
      <StateTemplateVariable objectReference="ModelValue_750"/>
      <StateTemplateVariable objectReference="ModelValue_753"/>
      <StateTemplateVariable objectReference="ModelValue_754"/>
      <StateTemplateVariable objectReference="ModelValue_755"/>
      <StateTemplateVariable objectReference="ModelValue_756"/>
      <StateTemplateVariable objectReference="ModelValue_757"/>
      <StateTemplateVariable objectReference="ModelValue_758"/>
      <StateTemplateVariable objectReference="ModelValue_761"/>
      <StateTemplateVariable objectReference="ModelValue_762"/>
      <StateTemplateVariable objectReference="ModelValue_763"/>
      <StateTemplateVariable objectReference="ModelValue_764"/>
      <StateTemplateVariable objectReference="ModelValue_765"/>
      <StateTemplateVariable objectReference="ModelValue_766"/>
      <StateTemplateVariable objectReference="ModelValue_769"/>
      <StateTemplateVariable objectReference="ModelValue_770"/>
      <StateTemplateVariable objectReference="ModelValue_771"/>
      <StateTemplateVariable objectReference="ModelValue_772"/>
      <StateTemplateVariable objectReference="ModelValue_773"/>
      <StateTemplateVariable objectReference="ModelValue_774"/>
      <StateTemplateVariable objectReference="ModelValue_777"/>
      <StateTemplateVariable objectReference="ModelValue_778"/>
      <StateTemplateVariable objectReference="ModelValue_779"/>
      <StateTemplateVariable objectReference="ModelValue_780"/>
      <StateTemplateVariable objectReference="ModelValue_781"/>
      <StateTemplateVariable objectReference="ModelValue_782"/>
      <StateTemplateVariable objectReference="ModelValue_785"/>
      <StateTemplateVariable objectReference="ModelValue_786"/>
      <StateTemplateVariable objectReference="ModelValue_787"/>
      <StateTemplateVariable objectReference="ModelValue_788"/>
      <StateTemplateVariable objectReference="ModelValue_789"/>
      <StateTemplateVariable objectReference="ModelValue_790"/>
      <StateTemplateVariable objectReference="ModelValue_793"/>
      <StateTemplateVariable objectReference="ModelValue_794"/>
      <StateTemplateVariable objectReference="ModelValue_795"/>
      <StateTemplateVariable objectReference="ModelValue_796"/>
      <StateTemplateVariable objectReference="ModelValue_797"/>
      <StateTemplateVariable objectReference="ModelValue_798"/>
      <StateTemplateVariable objectReference="ModelValue_801"/>
      <StateTemplateVariable objectReference="ModelValue_802"/>
      <StateTemplateVariable objectReference="ModelValue_803"/>
      <StateTemplateVariable objectReference="ModelValue_804"/>
      <StateTemplateVariable objectReference="ModelValue_805"/>
      <StateTemplateVariable objectReference="ModelValue_806"/>
      <StateTemplateVariable objectReference="ModelValue_809"/>
      <StateTemplateVariable objectReference="ModelValue_810"/>
      <StateTemplateVariable objectReference="ModelValue_811"/>
      <StateTemplateVariable objectReference="ModelValue_812"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 -70 -14 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.20000000000000001 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.02 0.20000000000000001 -65 8 30 0 0.5 10 -20 20 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_34" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_23" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_35" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Report reference="Report_24" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="8000"/>
        <Parameter name="StepSize" type="float" value="0.050000000000000003"/>
        <Parameter name="Duration" type="float" value="400"/>
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
    <Task key="Task_36" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_37" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_25" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_38" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_26" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_39" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_27" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_40" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_28" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_34"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_41" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_29" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_42" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_30" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_43" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_31" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_44" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_32" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_45" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_46" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_33" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_34"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_47" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_23" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_24" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_25" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_26" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_27" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_28" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_29" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_30" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_31" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_32" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_33" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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