

FVS<sup>Ontario</sup>  
Version 3

## Section 1

# QuickReview

Thank you to the British Columbia Ministry of Forests for providing access to the PrognosisBC Tutorial Manual.

Section 1, Page iii

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview
Sept 2007

## Table of Contents

**1.1** QuickReview .................................................... 5

**1.2** **Tree List Manager QuickReview** .................................................... **6**
Step 1: Identify features of the input (data) files .................................... 6
Step 2: Specify the input file ............................................................ 6
Step 3: Verify correct mapping of Source Field Names ............................ 6
Step 4: Group plots for compilation purposes .................................... 7
Step 5: Name the treelist ................................................................. 7
Step 6: Validate the Plot Info and Tree Data .................................... 7

**1.3** **SimProg QuickReview** .................................................... **8**
Step 1: Name and describe the run .................................................... 10
Step 2: Describe the site .................................................................... 10
Step 3: Describe the stand ............................................................... 10
Existing stand simulations ............................................................ 10
Step 4: Define the merchantability limits ........................................ 11
Step 5: Define treatments (optional) .................................................. 11
    Juvenile spacing ...................................................................... 11
    Thin from above or below ....................................................... 11
    Thin by DBH class ................................................................. 12
    Individual Tree Selection ....................................................... 12
    Shelterwood ............................................................................ 13
    Seedtree Harvest .................................................................... 13
Step 6: Set Run Options ................................................................. 14
Step 7: Run the model .................................................................... 14
Step 8: View the results ................................................................. 15
    Tables .................................................................................... 15
    Graphs ................................................................................... 15

**1.4** **ViewProg QuickReview** .................................................... **16**
Step 1: Open ViewProg .................................................................... 16
Step 2: Select run and report type .................................................... 16
Step 3: Specify stand or stock table, year(s) to display, and DBH class parameters . 17
Step 4: Select table or chart, then view, edit, and print or export ............ 17
Step 5: Species composition chart and table: select statistic to plot, edit, and print or export ............................ 17

---



FVS Ontario

# User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007
## 1.1 QuickReview

**1.1 QuickReview**

QuickReview is a step-by-step outline for using the three components of FVS<sup>Ontario</sup>: Tree List Manager, SimProg, and ViewProg. It is meant for people familiar with FVS<sup>Ontario</sup>.

For more detailed information on these programs, refer to the tutorials for each component (Sections 2, 3, 4).

You may find it useful to refer to the online help in Tree List Manager, SimProg, and ViewProg as you work through QuickReview. To use online help:
- press F1 or choose **Help** from the menu bar.

QuickReview is for users familiar with FVS<sup>Ontario</sup>.
If you have not used FVS<sup>Ontario</sup> before, refer to the tutorials in Sections 2, 3, 4.

Section 1, Page 5

---



# User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007
## 1.2 Tree List Manager QuickReview

Tree List Manager translates an existing data file into a FVS<sup>Ontario</sup> treelist based on the information you specify on four forms:

| Tree List Manager Form                                                | Step                                                 |
| --------------------------------------------------------------------- | ---------------------------------------------------- |
| **Project Setup**                                                     | Step 1: Identify features of the input (data) files  |
| **Plot Info and Tree Data**<br/>(both forms in the TLM Import Window) | Step 2: Specify the input file                       |
|                                                                       | Step 3: Verify correct mapping of Source Field Names |
|                                                                       | Step 4: Group plots for compilation purposes         |
| **Export Setup**                                                      | Step 5: Name the treelist                            |
|                                                                       | Step 6: Validate the Plot Info and Tree Data         |


----

QuickReview is for users familiar with FVS<sup>Ontario</sup>.

For more information, refer to:
- Tree List Manager Tutorial, Section 2.
- Tree List Manager online Help through keyboard F1 or <mark>Help</mark> on the menu bar.

## **Step 1: Identify features of the input (data) files**

