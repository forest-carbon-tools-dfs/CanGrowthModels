

# **TASS III ver. 4.0.9**
September 2017

# **A Quick-start Tutorial**
**using two demonstration regimes**

Logo

Stand Development Modelling Group
Forest Analysis and Inventory Branch
**BC Ministry of Forests, Lands, Natural Resource Operations and Rural Development**

<u>https://www2.gov.bc.ca/gov/content/industry/forestry/managing-our-forest-resources/forest-inventory/growth-and-yield-modelling</u>

1

---



# Table of Contents

Introduction.................................................... 3  
Important Caveats.................................................. 3  

## **TASS III Quick-Start Guide** .................................... 4
- Background............................................................ 4
- **TASS III Windows<sup>®</sup> Interface** ............................ 4
- Stand Manager form .................................................. 5
- Stand Information .................................................. 5
- **Master Lists, Stand Information** .............................. 6
- Event Schedule....................................................... 7
- Events.................................................................... 8
- Outputs.................................................................. 8

## **Two Demonstration Regimes** .................................... 9
- Configuring TASS III................................................. 10

Conclusion............................................................... 18

2

---



# Introduction

TASS III is the third generation of the Tree And Stand Simulator (TASS), a biologically oriented, spatially explicit (distance dependent), individual tree, growth and yield model. Version 4.0.9 is its first public release and it's available to download <u>here</u>. It currently simulates two interior tree species, in pure and mixed stands:

*Lodgepole pine, Pinus contorta var. latifolia*
*White spruce, Picea glauca*

This document provides a brief, quick-start overview, followed by a short demonstration simulating two stand silviculture regimes. Similar information can be found in TASS III HELP. Beginning at the "Getting Started" HELP page, users can follow links to additional information, as needed.

Before exploring TASS III on your own, we encourage you to read the following Quick Start section (5 short pages!) to familiarize yourself with the basics. For those preferring a more structured approach, this document concludes with a step-by-step demonstration preparing, simulating, and plotting two silviculture regimes.

Please forward questions and feedback to: <u>Mario.diLucca@gov.bc.ca</u>

## Important Caveats

Despite years of development and testing, there are bound to be glitches in a program of this size and complexity. Given the number of potential permeations and combinations, there is no practical way to test them all. Nor are there data to validate them all. The model will continue to evolve with further research and development and valued user feedback.

Please download and review the TASS III Use Policy <u>here</u>.

This current version is limited to two interior species, white spruce and lodgepole pine. The new, improved growth models for these two species have also been incorporated in TASS II and TIPSY. We plan on adding two coastal species, Douglas-fir and western hemlock, next.

3

---

# TASS III Quick-Start Guide

## **Background**

The central focus of TASS is the prediction of silvicultural treatment response through the modelling of individual tree crown dynamics and its linkage to bole growth and wood quality. TASS simulates the growth of individual trees and stands in three dimensions. This focus on crown dynamics makes TASS particularly well suited for predicting response to treatments such as espacement, fertilization, pruning, pre-commercial and commercial thinning.

Prior to TASS III, TASS was largely limited to single species, even-age (single cohort) stands due to simplifying assumptions regarding light, i.e., overtopped foliage did not survive in the vertical shadow of neighboring trees. Before TASS III, the model also had no public user interface. Instead, TIPSY (Table Interpolation Program for Stand Yields) was created in 1991 to enable operational users to access yield tables pre-generated with second-generation TASS II. TIPSY will likely remain the operational mainstay during the early stages of TASS III development. TIPSY produces product-based yields for 12 species, and like TASS II, it is suitable primarily for even-age, single-species stands.

<mark>Key Concept:</mark> The addition of dynamic light modelling to TASS III enables simulation of more complex stand structures than earlier TASS versions (including TIPSY), albeit currently just for two interior species.

## **TASS III Windows<sup>®</sup> Interface**

Users experienced with other growth and yield programs, including TIPSY, will notice many differences in the TASS III Windows<sup>®</sup> interface (Figure 1). These differences support the unique individual-tree, spatially-explicit architecture of TASS III, which models growth based on the spatial location of every tree and associated crown competition. This makes TASS III a powerful tool for modelling the response to silvicultural treatments, through their unique effects on crown development and ultimately bole increment.

TASS III 4.0.92.0 beta

<u>Figure 1:</u> At the top of the TASS III interface is a standard **Main Menu**<sup>1</sup> with a row of **Tool Bar** icons below it. These provide access to the standard **File** commands (e.g., New, Open, Save, etc) and the various **Outputs** produced by TASS III.

**The File - Save** command (Figure 1) saves all the **Stand Manager** settings to a TASS III stand file (.t3d). Opening an existing **.t3d file** repopulates the **Stand Manager** settings.

---
<sup>1</sup> **Bold** text identifies a TASS III component by name. Refer to **Help** for more information.

4

---



TASS III includes an extensive **Help** function, which provides context-sensitive **Help** through the keyboard F1 key or the **Help** buttons found on each form. Users will find answers to most questions there. Key concepts are highlighted throughout.

## **Stand Manager form**

The **Stand Manager** form (Figure 2) is the interactive simulation control centre. It provides central access to <u>all</u> settings for configuring and simulating a stand management regime. The form is initially populated with defaults that can all be edited. TASS III also has a non-interactive **Batch Processing** feature (refer to **Help**).

