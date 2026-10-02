

*Forests* **2013**, *4*, 1-27; doi:10.3390/f4010001

OPEN ACCESS

# forests
ISSN 1999-4907
www.mdpi.com/journal/forests

*Article*

# **The Validation of the Mixedwood Growth Model (MGM) for Use in Forest Management Decision Making**

**Mike Bokalo *, Kenneth J. Stadt, Philip G. Comeau and Stephen J. Titus**

Department of Renewable Resources, 751 General Services Building, University of Alberta, Edmonton, AB, T6G 2H1, Canada; E-Mails: ken.stadt@ualberta.ca (K.J.S.); phil.comeau@ualberta.ca (P.G.C.); steve.titus@ualberta.ca (S.J.T.)

* * Author to whom correspondence should be addressed; E-Mail: mike.bokalo@ualberta.ca; Tel.: +1-780-492-9038; Fax: +1-780-492-4323.

*Italic:* Received: 26 October 2012; *in revised form:* 12 December 2012 / *Accepted:* 18 December 2012 / *Published:* 7 January 2013

**Abstract:** **Abstract:** We evaluated the Mixedwood Growth Model (MGM) at a whole model scale for pure and mixed species stands of aspen and white spruce in the western boreal forest. MGM is an individual tree-based, distance-independent growth model, designed to evaluate growth and yield implications relating to the management of white spruce, black spruce, aspen, lodgepole pine, and mixedwood stands in Alberta, British Columbia, Saskatchewan, and Manitoba. Our validation compared stand-level model predictions against re-measured data (volume, basal area, diameter at breast height (DBH), average and top height and density) from permanent sample plots using combined analysis of residual plots, bias statistics, efficiency and an innovative application of the equivalence test. For state variables, the model effectively simulated juvenile and mature stages of stand development for both pure and mixed species stands of aspen and white spruce in Alberta. MGM overestimates increment in older stands likely due to age-related pathology and weather-related stand damage. We identified underestimates of deciduous density and volume in Saskatchewan. MGM performs well for increment in postharvest stands less than 30 years of age. These results illustrate the comprehensive application of validation metrics to evaluate a complex model, and provide support for the use of MGM in management planning.

**Keywords:** forest modeling; model evaluation; individual tree model; boreal forest

---



*Forests* **2013**, *4* 2

# 1. Introduction

The Mixedwood Growth Model (MGM) [1] is a deterministic, distance-independent, individual tree-based stand growth model developed for the western Canadian boreal forest. The model was developed to assist decision makers in estimating growth and yield outcomes for a range of management practices. Recent publications by *Pitt et al.* [2], *Comeau et al.* [3] and Farnden [4] demonstrate the use of MGM as a tool to link stand interventions or surveys to future yield. As MGM was developed, various growth and mortality relationships were published, typically accompanied by tree-level and stand-level validation [5]. However, in response to a growing need to characterize yield trajectories for mixed and pure post-harvest stands subject to silvicultural interventions, new and improved growth and mortality functions that better account for the interactions between trembling aspen and white spruce have been developed. This manuscript provides the first peer-reviewed journal publication examining the whole model behavior of MGM, where the component relationships and their interactions are validated at the stand level.

Model evaluation assesses the suitability of a selected modeling approach for a given purpose [6]. It begins early in the model design and development phase, and should continue for the life of the model [7]. The process should be both qualitative and quantitative [8]. Model evaluation should define the evaluation criteria; it should include a model description which identifies the modeling approach, the growth functions, the parameterization and calibration specifications and algorithms used, the range of application, input and output parameters, a description of the software and hardware requirements; and it should provide a quantitative validation [6]. The evaluation should also examine model logic and biological consistency, including a sensitivity analysis that identifies the important input parameters [9].

Validation is one aspect of the evaluation process that assesses the degree of accuracy attained [6,10]. While model validation has been widely discussed in the literature, there is little consensus on an acceptable approach, and there are few examples of whole model validation. This is not surprising since there are many types of models (individual tree, stand level and size distribution models), model applications, and tests available. Statistical validation assesses model bias and accuracy by comparing model predictions to actual data. Graphical displays of the residuals and the distribution of observed *vs.* predicted values show the residual errors and aid in identifying undesirable patterns. Common examples of statistical metrics include: average model bias (AMB), relative model bias (RMB), and efficiency (EF) [11], the coefficient of determination (<sup>R</sup><sup>2</sup>), root mean square error (RMSE), and hypothesis tests for the correspondence of observed *vs.* predicted data [12]. More recently, equivalence tests [13] have been recommended for testing the fit of a model within an acceptable range of error. These statistics should be chosen or structured to allow the end user (forest manager or regulator) to easily evaluate the performance of the model based on its intended use [7].

In western Canada, yield curves or tables are a management planning requirement for both managed and natural stands. Forest managers are interested in whether the model is unbiased over the operational landscape. Since there are no long-term re-measured managed (post-harvest) stand data, and only a small amount of short-term managed stand data, growth models must be used to predict future managed stands yields for management planning. An individual tree model like MGM suits this purpose since it can accept different species mixtures and stand structures, and allows for the modeling

---



*Forests 2013, 4*  3

of treatments such as release or thinning. MGM grows and reduces the survival of each tree according to its species, size and social position within the stand. This makes MGM responsive to changes in stand structure and allows projections of complex species mixtures and stand structures, especially following thinning or tending treatments. Since stand-level yield projections are the primary use of MGM, an evaluation and validation at this scale is essential.

Validations can be carried out on annual periodic growth increment [8,14] which eliminates the effect of initial size and relates errors directly to what is modeled. This type of validation can be done at an individual tree level where increment is assessed only for the survivors, or at a stand level to validate increment while accounting for the influence of natural mortality, ingress and removals. Another common approach for validation is based on yield (volume per hectare), supported by the validation of other stand parameters (top height, average height, average diameter and density) [15]. Both approaches require that the model be validated as a whole, where all internal components and their interactions act as one system [9]. The danger to this approach is that it assumes that the individual sub-models are parameterized and calibrated well and are correctly linked, although it is unlikely that a model with poorly parameterized and calibrated sub-models would validate well as a whole.

The goal of the validation presented in this paper is to provide regulatory agencies and users of MGM with sufficient information to be able to assess whether the model adequately meets their performance requirements in the context of Canadian forest practices. The paper also demonstrates, contrasts and discusses several methods for whole model validation using MGM as an example.

## 2. Experimental Section

### 2.1. *The Mixedwood Growth Model*

MGM models the growth of pure or mixed stands of four major boreal species: white spruce (*Picea glauca* (Moench) Voss) (SW), lodgepole pine (*Pinus contorta* var. *latifolia* Engelm.) (PL), trembling aspen (*Populus tremuloides* Michx.) (AW), and black spruce (*Picea mariana* (Mill.) B.S.P.) (SB). The model utilizes individual tree growth (height increment and diameter increment) and survival functions to project a list of trees into the future. MGM includes sub-models developed separately for: (1) *Juvenile* trees having a diameter at breast height (DBH) less than 4.0 cm; (2) *Mid-rotation* trees having a DBH greater than or equal to 4.0 cm and that is less than 80% of their maximum height, defined by the asymptote of the height vs. DBH curve; and (3) *Old-Growth* trees taller than 80% of their maximum height. Site index and competition from other trees are key drivers of the growth functions. A full description of the model functions and parameters by species and sub-models can be found online [1].

The model can be initialized using a tree list or stand table, including juvenile trees <1.3 m height. Tree lists can also be created using stand summary data: species, average height and diameter at breast height (DBH), breast height age for each tree (or total age for trees <1.3 m), and an estimate of site index for each species. The growth and survival relationships were developed using Alberta data, although regional variants for British Columbia, Saskatchewan, and Manitoba allow use of local species codes, site curves, and tree-volume estimation equations.

---



*Forests 2013, 4* 4

Outputs summarize both tree and stand characteristics. Summaries are provided as yield tables and charts portraying averages and totals for the conifer and hardwood components including estimates of above ground tree biomass. Linkage to the Stand Visualization System [16] is also built into the model, to provide visual snapshots of the stand structure (assuming random tree locations) at any stage of development.

## 2.2. *Description of Validation Datasets*

Four datasets were used for the validation: the Alberta Sustainable Resource Development (ASRD) Stand Dynamics System (SDS) juvenile permanent sample plots (PSPs), the Western Boreal Growth and Yield Association (WESBOGY) juvenile PSPs, ASRD mature stand PSPs (ASRD), and Saskatchewan Ministry of the Environment PSP data (SSK). These datasets contain a range of forest stand types (species mixtures and structure), and include a range of productivity (site index) and stand ages (juvenile, mid-rotation and mature) and varying projection lengths. The SDS and WESBOGY datasets contain some silvicultural manipulations (chiefly site preparation and juvenile thinning). These data provide a basis for the rigorous testing of model performance. Summary details on plots and re-measurements for the data sources are found in (Tables 1–5).

**Table 1.** Summary statistics (mean, min. and max.) for age and projection length, as well as the average site index for aspen, pine and spruce types by validation dataset and species group.

| Dataset | Species | n   | Initial Age (years)<br/>Mean | Initial Age (years)<br/>Min | Initial Age (years)<br/>Max | Projection Length (years)<br/>Mean | Projection Length (years)<br/>Min | Projection Length (years)<br/>Max | Aspen Site Index (m)<br/>Mean | Pine Site Index (m)<br/>Mean | Spruce Site Index (m)<br/>Mean |
| ------- | ------- | --- | ---------------------------- | --------------------------- | --------------------------- | ---------------------------------- | --------------------------------- | --------------------------------- | ----------------------------- | ---------------------------- | ------------------------------ |
| ASRD    | AW      | 124 | 74                           | 28                          | 130                         | 28                                 | 5                                 | 41                                | 18.7                          | -                            | -                              |
|         | CD      | 184 | 147                          | 40                          | 435                         | 32                                 | 13                                | 43                                | 17.8                          | -                            | 15.2                           |
|         | DC      | 90  | 108                          | 42                          | 198                         | 30                                 | 7                                 | 42                                | 17.6                          | -                            | 19.3                           |
|         | SW      | 104 | 154                          | 66                          | 435                         | 29                                 | 6                                 | 39                                | -                             | -                            | 15.3                           |
| SDS     | AW      | 51  | 5                            | 1                           | 10                          | 14                                 | 9                                 | 19                                | 19.8                          | -                            | -                              |
|         | SW      | 13  | 5                            | 2                           | 7                           | 16                                 | 11                                | 22                                | -                             | -                            | 20.1                           |
|         | MX      | 16  | 6                            | 2                           | 9                           | 16                                 | 13                                | 19                                | 18.3                          | -                            | 18.3                           |
| WESBOGY | AW      | 93  | 7                            | 5                           | 10                          | 6                                  | 1                                 | 9                                 | 20.9                          | -                            | -                              |
|         | SW      | 62  | 7                            | 5                           | 10                          | 6                                  | 1                                 | 9                                 | 17.6                          | -                            | -                              |
|         | MX      | 307 | 7                            | 5                           | 10                          | 6                                  | 1                                 | 9                                 | 20.8                          | -                            | 17.3                           |
| SASK    | AW      | 20  | 71                           | 46                          | 103                         | 15                                 | 10                                | 29                                | 18.9                          | -                            | -                              |
|         | CD      | 20  | 105                          | 67                          | 160                         | 21                                 | 12                                | 32                                | 15.6                          | 16.9                         | 17.8                           |
|         | DC      | 20  | 97                           | 54                          | 160                         | 21                                 | 13                                | 33                                | 17.5                          | 17.1                         | 16.3                           |
|         | SW      | 20  | 91                           | 63                          | 140                         | 16                                 | 8                                 | 29                                | -                             | 17.0                         | -                              |




---

Forests **2013**, *4* 5

**Table 2.** The summary of observed stand parameters (volume (m³ ha⁻¹), basal area (m² ha⁻¹), DBH (cm), height (m), density (stems ha⁻¹) and top height (m)), as well as the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), efficiency (EF) and the equivalence cutoff (EQ) for the conifer and deciduous components by species group (AW, CD, DC, and SW) for the ASRD dataset.

<table>
  <thead>
<tr>
      <th>Species Group</th>
      <th>n</th>
      <th>Variable</th>
      <th colspan="10">Conifer</th>
      <th colspan="10">Deciduous</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th></th>
      <th colspan="10">Observed</th>
      <th colspan="10">Observed</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th></th>
      <th colspan="10">Statistics of Model Fit</th>
      <th colspan="10">Statistics of Model Fit</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th></th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
    </tr>
  </thead>
  <tbody>
<tr>
      <td>AW</td>
