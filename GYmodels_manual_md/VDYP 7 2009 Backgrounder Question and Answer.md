# **VDYP7 Question and Answer Link**

1. **Question:** When did the development of VDYP7 start?
The development started in 1998.

2. **Question:** When was the model completed?
The model development was completed in 2008 and implemented for public use in 2009.

3. **Question** Who developed VDYP7?

The initiation of the work was a joint effort between the then Ministry of Forests and a now defunct consulting company "J.S. Thrower & Associates".

Dr. Jim Flewelling working in close collaboration with ministry staff (Cam Bartram & Rob Drummond) developed the core modules of the model. Shawn Brant of Blue Denim Consulting, wrote software that links the core modules to generate VDYP7 output for different applications.

Vivid solutions, a data base management firm, wrote most of the software related to the VDYP7 in the Vegetation Resources Inventory Management System (VRIMS) application.

4. **Question:** What are the core components that run in VDYP7?

The core components of VDYP7 are:

**VRISTART** – This module is designed to use the full set of attributes available in new VRIs (V-standard inventories) where basal area and trees per hectare are supplied by photo interpreters.

**FIPSTART** – Is designed to work for old Forest Inventory Planning (FIP) data where basal area and trees per hectare are not provided. The module generates these attributes internally.

**VDYP7 GROW** – This module projects the inventory attributes forward – into the future. It computes current "static" yield, then computes growth information to determine yield at one or more points into the future after current yield.

**VDYP7 BACK** – This module projects the inventory attributes backward – into the past. It computes current yield, then projects the attributes back to one or more points in the past.

**VRIADJUST** – If inventory attributes are adjusted, this module is used to

1

---



generate a forest stand description conditioned on the adjusted attributes. These conditioned attributes are then used as reference points to project the inventory back or forward.

**VRIYOUNG** – This VDYP7 module is used when young stands with short heights are processed. Initially, these stands may not have any stand volume. But they are grown over time until such a time that they begin to show volume yield,

5. **Question:** What applications are written around the VDYP7 core components?

The key applications that use the VDYP7 core modules are:

**WinVDYP7** – This is a single polygon projection application. It is used mainly for research purposes, and to test scenarios. It is an interactive, Windows based application that allows a user to change and modify inputs on the fly to see the consequences of changes made.

**VDYP7 in VRIMS** – The annual projection of the provincial inventory in the corporate data base is undertaken by this application. It projects the inventory forward one year.

**VDYP7 Console** – The Console is the work-horse for Timber Supply Review (TSR) analysis. It generates yield tables for multiple polygons. More recently it has been enhanced to also convert volume yield to biomass yield.

**(VDYP7 Batch)** – This version of VDYP7 is available, but is not officially supported. It is designed take VRI sample data, merge it with Photo interpreted information, compute adjustment factors, and apply the adjustment factors to attributes of all polygons in a target population.

6. **Question:** What are the extended core modules?

The extended-core modules are wrap around software setups that purse input and feed it to the different applications and generates specific outputs for each of them. As might be expected, the data input formats differ depending on application.

7. **Question:** How are the core components of VDYP7 linked?

As indicated in the answer to Question 6, the extended core modules manage the input and output for the different applications. For the Console and WinVDYP7, all the code in the extended core modules were written by Blue Denim. For VDYP7 in VRIMS, however, some of the Extended-core module components were written by Vivid Solutions staff.

2

---



8. **Question:** What are the key attributes required to run VDYP7?

The attributes required to run VDYP7 include:

<u>**Mandatory**</u>

**Feature Id** – This is a unique identifier for every polygon in the province.

**Map-sheet #** - In VRIMS polygons are uniquely identified without reference to a map-sheet. Map-sheet information is not automatically available. An extra step is required to attach map-sheet to polygon records. In the Land Resource Data Warehouse (LRDW), which is an extract from VRIMS, map-sheet information is available, and can be viewed.

**Polygon #** - Polygon numbers are available both in VRIMS & the LRDW. The maximum length of the polygon number record is 12 digits.

**Layer Id** – A vegetated treed polygon can have up to 9 layers. In most cases only two layers are described. The first layer (layer 1) is usually the primary later, if crown closure is larger than 10%. If a second layer exists, and has a crown closure larger than 10%, while layer 1 has a crown closure of less than 10%, then the second layer is the primary.