| Section                 | Field             | Value                              |                                                               |             |
| ----------------------- | ----------------- | ---------------------------------- | ------------------------------------------------------------- | ----------- |
| Stand Information       | Title             | TASS III stand model               |                                                               |             |
| Start Year              |                   | 0                                  |                                                               |             |
| Plot                    | Length (rows)     | 50.00 m                            |                                                               |             |
|                         | Width (columns)   | 50.00 m                            |                                                               |             |
| Site productivity       | Site index        | 20.00 m                            |                                                               |             |
|                         | Reference Species | Lodgepole pine                     |                                                               |             |
| OAFs                    | OAF 1             | 1.00                               |                                                               |             |
|                         | OAF 2             | 1.00                               |                                                               |             |
| Manage Master Lists:    | Species...        |                                    |                                                               |             |
|                         | Subsets...        |                                    |                                                               |             |
|                         | Result Sets...    |                                    |                                                               |             |
|                         | No Grow Areas...  |                                    |                                                               |             |
| Notes:                  |                   |                                    |                                                               |             |
| ~~(red strikethrough)~~ |                   |                                    |                                                               |             |
| Event Schedule          | Include           | Status                             | Type                                                          | Description |
| *Queued*                | ✓                 | Initial Plant                      | Plant 1200/ha 100% PII site 20.0 in Stand.                    |             |
| *Queued*                | ✓                 | Final Grow                         | Grow trees until Additional Years = 20.00 or until year = 100 |             |
| Run Simulation          |                   |                                    |                                                               |             |
| Reset Events            |                   |                                    |                                                               |             |
|                         | ☐                 | Generate log volumes (slows run)   |                                                               |             |
|                         | ☐                 | Generate lumber volume (slows run) |                                                               |             |
|                         | ☑                 | Show stand summary                 |                                                               |             |
|                         | ☑                 | Show stand canopy                  |                                                               |             |
| Help                    |                   |                                    |                                                               |             |
| Close                   |                   |                                    |                                                               |             |


<u>**Figure 2:**</u> The **Stand Manager** form is visually divided into two main sections: **Stand Information** (top) and **Event Schedule** (bottom). The **Notes** box in the middle provides space for documenting modelling assumptions, etc (optional).

## **Stand Information**

The **Stand Information** section of the **Stand Manager** form defines **Plot** dimensions, **Site Productivity**, Operational Adjustment Factors (**OAFs**) and other settings common to a simulation, or series of simulations. Refer to **Help** for more information on these settings.

**Key Concepts:**
- TASS III simulates the growth of <u>every individual tree</u> within the defined fixed-area, hereafter referred to interchangeably as the **Plot** or *stand*.
- Simulation (computer processing) time increases proportional to the total number of trees in the **Plot**, which is a function of both **Plot** size and tree density (trees/ha). Users can adjust either of these to obtain acceptable simulation times.
- TASS III eliminates **Plot** edge-effects, thereby making plot buffers unnecessary. Tree crowns along each edge grow into the opposite side of the plot and compete with the trees there.

5

---

"Crown wrap" is visible in the **Crown Display** window. Note that within plot edge-effects along internal gaps and openings are simulated directly by TASS III.

# **Master Lists, Stand Information**

**<mark>Key Concept:</mark>** The **Master Lists** concept referenced in the **Stand Information** area (Figure 2) will be new to many users. Users are encouraged to become familiar with these flexible and powerful features, and their various applications, before simulating complex scenarios. Refer to **Help** for more information. A brief overview of the four master lists follows (Figures 3-6):

<table>
  <tr>
    <th></th>
    <th>Species</th>
    <th>Label</th>
    <th>SI(m)</th>
    <th>Site Curve</th>
    <th>Genetic Worth</th>
  </tr>
<tr>
    <td>Lodgepole pine</td>
<td>Pli</td>
<td>20.00</td>
<td>Thrower (1994)</td>
<td>0.0</td>
  </tr>
<tr>
    <td>White spruce</td>
<td>Sw</td>
<td>19.60</td>
<td>Goudie (1984ac) (natural)</td>
<td>0.0</td>
  </tr>
</table>

<u>Figure 3:</u> The **Species List** form displays the species master list. Each entry represents a unique **Species Definition**, which are created and edited using the three icons on the left. Each **Species Definition** has a unique **Site Index** and **Genetic Worth** assigned to it, allowing more than one definition per species. **Species Definitions** are used in the design of both **Plant** and **Natural Regeneration Events**, and in species **Subsets**.

| Name           | Description                                             |
| -------------- | ------------------------------------------------------- |
| Stand          | Stand = Rectangle row,col=0.00,0.00 length=50.00,50.00  |
| Rectangle      | Rectangle = Rectangle row,col=10.00,10.00 length=40...  |
| Uniform spaced | Uniform spaced = Uniform spaced Rank: DBH Largest 12... |


<u>Figure 4:</u> The **Subset List** form displays the **Subset** master list. Each entry represents a unique **Subset Definition**, which is created and edited using the three icons on the left. Each **Subset Definition** defines a unique selection (subset) of <u>trees</u> within the plot. **Subsets** can be area-based or attribute-based. The (whole) **Stand** subset is always present as the default. **Subsets** are

6

---



powerful tools for defining various populations of trees within **Events** and **Results Sets**. Multiple **Subsets** can be combined within both these applications to produce **Nested Subsets**, according to established rules found in **Help**.

|     | Result Name          | Subset(s)                |
| --- | -------------------- | ------------------------ |
| *+* |                      |                          |
|     | Stand                | Stand                    |
|     | Rectangle Uniform sp | Rectangle,Uniform spaced |


<u>Figure 5:</u> The **Result Sets List** form displays the **Result Sets** master list. Each entry represents a unique **Result Set Definition**, which are created and edited using the three icons on the left. Each **Result Set Definition** defines a unique combination of **Subsets** used to define populations of trees reported on by the various **Outputs**. The (whole) **Stand** Results Set is always present as the default.

