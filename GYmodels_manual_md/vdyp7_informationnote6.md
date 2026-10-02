# VDYP7 Information Note # 6

## VDYP7 Version Information

When running any of the VDYP7 applications, you should ensure you are noticing the following version numbers for the applications and components. If other version numbers are being displayed, you likely have an old version of VDYP7 somewhere on your system.

WinVDYP7 Version: 7.32d
VDYP7Console Version: 7.16k

In addition, within the VDYP7Console error log, the following version information can be obtained for supporting libraries essential to correct operation of the VDYP7 applications:

VDYP7ExtendedCoreDLLVersion: 7.28l
VDYP7COREDLLVersion: 7.19f
SupportingCalcLibraryVersion: 7.1g2016-Jan-27
VRIADJSTCalcDLLVersion: 7.5b
VDYPBACKCalcDLLVersion: 7.5b
FIPSTARTCalcDLLVersion: 7.5b
VDYP7CalcDLLVersion: 7.5b
VRISTARTCalcDLLVersion: 7.5b
CalcDLL/OSupportVersion: 7.5b
VDYP7LowLevelI/ODLLVersion: 7.23d
VDYPSIWrapperVersion: 7.12j
SINDEXVersion: 1.51

## CFS Biomass Estimation

For the emphasis of being consistent in forest stand biomass estimation methods in BC and Canada, this new release of VDYP7 has added new functions to calculate above-ground forest biomass estimations which were developed by Canadian Forest Service (CFS). The detailed models, parameters, procedures and documentations are available in the following websites:

<u>https://nfi.nfis.org/en/biomass</u>

Some preliminary analysis indicates there are some biomass estimation differences between the new CFS biomass models and the previous provincial biomass models (MOF). Generally, the total biomass (which includes tree stem wood, bark, branch and foliage) estimates from CFS model are higher than those from the MOF model at the forest region, district, Ecozone, BEC zone and leading species levels with a provincial overall difference at approximately 19%.

1

---



Possible factors resulting in the differences are due to differences in model structures, data stratifications, assumptions, scale and scope, volume types, utilization standards, modelling approaches, etc.

Please note, CFS is currently working to update the biomass equations and the biomass estimations in VDYP7 will be updated accordingly when those updated model parameters are finalized.

## Mountain Pine Beetle Damaged Stands

The epidemic attack of the MPB of vast areas in the BC interior region created new stands structures that did not exist on such a large scale in the province. The MPB damage has rendered the assumption of natural even aged stands invalid and irrelevant. Instead, the following possible scenarios have been created:

- Stands with residual trees (R) with crown closure greater than 10% and a component of dead trees (D).
- Stands where a veteran layer existed prior to MPB attack and now have potentially three live layers, the veteran layer (V), the residual layer (R), the regeneration layer (Y) that will follow mortality, and a component of dead trees (D)
- Stands with residual trees (R) and an associated understory (Y)
- Stands that have only the residual layer (R) and a dead layer (D), but over time will have a regeneration layer (Y).

## Additional Input Data Format

A new VDYP7Console input data format has been created to support the Mountain Pine Beetle modifications allowing for more flexible layer definitions than has been the case prior.

This input format consists of two CSV formatted files:
- Polygon Definition input file.
- Layer Definition input file.

For each polygon record in the Polygon file, zero or more Layer definition records can be recorded in the Layer Definition file. The order of the Polygon Records must be in increasing FEATURE_ID. The order of Layer records must match the Polygon records but for Layer records within a single polygon, no particular ordering is required.

This data format is selected by supplying the following command line parameters:

- -ifmt hcsv
- -ip <Path to Polygon CSV File>

2

---



-il <Path to Layer CSV File>

For example:

- ifmt hcsv
- -ip .\InputData\AA_Final_POLY_N2.csv
- -il .\InputData\AA_Final_LAYER_N2.csv

## Polygon Input Data Format

The Polygon record consists of the following CSV formatted fields (in order):