**Rank Id** – The rank attribute is used to identify the primary layer. VDYP7 can only project two layers for the same polygon. The height, basal area, trees per hectare and volume attributes change over time for the primary layer. For the residual (veteran) layer those attributes do not change only age changes.

**BEC (Bio-geo-climatic) zone** – the VDYP7 growth and yield coefficients were developed by BEC zone. (A few BECs were merged where there was insufficient sample data to fit separate equations.) In order for VDYP7 to identify the correct coefficients to use in predicting yield for a given species, BEC must be specified. It is a mandatory attribute.

**Reference Year** – This is the year when photography was taken. It is an important reference point. All projections for a given polygon start from this point whenever VDYP7 is run for the polygon. (If attributes are adjusted, the year of ground sampling becomes the new point of reference for projecting adjusted attributes.)

**Species composition** – A polygon claimed to be vegetated treed must have a species composition. If the composition is missing VDYP7 will produce an error message and not generate any yield for it. Each species must be associated with a percent value that reflects its abundance in the polygon. That abundance is based on the size of basal area in relation to other species in the polygon. The species percents for all species within the polygon must add up to 100%. If not VDYP7 will produce an error message and skip the polygon.

**Stand (dominant) height** – Stand height is the height of the tallest trees of the leading species in a polygon. For old FIP inventories, only the height of the leading species is provided. For VRI (V-standard) inventories, the height of the

3

---



tallest trees of the second species is also provided.

**Stand Age** – Stand age is a subjective estimation of the age of the dominant trees in a forest cover layer. In the case of V-standard inventories, the age of the dominant trees of the second species is also provided.

**Crown closure** – In most cases crown closure contributes very little to the accurate prediction of volume yield. However, the attribute is important in that when it is 0.0 for a polygon, VDYP7 infers that there are no trees in the polygon and will not produce volume yield for such a polygon. It is also often used to determine if a residual layer exists in a given polygon.

**Stand basal area (at 7.5cm utilization level)** – Stand basal area (m^2) per hectare is the product of average tree basal area in square metres and the number of trees per hectare in a polygon. If basal area is provided from photo interpretation, it is assumed to be at the 7.5cm+ utilization level.

**Trees per hectare in a stand (7.5cm utilization)** – Is the average number of trees per hectare of a specified (e.g., 7.5cm+) size in a polygon. As is the case with basal area, if TPH are provided from photo interpretation, it is assumed that the values are the 7.5cm utilization level.

**Forest Cover Object Id** –Is a unique polygon identifier for a forest cover object (polygon). This attribute field must be population with data otherwise VDYP7 will not generate output.

<u>**Non-mandatory (nice to have)**</u>

**Non vegetated cover %** - None vegetation cover types and percent coverage within polygons can be specified. And when they are available, they are used to modify the computation of percent stockable. For instance, if a big polygon has an area within it that is rock, and the rock are constitutes 15% of the polygon area, the percent stockable is modified accordingly to show trees cannot grow on 15% of the area in the polygon.

**Other vegetation cover %** - Some polygons may have other vegetation growing in them, such as herbs, shrubs and grasses. If significant areas of a polygon are covered by these other forms of vegetation, VDYP7 takes those areas into account when it is computing percent stockable area in the polygon.

**Stockability (or percent stockable area)** – This is a value expressed in percentage that reflects the amount of space within a polygon, that is available for growing trees. These percentages are computed on a case by case basis for each individual polygon – depending on provided non-vegetation, other vegetation and density values. Typically the percent stockable values vary between 85% and 95%.

4

---



# **Stand Lorey Height** – Lorey height is the average height of trees of different species within a polygon, weighted by their basal area.

# **BC land cover classification<sup>1</sup>**: The BC land cover classification has 5 classes, which are: **Level1:** Vegetate (V) or non-vegetated (N) land cover; **Level2:** - vegetated, - treed (T) or not treed (N); **Level3:** - Wetland, Upland & Alpine; **Level4:** - 14 vegetation and non-vegetation cover types; **Level5:** - 16 density and ground cover types

## 9. Question:
How does VDYP7 estimate stand yield?