<td>124</td>
<td>Volume (m³ ha⁻¹)</td>
<td>37.83</td>
<td>0.33</td>
<td>142.05</td>
<td>36.07</td>
<td>3.33</td>
<td>22.68</td>
<td>8.80</td>
<td>0.60</td>
<td>6.81</td>
<td>251.00</td>
<td>57.82</td>
<td>510.92</td>
<td>98.02</td>
<td>4.70</td>
<td>60.02</td>
<td>1.87</td>
<td>0.62</td>
<td>17.57</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Basal Area (m² ha⁻¹)</td>
<td>4.10</td>
<td>0.12</td>
<td>13.23</td>
<td>3.56</td>
<td>0.71</td>
<td>1.98</td>
<td>17.34</td>
<td>0.65</td>
<td>0.61</td>
<td>27.75</td>
<td>6.78</td>
<td>53.72</td>
<td>8.94</td>
<td>1.68</td>
<td>5.88</td>
<td>6.05</td>
<td>0.53</td>
<td>1.67</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>DBH (cm)</td>
<td>34.77</td>
<td>11.70</td>
<td>67.20</td>
<td>13.82</td>
<td>4.88</td>
<td>5.63</td>
<td>14.05</td>
<td>0.71</td>
<td>5.91</td>
<td>27.52</td>
<td>12.87</td>
<td>47.20</td>
<td>8.61</td>
<td>-0.82</td>
<td>1.90</td>
<td>-2.96</td>
<td>0.94</td>
<td>1.38</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>21.26</td>
<td>6.70</td>
<td>31.48</td>
<td>6.17</td>
<td>-1.75</td>
<td>2.83</td>
<td>-8.25</td>
<td>0.71</td>
<td>2.34</td>
<td>21.57</td>
<td>10.68</td>
<td>30.34</td>
<td>4.06</td>
<td>-1.16</td>
<td>1.77</td>
<td>-5.42</td>
<td>0.73</td>
<td>1.51</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha⁻¹)</td>
<td>61</td>
<td>5</td>
<td>296</td>
<td>70</td>
<td>-0.81</td>
<td>25.09</td>
<td>-1.34</td>
<td>0.87</td>
<td>6.67</td>
<td>598</td>
<td>79</td>
<td>1920</td>
<td>440</td>
<td>75.08</td>
<td>124.36</td>
<td>12.55</td>
<td>0.89</td>
<td>95.73</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>22.15</td>
<td>8.00</td>
<td>30.64</td>
<td>6.14</td>
<td>-1.79</td>
<td>3.72</td>
<td>-8.07</td>
<td>0.55</td>
<td>2.44</td>
<td>23.82</td>
<td>12.30</td>
<td>32.51</td>
<td>4.04</td>
<td>-1.54</td>
<td>1.80</td>
<td>-6.44</td>
<td>0.66</td>
<td>1.91</td>
    </tr>
<tr>
      <td>CD</td>
<td>184</td>
<td>Volume (m³ ha⁻¹)</td>
<td>296.52</td>
<td>7.00</td>
<td>547.10</td>
<td>95.59</td>
<td>-28.02</td>
<td>66.39</td>
<td>-9.45</td>
<td>0.43</td>
<td>38.55</td>
<td>103.25</td>
<td>2.87</td>
<td>309.34</td>
<td>73.39</td>
<td>27.44</td>
<td>50.56</td>
<td>26.58</td>
<td>0.41</td>
<td>34.07</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Basal Area (m² ha⁻¹)</td>
<td>31.75</td>
<td>1.55</td>
<td>58.25</td>
<td>10.12</td>
<td>-0.84</td>
<td>6.77</td>
<td>-2.65</td>
<td>0.55</td>
<td>3.81</td>
<td>10.39</td>
<td>0.46</td>
<td>29.01</td>
<td>6.76</td>
<td>2.95</td>
<td>4.76</td>
<td>28.43</td>
<td>0.33</td>
<td>3.22</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>DBH (cm)</td>
<td>27.34</td>
<td>13.93</td>
<td>50.10</td>
<td>6.49</td>
<td>1.46</td>
<td>2.82</td>
<td>5.35</td>
<td>0.78</td>
<td>1.91</td>
<td>35.69</td>
<td>17.82</td>
<td>66.40</td>
<td>8.46</td>
<td>0.02</td>
<td>4.63</td>
<td>0.07</td>
<td>0.73</td>
<td>1.07</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>21.04</td>
<td>10.70</td>
<td>28.61</td>
<td>3.83</td>
<td>-0.45</td>
<td>1.61</td>
<td>-2.14</td>
<td>0.82</td>
<td>0.84</td>
<td>23.80</td>
<td>15.45</td>
<td>32.07</td>
<td>3.40</td>
<td>-0.83</td>
<td>2.13</td>
<td>-3.47</td>
<td>0.57</td>
<td>1.19</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha⁻¹)</td>
<td>626</td>
<td>44</td>
<td>2765</td>
<td>471</td>
<td>-58.16</td>
<td>151.40</td>
<td>-9.29</td>
<td>0.90</td>
<td>81.41</td>
<td>106</td>
<td>10</td>
<td>474</td>
<td>83</td>
<td>29.62</td>
<td>65.16</td>
<td>27.88</td>
<td>0.26</td>
<td>38.24</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>25.99</td>
<td>10.70</td>
<td>34.71</td>
<td>4.05</td>
<td>-0.79</td>
<td>1.80</td>
<td>-3.03</td>
<td>0.79</td>
<td>1.04</td>
<td>24.29</td>
<td>15.45</td>
<td>32.07</td>
<td>3.46</td>
<td>-0.71</td>
<td>2.19</td>
<td>-2.93</td>
<td>0.58</td>
<td>1.21</td>
    </tr>
<tr>
      <td>DC</td>
<td>90</td>
<td>Volume (m³ ha⁻¹)</td>
<td>159.43</td>
<td>37.16</td>
<td>321.96</td>
<td>63.79</td>
<td>-20.67</td>
<td>69.92</td>
<td>-12.97</td>
<td>-0.31</td>
<td>33.48</td>
<td>189.86</td>
<td>25.89</td>
<td>643.18</td>
<td>97.57</td>
<td>3.69</td>
<td>67.57</td>
<td>1.95</td>
<td>0.52</td>
<td>22.78</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Basal Area (m² ha⁻¹)</td>
<td>15.77</td>
<td>4.56</td>
<td>31.60</td>
<td>5.61</td>
<td>-1.07</td>
<td>6.24</td>
<td>-6.78</td>
<td>-0.27</td>
<td>3.00</td>
<td>19.29</td>
<td>2.87</td>
<td>50.33</td>
<td>8.52</td>
<td>0.99</td>
<td>5.81</td>
<td>5.15</td>
<td>0.52</td>
<td>1.93</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>DBH (cm)</td>
<td>29.84</td>
<td>15.13</td>
<td>49.04</td>
<td>6.92</td>
<td>1.53</td>
<td>3.09</td>
<td>5.13</td>
<td>0.75</td>
<td>2.39</td>
<td>32.16</td>
<td>13.16</td>
<td>46.50</td>
<td>6.35</td>
<td>-0.26</td>
<td>2.87</td>
<td>-0.80</td>
<td>0.79</td>
<td>0.96</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>22.60</td>
<td>13.34</td>
<td>30.89</td>
<td>3.07</td>
<td>-1.42</td>
<td>2.43</td>
<td>-6.32</td>
<td>0.16</td>
<td>2.03</td>
<td>23.52</td>
<td>15.27</td>
<td>31.20</td>
<td>3.03</td>
<td>-1.08</td>
<td>1.99</td>
<td>-4.63</td>
<td>0.44</td>
<td>1.65</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha⁻¹)</td>
<td>244</td>
<td>40</td>
<td>729</td>
<td>151</td>
<td>-39.94</td>
<td>85.94</td>
<td>-16.39</td>
<td>0.60</td>
<td>56.06</td>
<td>270</td>
<td>20</td>
<td>1470</td>
<td>220</td>
<td>25.70</td>
<td>86.39</td>
<td>9.52</td>
<td>0.83</td>
<td>43.19</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>25.62</td>
<td>15.60</td>
<td>34.88</td>
<td>3.12</td>
<td>-1.81</td>
<td>2.51</td>
<td>-7.05</td>
<td>0.01</td>
<td>2.31</td>
<td>24.86</td>
<td>15.77</td>
<td>32.49</td>
<td>2.82</td>
<td>-1.58</td>
<td>2.03</td>
<td>-6.34</td>
<td>0.16</td>
<td>1.99</td>
    </tr>
<tr>
      <td>SW</td>
<td>104</td>
<td>Volume (m³ ha⁻¹)</td>
<td>361.14</td>
<td>133.94</td>
<td>594.37</td>
<td>101.41</td>
<td>-28.74</td>
<td>73.01</td>
<td>-7.96</td>
<td>0.41</td>
<td>43.34</td>
<td>23.27</td>
<td>0.69</td>
<td>107.32</td>
<td>25.74</td>
<td>4.47</td>
<td>17.97</td>
<td>19.22</td>
<td>0.48</td>
<td>7.45</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Basal Area (m² ha⁻¹)</td>
<td>38.20</td>
<td>12.52</td>
<td>62.53</td>
<td>10.62</td>
<td>-1.11</td>
<td>6.94</td>
<td>-2.91</td>
<td>0.58</td>
<td>4.20</td>
<td>2.71</td>
<td>0.12</td>
<td>10.49</td>
<td>2.71</td>
<td>0.60</td>
<td>1.90</td>
<td>22.23</td>
<td>0.45</td>
<td>0.79</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>DBH (cm)</td>
<td>25.69</td>
<td>16.68</td>
<td>46.72</td>
<td>5.49</td>
<td>-0.41</td>
<td>3.03</td>
<td>-1.60</td>
<td>0.69</td>
<td>1.03</td>
<td>26.06</td>
<td>11.40</td>
<td>54.20</td>
<td>8.88</td>
<td>0.36</td>
<td>3.86</td>
<td>1.40</td>
<td>0.81</td>
<td>1.30</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>21.40</td>
<td>13.09</td>
<td>28.91</td>
<td>2.77</td>
<td>-0.83</td>
<td>1.71</td>
<td>-3.90</td>
<td>0.53</td>
<td>1.28</td>
<td>19.73</td>
<td>10.18</td>
<td>28.86</td>
<td>3.56</td>
<td>-0.84</td>
<td>2.05</td>
<td>-4.01</td>
<td>0.62</td>
<td>1.18</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha⁻¹)</td>
<td>782</td>
<td>64</td>
<td>2299</td>
<td>424</td>
<td>55.60</td>
<td>207.58</td>
<td>7.11</td>
<td>0.74</td>
<td>93.87</td>
<td>51</td>
<td>5</td>
<td>235</td>
<td>50</td>
<td>8.52</td>
<td>28.79</td>
<td>16.77</td>
<td>0.64</td>
<td>13.71</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>26.97</td>
<td>17.91</td>
<td>32.82</td>
<td>2.92</td>
<td>-0.45</td>
<td>1.50</td>
<td>-1.67</td>
<td>0.71</td>
<td>0.81</td>
<td>19.88</td>
<td>10.18</td>
<td>28.86</td>
<td>3.58</td>
<td>-0.76</td>
<td>2.04</td>
<td>-3.85</td>
<td>0.63</td>
<td>1.19</td>
    </tr>
  </tbody>
</table>



---



Forests 2013, 4 6

**Table 3.** The summary of observed stand increment (volume increment (m³ ha⁻¹ y⁻¹), DBH increment (cm y⁻¹), height increment (m y⁻¹), and top height increment (m y⁻¹)), and the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), as well as the *t*-test statistics (*t*-statistic and *p*-value) for AMB, for the conifer and deciduous components by species group (AW, CD, DC, and SW) ASRD dataset.

