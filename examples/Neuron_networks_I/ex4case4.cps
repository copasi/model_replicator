<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 295) (http://www.copasi.org) at 2024-08-30T19:25:13Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="295" copasiSourcesModified="0">
  <Model key="Model_1" name="a set of 6 replicas of RSA neuron" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
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
        <dcterms:W3CDTF>2024-08-30T15:17:01.092094</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><p>Processed with sbmodelr to produce a set of 6 replicas of RSA_neuron.cps</p><pre style="font-size:small">sbmodelr --output scpg.cps -n scpg.dot --ode-synaptic V --synapse-g 0.08 --cn 0 uni RSA_neuron.cps 6</pre><p>notes of original file below:</p><hr /><h1>RSA Neuron</h1>
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_1],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_1],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,1_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,1_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,1],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-15)/5)-1))
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-13)/4)-1))
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
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-17)/18)
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
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/10)+1)
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
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/3.8)-1)
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
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/50)
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
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-10)/40)
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
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/5)-1)
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
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1],Reference=Value>-40)/5)+1)
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
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/28)+1)
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
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)/17)
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_1],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_1],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_1],Reference=Value>
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_1],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_1],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_1],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_1],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_1],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_1],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_1],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_1],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>+35)/20))
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_2],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_2],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,2_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,2_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,2],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-15)/5)-1))
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-13)/4)-1))
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
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-17)/18)
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
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/10)+1)
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
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/3.8)-1)
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
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/50)
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
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-10)/40)
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
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/5)-1)
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
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2],Reference=Value>-40)/5)+1)
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
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/28)+1)
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
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)/17)
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_2],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_2],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_2],Reference=Value>
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
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_2],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_2],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_2],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_2],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_2],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_2],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_2],Reference=Value>
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
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_2],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>+35)/20))
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
      <ModelValue key="ModelValue_74" name="V_K_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="V_Na_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="V_L_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="V_Ca_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="V_T_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="C_M_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="g_K_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="g_M_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="g_Ca_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="g_Na_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="g_L_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="tau_max_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="I_inj_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="V_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_3],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_3],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_3],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_3],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_3],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,3_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,3_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,3],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="alpha_n_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="alpha_m_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="alpha_h_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="p_inf_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="alpha_q_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="alpha_s_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="beta_n_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="beta_m_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="beta_h_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="beta_s_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="beta_q_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="n_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_3],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="m_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_3],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="h_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_3],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="p_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_3],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_3],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="q_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_3],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="s_3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_3],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_3],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_3],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_3],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="tau_p_3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_3],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="pulse_on_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="pulse_off_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="pulse_width_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="pulse_intensity_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="pulse_rate_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="V_K_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="V_Na_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="V_L_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="V_Ca_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="V_T_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="C_M_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="g_K_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="g_M_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="g_Ca_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="g_Na_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="g_L_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="tau_max_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="I_inj_4" simulationType="fixed" addNoise="false">
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="V_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_4],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_4],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_4],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_4],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_4],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,4_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,4_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,4],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="alpha_n_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="alpha_m_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_126">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="alpha_h_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_127">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="p_inf_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_128">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="alpha_q_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_129">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="alpha_s_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_130">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="beta_n_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_131">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="beta_m_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_132">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_133" name="beta_h_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_133">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_134" name="beta_s_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_134">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="beta_q_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_135">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="n_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_136">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_4],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="m_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_137">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_4],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="h_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_138">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_4],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="p_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_139">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_4],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_4],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="q_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_140">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_4],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="s_4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_141">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_4],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_4],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_4],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_4],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="tau_p_4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_142">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_4],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="pulse_on_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_143">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="pulse_off_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_144">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="pulse_width_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_145">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="pulse_intensity_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_146">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="pulse_rate_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_147">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="V_K_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_148">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="V_Na_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_149">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="V_L_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_150">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_151" name="V_Ca_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_151">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_152" name="V_T_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_152">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="C_M_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_153">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="g_K_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_154">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_155" name="g_M_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_155">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="g_Ca_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_156">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="g_Na_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_157">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="g_L_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_158">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="tau_max_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_159">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="I_inj_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_160">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="V_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_161">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_5],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_5],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_5],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_5],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_5],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,5_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,5_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,5],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="alpha_n_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_162">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="alpha_m_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_163">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="alpha_h_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_164">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="p_inf_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_165">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="alpha_q_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_166">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="alpha_s_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_167">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="beta_n_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_168">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="beta_m_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_169">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="beta_h_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_170">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="beta_s_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_171">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="beta_q_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_172">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="n_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_173">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_5],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="m_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_174">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_5],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="h_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_175">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_5],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="p_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_176">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_5],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_5],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="q_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_177">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_5],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="s_5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_178">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_5],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_5],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_5],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_5],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="tau_p_5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_179">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_5],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="pulse_on_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_180">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="pulse_off_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_181">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="pulse_width_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_182">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="pulse_intensity_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_183">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="pulse_rate_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_184">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="V_K_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_185">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="V_Na_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_186">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="V_L_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_187">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="V_Ca_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_188">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="V_T_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_189">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="C_M_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_190">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="g_K_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_191">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_192" name="g_M_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_192">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_193" name="g_Ca_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_193">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="g_Na_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_194">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="g_L_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_195">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="tau_max_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_196">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="I_inj_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_197">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="V_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_198">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_6],Reference=Value>^4*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_6],Reference=Value>^3*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_6],Reference=Value>^2*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_6],Reference=Value>))/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_6],Reference=Value>+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,6_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>)+&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,6_synapse],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,6],Reference=Value>*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>)
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="alpha_n_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_199">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="alpha_m_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_200">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="alpha_h_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_201">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="p_inf_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_202">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>+35)/10)+1)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="alpha_q_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_203">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="alpha_s_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_204">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="beta_n_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_205">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_206" name="beta_m_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_206">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          This equation is wrong on Giannari et al. but is correctly shown on Pospischil et al.  (In Giannari they missed the denominator)
        </Comment>
        <Expression>
          0.28*(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-40)/(exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_207" name="beta_h_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_207">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_208" name="beta_s_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_208">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_209" name="beta_q_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_209">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_210" name="n_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_210">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_6],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_211" name="m_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_211">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_6],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_212" name="h_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_212">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_6],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_213" name="p_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_213">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_6],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_6],Reference=Value>)/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_214" name="q_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_214">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_6],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_215" name="s_6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_215">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_6],Reference=Value>*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_6],Reference=Value>)-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_6],Reference=Value>*&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_6],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_216" name="tau_p_6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_216">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_6],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value>+35)/20))
        </Expression>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_217" name="pulse_on_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_217">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_218" name="pulse_off_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_218">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_219" name="pulse_width_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_219">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_220" name="pulse_intensity_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_220">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_221" name="pulse_rate_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_221">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_222" name="V0_V_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_222">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="tau_r_V_synapse_1-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_223">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="tau_d_V_synapse_1-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_224">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="Vsyn_V_synapse_1-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_225">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="br_V_1,1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_226">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-1],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-1],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,1],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,1],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="g_c_V_1,1_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_227">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="tau_r_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_228">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="tau_d_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_229">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_230" name="Vsyn_V_synapse_1-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_230">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_231" name="br_V_1,2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_231">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-2],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,2],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_232" name="g_c_V_1,2_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_232">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_233" name="tau_r_V_synapse_4-4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_233">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="tau_d_V_synapse_4-4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_234">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="Vsyn_V_synapse_4-4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_235">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="br_V_4,4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_236">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-4],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-4],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,4],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,4],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-4],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="g_c_V_4,4_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_237">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="tau_r_V_synapse_4-5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_238">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="tau_d_V_synapse_4-5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_239">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="Vsyn_V_synapse_4-5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_240">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="br_V_4,5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_241">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-5],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-5],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,5],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,5],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-5],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="g_c_V_4,5_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_242">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="tau_r_V_synapse_2-4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_243">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="tau_d_V_synapse_2-4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_245" name="Vsyn_V_synapse_2-4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_246" name="br_V_2,4" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_246">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-4],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-4],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,4],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,4],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-4],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="g_c_V_2,4_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_247">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="tau_r_V_synapse_2-5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_248">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="tau_d_V_synapse_2-5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_249">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="Vsyn_V_synapse_2-5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_251" name="br_V_2,5" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_251">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-5],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-5],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,5],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,5],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-5],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="g_c_V_2,5_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_252">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="tau_r_V_synapse_2-6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_253">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="tau_d_V_synapse_2-6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_254">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="Vsyn_V_synapse_2-6" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_256" name="br_V_2,6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_256">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-6],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-6],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,6],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,6],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-6],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="g_c_V_2,6_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_257">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="tau_r_V_synapse_5-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_258">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="tau_d_V_synapse_5-1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_259">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="Vsyn_V_synapse_5-1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_261" name="br_V_5,1" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_261">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-1],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-1],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,1],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,1],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="g_c_V_5,1_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_262">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_263" name="tau_r_V_synapse_5-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_263">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_264" name="tau_d_V_synapse_5-2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_264">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_265" name="Vsyn_V_synapse_5-2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_266" name="br_V_5,2" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_266">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-2],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-2],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,2],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,2],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_267" name="g_c_V_5,2_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_267">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_268" name="tau_r_V_synapse_5-3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_268">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_269" name="tau_d_V_synapse_5-3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_269">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_270" name="Vsyn_V_synapse_5-3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_271" name="br_V_5,3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_271">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-3],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-3],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,3],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,3],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_272" name="g_c_V_5,3_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_272">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_273" name="tau_r_V_synapse_1-3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_273">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_274" name="tau_d_V_synapse_1-3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_274">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_275" name="Vsyn_V_synapse_1-3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_275">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_276" name="br_V_1,3" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_276">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-3],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-3],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,3],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,3],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-3],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_277" name="g_c_V_1,3_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_277">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_278" name="tau_r_V_synapse_4-6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_278">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_279" name="tau_d_V_synapse_4-6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_279">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_280" name="Vsyn_V_synapse_4-6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_280">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_281" name="br_V_4,6" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_281">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-6],Reference=Value>-1/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-6],Reference=Value>)*(1-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,6],Reference=Value>)/(1+exp(&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse],Reference=Value>-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value>))-&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,6],Reference=Value>/&lt;CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-6],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_282" name="g_c_V_4,6_synapse" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_282">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
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
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_1]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_1]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_1]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_1]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_1]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_1]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_1]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_1]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_1]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_1]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_1]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_1]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_1]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_1]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_1]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_1]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_1]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_1]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_1]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_1]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_1]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_1]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_1]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_1]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_1]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_1]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_1]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_1]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_1]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_2]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_2]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_2]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_2]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_2]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_2]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_2]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_2]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_2]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_2]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_2]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_2]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_2]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_2]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_2]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_2]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_2]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_2]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_2]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_2]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_2]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_2]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_2]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_2]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_2]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_2]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_2]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_2]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_2]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_2]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_3]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_3]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_3]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_3]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_3]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_3]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_3]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_3]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_3]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_3]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_3]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_3]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_3]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_3]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_3]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_3]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_3]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_3]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_3]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_3]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_3]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_3]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_3]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_3]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_3]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_3]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_3]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_3]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_3]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_3]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_3]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_4]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_4]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_4]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_4]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_4]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_4]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_4]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_4]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_4]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_4]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_4]" value="0.51900000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_4]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_4]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_4]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_4]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_4]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_4]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_4]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_4]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_4]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_4]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_4]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_4]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_4]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_4]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_4]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_4]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_4]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_4]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_4]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_4]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_4]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_4]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_4]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_5]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_5]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_5]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_5]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_5]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_5]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_5]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_5]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_5]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_5]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_5]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_5]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_5]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_5]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_5]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_5]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_5]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_5]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_5]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_5]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_5]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_5]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_5]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_5]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_5]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_5]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_5]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_5]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_5]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_5]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_5]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_K_6]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Na_6]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_L_6]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_Ca_6]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_T_6]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[C_M_6]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_K_6]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_M_6]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Ca_6]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_Na_6]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_L_6]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_max_6]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[I_inj_6]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_n_6]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_m_6]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_h_6]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_inf_6]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_q_6]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[alpha_s_6]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_n_6]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_m_6]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_h_6]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_s_6]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[beta_q_6]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[n_6]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[m_6]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[h_6]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[p_6]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[q_6]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[s_6]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_p_6]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_on_6]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_off_6]" value="2500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_width_6]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_intensity_6]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[pulse_rate_6]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V0_V_synapse]" value="-20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-1]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,1]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,1_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-2]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,2]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,2_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-4]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-4]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,4]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,4_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-5]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-5]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-5]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,5]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,5_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-4]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-4]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,4]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,4_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-5]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-5]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-5]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,5]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,5_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_2-6]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_2-6]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_2-6]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_2\,6]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_2\,6_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-1]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,1]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,1_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-2]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,2]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,2_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_5-3]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_5-3]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_5-3]" value="-80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_5\,3]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_5\,3_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_1-3]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_1-3]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_1-3]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_1\,3]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_1\,3_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_r_V_synapse_4-6]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[tau_d_V_synapse_4-6]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[Vsyn_V_synapse_4-6]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[br_V_4\,6]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[g_c_V_4\,6_synapse]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
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
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_266"/>
      <StateTemplateVariable objectReference="ModelValue_271"/>
      <StateTemplateVariable objectReference="ModelValue_276"/>
      <StateTemplateVariable objectReference="ModelValue_281"/>
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
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
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
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_237"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
      <StateTemplateVariable objectReference="ModelValue_263"/>
      <StateTemplateVariable objectReference="ModelValue_264"/>
      <StateTemplateVariable objectReference="ModelValue_265"/>
      <StateTemplateVariable objectReference="ModelValue_267"/>
      <StateTemplateVariable objectReference="ModelValue_268"/>
      <StateTemplateVariable objectReference="ModelValue_269"/>
      <StateTemplateVariable objectReference="ModelValue_270"/>
      <StateTemplateVariable objectReference="ModelValue_272"/>
      <StateTemplateVariable objectReference="ModelValue_273"/>
      <StateTemplateVariable objectReference="ModelValue_274"/>
      <StateTemplateVariable objectReference="ModelValue_275"/>
      <StateTemplateVariable objectReference="ModelValue_277"/>
      <StateTemplateVariable objectReference="ModelValue_278"/>
      <StateTemplateVariable objectReference="ModelValue_279"/>
      <StateTemplateVariable objectReference="ModelValue_280"/>
      <StateTemplateVariable objectReference="ModelValue_282"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 -71.910681987541821 0.0022222453408539942 0.00044978431039494646 0.99992644412077247 0.024338216117071081 2.3214304254075944e-06 0.66350877785683593 0 0 0 0 0 0 0 0 0 0 0 0 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 0.0021177679639737155 0.007019440281679285 0.78783633716905699 0.024338216117071085 1.8195439396980193e-06 0.0014845946197623323 0.95086790154804823 15.599216970044985 5.7954257344224138e-05 0.000752895929432276 0.78380109773648854 88.724338492363756 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0.5 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0.51900000000000002 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -90 56 -70.299999999999997 0 -56.200000000000003 1 6 0.074999999999999997 0 56 0.020500000000000001 608 0 5 2500 1 10 0.040000000000000001 -20 0.5 10 20 0.080000000000000002 0.5 10 20 0.080000000000000002 0.5 10 20 0.080000000000000002 0.5 10 20 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 -80 0.080000000000000002 0.5 10 20 0.080000000000000002 0.5 10 20 0.080000000000000002 
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
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="30000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="3000"/>
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
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_3" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_5" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V_6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=a set of 6 replicas of RSA neuron,Vector=Values[V_6],Reference=Value"/>
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