For the sake of simplicity, the use of equations is avoided here. The attributes that go into computing current or point-in-time yield are: Lorey Height (LH) and Quadratic Mean Diameter (DQ). LH is derived mostly using stand height (HD) and a number of other attributes such as TPH and BA when they are available.

By definition, DQ is a by-product of dividing basal area in square cm by TPH. This is how DQ is determined in VRISTART. However, in the FIPSTART module, regression prediction equations are used that utilise stand Height (HD) and crown closure to predict DQ and from this, BA and TPH.

## 10. Question:
How does VDYP7 estimate stand growth?

The primary equations in the increment process are for increments in site height, basal area (Jim Flewelling,2002<sup>2</sup>). Other equations deals with Lorey height, and other attributes are documented in the *“Variable Density Yield Prediction System (VDYP7) Design Document”* (*Forest Analysis and Inventory Branch, 2008*).

## 11. Question:
What is stand dominant height?

Dominant stand height is usually a reference to the average height of the dominant and co-dominant trees of the leading species. In the more recent VRI inventories, dominant height is also estimated for the second species. The significance of dominant height is that it is a better indicator of site productivity than the average height of all trees of a given species within a stand. This height and the age of a stand are the two attributes required to compute stand site index.

## 12. Question:
What is stand age?

Stand Age is an approximation of how old the trees in the dominant and co-dominant crowns are. It is one of the more difficult stand attributes to estimate

---
<sup>1</sup> The VRI Ground Sampling Procedures manual (page 166) Version 4.9.1 (2012) has a summary list of the various BC Land Cover Classification.
<sup>2</sup> IPSJF 176: Growth in Basal Area (empirical model, major revision)

5

---

because unlike height, where a parallax bar can be used to train the mind in the approximation process, age estimation is based purely on imagination and guessing.

## 13. Question:
What is stand basal area?

Stand basal area is usually expressed as square meters per hectare. It is the sum of tree basal areas in one hectare area in a stand. For large or small polygons, it is a value that is an average over several hectares, one hectare, or less than one hectare.

## 14. Question:
What is stand trees per hectare?

Trees per hectare (sometimes referred to as stems per hectare) is the number of trees bigger than a specified size that exist in a one hectare area of a polygon. For bigger or smaller polygons, it is the average number of trees on several hectares, on one hectare or on an area smaller than one hectare (extrapolated to one hectare size).

## 15. Question:
What is Lorey Height?

Lorey height is the average height of all trees in a stand weighted by tree basal area. This attribute can be computed by species and can also be generated for an minimum tree diameter limit.

## 16. Question:
What is Quadratic Mean Diameter?

Quadratic Mean Diameter (DQ) is computed using the basal area and trees per hectare. The exact form of the equation is specified in the VDYP7 design document.

## 17. Question:
What is utilization level?

This is the minimum diameter specified for data collection or analysis. A minimum diameter limit of 4.0cm for data collection means that during ground data collection all trees bigger than 4.0 cm are measured.

## 18. Question:
What types of volume can VDYP7 generate?

All input into VDYP7 is assumed to be at the 7.5cm utilization level, except when VDRIADJUST is run. After receiving input in an appropriate form VDYP can generate output at 5 utilization levels for Basal area, Trees per Hectare, Lorey height, and volume, i.e., 4.0cm, 7.5cm, 12.5cm 17.5cm and 22.5cm. For volume, VDYP7 can generate five levels of net volume, i.e., whole stem (or gross) volume; net top & stump; net top, stump and decay; net top, stump, decay & waste, and net top, stump, decay, waste & breakage.

6

---



19. Question: How is stand crown closure used by VDYP7?

Crown closure (cc) is quite a significant attribute, particularly when the inventory standard is "F", or when basal area and THP are not provided. It is used to estimate the BA and TPH in FIPSTART. It is also used to classify land cover:- Vegetated Treed (VT) if cc>=/= 10%, otherwise Vegetated non-treed (VN) when cc< 10%

20. Question: What is stockability or percent stockable area?

This attribute is derived automatically by VDYP7 and is defined as the amount of space (%) is available for tree growth. It is derived based on provided height, age, basal area and it is usually in the range of 85% to 95%. Among the attributes considered in its computation are presence or absence of "other vegetation" cover, such are shrubs, herbs & grass areas within a polygon, and presence of "non vegetated" cover, such as water or rock outcrops.

