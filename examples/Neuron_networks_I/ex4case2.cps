<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2024-08-15T17:08:46Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <Model key="Model_1" name="a set of 2 replicas of RSA neuron" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
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
        <dcterms:W3CDTF>2024-07-01T17:15:43+00:00</dcterms:W3CDTF>
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
        <dcterms:W3CDTF>2024-08-15T12:39:27.333315</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><p>Processed with sbmodelr to produce a set of 2 replicas of RSA_neuron.cps</p><pre style="font-size:small">../../sbmodelr --output ex4case2.cps -n fb2.dot --ode-synaptic V --synapse-g 0.08 --cn 0 uni RSA_neuron.cps 2</pre><p>notes of original file below:</p><hr /><h1>RSA Neuron</h1>
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
      <ModelValue key="ModelValue_0" name="V_K_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="V_Na_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="V_L_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="V_Ca_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="V_T_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="C_M_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="g_K_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="g_M_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="g_Ca_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="g_Na_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="g_L_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="tau_max_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="I_inj_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="V_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_K_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>^4*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Na_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>^3*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Na_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_L_1],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_L_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_M_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_1],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Ca_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>^2*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Ca_1],Reference=Value>))/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[C_M_1],Reference=Value>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_c_V_2\,1_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_2\,1],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="alpha_n_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="alpha_m_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="alpha_h_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="p_inf_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="alpha_q_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="alpha_s_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="beta_n_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="beta_m_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="beta_h_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="beta_s_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="beta_q_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="n_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_n_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_n_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="m_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_m_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_m_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="h_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_h_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_h_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="p_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_inf_1],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_1],Reference=Value>)/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_p_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="q_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_q_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_q_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="s_1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_s_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_s_1],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="tau_p_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_max_1],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="pulse_on_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="pulse_off_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="pulse_width_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="pulse_intensity_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="pulse_rate_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="V_K_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="V_Na_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="V_L_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="V_Ca_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="V_T_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="C_M_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="g_K_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="g_M_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="g_Ca_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="g_Na_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="g_L_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="tau_max_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="I_inj_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="V_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_K_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>^4*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Na_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>^3*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Na_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_L_2],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_L_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_M_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_2],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Ca_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>^2*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Ca_2],Reference=Value>))/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[C_M_2],Reference=Value>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_c_V_1\,2_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="alpha_n_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="alpha_m_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="alpha_h_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="p_inf_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="alpha_q_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="alpha_s_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="beta_n_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="beta_m_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="beta_h_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="beta_s_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="beta_q_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="n_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_n_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_n_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="m_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_m_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_m_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="h_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_h_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_h_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="p_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_inf_2],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_2],Reference=Value>)/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_p_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="q_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_q_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_q_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="s_2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_s_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>)-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_s_2],Reference=Value>*&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="tau_p_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_max_2],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="pulse_on_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="pulse_off_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="pulse_width_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="pulse_intensity_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="pulse_rate_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="V0_V_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="tau_r_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="tau_d_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="Vsyn_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="br_V_1,2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-2],Reference=Value>-1/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>))-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="g_c_V_1,2_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="tau_r_V_synapse_2-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="tau_d_V_synapse_2-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Vsyn_V_synapse_2-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="br_V_2,1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-1],Reference=Value>-1/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-1],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_2\,1],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>))-&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_2\,1],Reference=Value>/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="g_c_V_2,1_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="pulse_on_1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time> > &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_1],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1],Reference=InitialValue>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_intensity_1],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_width_1],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="pulses_off_1" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time> > &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_1],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1],Reference=InitialValue>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_1]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time>-log(uniform(0,1))/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_rate_1],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="pulse_on_2" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time> > &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_2],Reference=Value> and false
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2],Reference=InitialValue>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_intensity_2],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time>+&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_width_2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="pulses_off_2" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time> > &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_2],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2],Reference=InitialValue>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_2]">
            <Expression>
              &lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time>-log(uniform(0,1))/&lt;CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_rate_2],Reference=Value>
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
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_1]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Na_1]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_L_1]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Ca_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_1]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[C_M_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_K_1]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_M_1]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Ca_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Na_1]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_L_1]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_max_1]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_n_1]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_m_1]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_h_1]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_inf_1]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_q_1]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_s_1]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_n_1]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_m_1]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_h_1]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_s_1]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_q_1]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_1]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_1]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_1]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_1]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_1]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_1]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_p_1]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_1]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_width_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_intensity_1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_rate_1]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_K_2]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Na_2]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_L_2]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_Ca_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_T_2]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[C_M_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_K_2]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_M_2]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Ca_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_Na_2]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_L_2]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_max_2]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_n_2]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_m_2]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_h_2]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_inf_2]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_q_2]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[alpha_s_2]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_n_2]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_m_2]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_h_2]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_s_2]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[beta_q_2]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[n_2]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[m_2]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[h_2]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[p_2]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[q_2]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[s_2]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_p_2]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_on_2]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_off_2]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_width_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_intensity_2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[pulse_rate_2]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V0_V_synapse]" value="-20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-2]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_1\,2]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_c_V_1\,2_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-1]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_2\,1]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[g_c_V_2\,1_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 0 0 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -20 0.5 10 20 0.080000000000000002 0.5 10 20 0.080000000000000002 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <PlotSpecification name="injected current" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value="time (ms)"/>
      <Parameter name="y axis" type="string" value="current dens. (uA/cm^2)"/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="I_inj_1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="I_inj_2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[I_inj_2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="membrane potential" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value="time (ms)"/>
      <Parameter name="y axis" type="string" value="potential (mV)"/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="V_1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[V_2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="bound receptors" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value="time (ms)"/>
      <Parameter name="y axis" type="string" value="fraction"/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="br_V_1,2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="br_V_2,1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 2 replicas of RSA neuron,Vector=Values[br_V_2\,1],Reference=Value"/>
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