**Project Setup**
1. On the **Project Setup** form, identify the Plot Type (Fixed Area, Prism Plot using DBH, or Prism Plot using Size Classes).
2. Specify whether alpha or numeric species codes are used.
3. Specify whether data will be exported for creation of FVS and / or SVS files, and whether Basic or Full Sets of data will be used.
4. Specify how plots will be displayed in SVS.
5. Click <mark>OK</mark> to continue.

## **Step 2: Specify the input file**

**Tree Data**
1. Click the "Import Data to TLM" icon.
2. Specify the format of source data (dbf, MSExcel, or MSAccess) and identify the source file (and in the case of MSExcel files, the range name).

## **Step 3: Verify correct mapping of Source Field Names**

1. At minimum, a treelist must include plot ID, tree ID, tree count, species, status and DBH.
2. Ensure that all mandatory Field Names (those marked with an asterisk) are correctly mapped to the correct Source Field Name. If they are, click <mark>OK</mark>. If they are not, click on the appropriate cell in the Source Field

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007

Name column, select the desired Source Field Name from the drop-
down menu and click <mark>OK</mark>.

## **Step 4: Group plots for compilation purposes**

**Plot Info**
Plot Id will already be provided on the Plot Info form since that information is required on the original spreadsheet, but Group Name, BA Factor or Plot Size information must still be entered.

1. All plots to be compiled together (assuming for instance that they are from the same stand) will be assigned the same numeric Group Name.
2. Enter other required data - BA factor, Plot Radius, etc. for each plot.
3. Click the <mark><u>Save Data</u></mark> icon to save the new .tlm file.

## **Step 5: Name the treelist**

**Export Setup**
1. Click the <mark><u>Export Data</u></mark> icon on the completed TLM - Tree List Manager window.
2. Assign a Prefix and a Postfix name to the file.
3. Check <mark><u>Create FVS files</u></mark> to create an FVSOntario tree list file.
4. Check <mark><u>Create SVS files</u></mark> to create an SVS tree list file.
5. Check <mark><u>Expand to per Hectare</u></mark> so that a hectare sized plot will be displayed in SVS.
6. Click <mark>OK</mark> to proceed with the export.

## **Step 6: Validate the Plot Info and Tree Data**

Validation of the data is completed at export. Data is validated against a pre-set series of default codes for species, origin, status, quality, marking status, etc.. A pop-up screen will identify whether or not errors were encountered. If there were errors, the pop-up will indicate whether the errors were found in the Plot Info or Tree Data forms. Assuming there were errors:

1. Click <mark>OK</mark> on the pop-up screen.
2. Scroll through the Plot Info or Tree Data forms to identify the errors.
3. Either return to the source file and make the correction, or use the pull-down menu in the TLM window to assist in making the corrections.
4. Click the <mark><u>Export Data</u></mark> icon again to complete the export and confirm that no further errors are noted in the data.

Section 1, Page 7

---



FVS Ontario

User's Guide and Tutorials v3
QuickReview: ViewProg
Sept 2007

# 1.3 SimProg QuickReview

QuickReview is for users familiar with FVSOntario

For more information, refer to:
- SimProg Tutorial, Section 3
- SimProg online Help through keyboard F1 or **Help** menu

SimProg projects a stand based on site information, existing stand conditions or bareground assumptions, merchantable volume limits, and management treatments specified in thirteen forms. An additional three forms specify how to view results.

| SimProg Form                           |                                                                             |
| -------------------------------------- | --------------------------------------------------------------------------- |
| **Duration and Labels**                | Name and describe the run                                                   |
| **Site Information**                   | Describe the site                                                           |
| **Existing Stand**                     | Describe the type and size of plot, inventory date and source file location |
| **Merchantable Volume Limits**         | Define the merchantable volume limits for each species in the simulation    |
| **Planted/Natural Regen. Assumptions** | Describe the bareground assumptions on which the projection will be based   |
| **Model Run Options**                  |                                                                             |
| Juvenile Spacing                       | Define harvesting treatments                                                |
| Thin from Above or Below               |                                                                             |
| Thin by DBH Class                      |                                                                             |
| **Individual Tree Selection**          |                                                                             |
| Shelterwood                            |                                                                             |
| Seedtree Harvest                       |                                                                             |
| **Supplemental Keywords**              |                                                                             |
| **Select Runs to Compare**             | View results                                                                |
| **Select Stand Data to Tabulate**      |                                                                             |
| **Graph Stand Level Statistics**       |                                                                             |
| **SimProg main window**                | Review run conditions and run the model                                     |