21. Question: Can the stockability attribute be manipulated to affect yield in a significant way?

The stockability attribute can be supplied from external computation if a VDYP7 user wishes to investigate reduced space occupancy within a stand (see Figure 1 below).

### Effect of % Stockable attribute on Future yield

| Age (yrs) | 85% - stockable | 60% - stockable | 40% - stockable | 20% - stockable |
| --------- | --------------- | --------------- | --------------- | --------------- |
| 40        | 12              | 12              | 12              | 12              |
| 45        | 18              | 35              | 35              | 35              |
| 50        | 40              | 55              | 55              | 55              |
| 55        | 70              | 80              | 75              | 70              |
| 60        | 95              | 105             | 110             | 85              |
| 65        | 115             | 125             | 120             | 95              |
| 70        | 135             | 140             | 130             | 105             |
| 75        | 155             | 155             | 140             | 110             |
| 80        | 170             | 165             | 150             | 115             |
| 85        | 185             | 175             | 155             | 120             |
| 90        | 200             | 185             | 160             | 120             |
| 95        | 215             | 195             | 160             | 120             |
| 100       | 230             | 200             | 155             | 120             |
| 105       | 245             | 205             | 155             | 120             |
| 110       | 255             | 205             | 160             | 120             |
| 115       | 260             | 205             | 160             | 120             |
| 120       | 260             | 205             | 160             | 120             |
| 125       | 260             | 205             | 160             | 120             |
| 130       | 260             | 205             | 160             | 120             |
| 135       | 260             | 205             | 160             | 120             |
| 140       | 260             | 205             | 160             | 120             |
| 145       | 260             | 205             | 160             | 120             |
| 150       | 260             | 205             | 160             | 120             |
| 155       | 260             | 205             | 160             | 120             |
| 160       | 260             | 205             | 160             | 120             |
| 165       | 260             | 205             | 160             | 120             |
| 170       | 260             | 205             | 160             | 120             |
| 175       | 260             | 205             | 160             | 120             |
| 180       | 260             | 205             | 160             | 120             |
| 185       | 260             | 205             | 160             | 120             |
| 190       | 260             | 205             | 160             | 120             |
| 195       | 260             | 205             | 160             | 120             |
| 200       | 260             | 205             | 160             | 120             |


7

---



22. Question: What type of data was used to fit yield functions in VDYP7?

Temporary sample plot (TSPs), and inventory audit (Aud) data were used to fit basal area & volume yield functions by BEC zone. The data were assumed to be truly representative of the population of vegetated treed polygons in thevarious BECs in BC.

23. Question: What type of data was used to fit growth functions in VDYP7?

The permanent sample plot (PSP) data were used to fit growth functions by BEC zones. These data are not based on random sampling, and their distribution over the province is not uniform. As such, the growth functions may be more optimistic in relation to true growth rates in the natural population.

24. Question: Which input attributes contribute the most to estimation of yield?

By far, basal area is the most important attribute in terms of explaining variation in stand volume. Other attributes in order of significance are Lorey height, (& Dominant height), stand age and trees per hectare.

25. Question: Can VDYP7 be used to estimate yield for Mountain Pine Beetle damaged stands?

VDYP7 was not designed to project damaged stands, such as MPB affected stands. However, there no other models that have been validated across the province. Prognosis is available for most areas in the interior, but it requires a tree list to run, and the availability of reliable tree list at a polygon level is limiting factor.

26. Question: Can VDYP7 be used to estimated stand biomass?

Yes, VDYP7 has been setup to convert volume to biomass.

27. Question: Can VDYP7 handle changes in species composition in a stand over time?

No. A module was developed to forecast species changes and alter yield accordingly, but it was not tested and has not been implemented. The key limitation is that we do not have re-measurement data from random locations from which we can model species dynamics accurately.

28. Question: How does VDYP7 perform in relation to the old VDYP6?

VDYP7 volumes are generally lower than VDYP6 volumes. Across 35 TSAs in the province, the overall difference was -4%, i.e., VDYP7 volumes were 4% less than VDYP6 volumes.

8

---



29. Question: How does VDYP7 perform in relation to TIPSY?

