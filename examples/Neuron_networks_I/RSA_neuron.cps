<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2024-08-09T19:34:09Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <Model key="Model_0" name="RSA neuron" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Pospischil et al. (2008) Minimal Hodgkin–Huxley type models for different classes of cortical and thalamic neurons. Biological Cybernetics 99:427–441</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1007/s00422-008-0263-8"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Giannari and Astolfi (2022) Model design for networks of heterogeneous Hodgkin–Huxley neurons. Neurocomputing 496:147–157</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.neucom.2022.04.115"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-07-01T17:15:43Z</dcterms:W3CDTF>
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
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001508"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>RSA Neuron</h1>
<p>This is a 9-ODE model of a regular spiking neuron with adaptation (RSA), inspired by the Hodgin-Huxley model, first proposed by Pospischil et al. (2008) and re-used in Giannari and Astolfi (2022).</p>

<p>Since this model is based on voltages and intensities, all variables and differential equations are defined under Global Quantities (there are no reactions and no species here). The model includes a sequence of current pulses (10 &micro;A/cm<sup>2</sup> for 1ms), spaced according to a Poisson distribution with an average of 1 pulse per 25 ms, which eventually cause action potentials.</p>

<p><b>References</b>:</p>
<ul>
<li>Pospischil M, Toledo-Rodriguez M, Monier C, Piwkowska Z, Bal T, Frégnac Y, Markram H, Destexhe A (2008) <a href="https://doi.org/10.1007/s00422-008-0263-8">Minimal Hodgkin–Huxley type models for different classes of cortical and thalamic neurons</a>. Biological Cybernetics 99:427–441</li>
<li>Giannari AG, Astolfi A (2022) <a href="https://doi.org/10.1016/j.neucom.2022.04.115">Model design for networks of heterogeneous Hodgkin–Huxley neurons</a>. Neurocomputing 496:147–157</li>
</ul> 

