# **TADAM: A dynamic whole-stand approximation for the TASS growth model**

by Oscar García<sup>1</sup>

## **ABSTRACT**

Growth and yield predictions for managed even-aged stands in British Columbia are based on TASS, an individual-tree distance-dependent growth model driven by an unusually detailed description of crown development. Because of its complexity, most applications utilize previously generated stand-level yield tables rather than running TASS directly. I have developed a differential equation approximation to the stand-level dynamics predicted by TASS that mimics the aggregate behaviour with sufficient accuracy for many practical purposes. Versions of this model, called TADAM, exist for planted coastal Douglas-fir, lodgepole pine, and white spruce. TADAM can efficiently project stand development starting from any initial conditions, and subject to any combination of thinnings. Its relative simplicity makes it suitable for embedding into landscape-level planning models and other decision support systems. It has been implemented as a C function library, as an interactive simulator running on a PDA, and as an Excel spreadsheet add-in. An example of thinning and planting density optimization is briefly described.

**Key words:** growth and yield, stand dynamics, thinning, optimization, *Pinus contorta*, *Picea glauca*

## **RÉSUMÉ**

Les prédictions de croissance et de rendement des peuplements équiennes aménagés de la Colombie-Britannique reposent sur le modèle TASS, un modèle de croissance basé sur la distance entre chaque arbre qui fonctionne à partir d'une description exceptionnellement détaillée du développement de la cime. À cause de sa complexité, la plupart des applications utilisent les tables de rendement au niveau du peuplement générées précédemment plutôt que d'utiliser TASS directement. J'ai mis au point une approximation des équations différentielles au niveau de la dynamique du peuplement prédite par TASS qui reproduit l'ensemble du comportement avec suffisamment de précision pour plusieurs applications pratiques. Des versions de ce modèle appelé TADAM sont disponibles pour le sapin Douglas de la région côtière en plantation, le pin lodgepole et l'épinette blanche. TADAM peut représenter de façon efficace le développement du peuplement à partir des conditions initiales et suite à toutes combinaisons d'éclaircie. Sa simplicité relative lui permet d'être intégré dans les modèles de planification au niveau de l'écosystème et d'autres systèmes d'aide à la décision. Il a été implanté en tant que référence de fonction C, comme un simulateur interactif d'un programme indépendant et comprendre un chiffrier Excel. Un exemple d'optimisation de la densité dans le cas d'éclaircie et de plantation est décrit brièvement.

**Mots clés :** croissance et rendement, dynamique du peuplement, éclaircie, optimisation, *Pinus contorta*, *Picea glauca*

## Introduction

Oscar García

Oscar García

**Introduction**

TASS (Mitchell 1975) is the most important growth model for even-aged managed stands in British Columbia, with versions for several species. It is a highly detailed mechanistic individual-tree spatial model. Because of its complexity and other practical limitations, it is rarely used directly for forest management. Instead, whole-stand yield tables derived from TASS are used, either in printed form (Mitchell and Cameron 1985), or computerized within the TIPSY software package (Mitchell *et al.* 2004). Although the yield tables are an adequate and convenient solution for many purposes, and TIPSY includes many additions and output options, a more flexible and consistent alternative would be desirable in other instances.

Instead of interpolating among entire yield trajectories, as is done in TIPSY, TADAM (TASS Approximation by a Dynamical Aggregated Model) interpolates the growth rates calculated by TASS. The rates can be integrated starting from any initial conditions to generate yield predictions for any combination of initial densities and thinning regimes. Predictions are obtained from model equations, not from tabulated values. Therefore, TADAM is particularly useful for projecting existing stands, and for investigating tending regimes. Being a deterministic model that smoothes out the irregularities from the TASS simulations facilitates optimization studies. TADAM's relative simplicity makes it possible to embed it into landscape-level planning models and other decision support systems.

I focus here on the TADAM versions for interior lodgepole pine (*Pinus contorta* var. *latifolia*) and white spruce (*Picea glauca* or *P. glauca* × *engelmannii*), from a practitioner's perspective. An earlier version for coastal Douglas-fir (*Pseudotsuga menziesii* var. *menziesii*) and theoretical and methodological aspects have been discussed in detail in

<sup>1</sup>University of Northern British Columbia, 3333 University Way, Prince George, British Columbia V2N 4Z9. E-mail: garcia@unbc.ca