We have not tested this, and there is reluctance to do it. The reason is that the two are quite different in their approach to estimating yield. So it is unlikely that they will produce similar results. Below are a few of the differences.

| Differences between VDYP7 and TASS<br/>VDYP7                                       | Differences between VDYP7 and TASS<br/>TIPSY                                                              |
| ---------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| Stand-level model where competition among trees is not considered directly.        | Tree-level model where competition between trees is considered directly                                   |
| Knowledge of distance between trees is not required to generate yield              | Model uses distance between trees to assess competition and assess growth & yield                         |
| Developed for estimating yield from naturally regenerated stands                   | Developed for estimating yield where initial density of trees at time of planting or germination is known |
| Used empirical (real-life) data to develop yield and growth functions              | Used stem-analysis data to develop tree growth functions                                                  |
| Projection of stand attributes can start at any point in the life cycle of a stand | Optimum projection should start at time *of planting or germination into the future.*                     |


30. Question: Can VDYP7 project stand attributes after statistical adjustment?

Yes. A specialised module called VRIADJUST should be run prior to projecting the adjusted attributes beyond the date of ground sampling. And the date of ground sampling should be used as the reference year for the projection.

31. Question: At what utilization level does VDYP7 run at?

The calibration base for VDYP7 is the 7.5cm utilization. From this base, harmonized, Basal area, TPH, Lorey height and the various whole stem and net volumes are generated for the following utilization levels: 4.0cm, 12.5cm, 17.5cm & 22.5cm.

32. Question: What types of output can VDYP7 produce?

In the yield tables generated by VDYP7, the attributes listed below can be outputted. Some attributes come as standard output, others can be picked selectively. The list includes:

| Year | Age | Stand Composition | D   | Hgt | L Hgt | Dia | TPH | BA  | Vws | Vcu   | Vd    | Vdw   | Vdwb   | Mode    |         |       |       |       |       |       |      |
| ---- | --- | ----------------- | --- | --- | ----- | --- | --- | --- | --- | ----- | ----- | ----- | ------ | ------- | ------- | ----- | ----- | ----- | ----- | ----- | ---- |
| 1988 | 0   | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.00  | 0.0   | 0.0   | 0.0    | Back    |         |       |       |       |       |       |      |
| 1998 | 10  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 3.16  | 0.0   | 0.0   | 0.0    | Back    |         |       |       |       |       |       |      |
| 2008 | 20  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 8.83  | 8.10  | 13.9  | 60.81  | 0.9238  | 3.9     | 2.5   | 2.5   | 2.5   | 2.4   | Frwd  |      |
| 2018 | 30  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 13.83 | 12.03 | 15.2  | 280.84 | 5.0679  | 31.7    | 23.3  | 23.2  | 23.2  | 22.7  | Frwd  |      |
| 2028 | 40  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 17.76 | 15.27 | 16.2  | 530.81 | 10.9831 | 86.8    | 69.2  | 68.8  | 68.7  | 67.3  | Frwd  |      |
| 2038 | 50  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 20.77 | 17.83 | 17.2   | 717.91  | 16.5854 | 152.2 | 127.7 | 126.6 | 126.4 | 123.8 | Frwd |
| 2048 | 60  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 23.09 | 19.87 | 18.1   | 824.10  | 21.1435 | 215.2 | 187.0 | 184.9 | 184.3 | 180.5 | Frwd |
| 2058 | 70  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 24.91 | 21.51 | 19.0   | 867.47  | 24.7012 | 271.2 | 241.8 | 238.2 | 237.3 | 232.4 | Frwd |
| 2068 | 80  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 26.35 | 22.86 | 20.0   | 871.14  | 27.4929 | 319.9 | 290.6 | 285.3 | 284.0 | 278.0 | Frwd |
| 2078 | 90  | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 27.52 | 23.99 | 21.1   | 851.78  | 29.7219 | 361.8 | 333.4 | 326.2 | 324.3 | 317.5 | Frwd |
| 2088 | 100 | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 28.48 | 24.95 | 22.1   | 819.98  | 31.5410 | 398.2 | 370.9 | 361.4 | 359.1 | 351.5 | Frwd |
| 2098 | 110 | PL 92.0 LW        | 4.0 | FD  | 4.0   | 0.0 | 0.0 | 0.0 | 0.0 | 0.0   | 30.37 | 25.77 | 23.2   | 781.45  | 32.6408 | 430.7 | 403.5 | 381.7 | 368.8 | 358.6 | Frwd |