| Group     | Species Variable         | Observed<br/>n | Observed<br/>Mean | Statistics of Model Fit<br/>AMB | Statistics of Model Fit<br/>SD\_Resid | Statistics of Model Fit<br/>RMB (%) | Statistics of Model Fit<br/>t-value | t-test for AMB<br/>p-value | t-test for AMB |
| --------- | ------------------------ | -------------- | ----------------- | ------------------------------- | ------------------------------------- | ----------------------------------- | ----------------------------------- | -------------------------- | -------------- |
| AW        | Volume Inc (m³ ha⁻¹ y⁻¹) | 124            | 4.309             | -1.856                          | 1.873                                 | -43.08                              | -11.039                             | <0.001                     |                |
| Deciduous | DBH Inc (cm y⁻¹)         |                | 0.263             | -0.031                          | 0.063                                 | -11.69                              | -5.408                              | <0.001                     |                |
|           | Height Inc (m y⁻¹)       |                | 0.120             | -0.059                          | 0.117                                 | -49.52                              | -5.655                              | <0.001                     |                |
|           | Top Height Inc (m y⁻¹)   |                | 0.055             | -0.076                          | 0.128                                 | -136.22                             | -6.574                              | <0.001                     |                |
| CD        | Volume Inc (m³ ha⁻¹ y⁻¹) | 184            | 3.807             | -0.811                          | 2.247                                 | -21.31                              | -4.898                              | <0.001                     |                |
| Conifer   | DBH Inc (cm y⁻¹)         |                | 0.169             | 0.048                           | 0.090                                 | 28.52                               | 7.298                               | <0.001                     |                |
|           | Height Inc (m y⁻¹)       |                | 0.109             | -0.016                          | 0.049                                 | -14.31                              | -4.293                              | <0.001                     |                |
|           | Top Height Inc (m y⁻¹)   |                | 0.061             | -0.024                          | 0.056                                 | -39.59                              | -5.900                              | <0.001                     |                |
| DC        | Volume Inc (m³ ha⁻¹ y⁻¹) | 90             | 2.687             | -0.873                          | 1.384                                 | -32.49                              | -5.984                              | <0.001                     |                |
| Deciduous | DBH Inc (cm y⁻¹)         |                | 0.242             | -0.011                          | 0.096                                 | -4.46                               | -1.071                              | 0.287                      |                |
|           | Height Inc (m y⁻¹)       |                | 0.099             | -0.038                          | 0.067                                 | -38.54                              | -5.402                              | <0.001                     |                |
|           | Top Height Inc (m y⁻¹)   |                | 0.040             | -0.054                          | 0.077                                 | -136.30                             | -6.646                              | <0.001                     |                |
| SW        | Volume Inc (m³ ha⁻¹ y⁻¹) | 104            | 4.967             | -1.485                          | 2.475                                 | -29.89                              | -6.118                              | <0.001                     |                |
| Conifer   | DBH Inc (cm y⁻¹)         |                | 0.154             | -0.014                          | 0.093                                 | -9.11                               | -1.538                              | 0.127                      |                |
|           | Height Inc (m y⁻¹)       |                | 0.127             | -0.034                          | 0.060                                 | -26.56                              | -5.751                              | <0.001                     |                |
|           | Top Height Inc (m y⁻¹)   |                | 0.092             | -0.016                          | 0.060                                 | -16.97                              | -2.672                              | 0.009                      |                |


**Table 4.** The summary of the mean deciduous or coniferous volume increment (m³ ha⁻¹ y⁻¹), as well as the standard deviation of the residual volume (SD) by projection length classes for the species group (AW, CD, DC, and SW) in the ASRD dataset.

<table>
  <thead>
    <tr>
      <th>Species Group</th>
      <th>n</th>
      <th>Average Projection Length</th>
      <th>Actual Mean Deciduous Volume Increment</th>
      <th>Residual Deciduous Volume Increment</th>
      <th>SD Residual Volume Increment</th>
      <th>Species Group</th>
      <th>n</th>
      <th>Average Projection Length</th>
      <th>Actual Mean Conifer Volume Increment</th>
      <th>Residual Coniferous Volume Increment</th>
      <th>SD Residual Volume</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AW</td>
<td>56</td>
<td>8</td>
<td>3.72</td>
<td>-2.93</td>
<td>1.48</td>
<td>CD</td>
<td>123</td>
<td>10</td>
<td>3.67</td>
<td>-0.23</td>
<td>2.97</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>18</td>
<td>3.99</td>
<td>-2.46</td>
<td>1.14</td>
<td></td>
<td></td>
<td>20</td>
<td>3.53</td>
<td>-0.83</td>
<td>2.61</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>26</td>
<td>4.23</td>
<td>-2.02</td>
<td>1.03</td>
<td></td>
<td></td>
<td>27</td>
<td>3.55</td>
<td>-0.70</td>
<td>2.41</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>35</td>
<td>4.38</td>
<td>-1.58</td>
<td>0.93</td>
<td></td>
<td></td>
<td>33</td>
<td>3.57</td>
<td>-0.38</td>
<td>2.14</td>
    </tr>
<tr>
      <td>DC</td>
<td>42</td>
<td>11</td>
<td>2.45</td>
<td>-1.69</td>
<td>1.16</td>
<td>SW</td>
<td>50</td>
<td>12</td>
<td>4.43</td>
<td>-1.62</td>
<td>2.84</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>18</td>
<td>2.70</td>
<td>-1.19</td>
<td>1.06</td>
<td></td>
<td></td>
<td>19</td>
<td>4.72</td>
<td>-1.49</td>
<td>3.00</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>26</td>
<td>2.83</td>
<td>-0.82</td>
<td>0.83</td>
<td></td>
<td></td>
<td>26</td>
<td>4.91</td>
<td>-1.36</td>
<td>2.96</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>34</td>
<td>2.99</td>
<td>-0.41</td>
<td>1.14</td>
<td></td>
<td></td>
<td>34</td>
<td>5.34</td>
<td>-0.86</td>
<td>2.65</td>
    </tr>
  </tbody>
</table>



---



*Forests 2013, 4*

7

**Table 5.** The summary of observed stand parameters (DBH (cm), height (m), density (stems ha<sup>-1</sup>) and top height (m)), as well as the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), efficiency (EF) and the equivalence cutoff (EQ) for the conifer and deciduous components by species group (AW, SW and MX) for the SDS dataset.

<table>
  <thead>
<tr>
      <th rowspan="2">Species Group</th>
      <th rowspan="2">n</th>
      <th rowspan="2">Variable</th>
      <th colspan="10">Conifer</th>
      <th colspan="7">Deciduous</th>
    </tr>
<tr>
      <th colspan="5">Observed</th>
      <th colspan="5">Statistics of Model Fit</th>
      <th colspan="5">Observed</th>
      <th colspan="5">Statistics of Model Fit</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th></th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
    </tr>
  </thead>
  <tbody>
<tr>
      <td>AW</td>
<td>51</td>
<td>DBH (cm)</td>
<td>2.23</td>
<td>0.50</td>
<td>5.46</td>
<td>1.13</td>
<td>-0.26</td>
<td>1.04</td>
<td>-11.51</td>
<td>0.11</td>
<td>0.51</td>
<td>4.30</td>
<td>1.25</td>
<td>8.77</td>
<td>1.58</td>
<td>0.02</td>
<td>1.11</td>
<td>0.47</td>
<td>0.51</td>
<td>0.47</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>2.60</td>
<td>1.44</td>
<td>5.23</td>
<td>0.76</td>
<td>-0.15</td>
<td>0.74</td>
<td>-5.70</td>
<td>0.01</td>
<td>0.34</td>
<td>6.19</td>
<td>2.60</td>
<td>9.16</td>
<td>1.60</td>
<td>0.00</td>
<td>0.93</td>
<td>-0.06</td>
<td>0.66</td>
<td>0.43</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>2368</td>
<td>250</td>
<td>14000</td>
<td>2856</td>
<td>-526.72</td>
<td>1166.71</td>
<td>-22.25</td>
<td>0.80</td>
<td>828.68</td>
<td>9343</td>
<td>1000</td>
<td>36000</td>
<td>6259</td>
<td>-910.30</td>
<td>4776.33</td>
<td>-9.74</td>
<td>0.40</td>
<td>2055.49</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>3.39</td>
<td>1.31</td>
<td>7.91</td>
<td>1.41</td>
<td>-0.09</td>
<td>1.29</td>
<td>-2.56</td>
<td>0.17</td>
<td>0.54</td>
<td>10.00</td>
<td>5.47</td>
<td>16.20</td>
<td>2.45</td>
<td>1.25</td>
<td>1.43</td>
<td>12.52</td>
<td>0.39</td>
<td>1.70</td>
    </tr>
<tr>
      <td>SW</td>
<td>13</td>
<td>DBH (cm)</td>
<td>4.38</td>
<td>0.80</td>
<td>9.21</td>
<td>2.98</td>
<td>-0.04</td>
<td>1.78</td>
<td>-0.89</td>
<td>0.64</td>
<td>1.53</td>
<td>2.06</td>
<td>0.33</td>
<td>7.80</td>
<td>2.48</td>
<td>-1.85</td>
<td>1.18</td>
<td>-89.47</td>
<td>0.14</td>
<td>2.64</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>3.58</td>
<td>1.68</td>
<td>6.85</td>
<td>1.60</td>
<td>-0.22</td>
<td>0.92</td>
<td>-6.24</td>
<td>0.65</td>
<td>0.79</td>
<td>3.12</td>
<td>1.44</td>
<td>7.75</td>
<td>2.16</td>
<td>-1.42</td>
<td>1.28</td>
<td>-45.52</td>
<td>0.16</td>
<td>2.15</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>3000</td>
<td>750</td>
<td>9500</td>
<td>2636</td>
<td>-347.39</td>
<td>564.13</td>
<td>-11.58</td>
<td>0.94</td>
<td>630.00</td>
<td>4281</td>
<td>250</td>
<td>17000</td>
<td>5723</td>
<td>-4019.41</td>
<td>6347.50</td>
<td>-93.88</td>
<td>-0.76</td>
<td>7149.69</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>5.01</td>
<td>1.68</td>
<td>7.90</td>
<td>2.27</td>
<td>0.20</td>
<td>1.34</td>
<td>3.98</td>
<td>0.65</td>
<td>1.15</td>
<td>4.13</td>
<td>1.55</td>
<td>11.80</td>
<td>3.53</td>
<td>-1.60</td>
<td>2.79</td>
<td>-38.74</td>
<td>0.14</td>
<td>2.97</td>
    </tr>
<tr>
      <td>MX</td>
<td>16</td>
<td>DBH (cm)</td>
<td>4.39</td>
<td>1.67</td>
<td>7.93</td>
<td>1.98</td>
<td>0.11</td>
<td>1.34</td>
<td>2.49</td>
<td>0.54</td>
<td>1.05</td>
<td>4.28</td>
<td>1.49</td>
<td>7.75</td>
<td>1.87</td>
<td>-0.79</td>
<td>1.35</td>
<td>-18.50</td>
<td>0.29</td>
<td>1.41</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>3.98</td>
<td>2.39</td>
<td>6.74</td>
<td>1.23</td>
<td>-0.05</td>
<td>0.85</td>
<td>-1.35</td>
<td>0.52</td>
<td>0.68</td>
<td>5.77</td>
<td>2.01</td>
<td>9.83</td>
<td>2.19</td>
<td>-0.82</td>
<td>1.61</td>
<td>-14.25</td>
<td>0.31</td>
<td>1.56</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>3188</td>
<td>750</td>
<td>9000</td>
<td>2850</td>
<td>-393.50</td>
<td>669.29</td>
<td>-12.35</td>
<td>0.92</td>
<td>701.25</td>
<td>4953</td>
<td>1000</td>
<td>15250</td>
<td>4262</td>
<td>-206.08</td>
<td>3101.90</td>
<td>-4.16</td>
<td>0.47</td>
<td>2377.50</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>5.95</td>
<td>3.52</td>
<td>8.88</td>
<td>1.83</td>
<td>0.49</td>
<td>1.36</td>
<td>8.30</td>
<td>0.37</td>
<td>1.07</td>
<td>8.99</td>
<td>2.60</td>
<td>12.30</td>
<td>2.41</td>
<td>0.63</td>
<td>1.79</td>
<td>7.05</td>
<td>0.37</td>
<td>1.44</td>
    </tr>
  </tbody>
</table>



---



*Forests 2013, 4* 8

For each of the validation datasets, individual plots were categorized by dominant species: pure types which included white spruce (SW) and trembling aspen (AW); and mixed types: conifer (white spruce leading) (CD), deciduous leading (DC), or if there were too few PSPs to differentiate by leading species, a general mixedwood category (MX) was used. Pure species groups were defined as having 80% or greater basal area of the primary species, while mixed types had between 50% and 80% of their basal area represented by the primary species. Since basal area proportions varied over the re-measurements, plots were categorized at the time they were closest to maturity, *i.e.*, the last measurement for the juvenile plots, and the first measurement for the mature plots.

## 2.2.1. ASRD—Mature Permanent Sample Plot Data

The Alberta Sustainable Resource Development (ASRD) PSPs were initiated by the province in the 1960s and were continually installed until the 1990s. They were originally intended to aid in the determination of the optimal rotation age of various stand types, and were therefore placed in near-mature to mature stands. We used 524 ASRD PSPs in this validation, of which 78 were single plots and 801 were from clusters of two to four plots several tree-lengths apart. Each of the clustered plots was considered independent. The plots had up to six re-measurements, of which the first and last were used for the validation. Detailed information on plot design and measurement protocol can be found in the PSP field procedures manual *Alberta Land and Forest Service, 1998 [17]*. For these ASRD mature PSPs, four stand type categories were created: two pure (AW and SW), and two mixed (CD and DC). Site index estimates were obtained from measurement of either trees destructively sampled adjacent to each plot, or estimated using measured heights of top height trees (thickest 100 ha<sup>-1</sup>), based on sub-regional site index equations [18,19]. Stand volume was compiled from tree height and DBH data using sub-regional equations [20].

For this validation, 22 plots (17 CD and 5 SW plots) from the mature ASRD dataset were removed because they exhibited dramatic reductions in stand density over one projection period due to windthrow.

## 2.2.2. Juvenile Stand Dynamics System Plot Data