| Area Description                                        |
| ------------------------------------------------------- |
| Rectangle at row 25.0 width 10.0, col 25.0, height 10.0 |


<u>Figure 6:</u> The **No Grow Areas List** form displays the **No Grow Areas** master list. **No Grow Areas** define areas within the plot that do not support tree growth. Regeneration **Events** ignore these areas. Each entry represents a unique **No Grow Area Definition**, which are created and edited using the three icons on the left.

## **Event Schedule**

The **Event Schedule** is the bottom half of the **Stand Manager** form (Figure 1). It supports configuring, editing, and simulating a series of **Events** defining a stand management regime. **Events** are listed in chronological order within the **Event Table**. The five (5) buttons on the left are used to add, edit, delete, and move **Events** within the list.

7

---



**Key Concept:** Check boxes in the first column are used to activate and de-activate each **Event** before a simulation run. This enables the user to add alternative **Events** to the **Event Schedule** and (de)activate them individually for comparison runs, i.e., one **Event Schedule** can be used to document and compare multiple treatment options for the same stand. The remaining columns provide information about each **Event**.

Note the first two **Events** <mark>highlighted in yellow</mark> (Figure 1). These are permanent **Events** that cannot be moved or deleted, but they can be edited. They define the initial stand establishment **Event** and the Final **Grow Event**. Numerous options for stand establishment and other silviculture treatments are detailed in the **Event** section within **Help**.

Directly below the **Event Table** are the **Run Simulation** and **Reset Events** buttons (Figure 1). These control computer processing of the simulation. After completing a simulation run, click the **Reset Events** button to enable **Event Table** editing and/or re-running of the simulation.

To the right of the **Reset Events** button are four check boxes. Generation of **Log** and **Lumber** volumes slows run time considerably. Leaving the boxes unchecked is recommended unless **Log** or **Lumber** volumes are needed (e.g., economic analyses with FAN$IER). Select **Stand Summary** and/or **Canopy Display** in order to monitor simulation progress and to confirm **Events** perform as intended.

## Events

TASS III provides eight (8) types of **Events**; each one can be scheduled multiple times in a regime. These include three (3) types of regeneration **Events**, including **Plant** and **Natural Regeneration**. The **Cut/Leave Event**, in combination with **Subsets**, provides a powerful tool for defining many types of thinning and harvesting activities. A **Fertilize Event** is also included. **Pause Events** pause the simulation allowing the user to examine and/or adjust the simulation at that point.

## Outputs

Once a regime simulation has been run to the user's satisfaction, TASS III can produce 13 types of **Outputs**, including 9 types of tables (e.g., yield, logs, lumber, etc), 3 different graphics displays, plus **Exports** to **FAN$IER** (economic analysis), and **PLOTSY** (data plotting). The **Toolbar** contains icons for many of these **Outputs** (Figure 1).

8

---

# Two Demonstration Regimes

The following two regimes were designed to demonstrate a few key features of **TASS III**. This demonstration compares thinned and unthinned regimes for the same stand, with additional help from the graphing program, **PLOTSY**, which is integrated with **TASS III**.

**NOTE:** The thinned regime will be configured first so that the unthinned regime can be simulated by simply unchecking (turning off) the thinning event.

| Stand Information                              | Thinned Regime (w/ PCT)                                         | Unthinned Regime (w/o PCT)    |
| ---------------------------------------------- | --------------------------------------------------------------- | ----------------------------- |
| **Start Year**                                 | 0                                                               | Same, unless noted otherwise. |
| **Plot size**                                  | 50m x 50m                                                       |                               |
| **Site Productivity** (bare ground site index) | 20m, lodgepole pine                                             |                               |
| **Operational Adjustment Factors**             | OAF1=0.85; OAF2=0.95 (standard Ministry defaults)               |                               |
| **Event Schedule**                             |                                                                 |                               |
| **Initial Plant Event**                        |                                                                 |                               |
| Species                                        | White spruce                                                    |                               |
| Site Index                                     | 19.6m (auto-predicted based on pine site productivity)          |                               |
| Genetic Worth                                  | 15%                                                             |                               |
| Seedling specs                                 | 1-yr old, 13 cm                                                 |                               |
| Planting density (trees/ha)                    | 1600                                                            |                               |
| Planting spatial pattern                       | Square with 0.25m variation                                     |                               |
| **Post-plant Grow Event**                      | Grow until stand age = 2 (ingress delay)                        |                               |
| **Natural Regen (Ingress) Event**              |                                                                 |                               |
| Species                                        | Lodgepole pine (natural, no genetic gain)                       |                               |
| Site Index                                     | 20m                                                             |                               |
| Trees/ha (total)                               | 6000                                                            |                               |
| Distributed over                               | 5 years max                                                     |                               |
| Calculated temporal distribution               | Poisson; lambda=3.2                                             |                               |
| Spatial Distribution                           | Clumped; 70/ha; var=8.0                                         |                               |
| **Grow Event**                                 | Grow until top ht = 6m (defines timing of thinning)             |                               |
| **Cut/Leave Event** Pre-commercial Thinning    | CUT all trees <5m tall (no intended silvicultural significance) | None (Turn off Event)         |
| **Grow Event**                                 | Grow until stand age = 50;                                      |                               |


9

---

# **Configuring TASS III**

Note the following screen capture images may be from an earlier version. Defaults and results may differ slightly.

<table>
  <tr>
    <td>1. Launch TASS III and select "Create a new stand" to open the **Stand Manager** form.</td>
<td><img src="TASS III window screenshot" alt="TASS III window showing Create a new stand option" /></td>
  </tr>