9

---



Year
Stand age
Species Composition
Dominant stand height (lead species)
Lorey height
Quadratic mean diameter
Trees per hectare
Stand basal area
Whole stem volume (Gross)
VCU (Volume net top & stump)
Vd (Volume net top, stump & decay)
Vdw (Volume net top, stump, decay & waste)
Vdwb (Volume net to, stump, decay, waste & breakage)
Projection mode (BACK or FORWARD)
Future modifications will include Site index & staockability as optional output)
Biomass

In the new version of VDYP7, output can ge generated either as a text file or as a CSV file

**33. Question:** Where can we get more detailed information on VDYP7?

Basic information on VDYP7 is available at the variable density yield prediction web site at: http://www.for.gov.bc.ca/hts/vdyp/.

More detailed and technical information can be obtained on request by calling Sam Otukol at (250)-387-2659 or Wenli Xu at (250) 387-5598

**34. Question:** What is the impact of switching from VDYP6 to VDYP7?

The average difference between the yields generated by two models at the provincial level is about 4%. However, differences as big as 30% have been observed for some management units. When there are no errors in the input attributes, VDYP7 definitely performs better than VDYP6.

The key advantage of VDYP7 is that it is much more sensitive to changes in the key measure of density, i.e., basal area. In VDYP6, crown closure was used as the measure of density, but the model performance was not sensitive to changes in crown closure.

**35. Question:** How does VDYP7 perform in deciduous stands in relation to VDYP6?

Generally, VDYP7 predicts higher volumes in deciduous stands compared to what was produced by VDYP6. The VDYP7 predictions seem to be more consistent with that is measured on the ground for deciduous stands.

10

---



36. Question: How is VDYP7 used in Timber Supply Reviews (TSR)?

In most TSRs, VDYP7 is used to generate yield tables for all stands older than 30 years. Some analysts may modify the threshold year to 40 or 50 years depending on local circumstances. For stands 30 year old or younger, TIPSY/TASS is used.

37. Question: How is VDYP7 used in projecting the forest inventory?

In the annual projection of the inventory in VRIMS, VDYP7 is used exclusively for all polygons in the province. The projection modifies the inventory attributes to reflect growth for one year. You can find more information on this at: <u>http://www.for.gov.bc.ca/hts/vridata/.</u>

38. Question: Where do you get information if VDYP7 fails to generate output for a polygon?

First check the "Error Messages" file before you call for help. This file usually contains too much information, but what you should look for is the message code. The first 6 attributes in the error message file are District or management unit code, map number, opening id, opening number, polygon number and layer id (or code). The 6<sup>th</sup> attribute is the message code. In this column, "I" stands for "information", "W" stands for "warning" and "E" stands for "error". Information and warnings may be generated without affecting the processing of a polygon. But an error message will result in either the polygon being skipped or no yield being generated for the polygon in question.

If an issue cannot be identified within the error message file, VDYP7 can be run in debug mode. When this mode is invoked, VDYP7 runs slower than normal. For the debug to work well the file setup should include a debug folder and the "-d" parameter should specify the path to the folder. A second parameter "-dbg" should be in the "yes" mode to invoke the debug execution. Detailed steps of the projection process will be provided in debug folder. It is best to run the debug with only a few polygons in the input file because this mode generates a lot of message output, and can be overwhelming if too many polygons are processed.

39. Question: What are the common errors encountered during the running of VDYP7?

- Missing species composition
- species percents not adding up to 100%
- Missing leading species
- Height too short
- Miss-identification of layers

11

---



Missing BEC zone
Duplicate species within a polygon
Missing height and age information
Missing values expressed as numeric 0.0 (zeros)
Numeric values presented as "blank" character values
Unrealistic values for basal area & THP resulting in DQ less than 7.5cm

40. Question: Do all the applications of VDYP7 generate the same output if they provided with the same input?

Technically, the core modules that constitute VDYP7 are at the heart of each of the following applications: WinVDYP, VDYP7 Console, and VDYP7 in VRIMS. However the way the data is prepared for processing and the format of the data used as input differ for each application. In WinVDYP, the inputs are supplied interactively in a windows environment. For the Console, the input is supplied using CSV files. In VRIMS the input is supplied as MDB/PGDB tables.