The Stand Dynamics System (SDS) PSPs were part of a program initiated by the province in the 1980s to develop growth and yield information for young post-harvest stands. We used the 80 aspen-spruce PSPs from the SDS program in this validation. For deciduous (AW) and deciduous-leading (DC), we restricted our validation to data from the four 1.78 m (10 m<sup>2</sup>) circular regeneration plots (40 m<sup>2</sup> total area). Additional information is contained in the larger plots (250 m<sup>2</sup>, 1000 m<sup>2</sup>) into which these are nested; however, the tagging thresholds used in these larger plots (height >1.3 m and DBH >9.1 cm, respectively) make it impossible to separate the effects of mortality and new establishment from density changes due to trees growing through the tagging limit. For white spruce and conifer (spruce) leading mixedwoods, we used data from all plots. Also in very high density stands (>50 trees in each 10 m<sup>2</sup> subplot; ~50,000 stems ha<sup>-1</sup>), additional trees were simply tallied into 10 cm height classes. These partial tallies at high density create some ambiguity in distinguishing ingress from mortality over time, but there was no way to remove this ambiguity without ignoring the high density dynamics. Detailed information on plot design and measurement protocols can be found in the Stand Dynamics System field procedures manual [21]. For the SDS PSPs,

---



*Forests* **2013**, *4* 9

three stand type categories were created, two pure (AW and SW) and one mixed (MX). Site index for the primary species was estimated using measured heights of top height trees taken at the last re-measurement, and using sub-regional site index equations [18,19].

## 2.2.3. WESBOGY Juvenile Permanent Sample Plot Data

The Western Boreal Growth and Yield Association (WESBOGY) has a series of long-term study plots, established from 1990 to 2004. These plots are placed in post-harvest, mixed aspen–white spruce stands and consist of control (untreated) aspen, and five manipulated aspen densities (0, 200, 500, 1500 and 4000 stems ha<sup>-1</sup>). White spruce was planted in these stands at controlled densities of 0, 500 and 1000 stems ha<sup>-1</sup>. We used data from nine installations (462 plots) from the WESBOGY study in this validation. The data were from 400 m<sup>2</sup> plots, with the exception of the natural (control) aspen plots which, owing to the high density, were taken from four 4m<sup>2</sup> sub-plots, combined to form a single 16 m<sup>2</sup> plot. Detailed information on plot design and measurement protocols can be found in the WESBOGY procedures manual [22] and in Bokalo *et al.* [23]. For the WESBOGY PSPs, three stand types were assessed, two pure (AW and SW) and one mixed (MX). Site index values were estimated as for the SDS plots.

## 2.2.4. Saskatchewan Mature Permanent Sample Plot Data

This validation dataset from Saskatchewan was a random sub-sample of 80 permanent sample plots from the 1122 PSPs maintained by the Saskatchewan Ministry of Environment and Weyerhaeuser Company. The database included measurements made by Weyerhaeuser Company as part of their forest management agreement from 1994 to 2000. Detailed information on plot design and measurement protocols can be found in the Weyerhaeuser permanent sample plot procedures manual [24]. Compilation and sub-sampling protocols can be found in Tansanu and Bokalo [25]. For the Saskatchewan PSPs, four species categories were created, consisting of two pure (AW and SW) and two mixed (CD and DC). Site index was estimated using measured heights of top height trees and unpublished regional site index equations [26]. Volumes were estimated using regional taper equations [27].

## 2.3. *Validation Methods*

Our model validation used the first plot measurement to initialize MGM, we then projected the treelist to the final re-measurement where the observed stand conditions were evaluated against the MGM predictions. Using only the final measurement for validation provided the longest possible growth interval and eliminated autocorrelation issues that can arise when multiple measurements from individual stands are used. MGM projections used sub-regional site index equations [18] and sub-regional volume equations [20]. Because we were projecting PSPs, no mortality adjustments were used. The model was validated using both scatter plots and statistical tests for stand level model outputs (depending on dataset) that include the state variables volume (m<sup>3</sup> ha<sup>-1</sup>), basal area (m<sup>2</sup> ha<sup>-1</sup>), average DBH (cm), average height (m), top height (m), density (stems ha<sup>-1</sup>) and quadratic mean diameter (QMD, cm). Annual periodic growth rate (volume-, height-, DBH- and top height increment)

---



*Forests 2013, 4* 10

was also used for validation because it removes the influence of initial size and directly evaluates the performance of the component relationships. Annual periodic volume increment was calculated as the annualized difference in yield over the projection period, adding back the volume which was lost to mortality during this interval [28]. There were no removals over the projection periods and ingress was not included. Validation using increment was done on the ASRD, SDS and WESBOGY datasets.

Validation of volume increment with respect to projection length for the ASRD dataset used a subsample of plots with the longest projection lengths. This kept the number of observations constant in order to remove effects of sample size and data variability on the results. For all projection length classes, the first measurement represents the initial volume from which volume increment is calculated.

Since volume vs. stand age ("yield") curves are the most important product of the model for users, we used residual plots for volume to assess potential biases with respect to site index, initial stand density and projection length. As projection lengths varied from 5 to 40 years, bias was also assessed in approximately 10-year projection intervals, as well as at the final re-measurement.

We did not examine volume and basal area predictions for the juvenile datasets (SDS and WESBOGY) since these variables have low values and are highly dependent on the density distribution above and below breast height (1.3 m; volume and basal area calculations do not include trees shorter than 1.3 m).

Top height was defined as the average height of the thickest 100 stems ha<sup>-1</sup> of each species. Basal area, quadratic mean diameter, density, and top height are readily measurable in the field, and are useful for tracking stand performance against the model. Average height and DBH are additional simple metrics of tree size.

Except for Saskatchewan data, the results were examined for both the conifer and deciduous stand components based on the four stand types (AW, SW, CD, DC) and—in the cases where there was insufficient data to separate CD and DC—the MX group. For brevity, in the pure species groups, only the dominant species component will be discussed.

## 2.4. Validation Metrics

Plots of observed (Y) vs. predicted ($\hat{Y}$) data with a line ($Y = \hat{Y}$) representing the perfect fit were used to visually assess the goodness-of-fit and identify model biases [29,30]. Plots of residuals (predicted ($\hat{Y}$) – observed (Y)) against stand characteristics such as site index and initial stand density, as well as projection length, were used to detect undesirable patterns in the residuals and a change in bias over the range of the parameter.

Five statistical metrics—average model bias (AMB), relative model bias percent (RMB), efficiency (EF) [7,11,29,31], the paired *t*-test for equivalence (EQ) [13,32] and the traditional *t*-test—were used to evaluate model performance. Average model bias (Equation (1)) is the average of the residual errors, presented in the units of the parameter being predicted, and is described by:

$$AMB = \frac{1}{n} \sum (Y_i - \hat{Y}_i) \tag{1}$$

where $(Y_i)$, $(\hat{Y}_i)$ are as above and $(n)$ is the number of observations. A model with an AMB of 0 would indicate no bias. Interpretation of the AMB should include an understanding of the significance of the error in terms of the accuracy of measurements for the different parameters.

---



*Forests* **2013**, *4* 11

The relative model bias (RMB, Equation (2)) relates the average mean bias to the observed mean estimator expressed as a percentage, providing an indication of the magnitude of the AMB (average error).

$$RMB = (\frac{1}{n} \sum (Y_i - \hat{Y}_i) / \bar{Y}) \times 100 \tag{2}$$

where ($\bar{Y}$) is the average of the observed values. These metrics have the statistical convention of being negative for overestimates and positive for underestimates. The combination of the two metrics, AMB and RMB, provide the end user with an overall assessment of bias.

Efficiency (Equation (3)) is a dimensionless statistic that relates the model predictions to the observed data in a manner similar to that of the coefficient of determination ($R^2$) and is described by:

$$EF = 1 - \frac{\sum (Y_i - \hat{Y}_i)^2}{\sum (Y_i - \bar{Y})^2} \tag{3}$$

where the variables are as defined above. The efficiency statistic has a theoretical upper bound of one indicating a perfect model fit, a value of 0 indicates the model is no better than the mean. Unlike the coefficient of determination ($R^2$, which has a lower bound of 0), an EF value of less than 0 indicates a poorer fit than simply using the overall mean. Poor efficiency indicates poor precision or large variability in the individual errors, thus providing some sense of how well the model will predict any single plot.

Equivalence (EQ) tests are frequently used for model evaluation [13]. Typically the test is used to determine whether model predictions fit the test data within a user defined range of deviation. This range can be absolute (e.g., $\pm 20  m^3$ for volume) or relative (e.g., a percentage of the mean or standard error), and is chosen by the user (e.g., 10%, 20%). If the model is rejected at an initially chosen deviation, the user may well analyze for equivalence again with a wider deviation. Since the model may be the user's only option, we feel a useful innovation was to reverse the equivalence test, and report which level of deviance the model would be deemed "just equivalent." The user can then decide if this is an acceptable range.

In the paired $t$-test for equivalence (EQ), the null hypothesis (Equation (4)) is that the difference between the predicted and the observed values are significantly different. To obtain equivalence, there must be significant evidence to reject the null hypothesis and accept the alternative hypothesis (Equation (5)).

$$H_0: \mu_p - \mu_o \neq 0 \tag{4}$$
$$H_1: \mu_p - \mu_o = 0 \tag{5}$$

where $p$ refers to the predicted and $o$ the observed.

If $Y_i$ represents the observed and $\hat{Y}_i$ represents the predicted, the mean difference is $\bar{Y}_d = \frac{1}{n} \sum Y_i - \hat{Y}_i$ with a standard deviation ($s_{Y_d}$) and standard error ($s_{\bar{Y}_d}$).

The calculated $t$-statistic ($t_d$) defining the confidence interval is calculated as

$$t_d = \frac{\bar{Y}_d}{s_{\bar{Y}_d}} \tag{6}$$

---



*Forests* **2013**, *4* 12

The cutoff $\tilde{C}_{\alpha; n-1}(\varepsilon)$ for a given probability level and criterion $(\varepsilon)$ defines the region of indifference and is calculated as:

$$\tilde{C}_{\alpha; n-1}(\varepsilon) = \left[ F_{1, n-1; \alpha}(\tilde{\varepsilon}^2) \right]^{1/2} \tag{7}$$

where $F_{1, n-1; \alpha}(\tilde{\varepsilon}^2)$ denotes the quantile function of the F-distribution with $1, n-1$ degrees of freedom and the non-centrality parameter $(\tilde{\varepsilon}) = n \times \varepsilon$ [32]. Epsilon ($\varepsilon$) is a subjectively chosen but meaningful criterion, expressed relative to the standard deviation ($s_{Y_d}$) and represents the desired accuracy level (region of indifference) where any differences between observed and predicted are considered irrelevant.

When the $t$-statistic falls within the region of indifference ($|t| < \tilde{C}_{\alpha; n-1}(\varepsilon)$), the null hypothesis is rejected and it is concluded that the two datasets are considered significantly similar, or equivalent. The power $\tilde{\beta}_{\alpha; n-1}(\varepsilon)$ for a given criterion $(\varepsilon)$ at a probability level $(\alpha)$ can be computed using:

$$\tilde{\beta}_{\alpha; n-1}(\varepsilon) = 2F_t \left( \tilde{C}_{\alpha; n-1}(\varepsilon) \right) - 1 \tag{8}$$

where $F_t$ is the cumulative distribution function for the non-central $t$ distribution [13].

Normally, the desired level of accuracy or cutoff is selected *a priori*, however, this leads simply to a result where we accept or reject the null hypothesis. Since the only factor that is not fixed is the criterion $(\varepsilon)$ (if $\alpha$ is fixed at the usual 0.05 level), we solved for the criterion that represents the threshold where the test shifted from accepting the null hypothesis to rejecting it, while maintaining a power greater than 0.7. From a model validation perspective, the user needs to only decide if the criterion and associated power are acceptable for their application. In the case where the user would like to test different combinations of cutoff and power, we present sufficient information to complete these calculations.

