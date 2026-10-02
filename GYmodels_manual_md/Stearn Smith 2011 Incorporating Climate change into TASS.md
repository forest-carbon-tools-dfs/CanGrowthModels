

# **INCORPORATING CLIMATE CHANGE INTO TASS PREDICTIONS: A PROBLEM ANALYSIS**

**March 2011**

<u>Prepared for:</u>
Catherine Bealle Statland
Forest Analysis and Inventory Branch
**Ministry of Forests, Lands and Natural Resource Operations**

<u>Prepared by:</u>
**Stearns-Smith & Associates, Sooke, BC**

Stearns-Smith & Associates Logo

---

# TABLE OF CONTENTS

1.0 Executive Summary ............................................................................................ 3
2.0 Introduction ....................................................................................................... 4
  2.1 TASS Background ............................................................................................ 4
  2.2 Climate Background ....................................................................................... 4
3.0 Literature Review .............................................................................................. 6
  3.1 Hybrid Approaches .......................................................................................... 6
    3.1.1 Stand-BGC .................................................................................................. 7
    3.1.2 3-PG ............................................................................................................. 9
  3.2 Empirical models ............................................................................................ 11
    3.2.1 CACTOS ................................................................................................... 11
    3.2.2 FVS ........................................................................................................... 11
    3.2.3 Site Quality .............................................................................................. 13
    3.2.4 Population genetics ................................................................................ 14
    3.2.5 Carbon dioxide fertilization .................................................................... 17
    3.2.6 Insects ...................................................................................................... 18
4.0 Needs Assessment ............................................................................................ 19
  4.1 Introduction and Methods ............................................................................ 19
  4.2 Clients ............................................................................................................ 19
  4.3 Climate in other local GY models ................................................................ 20
  4.4 CC in BC analyses involving GY .................................................................. 21
  4.5 Linkage to Landscape and Forest Estate Models ...................................... 22
5.0 Discussion .......................................................................................................... 24
  5.1 Business Environment and Needs ............................................................... 24
  5.2 Acquiring Climate Data ............................................................................... 25
  5.3 Population genetics considerations ........................................................... 26
6.0 Options Considered .......................................................................................... 28
  6.1 Two Process Model Options: Linkage and Integration ............................. 28
  6.2 Option 3: An empirical approach .................................................................. 29
7.0 Recommended Option ........................................................................................ 30
8.0 Literature Cited .................................................................................................. 33
9.0 Appendix I – List of Interviewees ..................................................................... 38

Project manager was Stephen Stearns-Smith, RPF. Roberta Parish and Stephen conducted the literature review and needs assessment, respectively, and prepared the report. Additional technical input and review was provided by Ian Cameron, RPF, for growth and yield modelling, and Trevor Murdock, for climate change projections. All team members contributed to the development of options and recommendations.

----

TASS-CC Problem Analysis Page **2** of **39** Stearns-Smith & Associates Forestry Consultants

---



# 1.0 EXECUTIVE SUMMARY

Ministry of Forests, Lands and Natural Resource Operations (MFLNRO) strategic priorities related to climate change include development of tools to predict how British Columbia's (BC) forests will be affected by climate change and its effect on future forest values. The Tree and Stand Simulator (TASS) is a Ministry growth and yield (GY) model used extensively in forest planning, i.e., Timber Supply Review and silviculture investment analyses, however it is currently not sensitive climate. Consequently, Forest Analysis and Inventory Branch undertook a problem analysis to explore opportunities for incorporating climate change in TASS predictions.

The problem analysis consisted of a review of the literature, a needs assessment that gathered input from TASS clients as well as experts in the fields of climate change and growth and yield, and concluded with a discussion of options and recommendations. Client interviews confirmed that climate change is currently not being incorporated in most forest planning exercises due in part to a lack of climate-sensitive forecasting tools. Consequently, client interest in a climate-sensitive version of TASS is nearly universal.

From the literature review and consultations with experts, three general approaches (options) for incorporating climate change in GY models were identified. The two options involve process modelling, which serves to connect future climate predictions with fundamental biological processes governing tree growth, such as photosynthesis and water balance. *The process model linkage* approach links an existing process model with a GY model, while the *process model integration* option takes a more systemic approach by integrating individual processes inside a GY model.

Although both process model options continue to attract attention in the research community, experts with experience in this field cautioned that process models and GY models generally operate at different spatial and temporal scales making them difficult to harmonize. Process models compatible with stand-level GY models often require future predictions of daily climate at a scale that challenges the spatial downscaling limits of global climate change models. Population genetics field trials used to produce BC's seed transfer policies have demonstrated that the growth of locally-adapted populations (seed sources) can be affected by small changes in climate. Yet none of the existing process models examined incorporate population genetics. Process modelling is also outside the education and experience of the recently downsized TASS team, which likely increases resourcing needs.

Instead, an *empirical approach* is recommended, which has a number of advantages over process modelling at this time. This approach leverages existing empirical data on climate-growth effects, including those gleaned from population genetics field trials. The associated climate projection needs are more likely suited to off-the shelf tools such as ClimateBC, aiding operational applications on the landbase. Using empirical relationships to modify key TASS components, e.g., height-growth, site index, bole increment, and mortality, will produce a first-approximation version of TASS-Climate that can evolve over time based on user feedback. TASS-Climate will provide a valuable tool to assess climate effects on timber supply analysis and evaluations of silvicultural options. The development process is a better fit with existing TASS resources and also leverages genetics program resources.

---
TASS-CC Problem Analysis Page 3 of 39 Stearns-Smith & Associates Forestry Consultants

---



# 2.0 INTRODUCTION

The Province of British Columbia (BC) and the Ministry of Forests, Lands and Natural Resource Operations (MFLNRO) are recognized as world leaders in proactive response to climate change (CC). MFLNRO engages in research and policy development in support of its CC adaptation goals, including development of forecasting tools to assess the impacts of CC on BC's forest resources. The MFLNRO Forest Analysis and Inventory Branch (FAIB) maintains growth and yield (GY) models for projecting future forest conditions in forest planning and silvicultural investment decisions. The Tree and Stand Simulator (TASS) is the Ministry's GY model for managed stands. However, its projections of future forest conditions do not currently reflect CC. FAIB commissioned this problem analysis to explore options for incorporating CC into TASS predictions.

## 2.1 TASS Background

The Tree and Stand Simulator (TASS II) is a biologically oriented growth and yield model that simulates the growth of crowns and stems of individual trees in a 3-D growing space. TASS combines empirical trends and allometric relationships with a mechanistic abstraction of crown competition to produce estimates of fibre yield (e.g., cubic volume, biomass) and product outrun (e.g., lumber yield and wood quality) for a variety of commercial species in British Columbia. Additional subroutines simulate the effects of forest pests such as spruce budworm and Armillaria root disease. Many of these constituent processes are likely to be affected by predicted changes to climate.