The different input modes and data formats of input have their unique limitations. For instance, in WinVDYP, the reference year attribute cannot be supplied, neither can "other vegetation" and "non-vegetated" status of a polygon. Consequently WinVDYP7 may not reproduce the same output as the Console in some circumstances.

In VRIMS, a miss-translation of what appears as blank space as being the number 0.0 (zero) may lead to different results from what the Console produces.

41. Question: Console?

The following types of information are found in the error messages log:

a) Information "I": General information on what VDYP7 found to be unique about a particular polygon. This information may be useful, but is not critical to generating output.
b) Warning "W": warnings may have run-time consequences on the projection, but will not in most cases cause the model to stop processing a polygon. For instance, when generating a yield table, if back projection is required, and starting age is 0 or fairly low, VDYP7 will warn that no yield was generated in the earlier stages of stand growth because height was too low to produce meaningful yield. These "W" messages are useful for explain why they generated yield may look odd or unusual.
c) Errors "E": Error messages tend to be fatal. The result in either VDYP7 aborting the processing of a polygon or producing nonsensical output. One

12

---



example of fatal errors is missing leading species. No yield table will be generated when it occurs.

42. Question: Why does VDYP7 run slower in some applications?

The WinVDYP and Console application of VDYP7 run pretty fast. For WinVDYP7, generating one yield table is trivial. The processing happens really fast. For the Console yield tables can be generated for 250,000 polygons within 20 minutes. The processing speed depends on input data format, complexity of the task and number of records being considered.

43. Question: How do you setup the console to provide more information on difficult errors?

The way to follow-up on more difficult errors in Console runs is to use the debug tool. This has been described in more detail in question #38.

Generally to run the Console in an organised fashion, you should setup 4 or 5 folders under one directory as indicated below:

| Folder     |
| ---------- |
| Kamloops   |
| Debug      |
| Input      |
| Output     |
| Parameters |


The input data should be saved in the "input" folder. The output should be directed to the "output" folder. For some users, the "OUTPUT" folder is used as the repository for the "Errors log", but some prefer to create a separate "ERRORS" folder.

The parameters that execute the Console-run should be saved in the "parameters" file. The "debug" folder is reserved for situations where the Console is not generating any results or the results are not one would expect. To invoke the debug function and save results of the run, two parameters need to be added to the parameters list, and should be specified as indicated in the example below:

-d E:\folder_name\Debug
-dbg Yes

The line starting with "-d E:\" maps the path to where the debug folder was created. The Parameter "-dbg" has two options; "Yes" to request the debug function to be activated, and "No" to request a deactivation of the debug

13

---

function. When a "yes" is specified a detailed description of the processing of different polygons is provided. For this reason, the more polygons you process the larger the debug output.

44. Question: What types of data input formats are acceptable for running VDYP7 Console?
a) The standard input for running VDYP7 is 8 CSV files. The names for these files **must be**: Schema.ini, Layer.csv, species.csv, polygon.csv, polygon_id.csv, non-veg.csv, other_veg.csv, VRIadjst.csv. The parameter for invoking this option is: "**-ifrmt scsv**"
b) There is an option to feed data into VDYP7 using a single flat (de-normalised) file. For people with limited knowledge of data structures, this option is easier to work with. It is invoked using the parameter: "**-ifmt dcsv**"

45. Question: How important is species composition when running VDYP7?

Species composition is essential for generating yield or projecting the attributes of a stand. If species composition is not provided, VDYP7 assumes the polygon is not treed, and stops processing it. If more than one species exists in a polygon, the species percents for all present species must add up to 100%.

46. Question: How important is BEC zone in running VDYP7?

The models that generate yield and growth are grouped by BEC zone and species classes know as "Sp0". If BEC is not provided, VDYP7 will not process the data in that it will be difficult to find the right equations to provide the right results.

47. Question: How important is feature identification during the running of VDYP7?

The feature identification number is unique for each polygon in a management unit. It allows for the linking of VDYP7 input attributes to a specific polygon.

48. Question: How important is Forest Object Identification in running VDYP7?