For validating periodic annual increment, a $t$-test ($\alpha = 0.05$) tested the null hypothesis that the AMB is not significantly different from 0 ($H_0: \mu_p - \mu_o = 0$). A $t$-statistic (Equation (9)) smaller than the critical $t$-value (Student's $t$-table) will lead to the acceptance of the null hypothesis ($p$-value greater than 0.05) indicating no statistically significant bias.

$$t - statistic = \frac{|AMB|}{s / \sqrt{n}} \tag{9}$$

where $s$ is the standard deviation of the residual differences. $p$-values less than 0.05 indicate a statistically significant bias.

## 3. Results

### 3.1. ASRD—Mature PSPs

Figure 1 presents a sample of the scatter plots showing predicted volume *vs.* actual volume for the conifer and deciduous components in the four species groups found in the ASRD dataset. The full set of scatter plots for ASRD are presented online in Appendix A1 (supplemental material online). The scatter plots illustrate that, for the mature ASRD dataset, MGM is generally unbiased, with the amount of scatter around the 1:1 line varying by species group.

---



Forests 2013, 4 13

**Figure 1.** Scatter plots showing relationships between MGM predicted volume (m³ ha⁻¹) and actual volume (m³ ha⁻¹) for the four species groups in the ASRD dataset.

| Plot Title                      | n   | AMB       | EF    | RMB      |
| ------------------------------- | --- | --------- | ----- | -------- |
| SRD AW Plots - Conifer Volume   | 124 | 3.33 m3   | 0.6   | 8.8 %    |
| SRD AW Plots - Deciduous Volume | 124 | 4.7 m3    | 0.62  | 1.87 %   |
| SRD CD Plots - Conifer Volume   | 184 | -28.02 m3 | 0.43  | -9.45 %  |
| SRD CD Plots - Deciduous Volume | 184 | 27.44 m3  | 0.41  | 26.58 %  |
| SRD DC Plots - Conifer Volume   | 90  | -20.67 m3 | -0.31 | -12.97 % |
| SRD DC Plots - Deciduous Volume | 90  | 3.69 m3   | 0.52  | 1.95 %   |
| SRD SW Plots - Conifer Volume   | 104 | -28.74 m3 | 0.41  | -7.96 %  |
| SRD SW Plots - Deciduous Volume | 104 | 4.47 m3   | 0.48  | 19.22 %  |


The validation statistics for yield variables in the ASRD dataset are presented in Table 2. AW density was slightly underestimated (RMB = 12.55%) with a trend indicating that the size of the underestimate increased with increasing AW density. In the CD stand types, the scatter plots showed that conifer components were slightly overpredicted. Large scatter around the 1:1 line for volume resulted in an EF of 0.43, however, the model was relatively unbiased with a RMB = -9.45%. For the DC group, deciduous top height is slightly overpredicted (RMB = -6.34%) but has a very low

---



*Forests* **2013**, *4* 14

efficiency (EF = 0.16) underscoring the high variability in the predictions. In the SW species group, the scatter plot for volume does show substantial scatter around the 1:1 line while the model only slightly overpredicts volume (RMB = 7.96%). All EQ cutoffs were relatively low (<10% of the mean) with the exception of CD volume (EQ = ±38.55 m³) which was about ±13% of the mean.

Validation statistics for periodic annual increment are presented in Table 3. The negative values for volume increment AMB indicate that volume increment for all species groups is overestimated. The pure AW and SW have larger AMB (-1.485 and -1.856 m³ ha⁻¹ y⁻¹, respectively) while AMB is smaller for the mixed (CD and DC) species groups (-0.811 and -0.873 m³ ha⁻¹ y⁻¹, respectively). The *p*-values associated with the *t*-test are less than 0.05, indicating that model the volume increment predictions are significantly different than the observed. Other stand parameters such as DBH, average height and top height increments are also significant (with the exception of SW and DC DBH increments). The RMB values for top height increment for AW (RMB = 136.2%) and DC (RMB = 136.3%) show a clear overestimate which is consistent with expected stand dynamics occurring in these older mature deciduous stands. These stands are in decline, which is often indicated by dieback or windthrow of the top trees. For the SW and CD species groups, RMB for top height is much smaller. RMB is smallest for DBH increment in relation to other variables. The *t*-tests indicate that MGM is unbiased for diameter increment for the SW and DC groups.

Volume residual plots by site index, initial stand density and by projection length indicate that the model is unbiased over the range of these parameters with the exception of the CD group where there appears to be a trend to underestimate volume as site index increases (Appendix B1–3 supplemental material online).

Assessment of how residual volume increment changes with projection length for each of the species groups is shown in Table 4. The results indicate that the model is robust with respect to projection length. For the CD species group, the residual volume increment varies although the standard deviation decreases. For the AW, SW and DC species groups, the residual volume increments and their associated standard deviations tend to decrease as projection length increases. This is surprising as deviations usually increase with projection length.

### 3.2. *SDS—PSPs*

Results from validation against the SDS dataset are presented in Table 5 and the scatter plots are presented online in the Appendix A2 (supplemental material online). For the pure AW stand type, deciduous top height was slightly underpredicted (RMB = 12.52%), although AMB was only 1.25 m. For AW density, there was a slight overprediction (RMB of -9.7%) with large scatter around the 1:1 line. However this is not surprising given the large variability (SD = 2856 stems ha⁻¹) and wide range (1000 to 36,000 stems ha⁻¹) in observed final densities.

For the SW species group, the small sample size (13 plots) limits confidence. Nonetheless, the only noteworthy concerns are the poor prediction of the minor deciduous component and an overestimate of spruce density (RMB = -11.58%).

Within the MX species group, MGM performed well for all variables except conifer density (RMB = -12.35%). Deciduous density exhibited a large range (1000 to 15,250 stems ha⁻¹) and variability (SD = 4262 stems ha⁻¹), yet the model only slightly overpredicted deciduous density with a

---



*Forests* **2013**, *4* 15

RMB = -4.16%. While RMB for deciduous average DBH (-18.5%) and average height (-14.25%) are large, the AMB is only -0.79 cm and -0.82 m, respectively. The efficiencies for the AW and MX deciduous components were low, due to the high variability in the predictions.

The validation statistics for periodic annual increment are presented in Table 6. Results show that DBH, height and top height increment for the pure and mixed species groups are statistically unbiased with the exception of AW top height and MX deciduous DBH increments. For these, the RMB was less than 21%.

**Table 6.** The summary of observed stand increment (the DBH increment (cm y<sup>-1</sup>), height increment (m y<sup>-1</sup>), and top height increment (m y<sup>-1</sup>)), and validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), as well as the *t*-test statistics (*t*-statistic and *p*-value) for AMB, for the conifer and deciduous components by species group (AW, MX and SW) for the SDS dataset.

| Species Group | Variable               | Observed<br/>n | Observed<br/>Mean | Statistics of Model Fit<br/>AMB | Statistics of Model Fit<br/>SD\_Resid | Statistics of Model Fit<br/>RMB (%) | Statistics of Model Fit<br/>t-statistic | t-test for AMB<br/>p-value | t-test for AMB |
| ------------- | ---------------------- | -------------- | ----------------- | ------------------------------- | ------------------------------------- | ----------------------------------- | --------------------------------------- | -------------------------- | -------------- |
| AW            | DBH Inc (cm y-1)       | 51             | 0.242             | -0.001                          | 0.075                                 | -0.27                               | -0.061                                  | 0.951                      |                |
| Deciduous     | Height Inc (m y-1)     |                | 0.316             | -0.004                          | 0.071                                 | -1.14                               | -0.360                                  | 0.720                      |                |
|               | Top Height Inc (m y-1) |                | 0.542             | 0.079                           | 0.105                                 | 14.55                               | 5.373                                   | <0.001                     |                |
| MX            | DBH Inc (cm y-1)       | 16             | 0.265             | 0.007                           | 0.081                                 | 2.47                                | 0.323                                   | 0.751                      |                |
| Conifer       | Height Inc (m y-1)     |                | 0.239             | -0.003                          | 0.055                                 | -1.34                               | -0.233                                  | 0.819                      |                |
|               | Top Height Inc (m y-1) |                | 0.361             | 0.030                           | 0.084                                 | 8.32                                | 1.439                                   | 0.171                      |                |
| MX            | DBH Inc (cm y-1)       | 16             | 0.223             | -0.047                          | 0.084                                 | -20.96                              | -2.219                                  | 0.042                      |                |
| Deciduous     | Height Inc (m y-1)     |                | 0.277             | -0.051                          | 0.108                                 | -18.51                              | -1.902                                  | 0.077                      |                |
|               | Top Height Inc (m y-1) |                | 0.456             | 0.035                           | 0.127                                 | 7.76                                | 1.116                                   | 0.282                      |                |
| SW            | DBH Inc (cm y-1)       | 13             | 0.262             | 0.002                           | 0.107                                 | 0.75                                | 0.066                                   | 0.948                      |                |
| Conifer       | Height Inc (m y-1)     |                | 0.216             | -0.011                          | 0.052                                 | -5.13                               | -0.768                                  | 0.457                      |                |
|               | Top Height Inc (m y-1) |                | 0.297             | 0.011                           | 0.081                                 | 3.73                                | 0.495                                   | 0.630                      |                |


3.3. *WESBOGY—PSPs*

The validation statistics for the WESBOGY dataset are presented in Table 7 and the scatter plots are presented online in Appendix A3 (supplemental material online). The validation statistics for the WESBOGY data show that for the pure AW group, the deciduous density was underpredicted with a RMB of 16.97%. The scatter plots indicate that MGM is overestimating densities for stands with actual densities below 8000 stems ha<sup>-1</sup> but that MGM is relatively unbiased for higher stand densities. This outcome may be a reflection of problems with accurate representation of stand density in small measurement plots, as well as to differences in self-thinning that may arise in low-density aspen stands. Several points in the scatter plots show underestimation of average DBH. These data come from plots in the Prince Albert and Big River installations in Saskatchewan. When compared to other WESBOGY installations, they have above average DBHs for both AW and SW, suggesting a regional growth difference. For the mixed species plots (MX), the deciduous top height showed similar issues as with the pure AW. For the pure spruce stand type (SW), DBH, average height, density and top height were all predicted well.

---



*Forests 2013, 4* 16

Statistics for validation of periodic annual increment for this dataset are presented in Table 8. The performance of the model shows that DBH, height and top height increments for the pure AW and SW species groups are statistically unbiased with the exception of SW top height increment. For the conifer in the CD species group, average height and top height increments and for the deciduous in the CD species group, DBH and top height are significantly different, however their RMB values are less than 22%.

## 3.4. *Saskatchewan Mature PSPs*

For the Saskatchewan dataset, scatter plots (Appendix A4, supplemental material online) and summary statistics (Table 9) show that for the pure AW plots, volume (RMB = 17.7%), BA (RMB = 15.03%) and density (RMB = 19.42%) were underestimated. The residuals showed a clear trend of increasing underestimation of density with increasing density. For the CD mixed species plots, all variables are predicted very well. Within the DC plots, trends are similar to those observed in the pure aspen group. Volume, BA and top height were underestimated; QMD was predicted very well. Density was slightly underpredicted with an RMB of 9.31%. All the variables within the pure SW stand type were predicted well. Efficiencies for the Saskatchewan data ranged from 0.19 to 0.98, with the exception of top height for the DC plots which had an EF of -0.98.

## 4. **Discussion**

### 4.1. *Context and Application of MGM*

Validation must be directly linked to the proposed use of the model. In application, MGM will be initialized using data from a random selection of stands in each inventory stratum. The projected yields will be the basis for the development of strata based yield curves needed for management planning and annual allowable cut determination. Predicted future stand composition will also be used to ensure that the future balance of species mixtures are maintained over the landscape.

---



*Forests 2013, 4* 17

**Table 7.** The summary of observed stand parameters (DBH (cm), height (m), density (stems ha<sup>-1</sup>) and top height (m)), as well as the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), efficiency (EF) and the equivalence cutoff (EQ) for the conifer and deciduous components by species group (AW, CD and SW) for the WESBOGY dataset.

<table>
  <thead>
    <tr>
      <th rowspan="2">Species Group</th>
      <th rowspan="2">n</th>
      <th rowspan="2">Variable</th>
      <th colspan="10">Conifer</th>
      <th colspan="10">Deciduous</th>
    </tr>
<tr>
      <th colspan="5">Observed</th>
      <th colspan="5">Statistics of Model Fit</th>
      <th colspan="5">Observed</th>
      <th colspan="5">Statistics of Model Fit</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th></th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
      <th>Mean</th>
      <th>Min</th>
      <th>Max</th>
      <th>SD</th>
      <th>AMB</th>
      <th>SD_resid</th>
      <th>RMB (%)</th>
      <th>EF</th>
      <th>EQ</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AW</td>
<td>93</td>
<td>DBH (cm)</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>4.44</td>
<td>1.45</td>
<td>8.56</td>
<td>1.67</td>
<td>-0.05</td>
<td>0.94</td>
<td>-1.13</td>
<td>0.68</td>
<td>0.31</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>5.60</td>
<td>2.24</td>
<td>9.00</td>
<td>1.65</td>
<td>-0.11</td>
<td>0.94</td>
<td>-1.94</td>
<td>0.67</td>
<td>0.34</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>6967</td>
<td>1100</td>
<td>30625</td>
<td>7664</td>
<td>1182</td>
<td>2724.73</td>
<td>16.97</td>
<td>0.85</td>
<td>1672.13</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>7.57</td>
<td>2.72</td>
<td>12.14</td>
<td>1.93</td>
<td>0.38</td>
<td>1.32</td>
<td>5.04</td>
<td>0.49</td>
<td>0.68</td>
    </tr>
<tr>
      <td>CD</td>