---



FVS Ontario

# **User's Guide and Tutorials v3** QuickReview: ViewProg
Sept 2007

----

SimProg opens with a **Quick Start** option that leads users through the pertinent forms to create or open an existing run (if the **Show Quick Start at Startup** option is checked).

This feature is described in the SimProg tutorial, Section 3

<table>
  <tr>
    <th colspan="3">Quick Start</th>
  </tr>
<tr>
    <td><b>Runs</b></td>
<td><b>Project ...</b></td>
<td><b>Root Disease</b></td>
  </tr>
<tr>
    <td>
      ☑ Create New<br />
      ☐ Open Previous<br />
      ☐ Use Current
    </td>
<td>
      ☐ Bareground<br />
      ☑ Existing Stand
    </td>
<td>
      ☐ Incidence<br />
      ☐ Management
    </td>
  </tr>
<tr>
    <td colspan="3"><b>Treatments and Gross Total Volume Limits</b></td>
  </tr>
<tr>
    <td>☐ Gross total volume limits</td>
<td>☐ Partial cut from above or below</td>
  </tr>
<tr>
    <td>☐ Juvenile space</td>
<td>☐ Partial cut by DBH class</td>
  </tr>
<tr>
    <td>☐ Individual tree selection</td>
<td>☐ Shelterwood</td>
  </tr>
<tr>
    <td></td>
<td>☐ Seed tree harvest</td>
  </tr>
<tr>
    <td>☐ <u>Show Quick Start at Startup</u></td>
<td><u>Next ></u></td>
<td><u>Cancel</u></td>
  </tr>
</table>

Section 1, Page 9

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007

## **Step 1: Name and describe the run**

**Duration and Labels form**
1. In the SimProg main window, check <mark>Clear Screen</mark>.
2. Under the **Runs** menu, select NEW.
3. On the **Duration and Labels** form, enter a **Run Identifier** (max. 8 characters) and **Run Description** (max. 54 characters).
4. Set the **Projection length** and **Time step**.
5. Click <mark>OK</mark>.

## **Step 2: Describe the site**

**Site Information form**
1. Under the **Conditions** menu, select **Site Information**.
2. On the **Site Information** form, enter the principal species, forest type, stand age, and a measure of site productivity – site index, top height, or site class
3. Click <mark>OK</mark>.

## **Step 3: Describe the stand**

i
Please read this important information about FVS<sup>Ontario</sup> v3.0

Bareground projections in FVS<sup>Ontario</sup> version 3.0 are not yet reliable, and so you should assume an existing stand of at least 5 years or so and develop a tree list with regeneration of a minimum of 1.0 m (or whatever is realistic for the species in question).

## **Existing stand simulations**

For an existing stand, you will need individual tree data measured in one or more plots. Tree data must be processed as a treelist using Tree List Manager to ensure its compatibility with SimProg.

**Existing Stand form**
1. Under the **Conditions** menu, select **Projection based on...** <u>Existing Stand</u>.
2. On the **Existing Stand** form, enter the plot type(s), plot size, number of plots, and inventory year.
3. Under Tree Data File, browse for and highlight the appropriate source file.
4. Click <mark>OK</mark>.

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007

## Step 4: Define the merchantability limits

**Merchantable Volume Limits form**
1. Under the **Conditions** menu, select **Merch. Vol. limits**.
2. On the **Merchantable Volume Limits** form, for each species in the simulation specify the minimum usable DBH, top diameter, and stump height.
3. Click <mark>OK</mark>.

## Step 5: Define treatments (optional)

**Juvenile Spacing form**
Six options for treatment are available: **Juvenile Spacing, Thin from Above or Below, Thin by DBH Class, Individual Tree Selection, Shelterwood and Seedtree Harvest**. The treatments can be applied individually or in combination. The juvenile spacing and thinning treatments can be used only once in a simulation (the selection and shelterwood treatments provide an option for recurring treatments).