<tr>
    <td>2. Note the **Stand Information** defaults that need to be changed (i.e., OAFs).</td>
<td>
      <img src="Stand Information screenshot" alt="Stand Information form" />
      Users edit existing **Stand Manager** defaults to reflect their own regime specifications.
    </td>
  </tr>
<tr>
    <td>3. Note and consider the four <b>Master Lists</b>.</td>
<td>Only <b>Species</b> and <b>Subsets</b> are affected by the two <b>Regimes</b>. These will be altered later within the associated <b>Events</b>. <b>Regime</b> descriptions imply that only the default <b>Result Set</b> (Stand) will be needed for reporting results, and no <b>No Grow Areas</b> were specified.</td>
  </tr>
<tr>
    <td>4. Move down to the Event <b>Schedule</b> and examine the <b>Initial Stand Establishment Event</b>, i.e., the first "yellow" <b>Event</b>.<br /><br />Select the first <b>Event</b> and click the <b>Edit</b> button on the left. Choose <b>Edit Initial Plant</b> from the Edit Menu to open the <b>Initial Plant Event</b> form.</td>
<td>
      <img src="Event Schedule screenshot" alt="Event Schedule table" />
      Note that defaults for this <b>Event</b> already reflect the correct regen method (planting), but the specifics will need to be edited.
    </td>
  </tr>
</table>

10

---



5. On the **Initial Plant Event** form, change the number of trees to 1600 then select and delete the default Pli definition. Lastly, click the Add button to open the **Species List** form. Click Add to then open the **Species Definition** form.

<table>
  <tr>
    <th>Use?</th>
    <th>Name</th>
    <th>Description</th>
  </tr>
<tr>
    <td>☑</td>
<td>Stand</td>
<td>Stand = Rectangle row,col=0.00,0.00 length=50.00...</td>
  </tr>
<tr>
    <td colspan="3">
      <b>Initial Plant Details</b> <b>Inter Tree Distance</b> <button>Edit Subsets...</button>
    </td>
  </tr>
<tr>
    <td><mark>1600</mark> </td>
<td>/ha</td>
<td>2.50m</td>
<td><b>Establishment pattern</b> <select>Square Spacing</select> </td>
<td>Variation <b>0.25</b> m <button>Defaults</button></td>
  </tr>
<tr>
    <th></th>
    <th>Spp</th>
    <th>Composition (%)</th>
    <th>SI (m)</th>
    <th>Seedling Age</th>
    <th>Height (cm)</th>
    <th>Genetic Worth %</th>
  </tr>
<tr>
    <td></td>
<td>Pli</td>
<td>100.0</td>
<td>20.00</td>
<td>1</td>
<td>13.0</td>
<td>0.0</td>
  </tr>
</table>

At the top, notice the default **Subset** (Stand) is already listed and selected for use. This means the **Event** will plant the entire plot, as intended.

At the bottom, is the table of the associated **Species Definitions**, i.e., the species (mix) to be planted.

6. On the **Species Definition** form, change the **Species, Label** and **Genetic Worth** and then click **OK** to view the updated **Species List**.

<table>
  <tr>
    <td><mark>Species:</mark> <mark>White spruce</mark> </td>
<td>Reference species: Lodgepole pine</td>
  </tr>
<tr>
    <td><mark>Label:</mark> <mark>Sw-plt</mark> </td>
<td>Reference site index: 20.0 m</td>
  </tr>
<tr>
    <td>Site index: <mark>19.6</mark> m</td>