<td>307</td>
<td>DBH (cm)</td>
<td>1.65</td>
<td>0.40</td>
<td>4.12</td>
<td>0.82</td>
<td>-0.11</td>
<td>0.42</td>
<td>-6.43</td>
<td>0.75</td>
<td>0.15</td>
<td>5.37</td>
<td>1.08</td>
<td>13.54</td>
<td>2.32</td>
<td>0.29</td>
<td>1.39</td>
<td>5.32</td>
<td>0.63</td>
<td>0.43</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>2.16</td>
<td>1.33</td>
<td>3.77</td>
<td>0.57</td>
<td>0.12</td>
<td>0.22</td>
<td>5.42</td>
<td>0.82</td>
<td>0.15</td>
<td>5.89</td>
<td>1.99</td>
<td>10.28</td>
<td>1.78</td>
<td>-0.03</td>
<td>1.13</td>
<td>-0.51</td>
<td>0.59</td>
<td>0.24</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>701</td>
<td>75</td>
<td>1225</td>
<td>270</td>
<td>-38.67</td>
<td>125.97</td>
<td>-5.51</td>
<td>0.77</td>
<td>56.10</td>
<td>4030</td>
<td>100</td>
<td>39375</td>
<td>6055</td>
<td>570.47</td>
<td>1649.96</td>
<td>14.16</td>
<td>0.92</td>
<td>765.70</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>2.74</td>
<td>1.33</td>
<td>7.44</td>
<td>0.89</td>
<td>0.30</td>
<td>0.33</td>
<td>10.99</td>
<td>0.77</td>
<td>0.36</td>
<td>7.44</td>
<td>2.61</td>
<td>11.85</td>
<td>1.88</td>
<td>0.42</td>
<td>1.29</td>
<td>5.71</td>
<td>0.48</td>
<td>0.60</td>
    </tr>
<tr>
      <td>SW</td>
<td>62</td>
<td>DBH (cm)</td>
<td>1.90</td>
<td>0.50</td>
<td>4.89</td>
<td>1.04</td>
<td>-0.01</td>
<td>0.41</td>
<td>-0.59</td>
<td>0.85</td>
<td>0.17</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Height (m)</td>
<td>2.18</td>
<td>1.34</td>
<td>3.90</td>
<td>0.62</td>
<td>0.06</td>
<td>0.22</td>
<td>2.79</td>
<td>0.87</td>
<td>0.11</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Density (stems ha<sup>-1</sup>)</td>
<td>723</td>
<td>325</td>
<td>1125</td>
<td>259</td>
<td>-31.94</td>
<td>98.12</td>
<td>-4.42</td>
<td>0.84</td>
<td>57.84</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
    </tr>
<tr>
      <td></td>
<td></td>
<td>Top Height (m)</td>
<td>2.77</td>
<td>1.34</td>
<td>6.29</td>
<td>1.04</td>
<td>0.27</td>
<td>0.32</td>
<td>9.75</td>
<td>0.85</td>
<td>0.36</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
<td>-</td>
    </tr>
  </tbody>
</table>



---



Forests 2013, 4  18

**Table 8.** The summary of the observed stand increment (the DBH increment (cm y<sup>-1</sup>), height increment (m y<sup>-1</sup>), and top height increment (m y<sup>-1</sup>)), the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid)) as well as the *t*-test statistics (*t*-statistic and *p*-value) for AMB, for the conifer and deciduous components by species group (AW, MX and SW) in the WESBOGY dataset.

| Species Group | Variable               | Observed<br/>n | Observed<br/>Mean | Statistics of Model Fit<br/>AMB | Statistics of Model Fit<br/>SD\_Resid | Statistics of Model Fit<br/>RMB (%) | Statistics of Model Fit<br/>t-statistic | Statistics of Model Fit<br/>p-value | t-test for AMB | t-test for AMB |
| ------------- | ---------------------- | -------------- | ----------------- | ------------------------------- | ------------------------------------- | ----------------------------------- | --------------------------------------- | ----------------------------------- | -------------- | -------------- |
| AW            | DBH Inc (cm y-1)       | 93             | 0.416             | 0.0083                          | 0.161                                 | 2.00                                | 0.498                                   | 0.620                               |                |                |
| Deciduous     | Height Inc (m y-1)     |                | 0.421             | -0.0327                         | 0.166                                 | -7.77                               | -1.895                                  | 0.061                               |                |                |
|               | Top Height Inc (m y-1) |                | 0.549             | 0.0594                          | 0.224                                 | 10.82                               | 2.556                                   | 0.012                               |                |                |
| CD            | DBH Inc (cm y-1)       | 307            | 0.238             | -0.0018                         | 0.133                                 | -0.78                               | -0.243                                  | 0.808                               |                |                |
| Conifer       | Height Inc (m y-1)     |                | 0.286             | 0.0434                          | 0.126                                 | 15.14                               | 6.036                                   | <0.001                              |                |                |
|               | Top Height Inc (m y-1) |                | 0.379             | 0.0796                          | 0.146                                 | 21.01                               | 9.557                                   | <0.001                              |                |                |
| CD            | DBH Inc (cm y-1)       | 307            | 0.505             | 0.0542                          | 0.208                                 | 10.73                               | 4.561                                   | <0.001                              |                |                |
| Deciduous     | Height Inc (m y-1)     |                | 0.440             | -0.0177                         | 0.198                                 | -4.03                               | -1.565                                  | 0.119                               |                |                |
|               | Top Height Inc (m y-1) |                | 0.545             | 0.0677                          | 0.246                                 | 12.42                               | 4.834                                   | <0.001                              |                |                |
| SW            | DBH Inc (cm y-1)       | 62             | 0.292             | 0.0066                          | 0.101                                 | 2.25                                | 0.513                                   | 0.610                               |                |                |
| Conifer       | Height Inc (m y-1)     |                | 0.327             | -0.0007                         | 0.197                                 | -0.21                               | -0.027                                  | 0.978                               |                |                |
|               | Top Height Inc (m y-1) |                | 0.420             | 0.0331                          | 0.205                                 | 7.89                                | 1.273                                   | 0.208                               |                |                |


**Table 9.** The summary of observed and predicted stand parameters (volume (m<sup>3</sup> ha<sup>-1</sup>), basal area (m<sup>2</sup> ha<sup>-1</sup>), QMD (cm), density (stems ha<sup>-1</sup>) and top height (m)), as well as the validation statistics (average mean bias (AMB), standard deviation of the residuals (SD_resid), relative mean bias (RMB), efficiency (EF) and the equivalence cutoff (EQ)) for the combined conifer and deciduous components by species group (AW, CD, DC and SW) for the SSK dataset.

| Species Group | n  | Variable             | Combined Conifer and Deciduous<br/>Observed<br/>Mean | Combined Conifer and Deciduous<br/>Observed<br/>Min | Combined Conifer and Deciduous<br/>Observed<br/>Max | Combined Conifer and Deciduous<br/>Observed<br/>SD | Combined Conifer and Deciduous<br/>Statistics of Model Fit<br/>AMB | Combined Conifer and Deciduous<br/>Statistics of Model Fit<br/>SD\_Resid | Combined Conifer and Deciduous<br/>Statistics of Model Fit<br/>RMB (%) | Combined Conifer and Deciduous<br/>Statistics of Model Fit<br/>EF | Statistics of Model Fit<br/>EQ |
| ------------- | -- | -------------------- | ---------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | -------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------ | ---------------------------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------ |
| AW            | 20 | Volume (m³ ha-1)     | 268.96                                               | 121.72                                              | 420.58                                              | 85.40                                              | 47.61                                                              | 30.58                                                                    | 17.70                                                                  | 0.54                                                              | 64.55                          |
|               |    | Basal Area (m² ha-1) | 32.32                                                | 17.55                                               | 46.12                                               | 7.22                                               | 4.86                                                               | 3.67                                                                     | 15.03                                                                  | 0.26                                                              | 7.76                           |
|               |    | QMD (cm)             | 18.78                                                | 12.63                                               | 28.62                                               | 5.19                                               | -0.09                                                              | 0.85                                                                     | -0.47                                                                  | 0.97                                                              | 0.75                           |
|               |    | Density (stems ha-1) | 1358                                                 | 500                                                 | 2263                                                | 586                                                | 263.81                                                             | 254.77                                                                   | 19.42                                                                  | 0.60                                                              | 380.28                         |
|               |    | Top Height (m)       | 21.52                                                | 17.30                                               | 28.10                                               | 3.43                                               | 0.98                                                               | 1.07                                                                     | 4.56                                                                   | 0.82                                                              | 1.51                           |
| CD            | 20 | Volume (m³ ha-1)     | 333.08                                               | 229.83                                              | 467.83                                              | 64.45                                              | -0.64                                                              | 43.22                                                                    | -0.19                                                                  | 0.55                                                              | 29.98                          |
|               |    | Basal Area (m² ha-1) | 38.72                                                | 27.19                                               | 46.28                                               | 6.14                                               | -0.62                                                              | 4.50                                                                     | -1.60                                                                  | 0.45                                                              | 3.10                           |
|               |    | QMD (cm)             | 22.60                                                | 17.00                                               | 28.12                                               | 3.05                                               | -0.84                                                              | 1.25                                                                     | -3.72                                                                  | 0.75                                                              | 1.36                           |
|               |    | Density (stems ha-1) | 1028                                                 | 525                                                 | 1850                                                | 361                                                | 71.03                                                              | 141.25                                                                   | 6.91                                                                   | 0.81                                                              | 133.58                         |
|               |    | Top Height (m)       | 24.58                                                | 20.20                                               | 30.70                                               | 2.44                                               | 0.62                                                               | 2.03                                                                     | 2.54                                                                   | 0.24                                                              | 1.47                           |
| DC            | 20 | Volume (m³ ha-1)     | 360.64                                               | 219.96                                              | 509.70                                              | 81.36                                              | 54.79                                                              | 43.41                                                                    | 15.19                                                                  | 0.24                                                              | 79.34                          |
|               |    | Basal Area (m² ha-1) | 40.77                                                | 26.33                                               | 57.37                                               | 7.96                                               | 4.21                                                               | 4.15                                                                     | 10.32                                                                  | 0.43                                                              | 7.34                           |
|               |    | QMD (cm)             | 23.25                                                | 15.44                                               | 29.19                                               | 3.29                                               | 0.25                                                               | 1.45                                                                     | 1.06                                                                   | 0.80                                                              | 1.16                           |
|               |    | Density (stems ha-1) | 1023                                                 | 525                                                 | 2150                                                | 397                                                | 95.19                                                              | 105.94                                                                   | 9.31                                                                   | 0.87                                                              | 143.15                         |
|               |    | Top Height (m)       | 24.06                                                | 21.00                                               | 26.60                                               | 1.53                                               | 1.75                                                               | 1.20                                                                     | 7.28                                                                   | -0.98                                                             | 2.41                           |




---



Forests 2013, 4 19

# Table 9. *Cont.*

<table>
<thead>
<tr>
<th>Species Group</th>
<th>n</th>
<th>Variable</th>
<th colspan="7">Combined Conifer and Deciduous</th>
</tr>
<tr>
<th></th>
<th></th>
<th></th>
<th colspan="4">Observed</th>
<th colspan="5">Statistics of Model Fit</th>
</tr>
<tr>
<th></th>
<th></th>
<th></th>
<th>Mean</th>
<th>Min</th>
<th>Max</th>
<th>SD</th>
<th>AMB</th>
<th>SD_Resid</th>
<th>RMB (%)</th>
<th>EF</th>
<th>EQ</th>
</tr>
  </thead>
  <tbody>
<tr>
<td>SW</td>
<td>20</td>
<td>Volume (m³ ha⁻¹)</td>
<td>340.76</td>
<td>207.39</td>
<td>472.82</td>
<td>67.41</td>
<td>-31.24</td>
<td>51.35</td>
<td>-9.17</td>
<td>0.19</td>
<td>54.52</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Basal Area (m² ha⁻¹)</td>
<td>40.44</td>
<td>25.73</td>
<td>55.21</td>
<td>7.09</td>
<td>-2.24</td>
<td>5.82</td>
<td>-5.54</td>
<td>0.22</td>
<td>6.07</td>
</tr>
<tr>
<td></td>
<td></td>
<td>QMD (cm)</td>
<td>23.04</td>
<td>17.57</td>
<td>30.33</td>
<td>3.66</td>
<td>-0.77</td>
<td>1.01</td>
<td>-3.33</td>
<td>0.88</td>
<td>1.38</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Density (stems ha⁻¹)</td>
<td>1059</td>
<td>550</td>
<td>1925</td>
<td>428</td>
<td>40.48</td>
<td>141.86</td>
<td>3.82</td>
<td>0.88</td>
<td>95.34</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Top Height (m)</td>
<td>24.01</td>
<td>20.70</td>
<td>29.60</td>
<td>2.11</td>
<td>0.67</td>
<td>1.15</td>
<td>2.79</td>
<td>0.60</td>
<td>1.20</td>
</tr>
  </tbody>
</table>

## 4.2. *Validation Metrics*