Empirical growth and yield models are based on data collected in the past and use these data to predict the future. Most such models do not readily accommodate direct measures of climate. Changes to site index and growth rates are potentially useable as proxy measures of climate. While there has been some preliminary work exploring how climatic effects might be introduced into TASS by accounting for changes to population adaptation using provenance test data (O'Neil and Nigh, in review) or by running a process model (3PG, Landsberg and Waring 1997) in tandem (Simpson 2008), TASS currently has no routines that would modify simulated processes based on climatic inputs. This applies both to basic growth functions as well as the pest modules. Consequently TASS is unable to predict stand development under different climate scenarios, which are likely to affect stand dynamics through changes to tree growth as well as the incidence and impact of insects and diseases.

## 2.2 Climate Background

Temperature in British Columbia has been increasing in all regions and seasons over the last century, with the rate of change increasing towards the end of the century. For example, the BC average increase has been at a rate of 0.22 °C per decade from 1901-2004 and 0.45°C per decade from 1951-2004 (Pike et al. 2010). Precipitation change, however, has varied regionally, seasonally, and within the historical time period under consideration. For example, winter precipitation averaged over the province increased at a rate of 1.8 mm/month per decade from 1901-2004 but if one considers only the last 50 years, the trend is reversed: -4.3 mm/month per decade (Pike et al. 2010). Other hydro-climatic trends include reductions in snowpack of -25%

----

TASS-CC Problem Analysis Page 4 of 39

[signature: Stearns-Smith & Associates Forestry Consultants]

---


on average over the last 50 years, glacier volume loss, spring runoff earlier by 10 to 30 days in areas dominated by snow melt, earlier spring break-up of lake ice by up to 10 days, and decreased duration of lake ice by up to 42 days (Rodenhuis et al. 2009).

Annual temperature is projected to increase by an average of 1.7°C based on 15 Global Climate Models (GCMs) and two emissions scenarios (<u>A2</u> and <u>B1</u>) for the 2050s, with a range of 1.2 to 2.5°C (<sup>10<sup>th</sup></sup> to <sup>90<sup>th</sup></sup> percentile of the projections), while precipitation projections depend on region and season of interest with changes from +12% more to -13% less precipitation projected (Pike et al. 2010). These numbers may seem relatively small, but they represent changes that are averaged over a 30-year period (2041-2070) and averaged over regions and seasons. To put the actual magnitude of this change in context, the temperatures projected by the end of the century are larger than any seen in BC over the 14,000 years since the ice age, when the landscape was vastly different (Rodenhuis et al. 2009). This represents a temperature regime where the average years of the future are warmer than the warmest years of the 20<sup>th</sup> century even under extremely aggressive greenhouse gas reduction scenarios (Pike et al. 2010).

----

TASS-CC Problem Analysis Page 5 of 39 Stearns-Smith & Associates Forestry Consultants

---



# 3.0 LITERATURE REVIEW

Over the last two decades, scientists have increasingly focused on the potential effects that changes in climate might have on site quality, regeneration establishment, growth and mortality. Growth and yield models have been modified in two fundamental ways: one is to incorporate climate empirically into the GY model and the other is to develop hybrids of empirical and physiological process models.

## 3.1 Hybrid Approaches

Process models that predict growth in forest ecosystems are plentiful, numbering in the hundreds (Schwalm and Ek 2001). Models that operate at the individual-tree level and predict growth under climate change are far less numerous. Although physiologists have a general understanding of factors that influence forest production, development of process-based models of forests has lagged behind other disciplines like agriculture and horticulture for a variety of reasons including: a lack of knowledge on key tree growth processes, particularly belowground; the longevity of trees compared to annual or perennial herbaceous crops; and until recently, a lack of computers with sufficient power to handle the array of processes influencing long-term growth. Schwalm and Ek (2001) reviewed 12 models that can predict individual tree growth based on ecophysiological principles. All of the models require multiple parameters for which data are not readily available and generate large computational demand from the need to describe complex processes. The most parsimonious model, according to Schwalm and Ek (2001), is Stand-BGC (McMahan et al. 2002; Milner et al 2002, 2003) and the most data intensive is FORSANA (Grote 1998). Data for process models usually includes climatic variables such as temperature and precipitation and rarely include wind speed despite its link to relative humidity. Models that use average daily or monthly temperature underestimate tree-level growth or respiration especially where higher minimum rather than maximum temperatures contribute to the change in climate. "The inherent non-linearity and interconnectedness of metabolic processes warns against using simple averages or weighted averages. This is because the mean of the non-linear function is seldom identical to the non-linear function of the mean" (Schwalm and Ek 2001, page 245). A phenology component, which can address the onset of budburst, as well as budset at the end of the growing season, is found in a few process models. Phenology depends on one or more control mechanisms (e.g., photoperiod, temperature sums, winter chilling) which may be disturbed by CC. A number of process models also consider the effect of increased carbon dioxide, which is predicted to increase growth rates and decrease dark respiration. Because photosynthesis responds to changes in temperature and precipitation, detailed modelling is core to process models. Photosynthesis is linked to leaf morphology and crown geometry and accurate representation of the crown facilitates modeling of light interception.

Common to all process models is the need for information on the soil, especially measures of soil moisture, and in some models a coupling to soil temperature. 3-PG does not model below ground processes but does link soil moisture to precipitation.

The addition of a process model to predominantly empirical GY models in a hybrid model is viewed as way to improve predictions of the impact of climate change. A number of process

---
TASS-CC Problem Analysis Page **6** of **39** Stearns-Smith & Associates Forestry Consultants

---



models have been linked to empirical models (e.g., MAESTRO to PTAEDA2 for loblolly pine (Baldwin et al. 2001); Stand-BGC to FVS for northwestern conifers (Milner et al. 2003); 3-PG to PICUS for European coniferous and deciduous species (Seidl et al. 2005)) and of these we examine two in detail: Stand-BGC and 3-PG.

## 3.1.1 *Stand-BGC*

Stand-BGC is an individual-tree, distance-independent version of a whole-stand process model. Stand-BGC grows grasses and shrubs as well as trees in the stand (McMahan et al. 2002; Milner et al 2002, 2003). It is climate driven at a daily scale and allocates carbon on an annual basis. As a stand-alone model, Stand-BGC uses tree lists from standard inventories and requires height, diameter, crown ratio, cover and canopy depth of understorey vegetation by lifeform or by species. In addition, Stand-BGC requires daily climate data (maximum and minimum temperatures, relative humidity, solar insolation, and atmospheric transmissivity). Soil texture and depth are also needed. Stand-BGC provides a default set of physiological parameters, which may be altered by users (Tables 1 and 2).

| Life form independent parameters                              | Value  |
| ------------------------------------------------------------- | ------ |
| Rain interception coefficient (m·LAI-1·day-1)                 | 0.0005 |
| Canopy light extinction coefficient (1/LAI)                   | -0.5   |
| LWP at stomatal closure (-Mpa)                                | 1.65   |
| VPD at stomatal closure (mbar)                                | 25     |
| Optimum temperature for photosynthesis (°C)                   | 20     |
| Maximum temperature for photosynthesis (°C)                   | 45     |
| Growth respiration coefficient: leaves (fraction/year)        | 0.35   |
| Growth respiration coefficient: stems (fraction/year)         | 0.3    |
| Coarse root growth respiration: fraction (not currently used) | 0.3    |
| Growth respiration coefficient: roots (fraction/year          | 0.35   |
| Leaf carbon allocation fraction in first year                 | 0.15   |
| Stem carbon allocation fraction in first year                 | 0.35   |
| Coarse root carbon allocation fraction (not used)             | 0.05   |
| Root carbon allocation fraction in first year                 | 0.5    |
| Ratio all-sided LAI to one-sided LAI                          | 2.3    |
| Slope of gs (mm·s-1 vs. PAR (μmol·m-2·s-1)                    | 0.01   |
| Coefficient for maintenance respiration (s-1) (Q10=2.0)       | 0.069  |
| Mass fraction of C in dry matter                              | 0.5    |
| Maximum ratio of leaf C/(leaf C + root C)                     | 0.66   |
| Water stress integral fraction                                | 0.19   |
| Stem/coarse root allocation ratio                             | 0.85   |
| Fraction of total stem carbon in branches                     | 0.25   |


TASS-CC Problem Analysis Page **7** of **39** Stearns-Smith & Associates Forestry Consultants

---



# Table 2. Parameter values that may differ with life form (Milner et al. 2003)

| Parameter description                                  | Trees  | Shrubs | Grasses |
| ------------------------------------------------------ | ------ | ------ | ------- |
| Maximum leaf conductance (gs)(m/s)                     | 0.0016 | 0.0016 | 0.006   |
| Minimum LWP (-Mpa)                                     | 0.5    | 0.5    | 0.5     |
| Boundary layer conductance (m/s)                       | 0.1    | 0.1    | 0.01    |
| Maintenance respiration coefficient: leaves (kg C/day) | 0.0002 | 0.0004 | 0.0044  |
| Maintenance respiration coefficient: stems (kg C/day)  | 0.0002 | 0.0002 | 0       |
| Coarse root respiration (not currently used)           | 0.0002 | 0.0002 | 0.0003  |
| Maintenance respiration coefficient: roots (kg C/day)  | 0.0004 | 0.0011 | 0.0044  |
| Maximum photosynthesis rate (μmol·m-2·s-1)             | 4      | 4      | 6       |
| Leaf turnover (senescence)(%/year)                     | 33     | 50     | 50      |
| Stem turnover (senescence)(%/year)                     | 0      | 20     | 0       |
| Root turnover (senescence)(%/year)                     | 40     | 80     | 50      |
| Leaf lignin concentration (%)(not currently used)      | 33     | 18     | 17      |
| Specific leaf area (m²/kg)                             | 25     | 35     | 25      |


Annually, a carbon balance is calculated, and carbon in excess of respiration is allocated to foliage and roots first and then to stems. In dry years, more carbon is allocated to roots and less to foliage. To do this requires climate data with high temporal resolution providing actual annual variability rather than simple linear annual time series generated by fitting lines through 30-yr averages from a climate model such as ClimateBC (Hamman and Wang 2005; Wang et al. 2006a). Mortality occurs when leaf area goes to zero. Of the default parameters, only four (leaf turnover, leaf C:N ratio, specific leaf area and fine root to leaf carbon ratio) are considered to be sensitive to climate (C. Boisvenue, Forests in a Changing Climate: Modelling and Analysis Options, 2010, Victoria, BC).

Stand-BGC has been linked to the Forest Vegetation Simulator (FVS) (McMahan et al. 2002; Milner et al. 2002, 2003). Each model grows a shared tree list: FVS at 10-year steps and Stand-BGC at daily and annual steps. Stand-BGC growth increments are aggregated to match FVS steps and hence an FVS user may choose to have increments in diameter, height, crown ratio, and mortality from Stand-BGC replace those generated by FVS. FVS stand management routines may be implemented on the tree list from either output. Because FVS contains a Regeneration routine, any new trees established in the 10 year time step can be passed back to Stand-BGC in an updated tree list. A comparison of predictions to re-measured permanent plot data showed the empirical and process models had similar precision, but Stand-BGC substantially over-predicted growth, while FVS slightly under-predicted growth (Milner et al. 2003).

The approach of linked parallel FVS and Stand-BGC models was not pursued beyond these initial tests. A few years later an empirical approach was used to develop Climate-FVS instead, in part because FVS modellers sought a solution that included genetic effects reflecting population adaptation (see below).

----

TASS-CC Problem Analysis Page **8** of **39** Stearns-Smith & Associates Forestry Consultants

---



# 3.1.2 3-PG

The 3-PG model, developed in 1997, by Landsberg and Waring has been widely applied in forestry (Landsberg et al. 2003). It is a generalized model that requires parameterization for individual species. It was developed to be applicable to plantations and even-aged, homogeneous forests. The model calculates rates of photosynthesis, transpiration, growth allocation and litter production (Coops and Hember 2009). 3-PG runs in monthly time steps and requires input of climate data (mean monthly maximum and minimum temperatures), mean monthly vapour pressure deficits, soil water holding capacity and fertility rating, and photosynthetic capacity (quantum efficiency). 3-PG has no individual tree resolution and consists of tree averages for a single species. To simulate stand growth, 3-PG requires initial stem number and initial biomass estimates for stemwood, foliage, and roots. Values are also needed for specific leaf area (SLA), litterfall rate, and maximum stomatal conductance. Outputs may be monthly or annual estimates of LAI, stem mass, volume, growth rate, MAI, and, density. Mortality follows the -3/2 power 'law'.

In 2008, David Simpson of the then BC Ministry of Forests and Range, ran 3-PG in tandem with TASS output to examine how past and future climates might affect the growth of simulated stands of interior Douglas-fir and lodgepole pine.

A number of GY models have been linked to 3-PG, for example Seidl et al. (2005), Weiskittel et al. (2010), Lonsdale (in prep). In Europe, Seidl et al. (2005) created PICUS v1.3 by linking the forest patch model PICUS v1.2 to 3-PG. The model was developed to examine tree growth in response to changing environmental conditions. Although PICUS is a classical gap model, it does include a detailed light model, like TASS, as well as submodels to account for bark beetle mortality. Also similar to TASS, tree growth is driven by height and a variation of site index; biomass is distributed evenly in within 5x10 x10m³ cells in 10x10m² patches. Unlike 3-PG, mortality in PICUS results from either an intrinsic risk of death which is independent of growth and size or, from stress which induced by slow growth. In the hybrid model, tree growth is based on potential height development modified by an available light function. Estimates of NPP are derived from 3-PG, from the conversion of mean daytime monthly global radiation converted to photosynthetically active radiation (PAR). Monthly values of absorbed PAR are then converted to usable PAR for species groups. One advantage of 3-PG over Stand-BGC is that values for many parameters are generalized for species groups rather than treating trees as a single vegetation life-form. Site fertility was linked to quantum-use efficiency by modification of methods in Sands and Landsberg (2002) and Landsberg et al. (2003). A new management module was introduced in v1.3 but otherwise all other model formulations followed v1.2. The hybrid model requires additional input of a time series of monthly climate data (mean temperature (°C), precipitation (mm), incoming short wave radiation (MJ m<sup>-2</sup> day<sup>-1</sup>), vapour pressure deficit (kPa), and soil characteristics in terms of water-holding capacity (WHC; mm), pH and plant-available nitrogen (kg ha<sup>-1</sup> year<sup>-1</sup>). This type of information and downscaling is available from a limited number of GCMs but is not currently available for BC. Alternatively, this information could be downscaled by the user, or perhaps by first running climate data through a hydrological model (e.g., ForWaDy, Kimmins et al. 2010), the latter having the advantage of being relatively well understood.

Four evaluation scenarios were tested with the 3-PG-linked PICUS model (v1.3). For the first, results of v1.3 were compared to those from BIOMASS applied to the same study of *Picea abies*; in the second, v1.3 results were compared to the Austrian Forest Damage Monitoring

----

TASS-CC Problem Analysis Page 9 of 39 Stearns-Smith & Associates Forestry Consultants

---



system survey; for the third, results were compared to an expert assessment; and, for the fourth, simulations were compared to long-term observation data. In all scenarios, the hybrid performed well in the comparisons with other models and observation data.

Recently, Weiskittel et al. (2010) developed a hybrid model DF.HGS (Douglas-fir Hybrid Growth System) for managed Douglas-fir stands in the Pacific Northwest. The model comprises three components in sequence. Empirical growth is estimated in the branch, crown and canopy structure (BCACS) component, which contains equations to predict the location, diameter and biomass of every branch. Input for BCACS requires a tree list, stand age and site index, which is used to reconstruct past height growth (Weiskittel et al. 2010). Output from BCACs goes to the NPP component. The NPP component incorporates important attributes common to other process-based models as described in Schwalm and Ek (2001) and discussed above. However, inputs were deliberately kept as simple as possible (Weiskittel et al. 2010): daily weather data (maximum, minimum and mean temperature, precipitation relative humidity, day length, solar radiation), site physiographic data (elevation, slope, aspect), soil information (texture, rooting depth, percent rock), and foliar nitrogen concentration, plus physiological parameters obtained from literature. From these data, the NPP component estimates light interception, photosynthesis following Farquhar et al. (1980), respiration (NPP constant fraction of GPP, based on 3-PG), daily soil water balance and daily nitrogen mineralization. Output from NPP is passed to the allocation and growth (ALGRO) component. A modified 3-PG approach resulted in the best relationship between NPP and observed stem volume growth. Modifications arose in the estimate of site fertility from canopy N percentage and correcting for bias when estimating stand level biomass. Model verification used data from nine Stand Management Co-operative (SMC) installations in the Pacific Northwest. The hybrid model achieved accuracy in short-term volume growth prediction comparable to an empirical model previously developed by Weiskittel et al. (2007). Biases in 4-year stand growth predictions from the hybrid model were similar to those from the empirical model under thinning, fertilization, and the combination of these treatments; however, volume growth predictions in unmanaged plantations averaged approximately 36% less bias. Improvements were attributed to detailed information on crown structure (i.e. size, location, and foliage mass of primary branches), simple representation of key physiological processes, and improved site characterization. Soil moisture, temperature, and nitrogen mineralization predicted by the hybrid model also agreed closely with observed values from several previous studies.

Weiskittel et al. (2010) report that the shortcomings of the DF.HGS hybrid model are those common to several other process-based models: missing or poorly represented components such as nitrogen mineralization, uptake and allocation of nitrogen, and carbon allocation with trees as well as lack of data on the effects of silviculture and environmental conditions on foliage dynamics.

Jack Lonsdale, an MSc student with Oscar Gracia at UNBC, is currently combining a re-implementation of the existing British yield tables for Sitka spruce, elements of 3-PG, and remote sensing for stand closure. The resulting model is expected to improve the accuracy of prediction in the development of young stands. It will also provide for more flexible modelling of initial spacing and thinning treatments, and of the effect of environmental factors. A preliminary outline of the project is available online<sup>1</sup>.

----

<sup>1</sup> <u>http://forestgrowth.unbc.ca/</u> accessed February 2011.

TASS-CC Problem Analysis Page **10** of 39 Stearns-Smith & Associates Forestry Consultants

---



# 3.2 Empirical models

## 3.2.1 CACTOS

One of the early modifications of a growth and yield model to address changes in climate involved the California Conifer Timber Output Simulator (CACTOS). Wensel and Turnblom (1998) observed that the predicted growth for major conifer species, calibrated from 1980-1985 data, was higher than that from 1985-1990. The reduced growth was attributed to decreased precipitation during the latter five-year period. Yeh and Wensel (2000) developed equations to relate growth variation to changes in winter precipitation and summer temperatures. This work used the CACTOS development dataset collected from 1976-1980. The authors were able to separate growth effects due to climate. This climate module was not incorporated directly into CACTOS but forms a separate module used in Battles et al. (2008). In Battles et al. (2008), CACTOS was used to explored diameter increment under three management regimes that span a range of forest conditions and silvicultural treatments. Thirty years of growth under four climate scenarios, was projected for unmanaged mature, second growth, mixed-conifers. The mortality function in CACTOS was not adjusted. The CACTOS model development to address climate change is based on special circumstances of data collection over short time periods and limited geographic range.

## 3.2.2 FVS

A thoughtful and comprehensive problem analysis was conducted over several years by the FVS team (ESSA, 2007; 2008; Crookston et al. 2010). Three key concepts emerged from the 2008 focus-group workshop:

1. Species-specific site carrying capacity will change with climate, and this will affect tree survival, since the FVS tree mortality model is (and will continue to be) sensitive to carrying capacity;
2. Climate change will modify how well individual trees are adapted to a site. The model will therefore modify individual growth rate as a function of climatic "distance" between the individual's "ancestral" seed source and the current climate, where the distance is measured on climatic axes; and finally
3. An individual tree's growth rate will be directly related to climate and therefore the modified model will change growth rates as climate changes, regardless of seed source (ESSA, 2008, page 23).

These three concepts formed the basis for development of Climate-FVS. Addressing the second concept guided much of the subsequent development and uses primarily the work of Rehfeldt et al. (2006, 2009) to develop an index of viability for species-specific estimates of climate suitability. These estimates are based on species presence –absence data from some 117,000 inventory observations. The Random Forests classification algorithm was used to predict presence or absence from climate variables, down-scaled using ANUSPLIN (Hutchison 2004). The resulting viability scores range from near zero to 1.0, higher values indicating greater likelihood of species presence.

---
TASS-CC Problem Analysis Page **11** of **39** Stearns-Smith & Associates Forestry Consultants

---



FVS uses site quality to estimate tree growth and Climate-FVS required a function linking site quality to climate. The resulting function is not species-specific, instead it is the ratio of site index under one climate to site index under another climate, where climate is defined as a vector of climatic variables. Site index for all species was based on Monserud's (1984) model for Douglas-fir. The Random Forests classification algorithm was used to distinguish among a set of 35 candidate climate variables. Seven variables were selected:
1. degree days above 5°C;
2. April-September precipitation;
3. mean temperature of the warmest month;
4. product of mean annual precipitation and the difference in mean temperature of the warmest and coldest months;
5. ratio of (2) and mean annual precipitation times (1);
6. summer dryness index;
7. summer dryness times the degree days below 0°C, minimum temperature.

FVS uses maximum basal area and maximum stand density to define carrying capacity of a site. These concepts are not ones that would be likely to be incorporated in the TASS model.

Mortality in Climate-FVS was modified by the use of species viability scores. If the species viability score dropped below 0.2 survival was zero. This choice was based on the experience of Rehfeldt who had found that species rarely occur at viability scores below 0.5. Because of lack of information otherwise, a linear increase in mortality from 0.5 to 0.2 was assumed. Density dependent mortality (Crookston and Dixon 2005) was retained and was influenced by climate through carrying capacity.

Growth was reformulated as a function of changes in site, viability (declining viability linked to declining growth) and species adaptedness to the site. To do this, Climate-FVS incorporates a proportional growth function based on the growth at the site at the origin of the seed relative to that expected if trees were moved to the predicted climate. The function is based on the mean annual temperature at the seed source and the difference between mean temperature of the coldest month at the source and at the planting site (based on the work of Leites Barrios 2009, discussed separately below). Response functions were developed for Douglas-fir, western larch and ponderosa pine. Genetic effects for lodgepole pine, which has a steep cline among seed source adaptedness, were based on values for Douglas-fir, whereas western white pine, Engelmann spruce and western hemlock values were based on western larch, which has a flat response. For species which lack data, the effect was 1.0, so that maladaptation would never limit growth, which is the current assumption in most GY models. With three growth modifiers, the choice of modifiers follows the logic that if the minimum value of any is less than 1.0, then relative growth-rate is the minimum value; otherwise relative growth is 1.0, indicating no reductions due to maladaptation. In some subsequent simulations, genetic effects and site index were found to have opposing impacts on growth: the population showed reduced growth whereas the impact of site index was positive. This may mean that populations currently growing on a site may not be attuned to climates in the future and unable to use the predicted improved growing conditions.

----

TASS-CC Problem Analysis Page 12 of 39 Stearns-Smith & Associates Forestry Consultants

---



# 3.2.3 Site Quality

An increase in site index from increased temperatures associated with climate change is proposed by many authors. Fries et al. (2000) examined the effect of temperature on site index of lodgepole pine. Site index data were from 187 seed provenances planted on 78 sites in 1970-1971. Climate data were based on 1961-1990 normals interpolated to the test sites. Analysis was stepwise regression of a second order polynomial: temperature sum with days >5.6°C and average July temperature explained the most variation. A soil fertility classification (1-3, poor to rich) was a significant variable. No attempt was made to predict the change in site index due to changes in climate although the form of the functions is amenable to this.

Monserud et al. (2006) used site index estimates for lodgepole pine from 1145 plots in Alberta to construct a relationship between site index and climatic variables. Climatic data were obtained from the Alberta Climate Model, based on 30-year normals (1961-1990) from the provincial weather station network. Mapping methods were based on ANUSPLIN, a smoothing spline in four dimensions (latitude, longitude, elevation, climatic variable). Linear and non-linear regression analyses were used to predict site index as a function of climatic variables for each plot. The strongest linear predictors of site index were all measures of heat: growing degree days > 5°C (GDD<sub>5</sub>), the Julian date when GDD<sub>5</sub> reaches 100, and July mean temperature. Monserud et al. (2008) predicted the changes to lodgepole pine index, using equations from Monserud et al. (2006), under projections from three global circulation models (CGCM2, HADCM3, and ECHAM4). Considerable warming is apparent in all three models and on average, the mean GDD<sub>5</sub> increased 18%, 38%, and 65% by the 2020s, 2050s, and 2080s, respectively, whereas change in precipitation is essentially nil. Site index is predicted to increase steadily by 3 m for each 30-year period. Warming temperatures were predicted to increase the potential range of lodgepole pine in Alberta up to 67% by the 2020s but then shrink from 34% to 58% of its current area by 2080 as drying increased (GDD<sub>5</sub>:mean annual precipitation).

In British Columbia, Nigh et al. (2004) and Nigh (2006) examined the impact of climate on site index for lodgepole pine, white spruce and both interior and coastal Douglas-fir. Climatic variables were extrapolated using regression for interior species and the PRISM model (Daly et al. 1994) for the coast. Contemporary differences in temperature at different geographic locations formed the basis of the change in temperature. In the interior, productivity of all the species studied increased as temperature increased, with lodgepole pine exhibiting the greatest response. The site index of lodgepole pine and interior Douglas-fir also increased with increasing precipitation, with interior Douglas-fir having a greater response than lodgepole pine. On the coast, GDD<sub>5</sub> was the most useful climatic variable for predicting site index.

The 3-PG model has been used to predict site index for Douglas-fir (Coops and Hember 2009) and for five coniferous species: western hemlock, western redcedar, lodgepole pine, Douglas-fir, and white spruce Coops et al. (2010). Because of limitations of 3-PG, each 1 km cell was assigned to the predominant species. Climate data were monthly averages over 30 years provided by ClimateBC, extrapolated using a modified the PRISM model (Daly et al. 1994). SIBEC data from 2008 were acquired to compare site indices of the five species (Coops et al. 2010). The predicted site indices were in reasonable agreement with those from SIBEC across the province, with a standard error of ±2.8 m at 50 years. Coops et al. (2010) point out that Nigh's (2006) regression had a standard error of ±4.7 m at 50 years for Douglas-fir. This

----

TASS-CC Problem Analysis Page **13** of **39** Stearns-Smith & Associates Forestry Consultants

---

comparison is somewhat uneven because Nigh's work dealt with a verifiable single species and, unlike 3-PG, made few assumptions about site quality.

Weiskittel et al. (in review) compared site index estimates from 21,554 field plots measured under the USDA Forest Service's Forest Inventory and Analysis (FIA) program to site index derived the Monserud's (1984) equations and to GPP estimates from 3-PG and the NASA's Earth Observing System Moderate Resolution Imaging Spectroradiometer (MODIS). Random Forests was used to explore relationships between climate variables and the various estimates of productivity. Climate data were 30-year means (1961-1990) averaged monthly for maximum, minimum and average daily temperatures and monthly total precipitation from spline-surface models. Thirty-four derived variables, some relevant to predicting site index and others for GPP, were computed from the climate data. For 45 species in western North America the average correlation between FIA site index and Monserud's was 0.84 ±0.16. The Spearman rank correlation value for Monserud's site index and GPP from 3-PG was 0.65 and 0.70 from MODIS. Seven derived climate variables explained 91% of the MODIS and 3-PG GPP variation and 78% of Monserud's site index. A model with two climate-related variables explained over 68% and 76% of the variation in site index and GPP, respectively. Predictions for site index under a changed climate were made from projections from the CGC-GCM, GFDL-GCM and HAD-GCM based on the A2 greenhouse gas emission scenario. Site index was projected to increase on current low sites but to decrease on many of the most productive sites. The authors conclude that although process-based models offer a theoretical advantage of integrating climate and soils information in a mechanistic manner, they do not improve predictions of current site index when compared to purely climatic variables. Two climate variables representing changes in temperature and moisture availability during the growing season explain a significant portion of the observed variation in SI.

## 3.2.4 *Population genetics*

With few exceptions (e.g., Crookston et al. 2010), studies reviewed thus far relating climate to tree growth and site quality do not address the genetic adaptedness of tree populations to sites. Common-garden experiments have provided data that demonstrate that populations differentiate based on the environmental condition from which they originated. Hence, data from provenance trials have been useful to examine the effects of climate change on tree growth. Some of the earliest work is that of Matyas (1994), in which he developed a growth response model based on 'ecological distance', defined as parameter differences between the site of origin and the test site. He concludes that increased annual mean temperature will accelerate the growth of jack pine only if precipitation is sufficient and that temperature increase outside of physiological and ecological limits of the species will decrease growth and in the extreme case increase mortality.

In British Columbia, building their work on characterization of adaptive variation in lodgepole pine from the 1980s (e.g.; Rehfeldt 1988; Ying et al. 1989), Cheng Ying at the then Ministry of Forests and Gerry Rehfeldt of the USDA, Rocky Mountain Research Station examined data from lodgepole pine provenance trials set up by former Research Branch Director, Keith Illingworth (Illingworth 1978) to develop population response functions to estimate climatic effects on height and survival. Population response functions pertain to specific populations so that general transfer functions were developed to predict the climate in which native populations should be transferred to achieve optimal growth and survival. For this study, climate variables were predicted from normalized 1951-1980 monthly records from 455 Canadian weather stations and from 1950 -1995 summaries of daily records at 58 US weather stations. Climate

----

TASS-CC Problem Analysis Page **14** of **39** Stearns-Smith & Associates Forestry Consultants

---



models developed also included latitude, longitude, elevation. Ten climate variables were used in the analysis: annual temperature, cold month temperature, warm month temperature, annual precipitation, summer precipitation, days with frost, frost free period, annual heat: moisture index, summer heat moisture index, and temperature differential between the warmest and coldest months. Population response was based on a quadratic function in which each climate variable was tested separately. Lodgepole pine populations were found to have an extremely broad fundamental niche that appeared to span 10°C in mean annual temperature (Rehfeldt et al. 1999), and which Rehfeldt et al. (2001) considered to be too broad to be biologically realistic. Rehfeldt et al. (2001) updated the response functions and limited the maximum value of the niche breathe by defining niche size as the difference between the roots of the quadratic function (values of the independent variable when height=0 or survival=0). As well, niche breadth was calculated for the eight populations that were planted on all the sites and the largest breadth was deemed the maximum. The third modification was that for those response functions in which the niche breadth exceeded the maximum, the distance was reduced to the maximum and the x-axis coordinate of one root was fixed to represent the available data and regression coefficients re-calculated. Temperatures (coldest month, difference between coldest and warmest months, and mean annual temperature) provided the best predictions of growth and summer dryness (ratio of summer temperature to summer precipitation) for survival (Rehfeldt et al 1999). Despite the response functions suggesting that natural populations occupy suboptimal climates, the transfer function showed that for the interior subspecies (spp. *latifolia*), optimal growth and survival were under the climatic conditions of seed origin but for spp. *contorta* transfer to locations that were warmer per unit of precipitation would improve height growth.

The authors noted that, despite pronounced differentiation among populations, the variability within populations was high and that the amplitude of the fundamental niche was such that “the array of seedlings produced from wind pollination within a single population would be capable of collectively inhabiting approximately 2/3 of the realized niche estimated for the subspecies” (page 387, Rehfeldt et al. 1999). Under two climate scenarios, Rehfeldt et al. (2001) examined the redistribution of genotypes in natural populations and predicted that recovery in the north of the Province should be immediate with increased productivity but would take three to nine generations elsewhere.

Work with species such as Scots pine (Rehfeldt et al. 2002) used the same quadratic response function and showed that populations tended to inhabit climates colder than their optima. In further work with Scots pine and Eurasian larches, Rehfeldt et al. (2003) developed transfer functions based on the Weibull function, which can be asymmetric about the mode. The Weibull density function was used as a nonlinear model of climate transfer distance. For Scots pine, height models with transfer distances based on GDD<sub>5</sub> produced the smallest residual mean square for provenances from the coldest areas, and the proportion of variance explained was 0.20. Survival models based on annual moisture index produced the smallest residual mean square and accounted for 0.11 of total variance.

Laura Leites, working with Andrew Robinson, for her doctoral thesis (Leites Barrios 2009) used data from three-year height growth of four-year-old Douglas-fir (Rehfeldt 1988). She fitted a linear mixed-effects model of the quadratic form in which candidate climate variables were the fixed effects and random effects were associated with test location, planting within test location, block within planting and a study effect which took into account differences in time of planting. Random effects were also tested at the population level and population nested in region of

----

TASS-CC Problem Analysis Page **15** of 39 Stearns-Smith & Associates

---



origin. Random effects were at the intercept level, except the population random effect. Climatic variables that were correlated with height were temperature or growing season length variables: degree days <0°C daily minimum temperature, Julian date of last freeze, Julian date when sum of degree days >5°C reaches 100 for seed origin; and, mean temperature of the coldest month, mean annual temperature, Julian date when sum of degree days >5°C reaches 100, degree days <0°C and, degree days <0°C daily calculated with daily minimum temperature for the test location. The best model combined mean annual temperature at seed source and mean temperature of the coldest month at transfer distance (MTCM); however, it should be noted that the 95% confidence intervals for parameter estimates of mean annual temperature and MTCM span zero although confidence intervals for the interaction term did not. Douglas-fir differed from lodgepole pine in that some populations already occurred in suboptimal climates and growth would be improved by transfer to a colder winter climate although other populations would benefit from increased warmth.

With development of new climate models and the availability of PRISM (Daly et al. 2002), Wang et al. (2006b) developed height growth response functions for interior lodgepole pine (ssp. latifolia) based on data from the Illingworth trials. Climate variables used in Rehfeldt's previous analysis (Rehfeldt et al. 1999, see above) were predicted for each test site and provenance using ClimateBC (Wang et al. 2006a) for current conditions and three future 30-year periods centered on 2025, 2055 and 2085, based on GCM CGCM2-A2x. Univariate and multivariate quadratic response functions for each population and univariate quadratic transfer functions for each site were developed. Wang et al (2006b) developed anchor points for the response functions analogous to Rehfeldt et al.'s (2001) roots, by using mean annual temperature in the transfer function to estimate growth at the five coldest sites. Response curves differed considerably if the anchor points were not used and fits of some equation increased from 0.28 to 0.76. Because of the uneven distribution of test sites along the temperature gradients, the authors caution using these response functions for projection more than 50 years into the future. A quadratic function of mean annual temperature explained the largest amount of environmental variation in height (~64%). Annual heat:moisture index explained an additional 6% of total variation. Population growth response to climate indicated that those from the north and south had relatively narrow fundamental niches compared to central populations. Populations from the south did not perform better on warmer sites in BC than local ones.

O'Neill et al. (2008) used data from the 2005 re-measurement (32 years from establishment, 35 years from seed) of lodgepole pine height and diameter at the Illingworth trials. Climate data centered on 1975 were obtained from ClimateBC (Hamann and Wang 2005; Wang et al. 2006a) for Canadian provenances and from ANUSPLIN (Hutchison 2000) for US provenances. Predicted climate variables centered on 30 year climate normals for the periods 1961-90, 2011-40, 2041-70 and 2071-2100. The nine climate variables used in Wang et al. (2006b) were derived. Total cubic volume (m3/ha) was used as the metric of production. Mean production at each site was calculated based on a planting density of 1600 stems per hectare multiplied by percent survival and hence, combines growth and mortality into a single value. Preliminary analysis indicated that mean temperature of the coldest month of the provenance's origin was the variable with the strongest relationship to volume (R<sup>2</sup>=0.48) so that this was the independent variable chosen for the analysis. An individual transfer function for each test site was developed by regressing volume on climate variables using a Cauchy function (Raymond and Lindgren 1986). Site was added as a random factor to each of the parameters in the Cauchy function because preliminary analysis indicated that parameters differed among sites. The parameters of the Cauchy function were expressed as linear functions of mean annual temperature, annual drought index and mean temperature of the coldest month of the site. Predicted volumes of

----

TASS-CC Problem Analysis Page 16 of 39 Stearns-Smith & Associates Forestry Consultants

---



lodgepole pine were expected to increase in the near term in cold northern areas and at high elevations but decrease in the current productive region in southern and central British Columbia. These transfer functions were all based on climate variables of the site and of the provenance origin; prior to this, O'Neill et al. (2007) had improved quadratic growth function by accounting for nonclimatic site effects, but O'Neill et al. (2008) thought that these nonclimatic factors would not change with climate and hence incorporation of them would have little effect on transfer functions. However, the variance of random site effects could possibly be partitioned into nonclimatic effects.

O'Neill and Nigh (*submitted*) have taken the above work further by developing a transfer function which predicts height growth based on mean annual temperature of provenance origin and the mean annual temperature of the site. To get annualized temperature, means for four annual temperature and four annual precipitation variables for the three 30- year periods centered on 2025, 2055 and 2085 (see O'Neill et. al 2008, above) were obtained from ClimateBC for each test site and provenance. These means were averaged across test sites and provenances to create regional climate means, and linear or quadratic functions fit through the three data points to get pseudo-annualized regional trajectories for each of the three future climate scenarios (CGCM2 A2, CSIRO2 B1, and HADLEY3 B2). A pooled transfer function was based on the two tallest trees of each population at each site and height of the transferred provenance was then standardized as a proportion of the average height of the local provenance. Only mean annual temperature was strongly related to standardized height. Trees were grown in TASS using current site index based on height at age 32 and then adjusted annually by an amount corresponding to the expected impact on height from the transfer function.

McLane et al. (*submitted*) have devised a growth trend response function for lodgepole pine from radial increment data collected at the Illingworth trials. Samples from 12 populations at 16 sites were collected and annual increments of basal area calculated from each core taken at 30-40 cm height. Climate data for each site and provenance were from ClimateWNA (a version of ClimateBC). Normals for 1971-2000 temperature and precipitation were calculated and monthly data averaged for the following climate variables: growth year (previous August to current July), summer, and winter. Future growth was estimated from CGCM2 A1B for 2011-2040, 2041-2070, and 2071-2100 climate normals. McLane et al. used a random coefficients modelling approach to build the transfer function based on both temperature and precipitation. The models explained around 64% of the variation in basal area increment. Lodgepole pines on warm sites are predicted to have greater productivity loss than those on cool sites if climate continues to warm. This conclusion is congruent with previous work.

### 3.2.5 *Carbon dioxide fertilization*

Increases in CO<sub>2</sub> combined with temperature and precipitation changes have the potential to alter the most important factors directly regulating biochemical processes with the tree. To understand and predict the potential effect has usually involved single process studies or controlled environment experiments. In general, increased CO<sub>2</sub> increased photosynthesis, root growth, water use and reproduction and decreased frost hardiness (Johnson et al. 2010). The interaction of increased CO<sub>2</sub> and increased temperature may be complex. Pia Smets at University of BC grew seedlings from ten different lodgepole pine populations at two CO<sub>2</sub> levels and five different temperature regimes for six months. Smets concluded that reduced growth occurred in plants grown in elevated CO<sub>2</sub> and high, but not low, temperatures and that the net

----

TASS-CC Problem Analysis Page **17 of 39** Stearns-Smith & Associates Forestry Consultants

---



effect of CO<sub>2</sub> enrichment on growth at high temperatures was still positive. (Pia Smets, Robert Guy, Tongli Wang, Alvin Yanchuk and Sally Aitken, 2011 unpublished report). Work correlating growth in the field to rising CO<sub>2</sub> levels has been undertaken. Westfall and Amateis (2003) attempted to link growth of loblolly pine and changes in site index to rising CO<sub>2</sub> levels. They calculated site index at four ages and conducted simulations with and without site index adjustments. There conclusions are similar to those over the growth chamber work above – pine growth was stimulated by increased CO<sub>2</sub> but elevated temperatures may reduce the increase as climate warms.

## 3.2.6 *Insects*

In British Columbia, a joint project by the Pacific Climate Impacts Consortium (PCIC), the MFLNRO, and Forestry Canada, Pacific Forestry Centre used climate variables downscaled using ClimateBC (Wang et al. 2006a) to determine future projected range of two tree / pest systems – Douglas fir / spruce budworm, and spruce / spruce bark beetle (Flower et al., in review; Murdock et al, in review). Variables considered include mean annual temperature, mean warmest month temperature, mean coldest month temperature, annual temperature range, mean annual precipitation, mean summer precipitation, annual summer heat to moisture index, and summer heat to moisture index. Significant changes to tree species suitability and outbreak risk were projected for the middle and end of the century. The studies demonstrated the importance of using a large number of scenarios for assessing impacts.

----

TASS-CC Problem Analysis Page **18** of **39** Stearns-Smith & Associates Forestry Consultants

---



# 4.0 NEEDS ASSESSMENT

## 4.1 Introduction and Methods

In addition to a literature review, the information gathering phase of this problem analysis project included interviews with the two general groups of people in Table 3. The needs assessment was conducted by phone and email during January and February of 2011. An initial list of contacts was established by the project team in consultation with Ministry staff. The process and questions were both open ended. A few introductory questions served to set the stage for pursuing the experiences and opinions of each contact. Contacts were continuously (re)prioritized based on availability and time. Only a portion of the original list was contacted, but others were added. Contact lists and abridged notes from individual conversations are included in Appendix I.

## Table 3. General groups interviewed for this needs assessment.

| TASS Clients and Users         | Analysts and decision makers in the traditional TASS-TIPSY user groups (timber supply, forest analysis, and silviculture) plus non-timber clients (e.g., carbon/biomass, landscape modelling, wildlife habitat, etc). Most are within BC; some belong to both groups. \*\*Objectives in interviewing this group:\*\* 1. Raise awareness of general GY-CC issues and the TASS-CC project specifically. 2. Document general need and support for incorporating CC in TASS, including how CC has been incorporated in operational analyses to date. 3. Determine specific client needs supporting and/or affecting the incorporation of CC in TASS. 4. Obtain additional literature and contact referrals. |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| GY specialists and researchers | Specialists and researchers in fields related to GY and CC (e.g., climate science, GY modelling, process modelling, genetics, site productivity, landscape ecology). This group is international. \*\*Objectives in interviewing this group:\*\* 1. Raise awareness of the TASS-CC project. 2. Document related experiences and ideas. 3. Augment the literature review with follow-up questions to selected authors. 4. Obtain additional literature and contact referrals.                                                                                                                                                                                                                            |


## 4.2 Clients

A cross-section of clients was interviewed by phone and email, within the limits of time and availability. Given the prominent profile of the CC in the forest sectors today, it was not surprising to find universal support-in-concept for incorporating climate change in TASS. In

----

TASS-CC Problem Analysis Page **19** of 39 Stearns-Smith & Associates Forestry Consultants

---



addition, some common themes emerged that provide insight into how GY and CC are currently perceived and addressed.

When asked how CC policies and strategies affect their jobs and programs, answers often involved genetics, e.g., seed transfer policies, assisted migration strategies, etc. The forest genetics community (MFML Tree Improvement and Research Programs, Forest Genetics Council, UBC Centre for Forest Conservation Genetics,) has become a leader in CC research and mitigation strategy development in BC, by leveraging its extensive legacy of tree breeding research. Many current CC strategies, along with recent climate-genetics growth studies (e.g., Wang et al. 2010; McLane et al., *submitted*), are based on seed transfer research, e.g., provenance trials. TASS already contains a genetics linkage that reflects genetic gains associated with Ministry A-class seed policies. It follows that similar expectations will develop for genetics-based CC strategies and policies. A climate version of TASS could demonstrate direct linkage to Ministry CC strategies and policies by incorporating recent climate-genetics growth studies.

A number of clients expressed concern that CC will exacerbate existing perceptions of GY risk and uncertainty. CC and GY share similar characteristics: overwhelmingly complex systems, conflicting expert opinions, and a multitude of “black-box” models. Given the current level of uncertainty, some wonder whether expert opinion might be a better option in the near term than modelling. However, we know from experience that models and expert opinions can be synergistic. Models serve as synthesis platforms that help integrate and test expert opinions. Others questioned the continued relevance of stand-level growth (modelling and investments) if it is overtaken by natural disturbance mortality. Clients also stressed the need for regular communication to understand the current state of GY-CC knowledge, including the assumptions upon which various opinions and models are based (e.g., Ralph Winter, FPIB; Christine Fletcher, FAIB, pers. comm.).

While expressing conceptual support for incorporating CC in TASS, a few clients also indicated their current systems present application barriers. Werner Kurz (CFS-PFC, pers. comm.) noted that the National Carbon Accounting Model, like most current forest analysis methods (e.g., TSR), assigns yield tables to aggregated analysis units. This process currently assumes yields at any given age will remain constant regardless of stand establishment year (e.g., 1970 vs. 2070). That assumption is likely untenable under climate change and will necessitate adoption of more complex forest analysis methods. Kurz and a few others (e.g., Walt Klenner, MNRO, pers. comm.) indicated they currently prefer to apply CC adjustments themselves, similar to other natural disturbance events. In part, they wish to maintain flexibility in the face of rapidly evolving CC research and assumptions. However, most clients are anticipating synthesis products, such as a climate version of TASS.

## 4.3 Climate in other local GY models

There are currently five main GY models in BC: FORECAST<sup>2</sup>, PrognosisBC, SORTIE-ND<sup>3</sup>, TASS, and VDYP.

<sup>2</sup> <u>http://www.forestry.ubc.ca/ecomodels/moddev/forecast%20climate/forecast%20climate.htm</u> accessed February 2011.

TASS-CC Problem Analysis Page **20** of 39

---



Of these five, **FORECAST** is the only one that currently has a functioning climate version (Kimmins et al. 2010). **FORECAST** is a hybrid process-GY model (whole-stand). A hydrology model, ForWaDy, was integrated with **FORECAST** to produce **FORECAST**-Climate. Daily solar radiation, temperature, precipitation govern growth through their effects on water stress and organic matter mineralization; population genetics are not included.

Plans to incorporate the regeneration-climate model, **TACA**, in **SORTIE**-ND were derailed by FIA-FSP cutbacks and its subsequent demise (Dave Coates, MNRO, pers. comm.). The resulting extra-mural funding drought continues to stalled further development work on **FORECAST**, **SORTIE**-ND and Prognosis<sub>BC</sub>. MFML-FAIB has suspended further development of VDYP and has no immediate plans for climate modifications (Sam Otukol, FAIB, pers. comm.). Consequently, **TASS** currently appears to be in the best position for further development. Although much reduced, **TASS** has retained more dedicated resources (funding and staff) than any of the other models in BC. **TASS** may well be the only one capable of moving forward on CC in this business climate.

Alberta models, **MGM** and **GYPSY**, have no immediate plans to incorporate climate. Although, results from earlier site index-climate studies in Alberta (Monserud et al. 2006, 2008) may one day be incorporated in **GYPSY** (Shongming Huang, AB-MSRD, pers. comm.).

FVS, FPS, and Organon are the main GY models in the US PNW. <u>http://www.fs.fed.us/fmsc/fvs/description/climate-fvs.shtml</u> accessed February 2011. Crookston et al. (2010) describes the climate version<sup>4</sup> of the FVS model (see literature review). Unaltered FVS-Climate routines have also been embedded in Prognosis<sub>BC</sub>, but access is not documented due to operational applicability concerns (Don Robinson, ESSA, pers. comm.). Although unconfirmed, there appear to be no immediate plans for developing climate versions of FPS and Organon .

## 4.4 **CC in BC analyses involving GY**

Practically every program and project that involves GY also has CC implications. Despite this, it is widely acknowledged that CC is still ignored or over-simplified in most analyses involving GY. Most often, this is because climate-sensitive GY tools are scarce, scientific opinion appears to be in flux, and resources are unavailable to modify current business systems and processes. There are no consistent or standard methods for incorporating CC in analyses involving GY. Recent projects and programs in BC were examined to illustrate this.

FAIB plans to include CC in timber supply reviews (TSR) eventually, but is not actively developing methods at this time (Christine Fletcher, FAIB, pers. comm.). Carbon and biomass have begun appearing in forest analysis projects around BC. It is ironic that carbon-focused analyses, such as TFL-25 (Cam Brown, FORSITE, pers. comm.) and the Draft BC Forest Carbon Offset Protocol<sup>5</sup>, have yet to include CC effects in GY projections.

----

<sup>3</sup> <u>http://bvcentre.ca/sortie-nd/detail/using_sortie-nd_for_predicting_climate_change_impacts_on_tree_regeneration/</u> accessed February 2011.

<sup>4</sup> <u>http://www.fs.fed.us/fmsc/fvs/description/climate-fvs.shtml</u> accessed February 2011.

<sup>5</sup> <u>http://www.env.gov.bc.ca/cas/mitigation/pdfs/FCOP_Final-%2822nov2010%29-for_public_review.pdf</u> accessed February 2011.

TASS-CC Problem Analysis Page **21** of 39 Stearns-Smith & Associates Forestry Consultants

---



To date, only a few forest analysis projects in BC have attempted to incorporate CC. The Kamloops TSA's "K2" project represents the first operational application of FORECAST-Climate in BC (Brad Seeley, UBC, pers. comm.); it is still too early to evaluate the experience. A recent forest analysis on the San Jose Watershed, Williams Lake, attempted to incorporate CC. It utilized an existing CC study that predicted simple spatial-temporal shifts in the existing BEC ecosystem classes (aka "flying BEC zones") combined with SIBEC (site index-BEC correlations) to predict future site index changes, which were then used in TIPSY. The analytical process was partially compromised by data gaps in SIBEC (Cam Brown, FORSITE, pers. comm.). A similar process was used in a cumulative effects study on the Skeena Watershed (Mike Buell, Cortex, pers. comm.). However, the ecological assumptions implied by simple shifts in BEC (and SIBEC) have since been called into question. Without better tools, analysts have few options.

The MFML Future Forest Ecosystems Scientific Council is currently funding some large-scale regional CC projects. Analyses supporting a CC adaptation plan for Northwest Skeena communities are using the LPJ-Guess process model to explore landscape-level changes in forest vegetation (Don Robinson, ESSA, pers. comm.). A separate vulnerability assessment project is utilizing a panel of experts to assess timber impacts (Don Morgan, MoE, pers. comm.).

## 4.5 Linkage to Landscape and Forest Estate Models

The project's terms of reference included exploring the implications for linking TASS to landscape models (e.g., <sup>6</sup>TELSA, <sup>7</sup>LANDIS). Landscape models spatially simulate the impact of natural and anthropogenic disturbances (e.g., fire, insects, harvesting) on multiple ecosystem processes and services (e.g., habitat, bio-diversity, water). Landscape models initially evolved, in part, because early forest estate models were timber-focused, non-spatial, and treated non-timber values as constraints. Initially, computing power limited spatial resolution and problem complexity, so many early landscape models were coarse raster-based applications. However, recent advances in computing power, GIS, and programming sophistication have started to blur the boundaries between landscape and forest estate models. For instance, <sup>8</sup>SELES is considered a landscape model, yet it is also being used for timber supply analysis by MFML and others (Barry Snowdon, MFML, pers. comm.) Conversely, some forest estate models have landscape modelling capabilities (e.g. <sup>9</sup>Woodstock). In both cases, a more general term such as forest event simulator is probably more appropriate.

With that as background, the question of TASS linkage can be applied to both landscape and forest estate models simultaneously. There are two distinct methods for incorporating GY in these models. Some landscape models have their own internal growth routines or modules and do not use yield tables from external GY models like TASS. For example, LANDIS models forest cover as generalized species-age cohorts, which are grown by a simple internal growth routine governed by user-supplied estimates of maximum net primary productivity (NPP).

<sup>6</sup> <u>http://www.essa.com/tools/telsa/index.html</u> accessed February 2011.
<sup>7</sup> <u>http://web.missouri.edu/~umcsnrlandis/index.php</u> accessed February 2011.
<sup>8</sup> http://www.seles.info/index.php/Main_Page accessed February 2011.
<sup>9</sup> <u>http://www.remsoft.com/products.php?id=1</u> accessed February 2011.

TASS-CC Problem Analysis Page **22** of 39 Stearns-Smith & Associates Forestry Consultants

---



Estimates of max-NPP (biomass/m<sup>2</sup>/yr) can be derived with a process model (e.g., 3-PG) or GY models like TASS.

On the other hand, forest estate models and many landscape models directly utilize yield tables produced by GY models. There are two implications that merit further examination here. First, the traditional assignment of yield tables to aggregated analysis units assumes yields at any given age will remain constant regardless of the year stands are established (e.g., 1970 vs. 2070). That assumption is likely untenable under climate change and will necessitate more complex forest analysis methods.

Second, some modellers wish to have more control over disturbance events (fire, insects, etc. and potentially climate change) and associated GY effects. To keep complex simulations manageable, modellers often make simplifying assumptions, such as assuming all disturbances are complete standing replacement events. This reduces the number of possible yield table permeations that must be prepared in advance. However, a modeller wishing to accommodate partial stand-replacing events at multiple intensities and (random) return intervals is faced with creating a prohibitively large array of yield tables. Walt Klenner (BC-MNRO, pers. comm.), TELSA co-developer and landscape modeller, attempted this with TASS-TIPSY and found its bare-ground format made interjecting mid-rotation disturbance events particularly difficult. He finds tree-list models (e.g., Prognosis<sup>BC</sup>) more accommodating in this regard. An alternative to preparing a large array of yield tables in advance is to link a GY model to the landscape model (e.g., a subroutine) that can respond to disturbance events on the fly. Klenner is currently working with ESSA to produce a DLL version of Prognosis<sup>BC</sup> for integration with TELSA. Once again, this option would be difficult with TASS II, in part due to its bare-ground format.

TASS-CC Problem Analysis Page **23** of **39**


---

# 5.0 DISCUSSION

## 5.1 Business Environment and Needs

Climate change is recognized in MFML's current service plan<sup>10</sup> as part of the strategic context within which MFML intends to deliver on its four main business goals: maximize forest productivity, sustainable development, globally competitive natural resource sectors, revenue realized. BC's recent experiences with dramatic increases in climate-related natural disturbances (e.g., fire, insects, diseases) demonstrated the potential for radical impact from CC on MFML's daily business and long-term goals. Consequently, BC and MFML became early leaders in pro-active response to CC. The Chief Forester's Future Forest Ecosystems Initiative stimulated early research and development of CC mitigation and adaptation strategies and policies, many of which are genetics-based (e.g., seed transfer and assisted migration).

Forest planning is the foundation for proactive, sustainable forest management. All long-range planning exercises (e.g., TSR, FRPA SFMPs, habitat supply, silviculture investment strategies) involve forecasting future forest values under various management and natural disturbance scenarios. Stand-level GY forecasts have and will likely continue to play a prominent role in all these analyses. The needs assessment conducted for this report indicates the desire to include climate change effects in forest analyses already exists, but implementation continues to be hampered by uncertainty and the lack of information, methods, and tools.

TASS (via TIPSY) is currently the most widely used GY forecasting tool in BC. Consequently, analysts and decision makers would logically expect TASS to reflect CC eventually, a notion supported by client interviews for this project. Continued progress in operational implementation of MFML's CC mitigation and adaptation strategies will only reinforce these expectations. Analysts will want GY tools that can address the impacts of these CC strategies, just as they asked for GY tools to reflect genetic gain from Ministry Class-A seed policies.

However, there are other roadblocks to incorporating CC in forest analyses besides the lack of CC-sensitive GY tools. Continued research is needed to improve understanding and to predict the effects of CC on natural disturbances (e.g., fire, insects, diseases) at both landscape and stand-levels. Incorporating CC in forest analyses will also compound the sheer size of analysis projects, possibly triggering a search for new methods to streamline the process.

CC will have a major impact on the overall dimensions of forest analysis projects in at least two ways. First, CC will involve additional sensitivity analyses to assess the impact of various (standard) CC scenarios; however, each CC scenario will also have unique effects on GY, and natural disturbances such as fire, insect or disease outbreak. Second, CC also appears to negate a basic assumption common to most forest analysis methods today, *i.e* the assumption that a single yield table can be assigned to each analysis unit and applied to all stands in that unit over time, regardless of stand establishment year. Under CC, yields curves for stands established in 1970 would be different from stands established in 2070. Consequently, an

----

<sup>10</sup> <u>http://www.bcbudget.gov.bc.ca/2011/sp/pdf/Ministry/for.pdf</u> accessed February 2011.

TASS-CC Problem Analysis Page **24** of 39

---



analysis unit would need a dynamic yield curve (or array of curves) to account for CC in the analysis. At least two alternatives to managing such large arrays of yield tables have been suggested: 1) embedding GY models (e.g., as DLLs) in forest analysis models to generate yields on-the-fly and 2) applying CC adjustments independent from GY models. Either of these alternatives would have significant implications for developing a climate version of TASS, but forest analysts could also simply decide to manage large arrays of yield tables. For the time being, a cautious approach to TASS-CC is probably warranted.

Plans to incorporate CC in TASS should consider both client needs and the current business climate in MFML (priorities, staffing, and funding). Recent trends seem to support a minimal investment (e.g., in-house), highly leveraged, quick win approach, at least initially. Communication and expectation management are particularly important elements in such a plan.

## 5.2 Acquiring Climate Data

Climate data are needed to develop and apply a climate-sensitive GY model. Fortunately for GY modellers, the number, diversity, and accessibility of climate model tools have expanded rapidly over the last few years. Researchers now have alternatives to spending large amounts of time and effort acquiring and/or generating suitable climate data themselves. Choosing the most appropriate climate tool outputs involves understanding the implications of spatial and temporal downscaling for the intended GY application. Researchers have been known to obtain too much or too little climate detail for a particular application. Greater temporal and/or spatial resolution is not always better. GY modellers can further downscale climate model outputs themselves, but it requires a significant amount of time (e.g., 6-12 months). There are currently a number of resources available to help users apply the appropriate climate data tools<sup>11</sup>. Implications for TASS-climate modelling will depend on the modelling approach(s) selected.

TASS operates at a much higher spatial resolution than Global Climate Models (GCMs). Incorporating climate change into TASS will require some form of downscaling to bridge the divide in spatial resolution. Furthermore, climate models provide results on a regularly spaced grid rather than at the stands used by TASS.

Furthermore, if a hybrid approach is to be used there will also be a need to match the temporal resolution requirements of process-based models such as 3-PG or Stand-BGC, the former requiring monthly and the latter daily climate input. Table 4 summarizes the spatial and temporal scales accommodated by various climate tools available for use in BC.

<sup>11</sup> E.g., Murdock and Spittlehouse (*in prep*). PCIC's mandate includes supporting the application of climate models in forestry research.

TASS-CC Problem Analysis Page **25** of 39

---



Table 4. Tools for producing future regional climate projections

| Climate data sources and downscaling methods                                                     | Tools                                          | Approximate spatial scale | Finest readily available temporal scale (as continuous time series with variability) | Suitable for use in GY applications?                                            |
| ------------------------------------------------------------------------------------------------ | ---------------------------------------------- | ------------------------- | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| Global climate models (GCM)                                                                      | PCIC Regional Analysis Tool                    | 40000 km²                 | Daily                                                                                | No – spatial disparity too large                                                |
| GCM → Regional climate models (RCM)                                                              | NARCCAP                                        | 2500 km²                  | Sub-daily                                                                            | With additional downscaling                                                     |
| GCM → (RCM) → elevation correction using high resolution climatology (PRISM)                     | ClimateBC ClimateWNA Plan2Adapt                | 16 km²                    | 30-year averages                                                                     | Temporal scale insufficient for process models; common in genetics applications |
| GCM → (RCM) → spatial correction using percentile mapping / temporal correction using resampling | BCSD                                           | 42 km²                    | Daily                                                                                | With additional downscaling                                                     |
| GCM → (RCM) → station-based downscaling                                                          | EDS, TreeGen BCSD-station Biosim, SDSM LARS-WG | Point (station)           | Daily                                                                                | Limited to points with historical data                                          |


## 5.3 Population genetics considerations

No matter what modelling approach is used the same basic model components apply. Site quality, regeneration establishment, growth, and mortality form the traditional suite. To date, genetics has been incorporated in this suite at the species level with species-specific functions. This is appropriate as long as the climate remains stable enough to maintain the niche for a particular genetic population (seed source) over the entire rotation. When faced with CC, many GY modellers looked to existing climate-sensitive process models and techniques for inspiration; however, these tend to be species-level tools as well. There are no corresponding templates for incorporating population genetics in forest models. However, given the wealth of genetics studies in BC and their link to provincial CC adaption strategies, TASS seems like an appropriate platform for pioneering work.

The majority of this information will continue to come from analyses of provincial provenance trials by genetics researchers with MFML and UBC. The provincial genetics program has committed to develop climate-based seed transfer functions for all the major tree species in BC over the next year and a half (Greg O'Neill, pers. comm.). These are the same transfer functions

----

TASS-CC Problem Analysis Page **26** of 39 Stearns-Smith & Associates Forestry Consultants

---



used in recent top height-growth (*O'Neill and Nigh, *submitted*) and diameter-growth (McLane et al. *submitted*) papers reviewed in this report. O'Neill and Nigh are currently working on similar analyses for mortality. Lodgepole pine has been the initial focus of the population growth response and transfer function work, but similar functions may be developed for other species for which data are available. These initial studies show promise for application in TASS II, which is used in managed stands that develop from a known seed source.

Growth from seed in natural stands may potentially follow a different development scenario because climate and weather conditions experienced by parent trees during sexual reproduction influence the phenotype of the progeny (Saxe et al. 2001). For example, maternal effects have been shown in Norway spruce (Johnsen et al. 2005) in which the cold hardiness and bud phenology of the offspring may differ by the equivalent of 6 degrees latitude from that of the parent tree. Balduman et al. (1999) report some parental effect for Douglas-fir.

The genetics work at the Ministry appears to contradict some studies undertaken by researchers in other fields (e.g., Monserud et al. 2008). These are not criticisms, merely issues that are bound to spark debate. First, negative growth impacts dominate; there seem to be few of the positive CC effects anticipated by other models and experts. Second, moisture does not have a significant effect on height growth. Finally, it seems counterintuitive that edaphic factors can be ignored in site index adjustments for climate. The fundamental issue may be the fact that foresters tend to think about climate effects in terms of whole species. This is an opportunity for further investigation.

----

TASS-CC Problem Analysis Page **27** of **39** Stearns-Smith & Associates Forestry Consultants

---



# 6.0 OPTIONS CONSIDERED

## 6.1 Two Process Model Options: Linkage and Integration

<u>process model linkage</u>

We have identified two general options involving process models. The first option we have termed <u>process model linkage</u>, which involves linking an existing process model (e.g., 3-PG, Stand-BCG) to TASS. The second option, <u>process model integration</u>, is a more systemic approach that integrates various processes into TASS itself (e.g., subroutines), similar to the recent integration of a light model in TASS. These two approaches are variations on hybrid modelling, which combines aspects of both process and empirical models (Kimmins et al. 2010).

There is a strong intuitive attraction to process modelling approaches when facing new and uncertain futures. Both process model options would supply TASS with values based on climate-driven estimates of physiological rates. The various process models we examined rely on estimates of monthly, daily or subdaily time steps to reflect the temperature and moisture dynamics governing year-to-year growth differences. This stems, in part, from the belief that short-term growth effects are dominated by year-to-year variations in climate rather than relatively small changes in climatic averages over short timeframes (e.g., 50-100yrs). In addition to downscaled climatic data, process models often require site-specific edaphic (soils, physiography) and/or biological (e.g., understory vegetation, roots) data that are unavailable for most of the landbase (forest inventories). Consequently, much of this additional input data must be generalized, imputed, or downscaled from other sources, which complicates operational application and interpretation. Process modelling is also outside the education and experience of the recently downsized TASS team and other specialists within the Ministry. Pursuing either process model option will either require additional training, acquisition of new experts, or commitment to long-term reliance on external resources.

<u>process model linkage</u> option presents a number of challenges; the most common ones involve spatial-scale compatibility and carbon allocation (Aaron Weiskittel, Céline Boisvenue, pers. comm.). TASS's functional structure would likely facilitate carbon allocation better than empirical tree-list models such as FVS. However, physiological process models vary in spatial resolution. Those that operate on stand-level statistics (average trees) do not address the differences among trees that drive competition and crown dynamics. Extending process models to CC includes addition scale challenges related to downscaling climate predictions. Future climate scenarios are described by variables (e.g., temperature and precipitation) that are rarely present in historic empirical GY data (PSPs, EPs, trials). Nor does the rate of CC reflected in these historic data align with predicted future rates. Existing process models also lack population genetics components needed to reflect the operational GY implications of key MFML CC adaptation strategies (e.g., seed transfer and assisted migration). Our review of the process model linkage option relied on the literature and expert opinions. None of the experts had personal hands-on experience with all of the process models, nor did any have a working knowledge of TASS. Consequently, it is difficult to make a definitive recommendation without hands-on compatibility testing alongside TASS. However, among those examined in this project, 3-PG and Stand-BCG appear to be the best candidates for TASS linkage. Stand-BCG appears to be closest in terms of spatial scale.

<u>process model integration</u> option may have some advantages over linkage for TASS. As noted above, TASS's functional structure, based on crown dynamics, provides potential process

----

TASS-CC Problem Analysis Page **28** of 39 Stearns-Smith & Associates Forestry Consultants

---



attachment points and carbon allocation pathways. This would allow a modular approach to integrating individual effects (e.g., water stress, population genetics), which could help alleviate or manage many of the problems commonly encountered with linkage approaches. However, integration would involve similar challenges with generating input data (downscaling and imputing) and staff resourcing and experience. If MFML pursues this option, a closer look at Kimmins' suite of hybrid models (Kimmins et al. 2010), may provide some helpful insights. Of special interest would be FORECAST-Climate (whole stand), its companion hydrology model ForWaDy, and FORCEE, a hybrid individual-tree, spatially-explicit model (no climate version).

Given its current emphasis in the research community, process modelling will certainly continue to evolve in the context of CC. But until it progresses a great deal further, we do not recommend its application to TASS. A comparison of the pro and cons common to both process model options is summarized in Table 5.

| Table 5. General pros and cons common to both process model options.                                                  |                                                                                                                                                                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **PROS**                                                                                                              | **CONS**                                                                                                                                                                                                                                         |
| Process modelling is attractive when few or no empirical data are available to address anticipated future conditions. | Elegant solutions can mask underlying uncertainty. May overlook, underutilize, or make it difficult to utilize, the empirical data that do exist.                                                                                                |
| History of successful application particularly at the landscape/region scale as well as stand level.                  | Outside existing staff skill sets. Need specialized help to modify the process components. Difficult to estimate time and resource for project completion.                                                                                       |
|                                                                                                                       | Involves large numbers of independent variables. Many assumptions and generalizations needed to bridge gaps in local data (e.g., soils). Requires downscaled climate data at scales not always compatible with climate data resources available. |
|                                                                                                                       | No existing examples incorporate population genetics, the basis for many of BC's CC adaptation strategies.                                                                                                                                       |


## 6.2 Option 3: An empirical approach

The third option, an *empirical approach*, has been demonstrated with FVS-Climate (Crookston et al. 2010). Although implementation details can be debated, many of Crookston's reasons for choosing empirical over process-based approaches are relevant to TASS as well. Although a process-based approach was recommended by many of the participants in early FVS-Climate focus groups (ESSA 2007, 2008) for many of the same reasons outlined in this report, Crookston and team were concerned by both the lack of genetics in existing process models and the marginal cost-benefit ratios attained in previous linkage attempts (e.g., Milner et al. 2003; Weiskittel et al. 2010). Cost considerations would have included time, budget, staff, and data scales (intensity) required for development and for future operational applications. After careful consideration, Crookston decided on an empirical approach because it best met his development goals, i.e., a relatively quick, low-budget, in-house effort utilizing existing skill sets that also afforded the opportunity to incorporate population genetics. It appears a TASS-CC project would have similar development goals and clients appear anxious for a climate-sensitive version. Therefore, we believe the empirical approach should be the preferred option at this time. Like FVS-Climate, it should be considered a first-approximation with future revisions capitalizing on the feedback it generates.

----

TASS-CC Problem Analysis Page **29** of 39 Stearns-Smith & Associates Forestry Consultants

---



# 7.0 RECOMMENDED OPTION

The modelling approaches discussed in this report all have advantages and disadvantages for incorporating CC into TASS. The entry points for integration of climate sensitive elements into TASS are probably similar for empirical and process components but the empirical approach plays to the strengths and resourcing of the TASS team and leverages (in-kind) genetics program resources. We believe this approach has the best chance of producing an operational application in a reasonable timeframe. This approach is similar to FVS-Climate (Crookston et al. 2010) in terms of both structure and motivation, although details would reflect best available information for BC. Faced with similar process modelling concerns, staff and funding limitations, and desire for a quick operational solution, Crookston et al. (2010) outlined a well-reasoned component approach focusing on site productivity, regeneration, growth, and mortality.

In TASS, the height growth of trees is a function of site index, tree-to-tree variation, and crown size. O'Neill and Nigh (submitted) have developed an approach to integrating site index and genetic effects into a height-growth adjustment for lodgepole pine. Although similar analyses for the other major commercial species in BC are planned over the next 4 years, not all species are believed to have the narrowly adapted population response to environmental clines displayed by pine. While pine and Douglas-fir populations are highly differentiated, clines for western hemlock and Engelmann spruce are considered to be relatively flat or plastic (reported in Crookston et al. 2020). Hence, work on the relationship of site index to climate for these latter species may be able to proceed in the absence of good genetic information.

Recent studies indicate reduced height growth (O'Neill and Nigh, submitted) and increased basal area growth (McLane et al., submitted) of pine under CC. Consequently, similar to fertilization response, it may be important to examine and potentially recalibrate the functions that predict bole increment and increment distribution in TASS.

Mortality is another important entry point where future climate may influence a working function in TASS. Mortality functions have been built based on past climate but increased temperature with little change in precipitation may increase mortality rates. Population response functions for mortality are also anticipated. Although, it is beyond the scope of this problem analysis to review catastrophic events and changes to disturbance regimes, future work on mortality should take this into consideration. Further development of stochastic disturbance subroutines for TASS would be highly desirable.

Compared to the FVS experience, TASS will be able to leverage a much larger body of population genetics research. To support its genetics-based CC adaptation strategies, the MFLNRO genetics program has committed to a 5-yr program (4-yrs remaining) to update population transfer functions for all major species in BC. These analyses have already begun producing GY spin-offs in the form of population response functions for lodgepole pine (e.g., site index, height- and diameter-growth, etc.). Application of these functions in TASS would have the added advantage of utilizing simple climate data readily available from ClimateBC with no additional downscaling required.

----

TASS-CC Problem Analysis Page 30 of 39 Stearns-Smith & Associates Forestry Consultants

---

We recommend initial CC modifications begin on the TASS-II platform and migrate to TASS-III as it develops. Similar to TASS wood quality research, CC development could also focus on a few species at a time, with pine being a logical first step. Table 6 lists a number of possible recommendations for incorporating CC using an empirical approach; TASS components are listed in approximate order of priority.

The utility of each recommended approach will have to be explored in the TASS context, along with any interactions among them. New CC-related studies will continue to emerge and will need to be evaluated, as well.

Table 6. Options for addressing, and the likelihood of climatic effect on, model components of TASS.

| TASS Components                        | Climate change | Suggested options                                                                                                                                                                                                                                                                                                     |
| -------------------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Height growth and site index (SI)      | High           | * Height growth via modified site index
* SI population response functions (PRFs) (O'Neill & Nigh, submitted)
* SI – climate models (e.g., Nigh 2006, Weiskittle et al., submitted)                                                                                                                                   |
| Foliar Volume and foliar efficiency    | High           | - Summer dryness potentially will impact needle retention and photosynthetic production
- Data collection required.                                                                                                                                                                                                   |
| Bole volume increment and distribution | High           | * Depends on foliar efficiency
* Test/adjust bole increment allometry (may change similar to fertilization): diameter-growth PRFs (McLane et al, submitted); Dendrochronological studies (Griesbauer et al, 2010).                                                                                                    |
| Tree mortality                         | High           | - Revised and update mortality to address changes in growth rate
- Climate-species-range models (Wang et al)
- Survival PRFs (O'Neill, Nigh, in progress)
- Spp. presence/absence (Flower et al., in review)
- Incorporate into mortality routines either as an adaptedness measure or predicted height growth change |
| Branch growth and crown expansion      | Medium         | * Branch growth function recently revised
* Investigate potential site and age random effects                                                                                                                                                                                                                         |
| Crown competition                      | Low            | - No data exist to suggest that this may change independently under CC                                                                                                                                                                                                                                                |


TASS-CC Problem Analysis Page 31 of 39 Stearns-Smith & Associates Forestry Consultants

---



Despite the advantages of the empirical approach, there are a few caveats that will need to be acknowledged and managed.

1. This approach depends on the timetable and continued resourcing of the genetics program and its priorities for GY spin-offs. It can be argued that the latter are mutually beneficial.
2. TASS staff will need to work closely with genetics staff to ensure that population response functions are formulated so they can be easily linked to GY applications (e.g., model forms; ratios vs. absolute response measures). Genetics research can also be supplemented with other studies (e.g., alternative site index models).
3. It appears that the introduction of population genetics in GY may challenge some widely held expectations for positive growth effects from CC. This underscores the need for careful research and communication.

When the CC modifications to TASS are implemented, Ministry analysts will have a valuable tool for examining the effects of CC on stand development and yield, with immediate application in timber supply analysis and evaluations of silvicultural options. Nevertheless, this product should be regarded as a first approximation. User feedback and new information from research will drive subsequent enhancements.

----

TASS-CC Problem Analysis Page **32** of **39**

---



# 8.0 **LITERATURE CITED**

* **denotes PDF copies furnished with report.**

*Balduman, L.M., Aitken, S.N., Harmon, M., and Adams, W.T. 1999. Genetic variation in cold hardiness of Douglas-fir in relation to parent tree environment. Canadian Journal Forest Research 29: 62-72.*

*Baldwin, V.C. Jr., Burkhart, H.E., Westfall, J.A., and Peterson, K.D. 2001. Linking growth and yield and process models to estimate impact of environmental changes on growth of loblolly pine. Forest Science 47: 77-82.*

*Battles, J.J., Robards, T., Das, A., Waring, K., Gilless, J.K., Biging, G., Schurr. F. 2008. Climate change impacts on forest growth and tree mortality: a data-driven modeling study in the mixed conifer forest of the Sierra Nevada, California. Climatic Change 87: 193-213.*

*Coops. N.C., Gaulton, R., and Waring, R.H. 2010. Mapping site indices for five pacific Northwest conifers using a physiologically based model. Applied Vegetation Science, *in press*.*

*Coops. N.C., and Hember, R.A. 2009. Physiologically derived predictions of Douglas-fir site index in British Columbia. The Forestry Chronicle 85: 734-744.*

Crookston, N.L. and Dixon, G.E. 2005. The forest vegetation simulator: a review of its structure, content, and application. Computers and Electronic in Agriculture 49: 60-80.

*Crookston, N.L., Rehfeldt, G.E., Dixon, G.E. and Weiskittel, A.R. 2010. Addressing climate change in the forest vegetation simulator to assess impacts on landscape forest dynamics. Forest Ecology and Management 260: 1198-1211.*

Daly, C., Gibson, W.P., Taylor, G.H., Johnson, G.L., Pasteris, P. 2002. A knowledge-based approach to statistical mapping of climate. Climate Research 22: 99-113.

Daly, C., Neilson, R.P., Phillips, D.L. 1994. A statistical-topographic model for mapping climatological precipitation over mountainous terrain. Journal of Applied Meteorology 33:40-158.

**ESSA Technologies Ltd. 2007. Development of a Climate–Driven Forest Vegetation Simulator: the Priest River Experimental Forest Workshop Results. Prepared by ESSA Technologies Ltd., for Rocky Mountain Research Station, USDA Forest Service, Moscow, Idaho and the Forest Management Service Center, USDA Forest Service, Fort Collins, CO. 14 p.**

*ESSA Technologies Ltd. 2008. Development of a Climate-Driven Forest Vegetation Simulator: the Priest River Experimental Forest 2008 Workshop Results. Prepared by ESSA Technologies Ltd., for Rocky Mountain Research Station, USDA Forest Service, Moscow, Idaho and the Forest Management Service Center, USDA Forest Service, Fort Collins, CO. 26 p.*

----

TASS-CC Problem Analysis Page **33** of **39** Stearns-Smith & Associates Forestry Consultants

---


Farquhar, G.D., von Caemmerer, S., and Berry, J.A. 1980. A biochemical model of photosynthetic CO<sub>2</sub> assimilation in leaves of C<sub>3</sub> leaves. Planta 149: 78-90.

*Flower, A., Murdock, T.Q., Taylor, S.W., and Zwiers, F. W. Using an ensemble of downscaled climate model projections to assess impacts of climate change on the potential distribution of spruce and Douglas-fir forests in British Columbia, *in review*.

*Fries, A., Lindgren, D., Ying, C.C., Ruotsalainen, S., Lindgren, K., Elfving, B., and Karlmats, U. 2000. The effect of temperature on site index in western Canada and Scandinavia estimated from IUFRO *Pinus contorta* provenance experiments. Canadian Journal Forest Research 30: 921–929.

Grote, R. 1998. Integrating dynamic morphological properties into forest growth modeling. II. Allocation and mortality. Forest Ecology and Management 111: 193-210.

Hamman, A., and Wang, T.L. 2005. Models of climatic normals for genecology and climate change studies in British Columbia. Agricultural and Forest Meteorology 128: 211-221.

Hutchinson, M.F. 2000. ANUSPLIN, version 4.1, User's Guide. Australian National University, Centre for Resource and Environmental Studies, Canberra, Australia.

Hutchinson, M.F. 2004. ANUSPLIN, version 4.3, User's Guide. Australian National University, Centre for Resource and Environmental Studies, Canberra, Australia.

Illingworth, K. 1978. Study of lodgepole pine genotype-environment interaction in B.C. *In* Proceedings IUFRO Joint meeting of working Parties: Douglas-fir Provenances, Lodgepole Pine Provenances, Sitka Spruce provenances and *Abies* provenances. Vancouver, BC. pp 151-158.

*Johnsen, Ø., Dæhlen, O.G., Østreng, G., and Skrøppa, T. 2005. Daylength and temperature during seed production interactively affect adaptive performance of *Picea abies* progenies. New Phytologist 168: 589-596.

Johnson, M., Price, D., L'Hirondelle, S., Fleming, R., and Ogden, A. 2010. Tree species vulnerability and adaptation to climate change: final technical report. SRC Publication No. 12416-1E10. Saskatchewan Research Council. 123 p.

Kimmins, H., J.A. Blanco, B. Seely, C. Welham, and K. Scoullar. 2010. Forecasting forest futures: a hybrid modelling approach to the assessment of sustainability of forest ecosystems and their values. Earthscan Ltd, London UK. 281p.

*Landsberg, J.J, Waring, R.H., and Coops, N.C. 2003. Performance of the forest productivity model 3-PG applied to a wide range of forest types. Forest Ecology and Management 172:199-214.

*Leites Barrios, L. 2009. Differences of Douglas-fir (*Pseudotsuga menziesii* (Mirb.) Franco) populations in height growth, water use efficiency, and carbon partitioning responses to changes in climate and water availability. PhD thesis, University of Idaho, 123 p.

TASS-CC Problem Analysis Page **34** of **39** Stearns-Smith & Associates Forestry Consultants


---



*Matyas, C. 1994. Modeling climate change effects with provenance data. Tree Physiology 14: 797-804.

*McLane, S.C., LeMay, V.M., and Aitken, S. N. Modeling lodgepole pine radial growth relative to climate and genetics using universal growth-trend response functions. *Submitted*.

*McMahan, A.J., Milner, K.S., Smith, E.L. 2002. FVS-BGC: User's Guide to Version 1.1. FHTET 02-02. Fort Collins, CO: USDA Forest Service, State & Private Forestry, Forest Health Protection, Forest Health Technology Enterprise Team. 52 p.

*Milner, K.S., Coble, D.W., Smith, E.L., McMahan, A.J. 2002. FVSBGC: A Dual Resolution Hybrid Model with Physiological and Biometrical Growth Engines. *In*: Crookston, N.L.; Havis, R.N., comps. Second Forest Vegetation Simulator Conference; 2002 February 12–14; Fort Collins, CO. Proc. RMRS-P-25. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station.

*Milner, K.S., Coble, D.W., McMahan, A.J. and Smith, E.L. 2003. FVSBGC: a hybrid of the physiological model STAND-BGC and the forest vegetation simulator. Canadian Journal Forest Research 33: 466–479.

Monserud, R.A. 1984. Height growth and site index curves for inland Douglas-fir based on stem analysis data and forest habitat type. Forest Science 36: 943-965.

*Monserud, R. A., Huang, S., Yang, Y. 2006. Predicting lodgepole pine site index from climatic parameters in Alberta. Forestry Chronicle 82(4): 562-571.

*Monserud, R.A., Yang, Y., Huang, S., Tchebakova, N. 2008. Potential change in lodgepole pine site index using climatic change scenarios in Alberta. Canadian Journal of Forest Research 38: 343-352.

Murdock, T.Q. and Spittlehouse, D.L. Selecting and using climate change scenarios for British Columbia. Pacific Climate Impacts Consortium (PCIC), University of Victoria. *(in prep)*

*Murdock, T.Q., Taylor, S.W., Flower, A., Mehlenbacher, A., Montenegro, A., Zwiers, F.W., and Alfaro, R. Pest outbreak distribution and forest management impacts in a changing climate in British Columbia. *In review*.

Nigh, G.D., Ying, C.C. Qian, H. 2004. Climate and productivity of major conifer species in the Interior of British Columbia, Canada. Forest Science 50: 659-671.

Nigh, G.D. 2006. Impact of climate, moisture regime, and nutrient regime on the productivity of Douglas-fir in coastal British Columbia, Canada. Climate Change 76: 321-337.

ONEill, G.A., Hamann, A., and Wang, T. 2008. Accounting for population variation improves estimates of the impact of climate change on species' growth and distribution. Journal of Applied Ecology 45: 1040-1049.

O' Neill, G.A., and Nigh, G.D. Linking population genetics and tree height growth models to predict impacts of climate change on forest production. *Submitted*.

TASS-CC Problem Analysis Page **35** of **39** Stearns-Smith & Associates Forestry Consultants

---



O'Neill, G.A., Nigh, G.D., Wang, T., and Ott, P.K. 2007. Growth response functions improved by accounting for nonclimatic site effects. Canadian Journal of Forest Research 37: 2724-2730.

Pike, R. G., Redding, T. E., Moore, R. D., Winkler, R. D., Bladon, K. D., Bennett, K. E., Redding T. E., Werner, A. T., Spittlehouse D. L., Moore, R. D., Murdock T. Q., Beckers, J., Smerdon B. D., Foord V. N., Campbell, D. A., Tschapinski P. J. 2010. Climate Change Effects on Watershed Processes in British Columbia. *In* Compendium of forest hydrology and geomorphology in British Columbia, Chapter 19. Land Management Handbook, BC Ministry of Forests and Range with FORREX Forum for Research and Extension in Natural Resources, Victoria, British Columbia. pp 699-747.
<u>http://www.for.gov.bc.ca/hfd/pubs/Docs/Lmh/Lmh66.htm</u>

Raymond, C.A., and Lindgren, D. 1986. Provenances and forest tree breeding for high latitudes: proceedings of the Frans Kempe Symposium in Umea, June 10-11, 1986.

Rehfeldt, G.E. 1988. Ecological genetics of *Pinus contorta* from the Rocky Mountains (USA): a synthesis. Silvae genetica 34: 26-33.

*Rehfeldt, G.E., Crookston, N.L., Warwell, M.V., and Evans, J.S. 2006. Empirical analysis of plant-climate relationships for the western United States. International Journal of Plant Science 167: 1123–1150.

Rehfeldt, G.E., Ferguson, D.E., and Crookston, N.L. 2009. Aspen , climate, and sudden dieback in western USA. Forest Ecology and management 258: 2353-2364.

*Rehfeldt, G.E., Tchebakova, N.M., Parfenova, Y.I., Wykoff, W.R., Kuzmina, N.A., Milyutin, L.I. 2002. Intraspecific responses to climate in *Pinus sylvestris*. Global Change Biology 8: 912-929.

*Rehfeldt, G.E., Tchebakova, N.M., Milyutin, L.I., Parfenova, Y.I., Wykoff, W.R., Kuzmina, N.A., 2003. Assessing population responses to climate in Pinus sylvestris and Larix spp. of Eurasia in the face of climate change. Eurasian Journal of Forest Research 6: 82-93.

*Rehfeldt, G.E., Wykoff, W.R. and Ying, C.C. 2001. Physiologic plasticity, evolution, and impacts of changing climate on *Pinus contorta*. Climatic Change 50: 355-376.

Rehfeldt, G.E., Ying, C.C., Spittlehouse, D.L., and Hamilton, D.A. Jr. 1999. Genetic responses to climate in *Pinus contorta*: niche breadth, climate change, and reforestation. Ecological Monographs 69: 375-407.

Rodenhuis, D., Bennett, K., Werner, A., Murdock, T.Q. and Bronaugh, D., 2009. Hydro-climatology and Future Climate Impacts in British Columbia, revised 2009, Pacific Climate Impacts Consortium, University of Victoria, Victoria, BC.

Sands, P.J., and Landsberg, J.J. 2002. Parameterization of 3-PG for plantation grown *Eucalyptus globulus*. Forest Ecology and management 163: 273-293.

Saxe, H., Cannell, M.G.R., Johnsen, Ø. Ryan, M.G., and Vourlitis, G. 2001 Tree and forest functioning in response to global warming. Tansley review no. 123. New Phytologist 149: 369–400

TASS-CC Problem Analysis Page **36** of **39**

---



*Schwalm, C.R., and Ek, A.R. 2001. Climate change and site: relevant mechanisms and modeling techniques. Forest Ecology and Management 150: 241-257.

*Seidl, R., Lexer, M.J., Jäger, D. and Hönninger, K. 2005. Evaluating the accuracy and generality of a hybrid patch model. Tree Physiology 25:939-951.

Wang, T., Hamann, A., Spittlehouse, D.L., and Aiken, S.N. 2006a. Development of PRISM-based scale-free climate data for western Canada for use in resource management. International Journal of Climatology 26: 383-397.

*Wang, T., Hamann, A., Yanchuck, A., O'Neill, G.A., Aitken, S.N. 2006b. Use of response functions in selecting lodgepole pine populations for future climates. Global Change Biology 12: 2404-2416.

Weiskittel, A.R., Garber, S.M., Johnson, G.P., Maguire, D.A., and Monserud, R.A. 2007. Annualized diameter and height growth equations for Pacific Northwest plantation-grown Douglas-fir, western hemlock, and red alder. Forest Ecology and Management 250: 266-278.

*Weiskittel, A.R., Maguire, D.A., Monserud, R.A., and Johnson, G.P. 2010. A hybrid model for intensively managed Douglas-fir plantations in the Pacific Northwest, USA. European Journal Forest Research 129:325-338.

*Weiskittel, A.R., Crookston, N.L., Radtke, P.J. Linking climate, gross primary productivity, and site index across forests of the western United States. *In review*.

Wensell, L.C., and Turnblom, E.C.. 1998. Adjustment of estimated tree growth rates in northern California conifers for changes in precipitation levels. Canadian Journal Forest Research 28: 1241-1248.

*Westfall, J.A., and Amateis, R.L. 2003. A model to account for potential correlations between growth of loblolly pine and changing ambient carbon dioxide concentrations. Southern Journal of Applied Forestry 27: 279-284.

*Yeh, H-Y., and Wensell, L.C.. 2000. The relationship between tree diameter growth and climate for coniferous species in northern California. Canadian Journal Forest Research 30: 1463-1471

Ying, CC., Thompson, C. and Herring, L. 1989. Geographic variation, nursery effects, and early selection in lodgepole pine. Canadian Journal of Forest Research 19: 832-841.

----

TASS-CC Problem Analysis Page 37 of 39 Stearns-Smith & Associates Forestry Consultants


---

# 9.0 APPENDIX I – LIST OF INTERVIEWEES

List of Interviewees and contacts (Specialist and Clients).

| Group            | Name                                                        | Date  |
| ---------------- | ----------------------------------------------------------- | ----- |
| Spec.            | Alfero, Rene<br/>Entomologist<br/>CFS-PFC                   | 8Feb  |
| Spec.            | Boisvenue, Céline<br/>CC-C Modeller<br/>Quebec MNR          | 7Jan  |
| Client           | Brown, Cam<br/>Planner<br/>Forsite Consulting               | 8Feb  |
| Spec.            | Coates, Dave<br/>Modeller (SORTIE)<br/>MNRO                 | 25Oct |
| Spec.            | Coops, Nick<br/>RemoteSensing<br/>UBC                       | 5Feb  |
| Spec.            | Crookston, Nick<br/>GY modeller (FVS)<br/>US Forest Service | 28Jan |
| Spec.            | Cruickshank, Mike<br/>Pathologist<br/>CFS-PFC               | 14Feb |
| Spec.            | Dymond, Caren<br/>Carbon Spec.<br/>MFML                     | 14Feb |
| Client           | Fletcher, Christine<br/>Forest Analyst<br/>MFML-FAIB        | 20Jan |
| Client<br/>Spec. | Hopkins, Kathy<br/>CC Advisor<br/>MFML                      | 28Jan |
| Spec.            | Huang, Shongming<br/>GY modeller (GYP SY)<br/>Alberta MSRD  | 29Nov |


| Group             | Name                                                                     | Date        |
| ----------------- | ------------------------------------------------------------------------ | ----------- |
| Spec./<br/>Client | Klenner, Walt<br/>Wildlife ecologist/modeller<br/>MNRO, Kamloops         | 14Jan       |
| Spec.             | Kurz, Werner<br/>Carbon modeller<br/>CFS-PFC                             | 11Feb       |
| Spec.             | Metsaranta, Juha<br/>Carbon modeller<br/>CFS-Edmonton                    | 11 Feb      |
| Spec.             | Morgan, Don<br/>Wildlife ecologist/modeller<br/>MoE, Smithers            | 24Jan       |
| Spec.             | Nigh, Gord<br/>Biometrician<br/>MFML                                     | 2Feb        |
| Spec.             | O'Neill, Greg<br/>Geneticist<br/>MFML                                    | 9Feb, 14Feb |
| Spec.             | Price, David<br/>CC-veg process modelling<br/>CFS-Edmonton               | 29Jan       |
| Spec.             | Robards, Timothy<br/>Biometrician<br/>Spatial Informatics Group (Calif.) | 19Jan       |
| Spec.             | Robinson, Don<br/>GY modeller<br/>(ProgBC, FVS)<br/>ESSA Technologies    | 24Jan       |
| Spec.             | Smets, Pia<br/>UBC PhD student<br/>(Sally Aitkin)                        | 8Feb        |


TASS-CC Problem Analysis Page **38** of **39**

---



| Group | Name                                          | Date  |
| ----- | --------------------------------------------- | ----- |
| Spec. | Spittlehouse, Dave<br/>Climatologist<br/>MFML | 28Jan |
| Spec. | Taylor, Steve<br/>CFS-PFC<br/>ND Modeller     | 7Feb  |
| Spec. | Wang, Tongli<br/>Geneticist<br/>UBC           | 2Feb  |


| Group  | Name                                                                  | Date  |
| ------ | --------------------------------------------------------------------- | ----- |
| Spec.  | Wieskittel, Aaron<br/>GY-process modeller<br/>U of Maine (FVS-C team) | 10Feb |
| Client | Winter, Ralph<br/>MFML-FPIB                                           | 8Feb  |
| Spec.  | Woods, Jack<br/>Mgr, BC Forest Genetics Council (FGC)                 | 17Jan |


TASS-CC Problem Analysis Page **39 of 39**