JULY/AUGUST 2005, VOL. 81, No. 4 — THE FORESTRY CHRONICLE 575

---



The Forestry Chronicle Downloaded from pubs.cif-icf.org by 70.67.29.204 on 05/07/21 For personal use only.

## Fig. 1.
A two-dimensional simulation of stand dynamics according to Mitchell (1975), with the lodgepole pine TASS parameter values. Site index 20, average initial spacing 2 m, unthinned. Note tree mortality, and the apparent vertical displacement of the canopy formed by five annual foliage layers. The actual TASS computer implementation approximates this process on a three-dimensional grid.

### Figure 1 Data

| Time     | Canopy Height (approximate)            |
| -------- | -------------------------------------- |
| 10 years | Low and relatively stable              |
| 20 years | Moderate fluctuations                  |
| 40 years | Significant fluctuations and increases |
| 80 years | High fluctuations and sharp peaks      |


García (2003). The plan of this article is as follows. First, **TASS** is briefly described, together with its usage through TIPSY and other means. Then I present the main growth and mortality rate equations. Auxiliary relationships for thinning and output calculations follow. The computer implementations, an application to the design and economic evaluation of tending regimes, and some discussion and conclusions end the article.

## **TASS**
TASS (Tree and Stand Simulator) simulates the growth of individual trees in a stand, based on the development of the crown vertical profiles through branch extension and neighbour interaction (Mitchell 1975). It usually starts with a number of seedlings distributed over a piece of land according to a given spatial pattern. Each tree is assigned at random a relative height growth rate, reflecting site quality and genetic and micro-site variability. As the trees grow in height, they add shells of foliage with a fixed profile, lasting for up to five years. Thus, the resulting hollow crowns appear to move upward, while their horizontal extension is limited by contact with their neighbours (Fig. 1).