The justification to use a model for forest management decision making is based on evidence that the model behaves logically under a range of typical conditions, is unbiased and performs within a specified allowable error. Since many validation metrics are potentially helpful in assessing model performance, the final chosen metrics should complement one another. Average model bias is a widely used metric, but does not provide sufficient information to fully characterize model bias. Relative mean bias (RMB) relates the AMB to the mean of the parameter, assessing the magnitude of the bias. However, the RMB can also be misleading when the mean parameter is small. Inconsequential deviations in size or yield (e.g., in juvenile datasets) may appear as a large RMB. For example a 10% variation in RMB may be smaller than the absolute measurement error (e.g., measurement errors for DBH and height are ±1 cm and ±0.5 m, respectively [17]). There is also a possibility that two very large opposing residual errors can offset one another to yield small average and relative model biases which prompts the need for a third metric to assess the variation of the residuals.

Efficiency provides an assessment of precision, with high efficiency indicating that there is little variation in the residual errors. The combination of AMB, RMB and efficiency provide a robust assessment of model behavior. The observed vs. predicted scatter plots provide a visual depiction of similar information and further illustrates where a model behaves poorly. For example, a model may be biased (large AMB) and have poor precision (low EF) overall. However, the scatter plot of the residuals might clearly show that the bias and poor precision are a result of poor performance in a specific region within the data (e.g., very old stands).

By plotting the residual errors against parameters such as site index, initial density or projection length, biases hidden in the data can be identified. For example, a model may tend to underestimate yield at low site indices and overestimate yield at high site indices. Examining how bias changes with projection length allows the user to assess whether the model bias is stable over all projections lengths or increases with projection length.

Another valuable model assessment metric is the equivalence test. We reversed the paired *t*-test for equivalence to identify the threshold value where the model shifts from being “not equivalent” to “equivalent”. This simplifies the problem of searching for an acceptable threshold when using equivalence testing. This, in essence, turns the equivalence test into a confidence interval depicting an allowable error. Model users need only decide if the deviations presented and the associated power are acceptable for their application. Frequently, deviations of less than ±10% of the mean are reasonable, however, in the absence of a better model, higher values may be accepted.

---



*Forests* **2013**, *4* 20

The use of a single metric to assess model behavior is not recommended, but rather a suite of metrics are needed to fairly assess model performance.

## 4.3. *Data Partitioning*

The ASRD mature, the SDS and a portion of the WESBOGY plot data used in this validation were also used in building and parameterizing the individual growth and mortality relationships used in MGM. The ideal dataset for validation is independent data which was not used in fitting the parameters for the model [10,31]. If the data for validation are not independent of the model-building data, then prediction errors are not independent and are less useful indicators of a models predictive ability [33]. Frequently, data are intentionally set aside for validation. However, the decision to set aside data when it is scarce may result in a model with inferior parameter estimates [31]. Kozak and Kozak [33] demonstrated that setting aside data provides little new information when evaluating regression models; their preferred method was the collection of new data. Comparing the model with the data from which it was developed can provide useful information relating to how well the model is working [7]. While it is possible to use data from a different region or population, regional differences in calibration may limit the assessment of model behavior in the region of interest.

The majority of the arguments for data splitting apply more appropriately to models represented by a single equation, rather than to more complex models which include many component relationships. For complex models like MGM, which consist primarily of a series of species-specific individual tree functions, a validation at the stand level represents a difference in scale and level of integration which distances the stand level validation data from the individual tree data used in model parameterization.

We acknowledge that a true independent validation dataset was not available given the limited data. We feel that, although the data used in this validation are not entirely independent of the tree-level parameterization, the conclusions drawn from this validation are valuable, especially given the need to assess stand-level performance for management purposes.

## 4.4. *Summary of Model Performance*

### 4.4.1. State Variables

In general MGM performs well for state variables when compared to data from a range of stand composition (pure and mixed aspen and spruce) and ages. The projections for both pure and mixed stands also indicate general agreement with the expected behavior of these stands as described in the literature [3,34–38]. Table 10 summarizes the range of relative mean biases over all datasets for the deciduous parameters in the AW and DC species group and coniferous parameters for the SW and CD species groups.

---



*Forests 2013, 4* 21

**Table 10.** The summary of the ranges of relative mean biases (RMB) in percent over all datasets by stand parameters (volume (m³ ha⁻¹), basal area (m² ha⁻¹), DBH (cm) and QMD (cm), density (stems ha⁻¹) and top height (m)).

<table>
  <thead>
    <tr>
      <th>Species Group</th>
      <th>Variable</th>
      <th colspan="2">Range of RMB%</th>
    </tr>
<tr>
      <th></th>
      <th></th>
      <th>Min</th>
      <th>Max</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AW/DC</td>
<td>Volume (m³ ha⁻¹)</td>
<td>-12.97</td>
<td>17.70</td>
    </tr>
<tr>
      <td>Deciduous</td>
<td>Basal Area (m² ha⁻¹)</td>
<td>5.15</td>
<td>15.03</td>
    </tr>
<tr>
      <td></td>
<td>DBH/QMD (cm)</td>
<td>-18.5</td>
<td>5.15</td>
    </tr>
<tr>
      <td></td>
<td>Density (stems ha⁻¹)</td>
<td>-9.74</td>
<td>19.42</td>
    </tr>
<tr>
      <td></td>
<td>Top Height (m)</td>
<td>-6.44</td>
<td>12.52</td>
    </tr>
<tr>
      <td>SW/CD</td>
<td>Volume (m³ ha⁻¹)</td>
<td>-9.5</td>
<td>-0.19</td>
    </tr>
<tr>
      <td>Coniferous</td>
<td>Basal Area (m² ha⁻¹)</td>
<td>-5.54</td>
<td>-4.60</td>
    </tr>
<tr>
      <td></td>
<td>DBH/QMD (cm)</td>
<td>-6.43</td>
<td>5.35</td>
    </tr>
<tr>
      <td></td>
<td>Density (stems ha⁻¹)</td>
<td>-12.35</td>
<td>7.11</td>
    </tr>
<tr>
      <td></td>
<td>Top Height (m)</td>
<td>-3.03</td>
<td>10.99</td>
    </tr>
  </tbody>
</table>

With respect to top height, the model is slightly biased, with the majority of relative mean bias (RMB) values being less than 10% for both conifer and deciduous components of these stands. A larger RMB can indicate poorer model performance as seen in deciduous top height in the SDS AW group (RMB = 12.52%, AMB = 1.25 m, EF = 0.39 and EQ = 1.7 m). However, this is not the case in the WESBOGY dataset where the CD conifer top height (RMB = 10.99%) is not indicative of poor model performance given the other metrics (top height mean of 2.74 m, AMB = 0.3 m, EF = 0.77, and EQ of 0.36). The large bias in deciduous top height increment in older stands (Table 3) is likely related to dieback of the aspen. In MGM, top height is projected using height vs. age and site index ("site") curves [18,19,26]. For the top trees, there is little or no reduction in height increment in the model due to overtopping tree competition, therefore top height should be estimated well. Because the site curve is obtained from the literature, deviations in top height are likely caused by errors associated with the sampling or construction of these curves [39]. Alberta is currently evaluating a new set of permanent sample plot (PSP) based curves [40], rather than the current stem analysis-based ones, which may further improve top height behavior.

In most cases, average height was predicted well and was relatively unbiased with a maximum RMB of 14.25%. Unlike top height, average height is the mean of all trees, most of which have their height increments reduced due to competition from overtopping trees. Consequently, this indicates that the effects of competition on height are being modeled well within MGM.

Both conifer and deciduous average DBH are also projected well. In the juvenile SDS dataset, there appears to be an overprediction of deciduous DBH in the mixed species group (RMB = 18.5%), however, the EQ is 1.41 cm, which is similar to the SW conifer EQ of 1.53 cm which had a RMB of -0.89%. The remaining RMB values are below 7%, indicating the model is relatively unbiased with respect to DBH.

Densities for the mature deciduous and conifer components were predicted well. The exception is in the Saskatchewan dataset, where the pure AW plots had a RMB of 19.42% indicating underestimation of deciduous tree survival. This suggests that the survival functions for Saskatchewan may require refitting using regional data.

---



*Forests 2013, 4* 22

In the juvenile stages, the model performs well for height and DBH; however, difficulties in predicting juvenile mortality are evident. For the SDS dataset, the model tended to overestimate densities of both the conifer and deciduous components. For the tended WESBOGY dataset MGM underestimated deciduous density and slightly overestimated conifer density. Mortality is highly variable in juvenile stands, as factors unrelated to density and social position are also important. These factors include: competition from shrubs and grass [41,42], browsing [41,43–45], disease [46–48], insects [49], and climate [50,51].

Stand volume is probably the most important output variable for forest managers, and integrates the effects of height, diameter and density. Our juvenile PSP datasets are too young to contain enough stem volume to meaningfully compare predictions; however, for the mature ASRD data, the model is unbiased for deciduous components.

The residual errors over the range of a parameter such as site index, initial density and projection length showed no trends in bias with respect to these inputs.

For the Saskatchewan dataset, MGM provided unbiased estimates of conifer volume, but underestimated deciduous volume in the AW and DC plots. Again, the regional underestimation of density may be to blame, since heights and diameters were predicted well.

## 4.4.2. Increment Variables

Periodic annual volume increment assesses the growth components of the model in isolation since mortality, removals and ingress are accounted for. In contrast, under the state variable validation, yield predictions are assessed as a whole system where, for example, density underestimates can offset overestimates of DBH and height, resulting in yield estimates being unbiased. The validation of MGM using periodic annual volume increment with the ASRD dataset showed that overall MGM is overestimating volume increment for the four species groups (Table 3). Overestimates range from 0.8 m<sup>3</sup> ha<sup>-1</sup> y<sup>-1</sup> to 1.85 m<sup>3</sup> ha<sup>-1</sup> y<sup>-1</sup> with the pure stands showing the greatest overestimates. The performance in these mature stands may be attributed to a number of factors. Firstly, the average ages at the beginning of the projections are 74 years for AW, 108 years for DC, 147 for CD and 154 for SW. The average mortality rate in natural pure SW stands is 0.7% [52], however, in the SW and CD species group, 16% and 20% of the plots, respectively, showed an average mortality rate greater than 2.1%, more than three times the average rate. For the AW and DC species groups, these age ranges are associated with stands that are in the decline phase, where top trees are being replaced by new cohorts of the same species or understory spruce are emerging into the canopy. In these cases, stand dynamics are highly variable and difficult to model when the underlying causes (*i.e.*, stem decay, stem breakage due to wind, ice and snow damage) are not explicitly represented in the model.

The model increment performance against the juvenile SDS and WESBOGY datasets was encouraging since these age ranges represent the ages where the model will be used in management planning. Results show that DBH increment predictions are unbiased with the exception of the WESBOGY CD deciduous DBH being underestimated by 5 mm y<sup>-1</sup>. In both juvenile datasets the deciduous top height is underestimated. The remaining SDS height and top height increments are unbiased. For the tended WESBOGY data, height and top height increments for the conifer in the CD

---



*Forests 2013, 4* 23

are underestimated, since the pure SW species group is unbiased, this suggests that the influence of the deciduous on spruce growth needs further refinement.

## 4.5. *Limitations of This Validation*

Although this validation is rigorous, it cannot evaluate model performance outside the frame of the validation datasets. One concern is that we cannot assess rotation length projections of post-harvest stands because re-measured plots from such stands of sufficient age do not yet exist in the western boreal region. For now, we must assume that the dynamics of mature post-harvest stands will be similar to that of mature natural-origin stands. We also note a significant lack of stands of middle-age (25–60 years), and a serious lack of pure white spruce juvenile and mid-aged stands in the validation datasets. The lack of young spruce dominated plots largely reflects successional dynamics in these natural mixedwood stands, but is a concern since pure young spruce stands are frequently created under current management practices. This validation also assessed model performance for the tended juvenile aspen/spruce mixes found in the WESBOGY data. Although the model validated very well, some caution is required since the WESBOGY data is limited only to spruce/aspen mixes over a short assessment period (maximum 10 years).

## **5. Conclusions**

Validation is an essential and important aspect of model evaluation for users and regulatory agencies. The objective of this validation was to assess the performance of the Mixedwood Growth Model (MGM). The validation draws on a suite of metrics that, in combination, support the use of MGM by forest managers in predicting the yield outcomes of many different species mixtures, stand structures and thinning or tending treatments. MGM worked well for both pure and mixed species stands of aspen and spruce. While the model performed well in young, post-harvest stands, this work indicated problems in capturing the highly variable mortality in aging deciduous and conifer stands. Nunifu [5] has also shown that the model works well for lodgepole pine. The sound performance of MGM is attributed to the individual tree modeling approach where growth and survival of each tree is influenced by its species, size and social position within the stand. This approach makes MGM responsive to changes in stand structure and allows projections of complex species mixtures and stand structures, especially following thinning or tending treatments.

There is still a need to continue model development to better represent managed/tended stands. Mortality could be improved for old stands with better representation of agents that cause periodic high mortality (insects, disease, severe wind events). A better regional calibration in Saskatchewan is also warranted.