<p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p>
</body>
    </Comment>
    <ListOfModelValues>
      <ModelValue key="ModelValue_80" name="V_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="V_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="V_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="V_Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="V_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="C_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="g_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="g_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="g_Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="g_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="g_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="tau_max" simulationType="fixed" addNoise="false">
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="I_inj" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="V" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=RSA neuron,Vector=Values[I_inj],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[g_K],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[n],Reference=Value>^4*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_K],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[g_Na],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[m],Reference=Value>^3*&lt;CN=Root,Model=RSA neuron,Vector=Values[h],Reference=Value>*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_Na],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[g_L],Reference=Value>*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_L],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[g_M],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[p],Reference=Value>*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_K],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[g_Ca],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[q],Reference=Value>^2*&lt;CN=Root,Model=RSA neuron,Vector=Values[s],Reference=Value>*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_Ca],Reference=Value>))/&lt;CN=Root,Model=RSA neuron,Vector=Values[C_M],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="alpha_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="alpha_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="alpha_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="p_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="alpha_q" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="alpha_s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="beta_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="beta_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-40)/(exp((&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="beta_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[V_T],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="beta_s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="beta_q" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="n" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[alpha_n],Reference=Value>*(1-&lt;CN=Root,Model=RSA neuron,Vector=Values[n],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[beta_n],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[n],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="m" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[alpha_m],Reference=Value>*(1-&lt;CN=Root,Model=RSA neuron,Vector=Values[m],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[beta_m],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[m],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="h" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[alpha_h],Reference=Value>*(1-&lt;CN=Root,Model=RSA neuron,Vector=Values[h],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[beta_h],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[h],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="p" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=RSA neuron,Vector=Values[p_inf],Reference=Value>-&lt;CN=Root,Model=RSA neuron,Vector=Values[p],Reference=Value>)/&lt;CN=Root,Model=RSA neuron,Vector=Values[tau_p],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="q" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[alpha_q],Reference=Value>*(1-&lt;CN=Root,Model=RSA neuron,Vector=Values[q],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[beta_q],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[q],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="s" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[alpha_s],Reference=Value>*(1-&lt;CN=Root,Model=RSA neuron,Vector=Values[s],Reference=Value>)-&lt;CN=Root,Model=RSA neuron,Vector=Values[beta_s],Reference=Value>*&lt;CN=Root,Model=RSA neuron,Vector=Values[s],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="tau_p" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=RSA neuron,Vector=Values[tau_max],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="pulse_on" simulationType="fixed" addNoise="false">
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="pulse_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="pulse_width" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="pulse_intensity" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="pulse_rate" simulationType="fixed" addNoise="false">
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_3" name="pulse_on" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=RSA neuron,Reference=Time> > &lt;CN=Root,Model=RSA neuron,Vector=Values[pulse_on],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=RSA neuron,Vector=Values[I_inj]">
            <Expression>
              &lt;CN=Root,Model=RSA neuron,Vector=Values[I_inj],Reference=InitialValue>+&lt;CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=RSA neuron,Vector=Values[pulse_off]">
            <Expression>
              &lt;CN=Root,Model=RSA neuron,Reference=Time>+&lt;CN=Root,Model=RSA neuron,Vector=Values[pulse_width],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="pulses_off" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=RSA neuron,Reference=Time> > &lt;CN=Root,Model=RSA neuron,Vector=Values[pulse_off],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=RSA neuron,Vector=Values[I_inj]">
            <Expression>
              &lt;CN=Root,Model=RSA neuron,Vector=Values[I_inj],Reference=InitialValue>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=RSA neuron,Vector=Values[pulse_on]">
            <Expression>
              &lt;CN=Root,Model=RSA neuron,Reference=Time>-log(uniform(0,1))/&lt;CN=Root,Model=RSA neuron,Vector=Values[pulse_rate],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
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
          <ModelParameter cn="CN=Root,Model=RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_L]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_K]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_M]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_L]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_n]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_m]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_h]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p_inf]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_q]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_s]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_n]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_m]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_h]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_s]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_q]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[n]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[m]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[h]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[q]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[s]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_p]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_on]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_off]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_width]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="FS">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_L]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[C_M]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_K]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_M]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_L]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_max]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V]" value="-69.999847003546762" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_n]" value="0.0029133183570176861" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_m]" value="0.01056965479937025" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_h]" value="0.70848782530935417" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p_inf]" value="0.029312666075664989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_q]" value="2.880497139266984e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_s]" value="0.0014289287704627074" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_n]" value="0.90651200514540697" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_m]" value="15.06427701585543" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_h]" value="8.4928887265952046e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_s]" value="0.00079952972051844492" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_q]" value="0.70047118386979046" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[n]" value="0.0032034717768774741" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[m]" value="0.0007011450948914452" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[h]" value="0.99988014090753163" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p]" value="0.029312666075664986" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[q]" value="4.1122109808166861e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[s]" value="0.64121848183281871" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_p]" value="0.15802738699255947" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_on]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_off]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_width]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="RSA">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_L]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_K]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_M]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_L]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_n]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_m]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_h]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p_inf]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_q]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_s]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_n]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_m]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_h]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_s]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_q]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[n]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[m]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[h]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[q]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[s]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_p]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_on]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_off]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_width]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate]" value="10" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="IB">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_L]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_Ca]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_K]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_M]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Ca]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[g_L]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[V]" value="-71.422484777388902" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_n]" value="0.0022983668646933729" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_m]" value="0.0077965530019377272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_h]" value="0.76675575380063665" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p_inf]" value="0.025524801576272842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_q]" value="2.0464977745800642e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[alpha_s]" value="0.0014701696575933458" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_n]" value="0.93933315867971978" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_m]" value="15.462542748973913" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_h]" value="6.3898250923269661e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_s]" value="0.00076458057743151911" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[beta_q]" value="0.76161242931334339" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[n]" value="0.0024408346602080356" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[m]" value="0.00050396780896343749" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[h]" value="0.9999166710832823" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[p]" value="0.025524801576272835" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[q]" value="2.687052097323317e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[s]" value="0.65786754803808833" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[tau_p]" value="90.57208370923459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_on]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_off]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_width]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="0"/>
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
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-10"/>
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
    <PlotSpecification name="time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value="time"/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="I_inj" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[I_inj],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[V],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="h" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[h],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="m" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[m],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="n" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[n],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="p" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[p],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="q" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[q],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="s" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=RSA neuron,Vector=Values[s],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_2" associatedEntityKey="Task_11" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity],Reference=InitialValue" objectType="float" objectValue="10" minValue="0" maxValue="10" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_3" associatedEntityKey="Task_11" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_width],Reference=InitialValue" objectType="float" objectValue="1" minValue="0" maxValue="100000" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_4" associatedEntityKey="Task_11" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate],Reference=InitialValue" objectType="float" objectValue="0.04" minValue="0.01" maxValue="1000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_5" associatedEntityKey="Task_11" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_on],Reference=InitialValue" objectType="float" objectValue="5" minValue="0.1" maxValue="500" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_6" associatedEntityKey="Task_12" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_intensity],Reference=InitialValue" objectType="float" objectValue="10" minValue="-10" maxValue="10" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_7" associatedEntityKey="Task_12" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_rate],Reference=InitialValue" objectType="float" objectValue="0.04" minValue="0.0001" maxValue="2540.97" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_12" objectCN="CN=Root,Model=RSA neuron,Vector=Values[pulse_width],Reference=InitialValue" objectType="float" objectValue="1" minValue="0.1" maxValue="10" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
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
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
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
    <UnitDefinition key="Unit_7" name="ampere" symbol="A">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        A
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
    <UnitDefinition key="Unit_23" name="farad" symbol="F">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_22">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-2*kg^-1*s^4*A^2
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
    <UnitDefinition key="Unit_51" name="siemens" symbol="S">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-2*kg^-1*s^3*A^2
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_59" name="volt" symbol="V">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^2*kg*s^-3*A^-1
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