- FEATURE_ID (must be in increasing numerical order)
- MAP_ID
- POLYGON_NO
- ORG_UNIT
- TSA
- TFL
- INVENTORY_STANDARD
- TSA_NUM
- SHRUB_HEIGHT
- SHRUB_CC
- SHRUB_PATTERN
- HERB_COVER_TYPE
- HERB_CC
- HERB_PATTERN
- BRYOID_CC
- BEC_ZONE
- ECO_ZONE
- PCT_STOCKABLE
- YIELD_FACTOR
- NON_PROD_DESC
- BCLCS_LVL_1_CODE
- BCLCS_LVL_2_CODE
- BCLCS_LVL_3_CODE
- BCLCS_LVL_4_CODE
- BCLCS_LVL_5_CODE
- REFERENCE_YEAR
- YEAR_OF_DEATH
- PCT_STOCKABLE_DEAD
- NON_VEG_COVER_TYPE_1
- NON_VEG_COVER_PCT_1
- NON_VEG_COVER_PATTERN_1

3

---



- NON_VEG_COVER_TYPE_2
- NON_VEG_COVER_PCT_2
- NON_VEG_COVER_PATTERN_2
- NON_VEG_COVER_TYPE_3
- NON_VEG_COVER_PCT_3
- NON_VEG_COVER_PATTERN_3
- LAND_COVER_CLASS_CODE_1
- LAND_COVER_CLASS_PCT_1
- LAND_COVER_CLASS_CODE_2
- LAND_COVER_CLASS_PCT_2
- LAND_COVER_CLASS_CODE_3
- LAND_COVER_CLASS_PCT_3

## <u>Layer Input Data Format</u>

The Layer record consists of the following CSV formatted fields (in order):

- FEATURE_ID (must be in increasing numerical order)
- TREE_COVER_ID
- MAP_ID
- POLYGON_NO
- LAYER_LVL_CD
- VDYP7_LAYER_LVL_CD
- LAYER_STOCKABILITY
- RANK_CODE
- NON_FOREST_DESC
- EST_SI_SPCS
- EST_SI
- CC
- BA
- TPH
- SPCS_CD_1
- SPCS_PCT_1
- SPCS_CD_2
- SPCS_PCT_2
- SPCS_CD_3
- SPCS_PCT_3
- SPCS_CD_4
- SPCS_PCT_4
- SPCS_CD_5
- SPCS_PCT_5
- SPCS_CD_6
- SPCS_PCT_6
- EST_AGE_SP_1

4

---


- EST_HT_SP_1
- EST_AGE_SP_2
- EST_HT_SP_2
- ADJUSTMENT_IND
- ADJ_LOREY_HT
- ADJ_BASAL_AREA
- ADJ_WSV_075
- ADJ_WSV_125
- ADJ_VCU_125
- ADJ_VD_125
- ADJ_VDW_125

# Lorey Height Capping

It has been noticed that the computation of Lorey height can produce unrealistic values in some cases. For example, Lorey heights exceeding 100 metres; these defective Lorey heights were much taller than the dominant stand height.

A solution for this problem is being investigated, however in the meantime the situation is to:

- Trapped for the invalid Lorey Heights as projection occurs.
- Prevent projected volumes from being generated, and
- Produce an error message.

# Important Modifications

This VDYP7 release has:

- Added structures to deal with the Mountain Pine Beetle (MPB) damaged stands, including layers for Dead, Residual, and Young Regeneration layers.
- Added improvements to project multi-layer stands with more than one growing layer.
- Added functions to calculate CFS Biomass:
  - Calculate CFS Biomass based on different volume types and utilization levels.
  - Added EcoZone to the input data set for dealing with CFS biomass calculations.
- Updated to the SINDEX species curves library 1.51
- WinVDYP will generate yield curves and publish them to PLOTSY for display and integration with other graph sources.
- Fixed other minor issues as they became known,

5

---

# VDYP7Console Command Line Parameters