## **Acknowledgments**

MGM was originally developed by Stephen J. Titus and Bill Adams. Numerous graduate students have contributed model components. Members of the Western Boreal Growth and Yield Association (WESBOGY), the Mixedwood Management Association (MWMA) and the Forest Resource Improvement Association of Alberta (FRIAA) have provided funding and support. Strategic

---



*Forests* **2013**, *4* 24

Development Team members, Gitte Grover, Yuqing Yang, Willi Fast, Greg Behuniak, Ken Greenway, Gordon Whitmore, and Victor Lieffers, provided invaluable input into the development of the model. We gratefully acknowledge the support provided by these individuals and organizations.

## **Conflict of Interest**

The authors declare no conflict of interest.

## **References**

1. Bokalo, M.; Stadt, K.J.; Comeau, P.G.; Titus, S.J. Mixedwood Growth Model (MGM) (version MGM2010.xls). University of Alberta, Edmonton, Alberta, Canada. 2010. Available online: http://www.rr.ualberta.ca/Research/MixedwoodGrowthModel.aspx. (accessed on 7 July 2011).
2. Pitt, D.G.; Mihajlovich, M.; Proudfoot, L.M. Juvenile stand responses and potential outcomes of conifer release efforts on Alberta's spruce-aspen mixedwood sites. *For. Chronicle* **2004**, *80*, 583–597.
3. Comeau, P.G.; Kabzems, R.; McClarnon, J.; Heineman, J.L. Implications of selected approaches for regenerating and managing western boreal mixedwoods. *For. Chronicle* **2005**, *81*, 559–574.
4. Farnden, C. An analysis framework for linking regeneration standards to desired future forest conditions. *For. Chronicle* **2009**, *85*, 285–292.
5. Nunifu, T.K. Compatible diameter and height increment models for lodgepole pine, trembling aspen, and white spruce. *Can. J. For. Res.* **2009**, *39*, 180–192.
6. Pretzsch, H.; Biber, P.; von Gadow, K.; Hasenauer, H.; Kändler, G.; Kenk, G.; Kublin, E.; Nagel, J.; Pukkala, T.; Skovsgaard, J. Recommendations for standardized documentation and further development of forest growth simulators. *Forstwiss. Centralbl.* **2002**, *121*, 138–151.
7. Soares, P.; Tomé, M.; Skovsgaard, J.P.; Vanclay, J.K. Evaluating a growth model for forest management using continuous forest inventory data. *For. Ecol. Manag.* **1995**, *71*, 251–265.
8. Schmid, S.; Zingg, A.; Biber, P.; Bugmann, H. Evaluation of the forest growth model SILVA along an elevational gradient in Switzerland. *Eur. J. For. Res.* **2006**, *125*, 43–55.
9. Rykiel, E.J., Jr. Testing ecological models: The meaning of validation. *Ecol. Model.* **1996**, *90*, 229–244.
10. Yang, Y.; Monserud, R.A.; Huang, S. An evaluation of diagnostic tests and their roles in validating forest biometric models. *Can. J. For. Res.* **2004**, *34*, 619–629.
11. Pinjuv, G.; Mason, E.G.; Watt, M. Quantitative validation and comparison of a range of forest growth model types. *For. Ecol. Manag.* **2006**, *236*, 37–46.
12. Mayer, D.G.; Butler, D.G. Statistical validation. *Ecol. Model.* **1993**, *68*, 21–32.
13. Robinson, A.P.; Froese, R.E. Model validation using equivalence tests. *Ecol. Model.* **2004**, *176*, 349–358.
14. Pretzsch, H. Application and evaluation of the growth simulator SILVA 2.2 for forest stands, forest estates and large regions. *Forstwiss. Centralbl.* **2002**, *121*, 28–51.
15. Marshall, P.; Parysow, P.; Akindele, S. Evaluating Growth Models: A Case Study Using Prognosis BC. In *Proceedings of Third Forest Vegetation Simulator Conference*; 13–15 February 2007, Fort Collins, CO, USA; pp. 167–185.

---



Forests **2013**, 4  25

16. McGaughey, R.J. Stand Visualization System (SVS) version 3.36; USDA Forest Service, Pacific Northwest Research Station: Portland, OR, USA. 2002. Available online: http://forsys.cfr.washington.edu (accessed on 12 December 2011).

17. Alberta Lands and Forest Service (ALFS). *Permanent Sample Plot Field Procedures Manual*. Alberta Lands and Forest Service, Forest Management Division, Resource Analysis Centre: Edmonton, Alberta, Canada, 1998.

18. Huang, S. *A Subregion-Based Compatible Height-Site Index-Age Model for Young and Mature White Spruce in Alberta*; Forest Management Research Note; Alberta Environmental Protection Land and Forest Service: Edmonton, Alberta, Canada, 1997; Publication NO. T/354.

19. Huang, S.; Titus, S.J.; Morgan, D.J. *A Compatible Height-Site Index-Age Model for Young and Mature Aspen Based on Natural Subregions*; Forest Management Research Note; Alberta Environmental Protection Land and Forest Service: Edmonton, Alberta, Canada, 1997; Publication No. T/355.

20. Huang, S. *Ecologically Based Individual Tree Volume Estimation for Major Alberta Tree Species. Report #1. Individual Tree Volume Estimation Procedures for Alberta: Methods of Formulation and Statistical Foundations*; Alberta Environmental Protection, Land and Forest Services, Forest Management Division: Edmonton, Alberta, Canada, 1994.

21. Alberta Sustainable Resource Development (ASRD). *Stand Dynamics System (SDS) Field Remeasurement Manual*; Alberta Land and Forest Division: Edmonton, Alberta, Canada, 2003.

22. Bokalo, M.; *Comeau, P.G; Humphries, S.* *Western Boreal Growth and Yield Association Long Term Study—Experimental Design, Data Collection and Database Maintenance Manual*; University of Alberta: Edmonton, Alberta, Canada, 2012.

23. Bokalo, M.; Comeau, P.G.; Titus, S.J. Early development of tended mixtures of aspen and spruce in western Canadian boreal forests. *For. Ecol. Manag.* **2007**, *242*, 175–184.

24. Timberline Forest Inventory Consultants Ltd. *Weyerhaeuser Permanent Sample Plot, State of the Data*. Weyerhaeuser Saskatchewan Forestlands: Prince Albert, Saskatchewan, Canada, 2005.

25. Tansanu C.; Bokalo M. *Evaluating the Predictive Performance of Several Growth Models Calibrated for Saskatchewan*; Final Report; Saskatchewan Forest Centre: Prince Albert, Saskatchewan, Canada, 2006; Available online: http://www.environment.gov.sk.ca/Default.aspx?DN=eb4897fd-0c2e-45c4-a548-6f2a290155a4 (accessed on 15 July 2011).

26. Cieszewski, C.J.; Bella, I.E.; Yeung, D.P. *Preliminary Site-Index Height Growth Curves for Eleven Timber Species in Saskatchewan*; draft unpublished report; Saskatchewan Forest Centre: Prince Albert, Saskatchewan, Canada, 1993.

27. Gal, J.; Bella, I.E. *New Stem Taper Functions for 12 Saskatchewan Timber Species*; Information report NOR–X– 338; CFS Northern Forestry Centre: Edmonton, Alberta, Canada, 1994.

28. Pretzch, H. *Forest Dynamics, Growth and Yield*; Springer: Berlin and Heidelberg, Germany, 2009; pp. 56–58.

29. Loague, K.; Green, R.E. Statistical and graphical methods for evaluating solute transport models: Overview and application. *J. Contam. Hydrol.* **1991**, *7*, 51–73.

30. Sterba, H.; Monserud, R.A. Applicability of the forest stand growth simulator prognaus for the Austrian part of the Bohemian Massif. *Ecol. Model.* **1997**, *98*, 23–34.

31. Vanclay, J.K.; Skovsgaard, J.P. Evaluating forest growth models. *Ecol. Model.* **1997**, *98*, 1–12.

---



*Forests* **2013**, *4* 26

32. Wellek, S. *Testing Statistical Hypotheses of Equivalence and Noninferiority*, 2nd ed.; Chapman and Hall: London, England, 2009.

33. Kozak, A.; Kozak, R. Does cross validation provide additional information in the evaluation of regression models? *Can. J. For. Res.* **2003**, *33*, 976–987.

34. Delong, C. Dynamics of Boreal Mixedwood Ecosystems. In *Proceedings of the Symposium on Northern Mixedwoods*, Fort St. John, British Columbia, Canada, 12–14 September, 1989; pp. 30–31.

35. Lieffers, V.J.; Stewart, J.D.; Macmillan, R.B.; Macpherson, D.; Branter, K. Semi-natural and intensive silvicultural systems for the boreal mixedwood forest. *For. Chronicle* **1996**, *72*, 286–292.

36. Man, R.; Lieffers, V.J. Are mixtures of aspen and white spruce more productive than single species stands? *For. Chronicle* **1999**, *75*, 505–513.

37. Chen, H.Y.; Popadiouk, R.V. Dynamics of North American boreal mixedwoods. *Environ. Rev.* **2002**, *10*, 137–166.

38. Kabzems, R.; Garcia, O. Structure and dynamics of trembling aspen Â—white spruce mixed stands near Fort Nelson, B.C. *Can. J. For. Res.* **2004**, *34*, 384–395.

39. Mowrer, H.T.; Frayer, W.E. Variance propagation in growth and yield projections. *Can. J. For. Res.* **1986**, *16*, 1196–1200.

40. Huang, S.; Meng, S.X.; Yand, Y. *A Growth and Yield Projection System (GYPSY) for Natural and Post-Harvest Stands in Alberta*; Technical Report Pub. No.: T/216; Alberta Sustainable Resource Development: Edmonton, Alberta, Canada, 2009.

41. Boateng, J.O.; Heineman, J.L.; Bedford, L.; Harper, G.J.; Linnell Nemec, A.F. Long-term effects of site preparation and postplanting vegetation control on *Picea glauca* survival, growth and predicted yield in boreal British Columbia. *Scand. J. For. Res.* **2009**, *24*, 111–129.

42. Pitt, D.G.; Comeau, P.G.; Parker, W.C.; MacIsaac, D.; McPherson, S.; Hoepting, M.K.; Stinson, A.; Mihajlovich, M. Early vegetation control for the regeneration of a single-cohort, intimate mixture of white spruce and trembling aspen on upland boreal sites. *Can. J. For. Res.* **2010**, *40*, 549–564.

43. Zimmerling, T.N.; Zimmerling, L.M. Effectiveness of a physical barrier in deterring vole and snowshoe hare feeding damage to Lodgepole pine seedlings. *West. J. Appl. For.* **1998**, *13*, 12–14.

44. Brandt, J.P.; Cerezke, H.F.; Mallett, K.I.; Volney, W.J.A.; Weber, J.D. Factors affecting trembling aspen (*Populus tremuloides* Michx.) health in the boreal forest of Alberta, Saskatchewan, and Manitoba, Canada. *For. Ecol. Manag.* **2003**, *178*, 287–300.

45. Sullivan, T.P.; Sullivan, D.S.; Lindgren, P.M.F.; Ransome, D.B. Long-term responses of ecosystem components to stand thinning in young lodgepole pine forest: IV. Relative habitat use by mammalian herbivores. *For. Ecol. Manag.* **2007**, *240*, 32–41.

46. Perala, D.A. How endemic injuries affect early growth of aspen suckers. *Can. J. For. Res.* **1984**, *14*, 755–762.

47. Mallett, K.; Volney, W. The effect of Armillaria root disease on lodgepole pine tree growth. *Can. J. For. Res.* **1999**, *29*, 252–259.

48. Blenis, P.V. Impact of simulated aspen shoot blight on trembling aspen. *Can. J. For. Res.* **2007**, *37*, 719–725.

---



*Forests* **2013**, *4* 27

49. Pothier, D.; Mailly, D. Stand-level prediction of balsam fir mortality in relation to spruce budworm defoliation. *Can. J. For. Res.* **2006**, *36*, 1631–1640.

50. Hogg, E.; Wein, R.W. Impacts of drought on forest growth and regeneration following fire in southwestern Yukon, Canada. *Can. J. For. Res.* **2005**, *35*, 2141–2150.

51. Cortini, F.; Comeau, P.G.; Boateng, J.O.; Bedford, L.; McClarnon, J.; Powelson, A. Effects of climate on growth of lodgepole pine and white spruce following site preparation and its implications in a changing climate. *Can. J. For. Res.* **2011**, *41*, 180–194.

52. Feng, Z.; Stadt, K.J.; Loeffers, V.J. Linking juvenile white spruce density, dispersion, stocking, and mortality to future yield. *Can. J. For. Res.* **2006**, *36*, 3173–3182.

© 2013 by the authors; licensee MDPI, Basel, Switzerland. This article is an open access article distributed under the terms and conditions of the Creative Commons Attribution license (http://creativecommons.org/licenses/by/3.0/).