### Juvenile spacing
This treatment is a "thin from below."
1. Under the **Conditions** menu, select **Treatments ▸ Juvenile Spacing**.
2. On the **Juvenile Spacing** form, enter the desired post-treatment stand condition (basal area or residual density), and the criterion that will be used to determine when the stand will be spaced (age, year, or top height).
3. Click <mark>OK</mark>.

### Thin from above or below

**Thin from Above or Below form**
1. Under the **Conditions** menu, select **Treatments ▸ Thin from Above or Below**.
2. On the **Thin from Above or Below** form, select either a largest first (thin from above) or smallest first (thin from below) thinning strategy.
3. Enter the desired post-treatment stand condition (in terms of either basal area or density), and the criterion that will be used to determine when the stand will be treated (either age, year, QMD, basal area, or top height).

**Partial Harvest Regen. Assumptions form**
4. If the treatment is expected to trigger a regeneration event, click in the **Regeneration** <u>checkbox; the</u> **Manual** option will automatically become enabled. Click <mark>Assumptions</mark>. The **Regeneration Assumptions** form will open.

Section 1, Page 11

---



# User's Guide and Tutorials v3
Sept 2007
QuickReview: ViewProg

5. Select the appropriate establishment regime (natural stand or plantation).

6. Specify the species composition by **SPH** or **Percentage** (after regeneration is complete) in the **Specify Stocking By** frame.

7. Click <mark>OK</mark>.

## Thin by DBH class

**Thin by DBH Class form**
The **Thin by DBH Class** form allows you to divide the stand into components that can be treated individually. Stand components are defined in terms of species and diameter limits (e.g., all jack pine 4.6–12.5 cm DBH), and all components must be mutually exclusive. Any portion of an existing stand that is not included in one of the described components *will not be treated*.

1. In the **Target Stocking by DBH Class** table, define the components of the stand (using combinations of minimum DBH, maximum DBH, and species) that will be treated, and the stems per hectare in each component post-treatment.

2. Specify the parameter that will be used to control the timing of treatment (either age, year, quadratic mean diameter [QMD], basal area, or top height) and a critical value for that parameter. If this parameter is time-based (age or year), any treatment can occur only once. If it is based on stand measurements, treatment can be set to reoccur each time the critical value is met (i.e., thinning will occur every time the stand achieves a basal area of 26 m²/ha).

**Partial Harvest Regen. Assumptions form**
3. If the treatment is expected to trigger a regeneration event, click in the **Regeneration** <u>checkbox; the</u> **Manual** option will automatically become enabled. Click <mark>Assumptions</mark>. The **Partial Harvest Regen. Assumptions** form will open; fill it out as described above.

## Individual Tree Selection

**Individual Tree Selection form**
The Individual Tree Selection – Basal Area form allows you to define how and when the stand will be harvested.

1. The timing of the first selection harvest is determined by year or age. Subsequent harvests are a function of the cutting cycle.

2. Residual stand structure is determined by the Diminution Quotient or "q-factor".

3. Residual Basal Area determines how much of the stand will be harvested.

4. The minimum and maximum diameter class limits dictates the range of tree sizes that will be available for harvest. Diameter class width is normally set at 2 cm and a q of 1.16.

---



FVS Ontario

# User's Guide and Tutorials v3
Sept 2007
QuickReview: ViewProg

5. Legacy Trees has little relevance in selection management, but it is included as an option. Usually the number of trees and average diameter are both set at 0 unless stems exceeding the managed dbh structure limits is desired.

## **Shelterwood**

**Shelterwood form**
**FVSOntario** is configured in such a way that managers may model either a full four-cut shelterwood approach, or a combination of the different stages.

1. Schedule the harvest by either identifying the specific year or the stand age at which it should occur.

