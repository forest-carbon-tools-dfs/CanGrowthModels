# VDYP7console instruction

Materials needed for this instruction can be downloaded from "Example Package" at <u>Publications and Support - Province of British Columbia (gov.bc.ca)</u>

The folder includes 7 files:
- **VDYP7_INPUT_POLY.csv**: polygon definition file
- **VDYP7_INPUT_LAYER.csv**: layer definition file
- **VDYP7_OUTPUT_YLDTBL.csv**: output yield tables
- **VDYP7_OUTPUT_ERRMSG.txt**: Error, warning, and information messages through the processing
- **VDYP7_OUTPUT_LOG.txt**: Logging information through the processing
- **Parms.txt**: a sample parameter file
- **RunVDYP7.cmd**: a file that invokes the VDYP7console run.

## Step 1: Preparing input files

The input consists of two CSV formatted files:
- Polygon definition file
- Layer definition file

**VDYP7_INPUT_POLY.csv** and **VDYP7_INPUT_LAYER.csv** provide examples of the format of inputs. When you are preparing your own inputs, the following things should be noted:
- For each polygon record in the Polygon file, zero or more Layer definition records can be recorded in the layer definition file.
- The order of the Polygon Records must be in increasing FEATURE_ID. The order of Layer records must match the Polygon records but for Layer records. Within a single polygon, no particular ordering is required.

## Step 2: Setting up VDYP7console command line parameters

After you have the input files ready in hands, you can set up the parameters for your run. **Parms.txt** contains the most used parameters for projection in VDYP7console (You can find the full list of all available command line parameters by entering `$(YourInstallDir)\vdyp7console` -? in Command Prompt).

**-ini $(InstallDir)\VDYP.ini**

This reads VDYP7 INI and processes immediately. For example, if VDYP7 was installed directly under C-drive in your desktop, this line should be -ini C:\VDYP7\VDYP.ini

**-c $(InstallDir)\VDYP_CFG\**

Names the root folder containing VDYP7 configuration files. For example, if VDYP7 was installed directly under C-drive in your desktop, this line should be -c C:\VDYP7\VDYP_CFG\

**-ifmt hcsv**

Identifies the input file format. hcsv indicates the input format is consisting of two CSV files.

**-ofmt YieldTable (Or csvyieldtable)**

Identifies the output file format. You can choose between "YieldTable" and "csvyieldtable". If you choose "YieldTable", VDYP7console will produce a formatted text file containing yield tables; if you choose

---


"csvyieldtable", VDYP7console will produce yield tables in CSV format. Besides the difference in format, if you choose "YieldTable", the output will also include the version information of the VDYP7 application and the version information of its supporting libraries.

****-ip `$ (InputFileDir)\Input_POLY.csv`**

Indicate the location of the polygon definition file. For example, if you are using VDYP7_INPUT_POLY.csv from the example package and it is stored under C:\example_package, this line should be -ip C:\example_package\VDYP7_INPUT_POLY.csv

****-il `$ (InputFileDir)\Input_LAYER.csv`**

Indicate the location of the layer definition file. For example, if you are using VDYP7_INPUT_LAYER.csv from the example package and it is stored under C:\example_package, this line should be -ip C:\example_package\VDYP7_INPUT_LAYER.csv

****-0 `$ (OutputFileDir)\Output_YldTble.csv`**

Specifies the file name to store the generated data out to. For example, if you are going to call it "**VDYP7_OUTPUT_YLDTBL.csv**" and store it in C:\example_package folder, this line should be -0 C:\example_package\VDYP7_OUTPUT_YLDTBL.csv

****-e `$ (OutputFileDir)\Output_Error.txt`**

Specifies the text file name to record errors, warnings, and informational messages. For example, if you are going to call it "**VDYP7_OUTPUT_ERRMSG.txt**" and store it in C:\example_package folder, this line should be -e C:\example_package\VDYP7_OUTPUT_ERRMSG.txt

****-I `$ (OutputFileDir)\Output_Log.txt`**