The VDYP7Console has no user interface and therefore, to control its behaviour, flags and instructions are provided through command line parameters. VDYP7Console uses these parameters to set configuration and produce yield tables from input polygons based on those command line instructions.

A full listing of all available command line parameters is available from the command line if you enter the following:

vdyp7console -?

These are the more commonly used command line parameters:

## Configuration related parameters

-p <text file name>

Causes command line parameters to be read from named file.

This parameter can be used to point to a text file containing any number of command line parameters, one command line parameter per line. This is a convenient means for supplying a large number of parameters in a single file.

Any and all command line parameters may be stored in a Command Line Parameter File. Refer to the Appendix for an example parameter file.

-ini <VDYP7 INI File Name>

Causes the named VDYP7 INI to be read and processed immediately.

This is a mandatory parameter and should be one of the first command line parameters supplied to identify where to get basic initialization data.

-c <VDYP7 Configuration Data File Folder>

Names the root folder containing VDYP7 configuration files.

Points to the folder containing all configuration data and underlying VDYP7 model initialization data. This folder is typically named VDYP_CFG and is found in the VDYP7 installation folder.

## Input/Output Parameters

-ifmt <input file format>

Identifies the input file format. Must be one of (SCSV default): SCSV, DCSV, HCSV, ICSV

Indicates the data format of the input data. All input formats are CSV files structured in different ways for different purposes.

6

---



- **CSV**: A collection of 8 input CSV files holding different components of a stand description. This format of files are typically extracted as part of a database reporting mechanism.
- **HCSV**: A CSV input data format consisting of two files, one containing polygon level data and the other containing layer specific descriptions.
- **DCSV**: A flat data structure holding all polygon, layer, and stand information on a single CSV input record.

-i `<Input directory or file>`

    Specifies the input file or directory or file depending on the `'-ifmt'` chosen. For:
    - CSV input, this is the directory holding the 8 CSV input files.
    - DCSV input, this points to the CSV file containing the data to be processed.
    - HCSV input, this parameter is not used (see `'-ip'` and `'-il'`).

-ip `<Input polygon HCSV formatted file>`
-il `<Input layer HCSV formatted file>`

    For HCSV file input formats, these two parameters point to the files containing the polygon level data and the layer/species data respectively.

-ofmt `<YieldTable | CSVYieldTable | DCSV>`

    Indicates the type of data VDYP7Console will produce.
    - **YieldTable**: a formatted text file containing yield tables.
    - **CSVYieldTable**: yield tables in CSV format.
    - **DCSV**: Projected values (not yield tables) in a CSV output format (requires DCSV as the input source).

-o `<Output File Name>`

    Specifies the file name to store the generated data out to. The format of the data is identified with the `-ofmt` command line parameter.

-e `<Error File Name>`

    Specifies the text file name to record error, warning and informational messages generated by VDYP7Console as processing continues.

-l `<Log File Name>`

    Identifies the file to receive the text output that normally goes to the screen. This causes VDYP7Console to run “invisibly” – that is with no visible sign of progress which is important in certain batch environments.

-progressFrequency `<Never | Polygon | Mapsheet | Number>`

7

---



Indicates how often to produce a progress message to the log file or screen:

- Never – Never indicate any progress.
- Polygon – Indicate progress for each polygon encountered in the input file.
- Mapsheet – Indicate progress for each change in encountered mapsheet.
- Number – Produce a '.' for each 'number' of polygons processed.

## Model Configuration

-util SP=<4.0 | 7.5 | 12.5 | 17.5 | 22.5>

For each of the 16 SP0 species codes (‘AT’, ‘C’, ‘D’, etc.), set the utilization level you would like reported volumes and other per hectare attributes projected at.

This parameter would be repeated up to 16 times for each of the SP0 codes.

-allowBATPHSub <Yes | No>

If, during processing, it becomes apparent that a valid computed Basal Area/TPH can not be computed (perhaps the stand is young), allow the system to use input values for those parameters if they are supplied.