Over-topped trees die, subject to some constraints designed to ensure that mortality is realistic at the stand level. The stem volume increment of a tree is a function of the tree actual and potential (open-grown) amounts of foliage, and is distributed along the stem following the so-called Pressler law (Larson 1963, Mitchell 1975) (more recent versions of TASS have modified Pressler's predicted profile according to empirical evidence for each species, and added butt swell at the base).

Thinning is simulated by selectively removing the smaller trees according to a certain algorithm. The space made available by thinning or natural mortality is gradually occupied by neighbouring tree crowns as they grow in height The computer implementation approximates this process by keeping track of the status of points on a grid in three-dimensional space. The original versions for white spruce (Mitchell 1969) and Douglas-fir (Mitchell 1975) were later revised and augmented by versions for several other species (Di Lucca 1998). The relationships in TASS were derived from branch, bole, and foliage measurements on individual trees, complemented with some untreated permanent sample plot data for the mortality algorithms and to ensure reasonable over-all behaviour (Goudie 1998). Extensive testing and evaluation with many other data sets, including precommercial and commercial thinning, have shown model accuracy to be generally satisfactory (Mitchell and Cameron 1985, Goudie 1998).

## Yield Tables
Clearly, TASS is a complex model with heavy computational demands. It is only available at the Research Branch of the BC Ministry of Forests. For these reasons, direct use of TASS in forest management has been limited, with most applications using previously prepared yield tables. A yield table shows the time trajectory of stand-level variables such as top height, trees per hectare, basal area, mean diameter, and stand total and merchantable volumes, for a given site, initial density, and thinning regime. Mitchell and Cameron (1985) published a set of yield tables generated by TASS. Later, table lookup and interpolation was mechanized through a computer program called TIPSY (Table Interpolation Program for Stand Yield; Mitchell *et al.* 1992, 2004; Di Lucca 1998). Farnden (1996) approximated TASS predictions graphically in stand density management diagrams (SDMDs).

The problem of providing predictions for different site qualities is simplified in the Mitchell and Cameron (1985) tables, in TIPSY, and in the SDMDs, by displaying trends rel-

576
JUILLET/AOÛT 2005, VOL. 81, N°. 4 — THE FORESTRY CHRONICLE

---



# Fig. 2

| Top height (m) | Basal area (m²/ha) |
| -------------- | ------------------ |
| 0              | 0                  |
| 5              | 5                  |
| 10             | 10                 |
| 15             | 20                 |
| 20             | 30                 |
| 25             | 50                 |


**Fig. 2.** Example of TASS predictions, with and without thinning, and vector field showing rates of change in two dimensions. The rate vectors can be followed to generate a trajectory through any given point (not shown). This is an illustration only; TADAM is similar, but in a three-dimensional state space, including trees per hectare in addition to top height and basal area.

ative to top height instead of time. The relationships between the various stand variables and top height are assumed to be independent of site quality, and top height is related to age and site by standard site index equations. This assumption, sometimes called *Eichhorn's law* (Eichhorn 1904), is not part of TASS, but graphing of predictions showed it to be a good approximation (Mitchell and Cameron 1985).

Yield tables make predictions for specific combinations of initial density, and of thinning timing and intensity. Compromises must be made to estimate the development of stands under regimes not represented in the tables. In addition, the current state of an existing stand generally does not coincide with the predictions, so that projection of its future development using yield tables becomes problematic. To some extent, TIPSY alleviates the problem by interpolating among an extensive data base of yield tables, and in its latest version provides methods for dealing with existing stands, but complexity and conceptual limitations remain. Yield tables are "static" models (Alder 1980, Vanclay 1994), representing directly whole time trajectories.

## Dynamic Models
TASS is a dynamic model, in the sense that at any point in time it uses a description of the state of the stand to predict the rate of change of that state. Future states are calculated by accumulation (integration) of these rates. Thinning causes an instantaneous change of state. The state description used in TASS is extremely detailed, involving the location and stem dimensions of every tree in a plot of land, as well as the tree crown dimensions and extension in space. In principle, it would be possible to start with the current state of an existing stand, and project its evolution over time, untreated or subject to any sequence of thinning treatments. In practice, the fact that such detailed initial state information is not normally available and other considerations limit TASS to simulations beginning with bare ground (Goudie 1998).

In TADAM, I approximate TASS predictions with a dynamic model that describes the state of a stand by just three stand-level variables: top height, trees per hectare, and basal area ($H, N, B$). Values for these variables are easily available from routine inventories, and their dynamics were found to be adequately predicted by their current values. In addition, other characteristics of interest such as volumes and diameter distributions can be estimated from these three state variables with sufficient accuracy for many purposes. The relationships were obtained from the same databases of TASS-generated yield tables used in TIPSY.

While TIPSY interpolates whole trajectories of $H, N$ and $B$ over time, TADAM essentially interpolates their rates of change (growth and mortality), which can then be put together to generate trajectories for any treatment combinations. These rates may be visualized as short trajectory segments, or as velocity vectors indicating flow direction and speed (Fig. 2). Integration produces a streamline through any point in the state space. A conceptually similar approach, but based on only two state variables, is implicit in SDMD; it has been found satisfactory for unthinned and possibly for pre-commercially thinned stands, but less so for stands thinned at later ages (Farnden 1996, García 2003).

## Growth and Mortality
We need equations describing the rates of change in $H, N$ and $B$ due to stand growth and mortality, as functions of the current values of those variables. Changes at the time of thinning are discussed in the next section.

Top height ($H$) was modelled by the site index equations recommended by the BC Ministry of Forests, the same used in TIPSY (Thrower *et al.* 1994). This is a self-contained submodel: predicted top height growth is independent of $N$ or $B$.

As in Mitchell and Cameron (1985) and in TIPSY, mortality and basal area increment were predicted per unit of top height increment, assuming that these relative rates are independent of site quality. Rates could be expressed on an annual or periodic basis, or for a fixed height increment, using finite differences in ratios like $\Delta N / \Delta H$, where $\Delta$ denotes a difference between consecutive values. Finite differences are easy to understand, and integration reduces to a simple iterative accumulation. The interval to be used in their definition, however, is somewhat arbitrary, and the approximations needed when the projection period is not an exact multiple of that basic interval can be cumbersome. Instead, I used derivatives such as dN/dH, which are the limit as $\Delta H$ tends to zero. These can be seen as instantaneous rates, or as trajectory slopes (Fig. 2).

The relative mortality rate (-dN/dH)/N = -d ln N/dH was modelled as a function of current height and trees per hectare:

$$\frac{d \ln N}{dH} = -f(H, N) \quad [1]$$

In order to ensure biologically reasonable behaviour, growth was represented through the product $BH \equiv W$, which is roughly proportional to volume per hectare, as a difference between gross increment and mortality. The mortality in terms of $W$ is the number of dead trees times their average $W$.

---



Dead trees tend to be smaller than average, and their relative size appeared to be well described as a function of height in the form $kH^m$. Therefore,

$$\frac{dW}{dH} = g(H, N, B) + kH^m \frac{W}{N} \frac{dN}{dH} ,$$

or [2]

$$\frac{dBH}{dH} = g(H, N, B) - kH^{m+1} Bf(H, N) ,$$

where $g(H, N, B)$ is gross increment. Note that $dBH/dH = (dB/dH)H + B$, or $dB/dH = (dBH/dH - B)/H$.

The “data” used to fit these relationships were the yield tables for planted lodgepole pine and white spruce in the database of TIPSY version 3.0, which were generated with TASS 2.05.24b. The natural stand simulations differ from the planted in that the initial spatial tree distribution is clumped, and that regeneration occurs over a period of about five years; this should result in somewhat lower early growth. For lodgepole pine there are 110 yield tables, corresponding to initial square spacings of 1.5 to 6 m (278 to 4444 trees per hectare), unthinned, or thinned at 4 m and/or at 16–22 m top height with various intensities. Projections go from 2 to 30 m top height (173 years for site index 20), at intervals of 2 m. For white spruce there are only 30 yield tables, with the same initial spacings as pine, but only unthinned or with one thinning at 4 m. The spruce tables range from 2 to 40 m top height (255 years for site index 20), at 2-m intervals.

Thinned tables were used starting after the last (or only) thinning, because they coincide with other tables before that. An initial state at breast-height age was added to the unthinned sequences, with $H = 1.3$, $B = 0$, and an estimated $N = N_{1.3}$. The $N_{1.3}$ estimates are $0.980N_0$ for pine and $1.049N_0^{0.3915}$ for spruce, where $N_0$ is the planting density.

To find appropriate function forms for Equations 1 and 2, the derivatives on the left-hand-sides were approximated by finite differences for each pair of consecutive table entries, and the relationships to the state variables analyzed graphically. Function parameters were then estimated by numerical integration and non-linear least-squares. Specifically, the equations were integrated for each yield table, with the breast-height or after thinning state as initial values, through a standard algorithm (4th-order Runge-Kutta with step $\le 1$ m), and the minimum of the total sum of squared deviations for $\ln N$ or $B$ found with an iterative optimization routine. The exception was pine basal area, where a visually better fit was obtained by minimizing the sum of residuals raised to the fourth power. For further technical details see García (2003).

The resulting equations and parameter values are given in the Appendix. TADAM and TASS/TIPSY density predictions for unthinned pine are compared in Fig. 3. Fig. 4 shows the differences in pine basal area. Graphs for spruce look similar, except for the absence of commercial thinning simulations.

Table 1 contains over-all fit statistics. Differences seem acceptable for many practical uses. Predictions for commercially thinned spruce should be used with care, however, since no such treatments were present in the database.

## **Thinning and Volumes**

### Fig. 3. Lodgepole pine unthinned mortality trends from the TASS/TIPSY yield tables (solid curves), and corresponding TADAM predictions for the same starting points at breast-height (dashed). Logarithmic N-scale.

| Top height (m) | TIPSY  | TADAM  |
| -------------- | ------ | ------ |
| 0              | \~3000 | \~3000 |
| 5              | \~2500 | \~2500 |
| 10             | \~2000 | \~2000 |
| 15             | \~1500 | \~1500 |
| 20             | \~1000 | \~1000 |
| 25             | \~800  | \~800  |
| 30             | \~700  | \~700  |


### Fig. 4. Lodgepole pine basal area differences between TADAM predictions and the TASS/TIPSY yield tables. Predictions initialized at breast-height or after thinning.

| Top height (m) | unthinned | precommercial | commercial |
| -------------- | --------- | ------------- | ---------- |
| 0              | 0         | 0             | 0          |
| 5              | 0.5       | 0.2           | -0.1       |
| 10             | 2.0       | 1.5           | 0.5        |
| 15             | 1.0       | 0.8           | -0.2       |
| 20             | 0.5       | 0.3           | -0.5       |
| 25             | 0.2       | 0.1           | -0.8       |
| 30             | -0.2      | -0.3          | -1.0       |


Equations 1 and 2, together with the site index and height growth model, determine predicted stand development over any time interval where the stand is not intervened. A thinning simply causes an instantaneous change in $N$ and $B$, after which the same equations apply. Calculations are straightforward when both the number of trees and the basal area removed by thinning are given. Sometimes only one of these values is known, and it is then useful to be able to estimate one from the other.

Let $N_0$ and $B_0$ be the trees per hectare and basal area before thinning, and $N$ and $B$ the corresponding values after thinning. The following formula (see García (2003) for a derivation) was obtained by non-linear least-squares fitting of $\ln B$ with the TIPSY pine thinning data:

---



# Table 1. Differences between TADAM and TASS/TIPSY trees per hectare and basal area predictions

|                  | Pine (n = 842)<br/>N (trees/ha) | Pine (n = 842)<br/>N (%) | Pine (n = 842)<br/>B (m²/ha) | Spruce (n = 560)<br/>N (trees/ha) | Spruce (n = 560)<br/>N (%) | Spruce (n = 560)<br/>B (m²/ha) |
| ---------------- | ------------------------------- | ------------------------ | ---------------------------- | --------------------------------- | -------------------------- | ------------------------------ |
| Minimum          | -75                             | -8                       | -1.9                         | -66                               | -9                         | -4.2                           |
| Maximum          | 96                              | 7                        | 2.5                          | 105                               | 10                         | 2.8                            |
| Root-mean-square | 13                              | 1.4                      | 0.89                         | 16                                | 2.0                        | 1.2                            |


$$B = B_0 \left[ \frac{(N N_0)^c}{(N N_0)^c + a H^d B_0^b (N^c - N_0^c)} \right]^{1/b} + [3]$$

with $a = 7.299$, $b = 0.2591$, $c = 0.2920$, and $d = -0.4816$. The standard error of $\ln B$ was 0.0395 (i.e., approximately 4% for $B$), based on 100 data points.

For spruce, only 20 observations were available, all for $H = 4$ m. It was therefore decided to use the pine equation, re-estimating only the parameter $a$. This gave $a = 7.798$, and a standard error of 0.102.

Inverse relationships have been used to estimate $N$ from $B$. Note that these estimates reflect the selectivity of the simulated thinning algorithm used in TASS. More direct thinning information should be used whenever possible.

The dynamic components of the model project $H$, $N$ and $B$ over time. Other quantities of interest may be estimated from the current values of these three state variables. Stand volume equations were obtained by stepwise linear regression from the TASS/TIPSY predicted total volumes ($V$, m³/ha):

**Pine:**
$V/B = -1.454 + 0.8039 \, H - 0.1092 \, B + 0.9222 \, / \, B - 4.780 \, H / \sqrt{N}$
$(n = 933, SE = 0.323). \quad [4]$

**Spruce:**
$V/B = 1.048 + 0.2965 \, H - 10.68 \, H/N$
$(n = 580, SE = 0.445). \quad [5]$

TIPSY provides merchantable volumes per hectare, excluding a 30-cm high stump and a top with diameters under 10 cm, for trees above dbh limits of 12.5, 17.5, 22.5, 27.5, and 32.5 cm. Total to merchantable volume conversion estimates can be obtained from stand level variables (e.g., Farnden 1996). I modelled merchantable volume, $M$, as a continuous function of the limiting dbh $d$:

$$M = (V - 0.4B) \exp \left[ -a \frac{D}{H} \left( \frac{d}{D} \right)^{b/N^c} \right], \quad [6]$$

where $D = 200 \sqrt{\frac{B}{\pi N}}$ is the (quadratic) mean dbh, and $a$, $b$ and $c$ are parameters. For pine, $a = 0.3939$, $b = 99.47$, and $c = 0.4012$, with a standard error of 5.83 m³/ha, based on 4665 observations. For spruce, $a = 0.3945$, $b = 55.32$, and $c = 0.3438$, with a standard error of 6.56 m³/ha, based on 2850 observations.

Dbh distributions were not estimated because the neces-

sary data were not readily available. Although often useful, it should be pointed out that the reliability of tree size distributions is severely limited by sampling variability and by spatial correlations, a fact that tends to be ignored (Fox *et al.* 2001, García 2003).

## **Implementation and Applications**

The basic model relationships have been programmed as a function library in standard C. Projections are implemented through numerical integration of the rate equations, giving the trees per hectare and basal area at any height, knowing their values at some other height. There are functions relating top height, age and site index, and functions for calculating volumes and after-thinning variables. The library is well documented and easy to use by other software, either through its C source or from a compiled Dynamic Link Library (DLL).

The C library has been used in an interactive simulator that runs on Palm-compatible hand-held devices. In addition to simulating responses for any initial density and thinning combinations, the program can be used for stand volume and site index calculations. It can be run on personal computers with a Palm emulator.

The DLL can be accessed from Microsoft Excel through an add-in. This interface was suggested by Robert Vassov and initially implemented by Gyula Gulyas at Olympic Resource Management. The Excel functions constitute a particularly flexible and powerful modelling kit for those familiar with spreadsheet usage.

As an example, Fig. 5 shows a spreadsheet for analyzing planting density and thinning alternatives, assuming some simplified cost and price relationships. The top two rows contain problem parameters: site index, discount rate, fixed and direct planting costs, fixed and direct harvesting costs, coefficients for a tree price-size curve, and the excess harvesting cost of thinnings relative to clearcut. Two tables follow, unthinned, and thinned once. The cells with thin borders contain the decision variables: initial density (surviving trees at breast-height age), harvest age, and in the case of thinning its age and intensity. The thick borders indicate target cells containing the objective function, here the Land Expectation Value or "Site Value." Growth and thinning calculations are set up with the Excel user functions from the TADAM add-in, and costs, returns, and other financial measures are derived. For both the unthinned and thinned cases, the Excel <u>Solver</u> tool finds the values of the decision variables (adjustable cells) that maximize the target. More thinnings are easily added, and users could substitute cost/return values and relationships appropriate to their circumstances, possibly including non-timber values.

It may be worth mentioning that TADAM is age-inde-

JULY/AUGUST 2005, VOL. 81, No. 4 — THE FORESTRY CHRONICLE 579

---



| Site:                         | 20              | pfixed:     | 500         | Infixed:    | 10              | Smax:       | 80          | Thin.factor:              | 1.3         |
| ----------------------------- | --------------- | ----------- | ----------- | ----------- | --------------- | ----------- | ----------- | ------------------------- | ----------- |
| Disc.rate:                    | 4%              | pdirect:    | 0.01        | hdirect:    | 0.01            | vzero:      | 0.2         |                           |             |
|                               | Age             | H           | B           | N           | V               | Cost        | Return      | Net                       | Discounted  |
| Planting                      | 0               |             |             |             |                 | 506.3930657 |             | -506.393066               | -506.393066 |
| Breast-height                 | 4.958613661     |             | 1.3         | 0           | **639.3065712** |             |             | 0                         | 0           |
| Harvest                       | **56.1342361**  | 20.39519668 | 38.98187419 | 584.6916179 | 260.224255      | 15.84691618 | 11462.87451 | 11447.0276                | 1266.307678 |
|                               |                 |             |             |             |                 |             |             | NPV: 1266.307678          |             |
|                               |                 |             |             |             |                 |             |             | Site Value **$ 1,423.81** |             |
| Thin intensity: **32%** of BA |                 |             |             |             |                 |             |             |                           |             |
|                               | Age             | H           | B           | N           | V               | Cost        | Return      | Net                       | Discounted  |
| Planting                      | 0               |             |             |             |                 | 513.7091164 |             | -513.709116               | -513.709116 |
| Breast-height                 | 4.958613661     |             | 1.3         | 0           | **1370.911642** |             |             | 0                         | 0           |
| Before thin                   | **14.2060689**  | 5.316355785 | 3.452393321 | 1305.49452  | 6.929244301     |             |             | 0                         | 0           |
| Removed                       | 14.2060689      | 5.316355785 | 1.094741476 | 725.983958  | 2.451916946     | 22.43779197 |             | 0                         | -12.8525965 |
| After thin                    | 14.2060689      | 5.316355785 | 2.357651846 | 580.5105216 | 4.477327355     |             |             | 0                         | 0           |
| Harvest                       | **55.54567729** | 20.27031683 | 38.96370111 | 557.2595909 | 253.4343635     | 15.57259591 | 11358.59663 | 11343.02303               | 1284.104731 |
|                               |                 |             |             |             |                 |             |             | NPV: 1271.251766          |             |
|                               |                 |             |             |             |                 |             |             | Site Value **$ 1,433.54** |             |


**Fig. 5.** A spreadsheet using the TADAM Excel add-in to optimize stand treatments [attached Fig.1.eps - Fig.5.eps, encapsulated post-script (eps)]

dependent, in that to project an existing stand the age is only used to estimate site index, if necessary. If site index is obtained by other means, e.g., from biogeoclimatic methods (B.C. Ministry of Forests 1997), age is not needed. This can be useful in many practical situations where good age estimates are costly or unfeasible.

The software is freely available from http://forestgrowth.unbc.ca/tadam.

## Closing Remarks

Detailed mechanistic individual-based models are invaluable as research tools. They can synthesize and make sense of isolated facts, identify knowledge gaps, and generate hypotheses for further investigation. In addition, TASS was able to produce plausible predictions at a time when little permanent sample plot data was available. For the management of even-aged TADAM has been able to approximate closely stand dynamics as simulated by TASS. In the longer term, it seems natural to develop similar models from actual field measurements. Meanwhile, TADAM complements TASS and TIPSY as an easy to use and flexible analysis tool.

## Acknowledgements

I am grateful to the Stand Development Modelling Group of the BC Ministry of Forests Research Branch, in particular Ken Mitchell, Jim Goudie, Ken Polsson, and Mario Di Lucca, for making available the TIPSY databases and patiently answering my many questions.

## References

**Alder, D. 1980.** Forest volume estimation and yield prediction. Vol.2 – Yield prediction. Forestry paper 22/2, FAO, Rome.

**B.C. Ministry of Forests. 1997.** Site index estimates by site series for coniferous tree species in British Columbia. British Columbia Ministry of Forests, Forest Practices Branch. Victoria, BC.

**Di Lucca, C.M. 1998.** TASS/SYLVER/TIPSY: systems for predicting the impact of silvicultural practices on yield, lumber value, economic return and other benefits. *In* C.R. Bamsey (ed.). Stand Density Management Conference: Using the Planning Tools. November 23–24, 1987, Edmonton, Alberta, pp. 7–16. Alberta Environmental Protection.

**Eichhorn, F. 1904.** Beziehungen zwischen Bestandshöhe und Bestandsmasse. Allgemeine Forst- und Jagdzeitung 80: 45–49.

**Farnden, C. 1996.** Stand density management diagrams for lodgepole pine, white spruce and interior Douglas-fir. Information Report BC-X-360, Canadian Forest Service, Pacific Forestry Centre, Victoria, BC.

**Fox, J.C., P.K. Ades and H. Bi. 2001.** Stochastic structure and individual-tree growth models. Forest Ecology and Management 154:261–276.

**García, O. 2003.** Dimensionality reduction in growth models: An example. Forest Biometry, Modelling and Information Sciences 1:1–15.

**Goudie, J.W. 1998.** Model validation: A search for the magic grove or the magic model. *In* C.R. Bamsey (ed.). Stand density management: Planning and implementation. pp. 45–58. Edmonton, AB.

**Larson, P.R. 1963.** Stem form development of forest trees. Forest Science Monograph 5, Society of American Foresters.

**Mitchell, K.J. 1969.** Simulation of the growth of even-aged stands of white spruce. School of Forestry Bulletin No. 75. Yale University, New Haven, CT.

**Mitchell, K.J. 1975.** Dynamics and simulated yield of Douglas-fir. Forest Science Monograph 17, Society of American Foresters.

**Mitchell, K.J. and I.R. Cameron. 1985.** Managed stand yield tables for coastal Douglas-fir: Initial density and precommercial thinning. Land Management Report 31. B.C. Ministry of Forests, Research Branch, Victoria, BC.

**Mitchell, K.J., S.E. Grout, R.N. Macdonald and C.A. Watmough. 1992.** User's guide for TIPSY: A Table Interpolation Program for Stand Yields. BC Ministry of Forests, Research Branch, Victoria, BC.

**Mitchell, K.J., M. Stone, S.E. Grout, C.M. Di Lucca, G.D. Nigh, J.W. Goudie, J.N. Stone, A.J. Nussbaum, A. Yanchuk, S. Stearns-Smith and R. Brockley. 2004.** TIPSY Version 3.2. B.C. Ministry of Forests, Research Branch, Victoria, BC.

**Thrower, J.S., A.F. Nussbaum and C.M. Di Lucca. 1994.** Site index curves and tables for British Columbia: Interior species. 2nd edition. Land Management Handbook, Field Guide Insert 6. BC Ministry of Forests, Research Branch, Victoria, BC.

**Vanclay, J.K. 1994.** Modelling Forest Growth and Yield: Applications to Mixed Tropical Forests. CABI International, Wallingford, UK. 312 p.

**Appendix. Rate Equations and Coefficients**

580 JUILLET/AOÛT 2005, VOL. 81, N° 4 — THE FORESTRY CHRONICLE

---



The following equation forms for [1] and [2] were found through data plotting and residual analysis of their fitted numerical integrals, after much trial-and-error.

Lodgepole pine:

$$ \frac{d \ln N}{d H} = -a_1 e^{-a_2 H} - N^{a_3} e^{a_4 H - a_5} \tag{7} $$

$$ \frac{d B H}{d H} = G H (1 - e^{-a_0 H^{\alpha_7}}) (1 + a_8 H + a_9 H^2 + a_{10} H^3 + a_{11} \ln N + a_{12} \ln^2 N + a_{13} H \ln N + a_{14} G + a_{15} G H) / (a_{16} + a_{17} H + a_{18} G + a_{19} G H) + a_{20} B H^{a_{21}} \frac{d \ln N}{d H} \tag{8} $$

where $G = B + 0.002 N$ (scaled units, see below).

White spruce:

$$ \frac{d \ln N}{d H} = -b_1 N e^{-b_2 H} - N^{b_3} e^{b_4 H^{b_5} - b_6} \tag{9} $$

$$ \frac{d B H}{d H} = b_7 H^{b_8} N^{b_9} \frac{1 - \exp(-b_{10} H^{b_{11}} N^{b_{12}})}{1 + b_{13} H^{b_{14}} N^{b_{15}}} \tag{10} + b_{16} B H^{b_{17}} \frac{d \ln N}{d H} $$

| i  | ai      | i  | ai        | i  | bi       | i  | bi      |
| -- | ------- | -- | --------- | -- | -------- | -- | ------- |
| 1  | 0.21835 | 12 | -0.072966 | 1  | 0.047820 | 12 | 0.48892 |
| 2  | 1.8910  | 13 | -0.41031  | 2  | 0.63964  | 13 | 1.4000  |
| 3  | 4.0413  | 14 | 6.9232    | 3  | 4.1583   | 14 | 0.99918 |
| 4  | 11.083  | 15 | -1.9391   | 4  | 19.565   | 15 | 1.1076  |
| 5  | 11.101  | 16 | -0.041973 | 5  | 0.38206  | 16 | 0.13553 |
| 6  | 6.9924  | 17 | 0.29936   | 6  | 30.058   | 17 | 2.3818  |
| 7  | 2.0257  | 18 | 7.0485    | 7  | 1.3865   |    |         |
| 8  | 3.9831  | 19 | -1.3240   | 8  | 1.5116   |    |         |
| 9  | -3.0246 | 20 | 0.38068   | 9  | 0.97489  |    |         |
| 10 | 0.58554 | 21 | 1.20994   | 10 | 1.2348   |    |         |
| 11 | 0.85300 |    |           | 11 | 2.4543   |    |         |


**Table 2.** Parameter estimates for equations [7] to [10]. **Variables scaled as $H \rightarrow H/10$, $N \rightarrow N/1000$, and $B \rightarrow B/100$, relative to the usual units (see text).**

Values for the parameters, $a_i$ for pine and $b_i$ for spruce, are given in Table 2. These values assume that the variables have been scaled so that $H$ is in decametres, $N$ in thousands of trees per hectare, and $B$ in hundreds of square metres per hectare. The scaling improved numerical conditioning and convergence of the parameter estimates.

JULY/AUGUST 2005, VOL. 81, No. 4 — THE FORESTRY CHRONICLE 581