Specifies file name to store the logging information. For example, if you are going to call it "**VDYP7_OUTPUT_LOG.txt**" and store it in C:\example_package folder, this line should be -I C:\example_package\VDYP7_OUTPUT_LOG.txt

****-back Yes**

Allow the model to project backward from Reference Year. Specify "No" if you don't want to project backward.

****-forward Yes**

Allow the model to project forward from Reference Year. Specify "No" if you don't want to project forward.

****-includeprojmode Yes**

Indicate how the projected values were projected (i.e. using VDYP7BACK or VDYP7) and whether the year is "special" (such as the Reference Year, Current Year or the Force Year). When specifying "Yes", this will generate a column called "Mode" to the yield tables.

****-util AC=7.5

****-util AT=7.5

****-util B=7.5

****-util C=7.5

****-util D=7.5

****-util E=7.5

---

- **util F=7.5**
- **util H=7.5**
- **util L=7.5**
- **util MB=7.5**
- **util PA=7.5**
- **util PL=7.5**
- **util PW=7.5**
- **util PY=7.5**
- **util S=7.5**
- **util Y=7.5**

For each of the 16 SPO species codes, set the utilization level you would like reported volumes and other per hectare attributes projected at. You can choose from the following five utilization levels: 4.0, 7.5, 12.5, 17.5, and 22.5.

****-agestart **0 (Or -yearstart)**

****-ageend **250 (Or -yearend)**

You can choose to specify the starting and the ending age or the starting and ending year range for the resulting yield table. For example, in this case, the resulting yield table will include the projection from age 0 to age 250.

****-inc **10**

The increment in years between each row of the generated yield table across the specified range. For example, in this case, the resulting yield table will show the projection results in a 10-year increment.

****-forceRefYear **Yes**

Indicate whether to include the projection at the Reference Year in the yield table. Specify “No” if you don’t want to include projection at the Reference Year in the yield table.

****-forceCrntYear **Yes**

Indicate whether to include the projection at the current calendar year in the yield table. Specify “No” if you don’t want to include projection at the current calendar year.

****-forceYear **1999**

Indicate which year you want to specifically include in the resulting yield table. For example, in this case, projections for the year 1999 will be included in the yield table.

****-yieldtableincpolyid **Yes**

Determine whether you want to include the polygon identifier in the resulting yield table. Specify “No” if you don’t want to include polygon identifiers.

****-projectedBySpecies **Yes**

Produce projected per hectare values by species. Specify “No” if you don’t want species-specific projected per hectare values.

---



**-projectedVolumes Yes**

Include volume estimation in the resulting yield tables. Specify “No” if you don’t want volume estimation.

**-projectedCFSBiomass Yes**

Include biomass estimation in the resulting yield tables. Specify ‘No’ if you don’t want biomass estimation.

## Step 3: Run VDYP7console

Once you have all parameters set up in **parms.txt**, you can invoke VDYP7console by entering **`$(YourInstallDir)\vdyp7console` -p $({ParmsFileDir})\parms.txt** in Command Prompt.

**`$(YourInstallDir)\vdyp7console`** defines where VDYP7console is located; -p $({ParmsFileDir})\parms.txt defines where the parameter file is.

You can save this command line as a .cmd file, like **RunVDYP7.cmd** in the example package, and then run VDYP7console by double-clicking the .cmd file.

## Step 4: Get the output

You will get three output files when the projection finishes: a file containing generated yield tables, a file containing errors, warnings, and information messages, and a file containing logging information in your indicated folder. If you are using the parameters set in **parms.txt** and the input polygon and layer definition files in the example package, you will get the same outputs as "**VDYP7_OUTPUT_YLDTBL.csv**", "**VDYP7_OUTPUT_ERRMSG.txt**" and **VDYP7_OUTPUT_LOG.txt**".

Please contact the Forest Biometrics team if you have problems with any steps.

**Wenli Xu**

**Team lead, Forest Biometrics**

**Forest Analysis and Inventory Branch**

**Phone: 778-974-5635**

**Email: <u>Wenli.Xu@gov.bc.ca</u>**