The VDYP7 Console needs Forest Cover Object Id to run. If it is not supplied, no output will be generated and neither will error messages.

49. Question: Is site index used in running VDYP7?

For stands with an age of 30 years or older, site index is computed using SINDEX, with Stand height and age as inputs. For stands younger than 30 years, estimated site index is read from the inventory file.

50. Question: What is calculated (or biological) site index?

14

---



Calculated (or biological) site index is derived from inventory height and age. External software called SINDEX is used to determine it.

51. Question: What is estimated site index?

Estimated site index is usually attached to stands younger than 30 years. This site index could be from one of several site productivity initiatives, such as SIBEC, growth intercept data, Site Index adjustment, anecdotal information, etc.

52. Question: Why do some stands with short heights get no yield estimation from VDYP7?

Generally, the main purpose of VDYP7 is to generate net volume for timber supply review purposes. The quadratic mean DBH of a stand should be bigger than 10.0cm in order for a stand to begin showing net volume. In addition a stand should have a lorey height of 7meters before any volume, including whole stem volume can be generated.

For very low productivity stands where height growth is slow, stands may not get net volume within the first 100 years.

53. Question: Why does VDYP7 ignore and re-compute some of the attributes provided to it?

Some logic is built into VDYP7 that evaluates the plausibility of input information. Consider the following VDYP7 input:

Breast Ht Age = 50, Ht = 8m, Basal area = 80m^2/ha, trees per hectare = 100.

VDYP7 would compute site index (SI=8) and determine that the stand has low site productivity. It will then determine that a basal area of 80m^2/ha is not plausible, and compute a more realist basal area consistent with Si=8m. In some cases VDYP7 would fail to generate yield for such data

54. Question: How often will modifications to VDYP7 be produced?

As issues arise, corrections and modifications will be made to VDYP7 core or extended core modules. There is a code-coop process for tracking and archiving changes. Once every year we will release a new version of the package depending on nature of modifications. The reason for one annual release is that it takes considerable preparation and cost to create the corporate production version of the software.

55. Question: What do I do if one of the applications of VDYP7, e.g., WINVDYP7 does not work on my computer?

First talk to your local IT help desk. The most likely cause of partial failure of the software is the way your computer is setup by your IT people. If that does not

15

---



work, uninstall what you have and download a new version from the web or ask your IT people to re-install the package.

56. Question: Can I produce site index as an output when I run the Console application?

Yes. The new versions of VDYP7 can now do this, and is available to users.

57. Question: Can I produce computed percent stockable values as output in Console?

Yes. This improvement has been added to the new version of VDYP7

58. Is the available VDYP7 documentation, explicit enough when dealing with atypical inventory data (i.e., FIP roll-overs, TLF data, etc)?

a) VDYP7 can handle any FIP based inventory
b) TFL data: VDYP 7 will process any data as long as it meets the data input formats, data consistency requirements.

59. Current documentation is not easy to follow, and is not complete enough to allow unassisted usage. Can they be simplified?

The user guides and other documents were produced with the assistance of "professional" writers. It was assumed the use of professional writers would produce user-friendly documents. More improvements of the documents are required.

The documentation will be reviewed regularly to identify weaknesses, and improve user-friendliness. An organized feedback system needs to be set-up to collate and process arising issues. Once the implementation stabilizes, the change management process will kick-in to provide a framework for change.

Major revisions have been made to the Console user guide to make it more complete. And over time more improvements will be made based on user feedback.

60. Does the flat file have to contain all of the fields in the sample data set (even if the optional ones are blank), or can I leave out the optional fields (i.e., not just blank but completely excluded) and just include the mandatory fields shown in the "vdyp input table attributes.xls"?

The structure of the input file must be fully supplied even if most input fields are blank. There are a couple of reasons for this: a) in some cases, blank values are in and of themselves significant, and b) Other attributes that may seem redundant provide useful information to data managers.

61. Do I have to use the exact field names shown in the sample data set?

16

---



The names of the fields actually have no effect on the application. The application expects the fields to occur in a certain order. If you wish to supply a different set of names, feel free to do so.

## 62. Does the order of the fields matter?

Yes. The order of the fields is critical to the application reading the data in correctly. The application does not refer to the columns names supplied in the first row. Instead it relies on an internal column ordering.

17