<td><input type="checkbox" /> Lock the Site Index (changes to the Reference Species doesn't update this SI)</td>
  </tr>
<tr>
    <td>Site curve: <select>Goudie (1984ac) (plantation)</select> </td>
<td><button>Notes</button></td>
  </tr>
<tr>
    <td>Genetic worth: <mark>15.0</mark> </td>
<td></td>
  </tr>
</table>

Note the spruce Site Index is automatically adjusted based on pine site productivity. The **Label** helps to differentiate multiple species definitions.

7. On the **Species List** form, select (click) the new spruce definition and click the **Select** button to view the **Edit Planting Species** form.

|   | Species          | Label  | SI(m) | Site Curve                 | Genetic Worth |
| - | ---------------- | ------ | ----- | -------------------------- | ------------- |
|   | Lodgepole pine   | Pli    | 20.00 | Thrower (1994)             | 0.0           |
|   | **White spruce** | Sw-plt | 19.60 | Goudie (1984ac) (planta... | 15.0          |


**Select**

This new **Species Definition** will also appear in the **Species Master List** making it available for use in other **Events**.

11

---



| 8. In this case, there are no changes to the \*\*Edit Planting Species\*\* form. Click \*\*OK\*\* twice to return to the \*\*Event Schedule\*\* on the \*\*Stand Manager\*\* form. | ![](<Edit Planting Species screenshot>)      | Note that species \*\*Composition\*\* and \*\*Seedling Age\*\* and \*\*Height\*\* are not part of the \*\*Species Definition\*\*. They are defined within each \*\*Plant Event\*\*. |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 9. Next, click the \*\*Add Event\*\* button and select \*\*Grow\*\* to open the \*\*Grow Event\*\* form.                                                                           | ![](<Event Schedule screenshot>)             | Note the \*\*Initial Plant\*\* event \*\*Description\*\* now reflects the previous edits.                                                                                           |
| 10. Change \*\*Current Year + Years\*\* to \*\*2.0\*\* and click \*\*OK\*\* to return to the \*\*Event Schedule\*\*.                                                               | ![](<Grow Event screenshot>)                 | Note this represents the expected delay until the onset of the next \*\*Event\*\*, \*\*Natural Regeneration\*\* ingress.                                                            |
| 11. Next, click the \*\*Add\*\* button on the left and select \*\*Natural Regeneration\*\* from the pop-up \*\*Event\*\* menu.                                                     | ![](<Event Schedule screenshot>)             | Note, new events are automatically inserted just before the yellow \*\*Final Grow\*\* \*\*Event\*\*. Use the up and down arrow buttons to reposition events if needed.              |
| 12. Select (click) the default Pli species cohort and then click the \*\*Edit\*\* button to open the \*\*Natural Regeneration Details\*\* form.                                    | ![](<Natural Regeneration Event screenshot>) | **A Natural Regeneration Event** may contain definitions for up to 10 species cohorts. Natural regeneration is always applied to the entire plot.                                   |


| Spp | Trees /ha | Quantity Per Year                 |
| --- | --------- | --------------------------------- |
| Pli | 1000      | 46 132 218 193 205 100 45 40 19 2 |


12

---



13. Change the highlighted settings then click **Change Annual Tree Distribution** to register the changes. Then click **OK** twice to return to the **Event Schedule**.

Optionally, to change the **Species label (Pli-nat)**, click the **Species** button.

| Species                                              | total trees/ha    | distributed over   |       |       |
| ---------------------------------------------------- | ----------------- | ------------------ | ----- | ----- |
| *Pli-nat*                                            | *6000*            | *5* years maximum. |       |       |
| Temporal Distribution                                |                   |                    |       |       |
| Distribution Method                                  | \[x] Calculated   |                    |       |       |
| Normal                                               | Mean:  0.0        | Variation:  1.5    |       |       |
| Poisson                                              | \[x] Lambda:  3.2 |                    |       |       |
| Uniform                                              |                   |                    |       |       |
| Change Annual Tree Distribution                      |                   |                    |       |       |
| Quantity per year (year offset from previous event): |                   |                    |       |       |
| year                                                 | year1             | year2              | year3 | year4 |
| t/ha:                                                |  268              |  851               |  1447 |  1461 |
| year                                                 | year5             |                    |       |       |
| t/ha:                                                |  1232             |                    |       |       |
| year                                                 | t/ha:             |                    |       |       |
| year                                                 | t/ha:             |                    |       |       |
| Spatial Distribution                                 |                   |                    |       |       |
| Random                                               | \[ ]              |                    |       |       |
| *Clumped*                                            | \[x]              |                    |       |       |
| Clumps/ha:                                           | *70*              |                    |       |       |
| Variation:                                           | *8.0*             |                    |       |       |
| Change the Regen Pattern                             |                   |                    |       |       |


Note, clicking either **Change** button multiple times cycles through additional random **Age and Spatial Distribution** patterns for the same parameters. Yields will be slightly different for each unique distribution pattern.

----

14. Click the **Add** button and select **Grow** from the pop-up **Event** menu.

<table>
  <tr>
    <th>Include</th>
    <th>Status</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Initial Plant</mark></td>
<td><mark>Plant 1600/ha 100% Sw-plt site 19.6 in Stand.</mark></td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Grow</mark></td>
<td><mark>Grow trees until Additional Years = 2.00 or until year = 100</mark></td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Natural Regeneration</mark></td>
<td><mark>Natural Regeneration: Pli-nat 5259 0, (s/ha/yr: 231 762 1263 1267 1067 669 )</mark></td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Final Grow</mark></td>
<td><mark>Grow trees until Additional Years = 20.00 or until year = 100</mark></td>
  </tr>
</table>

Note, reduced tree numbers in the **Natural Regeneration** event description reflect first-year mortality.

----

15. Change the **Grow Event** definition as noted and click **OK**.

<table>
  <tr>
    <th colspan="4">Grow Event</th>
  </tr>
<tr>
    <th>Grow the stand until:</th>
  </tr>
<tr>
    <td><mark>Top height</mark> <select> <option> >= </option> </select> <mark>6.00</mark> m</td>
  </tr>
<tr>
    <td>Or until Year = <input /> 100</td>
  </tr>
</table>

These parameters reflect the timing specified for the pre-commercial thinning (**Cut/Leave Event**) in this regime.

----

16. Click the add button and select **Cut/Leave** from the pop-up **Event** menu.

<table>
  <tr>
    <th>Include</th>
    <th>Status</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Initial Plant</mark></td>
<td><mark>Plant 1600/ha 100% Sw-plt site 19.6 in Stand.</mark></td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Grow</mark></td>
<td>Grow trees until Additional Years = 2.00 or until year :</td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Natural Regeneration</mark></td>
<td>Natural Regeneration: Pli-nat 5259 0, (s/ha/yr: 231 76</td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Grow</mark></td>
<td>Grow trees until Top Height = 6.00 or until year = 100</td>
  </tr>
<tr>
    <td><u>✓</u></td>
<td><mark>Queued</mark></td>
<td><mark>Final Grow</mark></td>
<td><mark>Grow trees until Additional Years = 20.00 or until year</mark></td>
  </tr>
</table>

13

---



<table>
  <tbody><tr>
    <td>17. Select the **Cut** option then click the **Edit Subsets** button to open the **Subset Master List** form.</td>
<td><img src="Cut / Leave Event screenshot" /></td>
<td>A **Subset** must be defined to select the trees meeting the thinning (cut) criteria.
The **Cut** option cuts all the trees defined by the **Subset**.</td>
  </tr>
<tr>
    <td>18. Click the Add button to open the **Subset Definition** form. Select the **Height** range option and edit the highlighted settings. Then click **OK** twice to return to the **Cut/Leave Event** form.</td>
<td><img src="Subset Definition screenshot" /></td>
<td>The **Subset ID** provides a unique name for this **Subset** for later reference. Also note the many other **Subsets** options available. **Subsets** are a powerful tool for mimicking silviculture treatments in **TASS III**. They are also used to define **Results Sets** for **Output** reporting.</td>
  </tr>
<tr>
    <td>19. Select <u>only</u> the new **Subset** then click **OK** to return to the **Event Schedule**.</td>
<td><img src="Cut / Leave Event screenshot" /></td>
<td>This completes the definition of the **Cut/Leave Event**.</td>
  </tr>
<tr>
    <td>20. Select the **Final Grow Event** and click the **Edit** button to open the Grow Event settings.</td>
<td>
      <table>
        <thead>
          <tr>
            <th>Include</th>
            <th>Status</th>
            <th>Type</th>
            <th>Description</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>☑</td>
<td><mark>Queued</mark>
            </td><td><mark>Initial Plant</mark>
            </td><td>Plant 1600/ha 100% Sw-plt site 19.6 in Stand.</td>
          </tr>
<tr>
            <td>☑</td>
<td>Queued</td>
<td>Grow</td>
<td>Grow trees until Additional Years = 2.00 or until year = 100</td>
          </tr>
<tr>
            <td>☑</td>
<td>Queued</td>
<td>Natural Regeneration</td>
<td>Natural Regeneration: Pli-nat 5259 0, (s/ha/yr: 231 762 1263 1267 1067 669)</td>
          </tr>
<tr>
            <td>☑</td>
<td>Queued</td>
<td>Grow</td>
<td>Grow trees until Top Height = 6.00 or until year = 100</td>
          </tr>
<tr>
            <td>☑</td>
<td>Queued</td>
<td>Cut / Leave</td>
<td>Cut selected trees from trees &#x3C;5m tall.</td>
          </tr>
<tr>
            <td>☑</td>
<td><mark>Queued</mark>
            </td><td><mark>Final Grow</mark>
            </td><td>Grow trees until Additional Years = 20.00 or until year = 100</td>
          </tr>
        </tbody>
      </table>
    </td>
  </tr>
</tbody></table>

14

---



21. Change the grow parameters to **Year = 50** and click OK to return to **Stand Manager**.

|   | Grow Event |
| - | ---------- |
|   | *50*       |
|   | *100*      |


**Final Grow Event** parameters are set to meet or exceed the anticipated rotation length or desired reporting period.

22. This completes the **Event Schedule** for the demo.

| Include | Status | Type                 | Description                                                                 |
| ------- | ------ | -------------------- | --------------------------------------------------------------------------- |
| ☑       | Queued | Initial Plant        | *Plant 1600/ha 100% Sw-plt site 19.6 in Stand.*                             |
| ☑       | Queued | Grow                 | Grow trees until Additional Years = 2.00 or until year = 100                |
| ☑       | Queued | Natural Regeneration | Natural Regeneration: Pli-nat 5259 0, (s/ha/yr: 231 762 1263 1267 1067 669) |
| ☑       | Queued | Grow                 | Grow trees until Top Height = 6.00 or until year = 100                      |
| ☑       | ~~~~   | Cut / Leave          | Cut selected trees from trees <5m tall.                                     |
| ☑       | Queued | Final Grow           | *Grow trees until Year = 50.00 or until year = 50*                          |


Note, with all the **Include** boxes checked, this **Event Schedule** will simulate the thinned **Regime**. By unchecking the <u>Cut/Leave Event</u>, the schedule can be re-run to simulate the unthinned **Regime**.

23. Check **Show stand summary** and uncheck **Show stand canopy**, then click **Run Simulation** to simulate the thinned regime....

| Type          | Year | Age | Trees    | Top Ht | CC%   | Volume | Av.DBH |
| ------------- | ---- | --- | -------- | ------ | ----- | ------ | ------ |
| Grow          | 1    | 2   | 1359     | 0      | 0.54  | 0.0    | 0.00   |
| Grow          | 2    | 3   | 1355     | 0      | 0.61  | 0.0    | 0.00   |
| *Regen Start* | 2    |     | *+ 231*  |        |       |        |        |
| Grow          | 3    | 4   | 1547     | 0      | 1.32  | 0.0    | 0.00   |
| *Regen Start* | 3    |     | *+ 762*  |        |       |        |        |
| Grow          | 4    | 5   | 2191     | 0      | 2.48  | 0.0    | 0.00   |
| *Regen Start* | 4    |     | *+ 1263* |        |       |        |        |
| Grow          | 5    | 6   | 3254     | 0      | 4.48  | 0.0    | 0.00   |
| *Regen Start* | 5    |     | *+ 1267* |        |       |        |        |
| Grow          | 6    | 7   | 4310     | 0      | 6.26  | 0.0    | 0.00   |
| *Regen Start* | 6    |     | *+ 1067* |        |       |        |        |
| Grow          | 7    | 8   | 5188     | 1      | 9.54  | 0.0    | 0.00   |
| *Regen Start* | 7    |     | *+ 669*  |        |       |        |        |
| Grow          | 8    | 9   | 5717     | 2      | 14.00 | 0.0    | 0.02   |
| Grow          | 9    | 10  | 5683     | 2      | 18.95 | 0.1    | 0.06   |
| Grow          | 10   | 11  | 5650     | 2      | 25.23 | 0.1    | 0.13   |
| Grow          | 11   | 12  | 5610     | 2      | 32.80 | 0.2    | 0.24   |
| Grow          | 12   | 13  | 5570     | 3      | 40.91 | 0.5    | 0.41   |
| Grow          | 13   | 14  | 5527     | 3      | 48.71 | 0.8    | 0.66   |
| Grow          | 14   | 15  | 5484     | 3      | 56.16 | 1.5    | 0.98   |
| Grow          | 15   | 16  | 5440     | 4      | 62.71 | 2.4    | 1.37   |
| Grow          | 16   | 17  | 5397     | 4      | 68.12 | 3.8    | 1.81   |
| Grow          | 17   | 18  | 5357     | 4      | 72.42 | 5.7    | 2.28   |
| Grow          | 18   | 19  | 5321     | 5      | 75.70 | 8.2    | 2.76   |
| Grow          | 19   | 20  | 5281     | 5      | 78.16 | 11.4   | 3.24   |
| Grow          | 20   | 21  | 5221     | 6      | 79.89 | 15.4   | 3.73   |
| Grow          | 21   | 22  | 5158     | 6      | 81.02 | 20.1   | 4.21   |
| *Cut / Leave* | 21   |     | *- 4196* |        |       |        |        |
| Grow          | 22   | 23  | 1627     | 7      | 59.00 | 13.7   | 5.91   |
| Grow          | 23   | 24  | 1616     | 7      | 61.91 | 17.2   | 6.52   |
| Grow          | 24   | 25  | 1612     | 7      | 64.66 | 21.3   | 7.11   |
| Grow          | 25   | 26  | 1607     | 8      | 67.10 | 26.0   | 7.70   |


<u>Run Simulation</u>

☐ Generate log volumes (slows run)
☑ Show stand summary
☐ Show stand canopy

Your values may vary slightly due random variation in the model.

<mark>Note the effects of natural ingress and thinning on tree density.</mark> Density values also reflect mortality.

24. After the simulation completes, to graph the results click **View** in **Main Menu** and select **Export to PLOTSY**.

At this point, other tabular **Outputs** can be examined using the **View Menu** and **Toolbar** icons.

15

---



25. Select the default **Stand Result Set** and select **Summary Output** to be sent to **PLOTSY**. Then click **Continue to Plotsy...** to open Plotsy's **Add or Remove Series** form.

This sends stand-level (per-hectare) results to **PLOTSY** for plotting. You may continue to **PLOTSY** without Log and Lumber data.

26. Scroll down the variable list on the left and select **Merch 12.5cm+ Volume** then click the **Add** button in the middle to move the variable over to the list on the right. Then click OK to view the graph in **PLOTSY**.

27. After viewing the graph, leave **PLOTSY** open and return to **TASS III.**

28. Below the <u>Event Schedule</u>, <mark>click</mark> <mark>Reset Events</mark>. Then uncheck the **Cut/Leave Event**.

<table>
<thead>
<tr>
<th>Include</th>
<th>Status</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>✓</td>
<td>Queued</td>
<td>Initial Plant</td>
<td>Plant 1600/ha 100% Pli-plt site 20.0 in Stand.</td>
</tr>
<tr>
<td>✓</td>
<td>Queued</td>
<td>Grow</td>
<td>Grow trees until Additional Years = 2.00 or until year = 100</td>
</tr>
<tr>
<td>✓</td>
<td>Queued</td>
<td>Natural Regeneration</td>
<td>Natural Regeneration: Pli-nat 6000 0, (s/ha/yr: 2237 2228 1086 348 90 9 2)</td>
</tr>
<tr>
<td>✓</td>
<td>Queued</td>
<td>Grow</td>
<td>Grow trees until Top Height >= 6.00 or until year = 100</td>
</tr>
<tr>
<td>✗</td>
<td>Queued</td>
<td>Cut / Leave</td>
<td>Cut selected trees from trees &#x3C;5m tall.</td>
</tr>
<tr>
<td>✓</td>
<td>Queued</td>
<td>Final Grow</td>
<td>Grow trees until Year = 50.00 or until year = 50</td>
</tr>
</tbody>
</table>

Note, the **Event Schedule** is now configured for the unthinned regime.

16

---



29. Again, check **Show stand summary** and uncheck **Show stand canopy**, then click **Run Simulation**. Wait for the simulation to complete, then click **View** in **TASS III's Main Menu** and select **Export to PLOTSY.**

<table>
<thead>
<tr>
<th>Type</th>
<th>Year</th>
<th>Age</th>
<th>Trees</th>
<th>Top Ht</th>
<th>CC%</th>
<th>Volume</th>
<th>Av.DBH</th>
</tr>
</thead>
<tbody>
<tr>
<td>Grow</td>
<td>0</td>
<td>1</td>
<td>1359</td>
<td>0</td>
<td>0.00</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>1</td>
<td>2</td>
<td>1359</td>
<td>0</td>
<td>0.54</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>2</td>
<td>3</td>
<td>1355</td>
<td>0</td>
<td>0.61</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Regen Start</td>
<td>2</td>
<td>3</td>
<td>+ 231</td>
<td>0</td>
<td>1.32</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>3</td>
<td>4</td>
<td>1547</td>
<td>0</td>
<td>0.00</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Regen Start</td>
<td>3</td>
<td>4</td>
<td>+ 762</td>
<td>0</td>
<td>2.48</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>4</td>
<td>5</td>
<td>2191</td>
<td>0</td>
<td>4.48</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Regen Start</td>
<td>4</td>
<td>5</td>
<td>+ 1263</td>
<td>0</td>
<td>0.00</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>5</td>
<td>6</td>
<td>3254</td>
<td>0</td>
<td>6.26</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Regen Start</td>
<td>5</td>
<td>6</td>
<td>+ 1067</td>
<td>0</td>
<td>0.00</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Grow</td>
<td>6</td>
<td>7</td>
<td>4310</td>
<td>1</td>
<td>9.54</td>
<td>0.0</td>
<td>0.00</td>
</tr>
<tr>
<td>Regen Start</td>
<td>6</td>
<td>7</td>
<td>+ 669</td>
<td>0</td>
<td>14.00</td>
<td>0.0</td>
<td>0.02</td>
</tr>
<tr>
<td>Grow</td>
<td>8</td>
<td>9</td>
<td>5717</td>
<td>2</td>
<td>18.95</td>
<td>0.1</td>
<td>0.06</td>
</tr>
<tr>
<td>Grow</td>
<td>9</td>
<td>10</td>
<td>5683</td>
<td>2</td>
<td>25.23</td>
<td>0.1</td>
<td>0.13</td>
</tr>
<tr>
<td>Grow</td>
<td>10</td>
<td>11</td>
<td>5650</td>
<td>2</td>
<td>32.80</td>
<td>0.2</td>
<td>0.24</td>
</tr>
<tr>
<td>Grow</td>
<td>11</td>
<td>12</td>
<td>5610</td>
<td>2</td>
<td>40.91</td>
<td>0.5</td>
<td>0.41</td>
</tr>
<tr>
<td>Grow</td>
<td>12</td>
<td>13</td>
<td>5570</td>
<td>3</td>
<td>48.71</td>
<td>0.8</td>
<td>0.66</td>
</tr>
<tr>
<td>Grow</td>
<td>13</td>
<td>14</td>
<td>5527</td>
<td>3</td>
<td>56.16</td>
<td>1.5</td>
<td>0.98</td>
</tr>
<tr>
<td>Grow</td>
<td>14</td>
<td>15</td>
<td>5484</td>
<td>4</td>
<td>62.71</td>
<td>2.4</td>
<td>1.37</td>
</tr>
<tr>
<td>Grow</td>
<td>15</td>
<td>16</td>
<td>5397</td>
<td>4</td>
<td>68.12</td>
<td>3.8</td>
<td>1.81</td>
</tr>
<tr>
<td>Grow</td>
<td>16</td>
<td>17</td>
<td>5357</td>
<td>4</td>
<td>72.42</td>
<td>5.7</td>
<td>2.28</td>
</tr>
<tr>
<td>Grow</td>
<td>17</td>
<td>18</td>
<td>5321</td>
<td>5</td>
<td>75.70</td>
<td>8.2</td>
<td>2.76</td>
</tr>
<tr>
<td>Grow</td>
<td>18</td>
<td>19</td>
<td>5281</td>
<td>5</td>
<td>78.16</td>
<td>11.4</td>
<td>3.24</td>
</tr>
<tr>
<td>Grow</td>
<td>19</td>
<td>20</td>
<td>5221</td>
<td>6</td>
<td>79.89</td>
<td>15.4</td>
<td>3.73</td>
</tr>
<tr>
<td>Grow</td>
<td>20</td>
<td>21</td>
<td>5158</td>
<td>6</td>
<td>81.02</td>
<td>20.1</td>
<td>4.21</td>
</tr>
<tr>
<td>Grow</td>
<td>21</td>
<td>22</td>
<td>5068</td>
<td>7</td>
<td>82.00</td>
<td>25.7</td>
<td>4.69</td>
</tr>
<tr>
<td>Grow</td>
<td>22</td>
<td>23</td>
<td>4985</td>
<td>7</td>
<td>82.53</td>
<td>32.2</td>
<td>5.17</td>
</tr>
<tr>
<td>Grow</td>
<td>23</td>
<td>24</td>
<td>4895</td>
<td>8</td>
<td>82.80</td>
<td>39.5</td>
<td>5.63</td>
</tr>
<tr>
<td>Grow</td>
<td>24</td>
<td>25</td>
<td>4829</td>
<td>8</td>
<td>83.15</td>
<td>47.8</td>
<td>6.08</td>
</tr>
</tbody>
</table>

Note, there was no thinning at 6m this time.

This run also took nearly twice as long due to the larger number of trees being simulated without the thinning.

30. Repeat steps 25 & 26 to produce another graph in **PLOTSY**.

Next, select (highlight) both **Data Sources** and click the indicated **Screen Layout** button to overlay both regimes on the same graph.

| Stand Age (yrs) | Merch 12.5cm+ Volume (m³/ha) |
| --------------- | ---------------------------- |
| 0               | 0                            |
| 5               | 0                            |
| 10              | 0                            |
| 15              | 0                            |
| 20              | 0                            |
| 25              | 0                            |
| 30              | 10                           |
| 35              | 80                           |
| 40              | 160                          |
| 45              | 240                          |
| 50              | 280                          |


31. In the graph to the right, the solid line is the thinned, and the dotted line is unthinned.

Line labels can be renamed by right-clicking the individual **Data Source** listings.

| Stand Age (yrs) | Merch 12.5cm+ Volume (m³/ha) |
| --------------- | ---------------------------- |
| 0               | 0                            |
| 5               | 0                            |
| 10              | 0                            |
| 15              | 0                            |
| 20              | 0                            |
| 25              | 0                            |
| 30              | 5                            |
| 35              | 40                           |
| 40              | 90                           |
| 45              | 160                          |
| 50              | 200                          |


17

---


The File-Save commands in TASS III and PLOTSY save the settings used to (re)create the simulations and graphs. TASS III and PLOTSY settings are saved as **.T3D** and **.GPH** files, respectively.

## Conclusion

This concludes this brief overview and demonstration of **TASS III**. We encourage you to further explore the interface on your own, as time allows. Your valued feedback will help us improve **TASS III**. Thank you.

18