-back <Yes | No>
-forward <Yes | No>

Allow or disallow the underlying model to “project backwards” from Reference Year (using the VDYP7BACK module), and to allow or disallow the underlying model to project forwards from Reference Year (using VDYP7 module).

## Yield Table Control

-agestart <starting total age>
-ageend <ending total age>

Specifies the starting and ending age range for the resulting yield table.

-yearstart <starting calendar year>
-yearend <ending calendar year>

Specifies a yield table that ranges over calendar years rather than a stand age range.

-inc <year count>

The increment in years between each row of the generated yield table across the specified range.

-forceRefYear <Yes | No>
-forceCrntYear <Yes | No>
-forceYear <Calendar Year>

These optional parameters insist on, in addition to the normal range of the yield table, to also include the identified years implied by these parameters.

8

---

-yldTblColumnHdrs <Yes | No>

Indicates whether to include (or not) the Yield Table Headers in the output yield tables.

-includeProjMode <Yes | No>

For yield table output, indicates how the projected values were projected (i.e. using **VDYP7BACK** or **VDYP7**) and whether the year is "special" (such as the Reference Year, Current Year or the Forced Year).

-yieldtableinpolyid <Yes | No>

Include the polygon identifier as part of the generated yield table header.

-projectedByLayer <Yes | No>
-projectedBySpecies <Yes | No>

For certain output formats, produce a summary layer level projected per hectare values and/or produce species specific projected per hectare values.

-projectedVolumes <Yes | No>

-projectedCFSBiomass <Yes | No>

When producing projected per hectare values in a yield table, include (or exclude) Volumes and/or Biomass calculations.

When selecting Biomass as output, CFS Biomass can be selected to drive Biomass calculations.

# APPENDIX – Contents of a sample **VDYP7Console Parameter file**.

This parameter file contains the command line options and parameters that you can supply on the command line and places them into a text file, and are processed just as if they were typed onto the command line. A typical run of VDYP7Console might have the following command line:

VDYP7Console -p ParamFile.txt

Parameter files are very handy ways to change sets of parameters without having to retype the command line. Multiple references to parameter files can be made. So for instance, one could break up the command line parameters this way:

VDYP7Console -p StdConfig.txt -p YldTblCtrl.txt -p UtilLvl125.txt

In this example, one could set up the configuration parameters that never change in one parameter file, place the parameters that deal with how the yield tables are produced in another and place the utilization levels to project with in a third (in this case 12.5 cm+). Then if you wanted a subsequent run at 17.5 cm+, make a reference to a parameter file that has the -util parameters set to 17.5.

Below represents a typical parameter file that saved as a text file:

9

---


-ini C:\VDYP7\VDYP.ini
-c C:\VDYP7\VDYP_CFG\
-ifmt hcsv
-ofmt csvyieldtable
-ip E:\VDYP7_newVerDlayer\POLY_MPB_test.csv
-il E:\VDYP7_newVerDlayer\LAYER_MPB_test.csv
-o E:\VDYP7_newVerDlayer\HCSV-YldTbl_test.csv
-e E:\VDYP7_newVerDlayer\HCSV-Err_test.txt
-l E:\VDYP7_newVerDlayer\HCSV-Log_test.txt

-back Yes
-forward Yes
-includeprojmode Yes

-util AC= 12.5
-util AT= 12.5
-util B = 12.5
-util C = 12.5
-util D = 12.5
-util E = 12.5
-util F = 12.5
-util H = 12.5
-util L = 12.5
-util MB= 12.5
-util PA= 12.5
-util PL= 12.5
-util PW= 12.5
-util PY= 12.5
-util S = 12.5
-util Y = 12.5

-forceyear 2015
# Line starting with '#' are ignored...
#-yearstart 2005
#-yearend 2016
-agestart 10
-ageend 160
#-inc 10
-includeagerows Yes
-allowbatphsub Y
-yieldtableincpolyid Yes

10