2. Set the method of harvest. The Selected Method varies somewhat depending on harvest stage. Preparatory Cuts are controlled by either Residual Crown Closure or Residual Basal Area. For Regeneration and First Removal Cuts, Residual Crown Closure, Residual Basal Area or Residual Trees may be specified. Final Removals are controlled by either Residual Trees (#/ha) or Residual Basal Area.

3. Specify the range of diameters within harvested trees will be selected.

4. Click <mark>OK</mark>.

**Supplemental Keywords form**

Properly implemented Shelterwood harvests at the regeneration stage are intended to be **from below**, with primarily the larger, better seed producing stems retained after the Regeneration Cut. FVSOntario currently has to be directed to thin from below, or the model will simply remove stems evenly from all size classes. To provide that direction, it is necessary that you input certain **Keywords**.

5. On the SimProg main window, select **Conditions** ▸ **Supplemental Keywords**.

6. Complete the Supplemental Keyword form (as per direction in Section 3), include a Description, and click <mark>OK</mark>.

7. The SimProg main window will now appear. Click <mark>Execute</mark>.

## **Seedtree Harvest**

Seedtree harvests are modified clearcuts. Few prescriptive inputs are required for modeling in FVSOntario.

1. Specify the year or stand age at which the harvest will occur, how many trees will be retained following the Seed Cut, when the Removal Cut will occur, and the percentage of seed trees that will be removed.

2. Click <mark>OK</mark>.

Section 1, Page 13

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007

## Step 6: Set Run Options

**Model Run Options form**

Under the **Runs** menu, select **Options** to open the **Model Run Options** form and set your run options. Run option settings are global, affecting all runs executed subsequent to the change, and can be modified at any time using the **Model Run Options** form. The available options are:

1. **Save Output as ASCII files** - saves text files of summary tables to import into word processors or spreadsheets, or for use with the **US Style Output** option under the **View Results** menu. This option produces detailed output containing, among other things, a list of every step carried out by FVS in the simulation, and any error messages generated by the model.

2. **Import Projected Treelist** - select this option if you wish to view output by species and DBH class using ViewProg. Not selecting this option can save time when doing multiple runs, particularly for stands with large treelists and many time steps. Always selecting this option can result in large database files which may use excessive space on small hard drives.

3. **Create SVS files** - select this option if you wish to use the Stand Visualization System (SVS) to generate simulated images of your stand. Refer to Section 2.0 instructions on using SVS.

4. **Review Actual Keywords** - select this option if you are an advanced user and wish to view the keyword file before the run. This option allows expert users of FVSOntario to monitor and extend the capabilities of the SimProg interface.

5. **Use Tree Marking During Initial Harvest** - select this option if your input file includes the marked or unmarked status of trees in the sample. Marked trees will be harvested and resulting volumes will be reported and stand changes will be projected. If this option is not selected, FVSOntario will select trees for harvest based on the criteria inputted into the model.

## Step 7: Run the model

1. Review the summary run conditions information on the SimProg main window. Using the <mark><u>Edit</u></mark> buttons, revisit/revise any conditions as necessary.

2. Click <mark>Execute</mark>.

SimProg will run FVS in a DOS window that will be visible either in front of or behind the SimProg window. If the DOS window is behind the SimProg window, you will just see a message box with "Importing Treelist Data" When DOS is finished executing, the DOS window will disappear. Users of newer computers may observe only a quick flash of the DOS screen, followed by a fast return to the main SimProg main window.

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007
The following procedure outlines steps to view output based on stand summary statistics. To view types of output where species composition or diameter distribution is important, see the ViewProg QuickReview (Section 1.4) or ViewProg Tutorial (Section 4.0).

## **Step 8: View the results**

1.  Under the **View Results** menu, select **Stand Summaries**.

**Select Runs to Compare form**

2.  On the **Select Runs to Compare** form, click to select the available runs for which you wish to review results, and check either table or graph output.

3.  Click <mark>OK</mark>.

**Select Stand Data to Tabulate form**

## **Tables**

On the **Select Stand Data to Tabulate** form, select the descriptive parameters that you want listed in your output table. Always include at least one of the time-based parameters. The output table will be displayed in a **View Text** window, from which it can be printed or saved.

**Graph Stand Level Statistics form**

## **Graphs**

SimProg offers great flexibility for customizing graphical output. On the **Graph Stand Level Statistics** form, select the stand parameters to display on each axis, specify text for axis labels and chart titles, control the appearance of line markers and grids, and select printing options. Note that some option changes will result in immediate changes in the displayed chart, and others do not appear until you click <mark>Apply</mark>.

Section 1, Page 15

---



User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007
# 1.4 ViewProg QuickReview

QuickReview is for users familiar with FVS<sup>Ontario</sup>.

For more information, refer to:
- ViewProg Tutorial, Section 4
- ViewProg online Help through keyboard F1 or **Help** menu

ViewProg displays stand (density) and stock (GTV) information by species and DBH class for each time step in a SimProg projection. This information can be displayed as tables, which can be saved or printed, and charts that can be pasted into another application or printed. Users specify the format of information on six forms.

| ViewProg Form                                      |                                                                                                  |
| -------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
|                                                    | Step 1: Open ViewProg                                                                            |
| **Stand Structure Reporting System**               | Step 2: Select run and report type                                                               |
| **Stand & Stock Tables: \<Run Name>**              | Step 3: Specify stand or stock table, year(s) to display, and DBH class parameters               |
| **Report Description**<br/>**Chart Print Preview** | Step 4: Select table or chart, then view, edit, and print or export                              |
| **Species Composition Through Time: \<Run Name>**  | Step 5: Species composition chart and table: select statistic to plot, edit, and print or export |
| Report Description                                 |                                                                                                  |


## **Step 1: Open ViewProg**

ViewProg can be opened in two ways:

1. directly, by double clicking on the ViewProg executable file (in the `C:\FVSOn\ViewProg` folder) on your computer
2. from the SimProg main window, by selecting **View Results** ▸ **By Species and/or DBH Class**

## **Step 2: Select run and report type**

**Stand Structure Reporting System** form

1. On the **Stand Structure Reporting System** form, select the run(s) you wish to display and check the desired report type (Stand & Stock Tables or Species Composition). Note that only runs for which projected treelists were imported during execution will show as available.
2. Click <u>**OK**.</u>

---



FVS Ontario

User's Guide and Tutorials v3 QuickReview: ViewProg
Sept 2007

## **Step 3: Specify stand or stock table, year(s) to display, and DBH class parameters**

**Stand & Stock Tables form**
1. If you selected **Stand & Stock Tables** in Step 2, a **Stand & Stock Tables** form will open to a preview window with a default chart of stand density. Click <mark><u>Refresh</u></mark> to update the chart after making any changes to the form.
2. Specify the desired statistic (density or GTV), year(s) to display, and the DBH class characteristics.

## **Step 4: Select table or chart, then view, edit, and print or export**

**Report Description form**
1. To produce tabular output, click <mark><u>View Reports</u></mark> on the **Stand and Stock Tables** form.
2. Edit the report title by overtyping on the **Enter Report Description** form, and click <mark>OK</mark> to generate the desired table. Use the buttons at the top of the table window to **Print** or **Export** the report, use the arrows in the upper left to advance through the pages of the report, and click the **X** in the upper right to **Cancel** and close the window.

To produce graphic output, click <mark><u>View Charts</u></mark> on the **Stand and Stock Tables** form.

**Chart Print Preview form**
Customize the chart titles, y-axis units, grids on the **Chart Print Preview** form and select whether to print or save the chart to another application.

## **Step 5: Species composition chart and table: select statistic to plot, edit, and print or export**

**Species Composition form**
1. If you selected **Species Composition** in Step 2, a **Species Composition Through Time** form will open.
2. Specify the desired statistic to display; edit chart titles, y-axis units, and grids; and select whether to print or save the chart to another application.

**Report Description form**
3. To create a table, click <mark>View Report</mark>. On the **Report Description** form, edit the title by overtyping and click <mark>OK</mark> to generate the table. Use the buttons at the top of the table window to **Print** or **Export** the report, use the arrows in the upper left to advance through the pages of the report, and click the **X** in the upper right to **Cancel** and close the window.

Section 1, Page 17
