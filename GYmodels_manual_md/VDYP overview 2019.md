

# BRITISH COLUMBIA

**Ministry of Forests, Lands, Natural Resource Operations and Rural Development**

Forest Analysis and Inventory Branch

# **Variable Density Yield Projection**

FOREST SERVICE BRITISH COLUMBIA

Volume 1 - VDYP7 Overview

Version 2.1

February 26, 2019

---

NO_CONTENT_HERE

---



Table of Contents

# **Table of Contents**

1. Introduction .................................................................................... 1
   1.1 Purpose of This Document ....................................................... 1
   1.2 How to Use the VDYP7 Documentation Framework ................. 1
       1.2.1 VDYP7 Overview .................................................................. 2
       1.2.2 WinVDYP7 Overview .......................................................... 2
       1.2.3 VDYP7Console Interface Overview .................................. 3
       1.2.4 VDYP7Attribute Adjustment Overview ............................ 3
       1.2.5 VDYP7 Core Module Overview ......................................... 3
       1.2.6 Computerized Adjustment Process Audit System (SAS/VDYP7) Overview ... 3

2. Overview of VDYP7 ........................................................................... 4
   2.1 What is VDYP7? ......................................................................... 4
   2.2 What's New in VDYP7 .................................................................. 4

3. Application Support ........................................................................... 5
   3.1 Messages Overview ..................................................................... 5
   3.2 Frequently Asked Questions ...................................................... 5
   3.3 Contacts ....................................................................................... 5

4. Getting Started .................................................................................. 6
   4.1 System Requirements .................................................................. 6
   4.2 ~~Downloading VDYP7 Applications from the Web Site (CURRENTLY UNAVAILABLE)~~ 6
   4.3 Installing VDYP7 Applications .................................................. 6
   4.4 Configuration Files ...................................................................... 8
   4.5 Other Support Files .................................................................... 8

5. VDYP7 Model and Process Overview ............................................... 10
   5.1 FIPSTART (Species % supplied by Volume) ............................ 10
   5.2 VRISTART (Species % supplied by Basal Area) ..................... 10
   5.3 FIPSTART and VRISTart ............................................................ 10
   5.4 VRIADJUST (Optional) ............................................................. 11
   5.5 **VDYP7 GROWTH MODEL** .................................................. 11
   5.6 VDYPBACK (Optional) ............................................................ 11

6. Species Mapping and Default Crown Closure .............................. 13

7. File Descriptions ............................................................................... 15
   7.1 VDYP.INI File ............................................................................ 15
       7.1.1 Preferences ......................................................................... 15
       7.1.2 VDYPCore Configuration ................................................. 15

Volume 1 - VDYP7 Overview Revised February 2019 i

---



# Table of Contents

7.1.3 PLOT .................................................................................... 16
7.1.4 Format Patterns .................................................................... 16
7.1.5 Table Property Ranges .......................................................... 16
7.1.6 Batch Age Ranges ................................................................... 17
7.1.7 **Operating Defaults** .......................................................... 17
7.1.8 Species .................................................................................. 17
7.1.9 **Batch Species Report Utilization Levels** .......................... 18
7.1.10 BECs .................................................................................. 18

7.2 **TABLEDEF.INI File** ............................................................ 20
7.2.1 – Species Composition .......................................................... 20
7.2.2 - Site Index Parameters ...................................................... 20
7.2.3 - Stand Information ............................................................ 21
7.2.4 - Adjustment Parameters .................................................... 21
7.2.5 - Report Parameters ........................................................... 21

7.3 Input and Output Files created by "Save Intermediate Results" ........................................................................................ 22
7.3.1 **FIPSTART** ....................................................................... 23
7.3.2 **VRISTART** .................................................................... 23
7.3.3 **VRIADJUST** .................................................................. 23
7.3.4 **VDYP7** .......................................................................... 24
7.3.5 **VDYPBACK** .................................................................. 24

8. Glossary .................................................................................... 25

**Appendix A – Reference to Common Messages** ............................ 27
VDYP7 Core Messages .................................................................... 27
VDYP7 Extended Core Messages ..................................................... 27
Interface Core Messages ................................................................... 27

**Appendix B – Revision History** .................................................... 28

**Appendix C – Frequently Asked Questions** .................................. 29

**Appendix D – Third Party Libraries** ............................................ 31

Index .............................................................................................. 33

ii Revised February 2019 Volume 1 - VDYP7 Overview

---



Introduction

# 1. Introduction

## 1.1 Purpose of This Document

This document provides an overview of the five components of the VDYP7 application as well as the interfaces that facilitate user access to the VDYP7 components. It is intended to provide clients with a framework that describes the core programs and various interfaces that currently exist.

## 1.2 How to Use the VDYP7 Documentation Framework

VDYP7 software currently contains three different interfaces: WinVDYP7, VDYP7Attribute Adjustment and the VDYP7Console, each linked to the same VDYP core models. Each interface is described in its own User Guide. The VDYP7 core programs, common to each interface, are described within this overview.

This document is Volume 1 of a series of five documents supporting the VDYP system.

- **Volume 1 – VDYP Overview** is this document. It provides general information about VDYP7 application, and describes how to use this documentation set.
Volume 1 - VDYP7 Overview Revised February 2019 1

- **Volume 2 – WinVDYP7 User Guide** describes how to use WinVDYP7, an easy to use interactive interface, designed to predict yields one stand at a time.
- **Volume 3 – VDYP7Console Interface Guide** describes in detail how to use **VDYP7Console**, an interface to generate yield tables from text files in CSV format.



---



# Overview of VDYP7

| Terms and conventions |   |                                                                                              |
| --------------------- | - | -------------------------------------------------------------------------------------------- |
| **Arial Narrow Bold** |   | Indicates text that you type or a button that you click.                                     |
| \*Italics\*           |   | Indicates a label that appears on a screen (for example, a field name or push-button label). |
| **Bold**              |   | Used for emphasis.                                                                           |
| ![](pointer_icon)     |   | Indicates important information and warnings.                                                |
| ![](mouse_icon)       |   | Indicates application tips and tricks.                                                       |


## 1.2.1 VDYP7 Overview
2 Revised February 2019 Volume 1 - VDYP7 Overview

VDYP7 (Variable Density Yield projection version 7) is a growth model that can project an inventory from FIP, VRI unadjusted, or VRI adjusted files.

VDYP7 is a substantial change from VDYP6<sup>1</sup>. VDYP6 is an empirical **yield** prediction system for natural stands, based upon temporary inventory sample and permanent growth sample data. The model predicts stand heights, diameters, volumes and mean annual increments at different utilization levels and ages. In contrast, VDYP7 is a **growth and yield** prediction system.

All the state variables required by VDYP7 are not directly available in the VRI files. Several interfaces have been written to take data in different formats (stand level, FIP and VRI files) and estimate the state variables required by VDYP7. SAS-based Adjustment software takes Ground Sampling Phase (Phase II) information, matches it to photo-based estimates (Phase I) and computes adjustment ratios. Interfaces have been written to incorporate the resulting adjustment ratios into the inventory and apply them to all the polygons to obtain and adjusted inventory. Additional interfaces have been written to project adjusted or unadjusted inventories and produce yield tables.

## 1.2.2 WinVDYP7 Overview

WinVDYP7 is an interactive user interface designed to predict yields one stand at a time. The interface prompts the user for typical inventory attributes for the stand including species composition and site index inputs. The user selects attributes to be included in the output table including utilization level. The software then produces a yield table, based on the user input attributes for the age range and increment specified by the user.

<sup>1</sup> Heron Systems Management, Ltd. 1997. Variable Density Yield Prediction WinVDYP User Guide, Version 1.0.



---



Introduction

# 1.2.3 **VDYP7Console Interface Overview**

VDYP7Console takes raw (unadjusted) or adjusted inventories in MS Access tables and generates yield tables at the polygon level. This application works in a single step. It also reads text files, in CSV format, as input with improved processing speed.

# 1.2.4 **VDYP7Attribute Adjustment Overview**

The Attribute Adjustment system uses a series of steps to process an inventory from reading in the raw inventory data to producing an projected inventory that includes basal area, stems/ha, an array of volume attributes, at user-specified utilization levels. The process can include adjustment of attributes using adjustment ratios from the Computerized Adjustment Process Audit System (Volume 5).

# 1.2.5 **VDYP7 Core Module Overview**

The VDYP7 Core modules include modules to initialize an inventory for processing (FIPSTART or VRIStart), a module for projecting an inventory (VDYP7), a module for growing and inventory backwards (VDYPBBack) and a computerized adjustment process audit system (SAS/VDYP7) for estimating ratios to adjust the inventory based on ground (Phase II) sampling.

# 1.2.6 **Computerized Adjustment Process Audit System (SAS/VDYP7) Overview**

A series of programs, some written in SAS, take ground sample audit data (Phase II), compare it to the photo based inventory data (Phase I) from the same polygons and develop adjustment factors for some of the mensurational attributes including age, height, basal area, stems/ha and volume. These adjustment factors are then available to adjust the entire inventory (Phase I data). These SAS programs are not distributed as part of the VDYP7 software and are intended to be used only by personnel trained in their use.

Volume 1 - VDYP7 Overview Revised February 2019 3

---



Overview of VDYP7

# 2. **Overview of VDYP7**

## 2.1 **What is VDYP7?**

The Variable Density Yield Projection (VDYP7) model is an empirical growth and yield prediction system for natural stands, based upon temporary inventory sample and permanent growth sample data. The model predicts stand heights, diameters, basal areas, stems, and volumes at different utilization levels and ages.

VDYP7 software currently contains three different interfaces: WinVDYP7, VDYP7Attribute Adjustment and the VDYP7Console, each linked to the same VDYP core models. Each interface is separately described in its own User Guide. The VDYP7 core programs, common to each interface, are described within this overview.
4 Revised February 2019 Volume 1 - VDYP7 Overview

In addition, the VDYP7 system includes a computerized adjustment process audit system (SAS/VDYP7) that derives adjustment factors used to modify an inventory, based on ground (Phase II) sampling.

## 2.2 **What's New in VDYP7**

Users familiar with WinVDYP 6 will find the WinVDYP7 interface has a similar look and feel. The underlying VDYP7 core models comprise a growth-model based system, however, and are very different from the VDYP 6 yield model system that it replaces. Consequently, there are many changes to the input and output selection windows in WinVDYP7. For example, new mensurational inputs (basal area, stems) are now allowed. Other attributes, such as stockability (described in the glossary), also exist. Furthermore, as a result of VDYP7 re-stratification, BEC is now the only acceptable location input; forest inventory zone is no longer supported.

Two new interfaces: VDYP7Attribute Adjustment and the VDYP7Console replace the VDYP6 Batch application. These interfaces are intended to facilitate the adjustment of forest inventories and to generate yield tables respectively. They are designed to processes many forest polygons at a time. The new computerized adjustment process audit system (SAS/VDYP7) computes adjustment factors based on ground (Phase II) sampling. The intent of these adjustment factors is to reduce any bias present in the photo-base (Phase I) inventory.

The VDYP7 core programs, common to the three VDYP7 interfaces, first create a detailed stand description at the start of a projection. Adjustment of the inventory based on ground (Phase II) sampling is optional. If adjustment is undertaken, the detailed stand descriptions are projected to the year of ground sampling and these are then adjusted. The detailed adjusted or unadjusted stand descriptions are grown forward in time by the core programs to the projection year. Optionally, the stand descriptions may be projected backwards. The level of mensurational detail contained within the projected stand description allows for more flexible yield reporting than is found within VDYP 6. For example the option now exists to generate five different volume types crossed with five different diameter limits. In addition the ability now exists to split diameter limits by species when reporting projected VDYP7 yields.

These VDYP7 interfaces, like VDYP6, were created for use by forestry professionals and technicians. Technical forestry knowledge is required for effective use of VDYP7.



---



Application Support

# 3. **Application Support**

There are a number of support resources available. Refer to the options below to determine the best course of action to follow.

## 3.1 **Messages Overview**

From time to time, you may encounter problems associated with the *performance* of VDYP7. Before contacting support staff be sure to review any processing messages. References to the current message possibilities are provided in Appendix A of this guide..

## 3.2 **Frequently Asked Questions**

Before contacting support staff, read Appendix C to see if any of the FAQs address your problem.

## 3.3 **Contacts**

The MoF staff members listed below are your VDYP7 support contacts. Before you contact support staff, check this document and the appendices for answers to your questions.

| Contact #1                  | Contact #2                    |
| --------------------------- | ----------------------------- |
| Wenli Xu                    | Sam Otukol                    |
| Phone: 250 387-5598         | Phone: 250 387-2659           |
| E-Mail: wenli.xu\@gov.bc.ca | E-Mail: sam.otukol\@gov.bc.ca |


Volume 1 - VDYP7 Overview Revised February 2019 5

---



Getting Started

# 4. **Getting Started**

This section describes how to install all three interfaces (WinVDYP7, VDYP7Attribute Adjustment and VDYP7Console) and configure the VDYP7 applications on your machine.

The installation process is largely automatic. By simply accepting all defaults, you will end up with a properly configured program.

## 4.1 **System Requirements**

Before installing a VDYP7 application, please ensure your computer meets the following minimum requirements:

- 128 MB of random access memory (RAM).
- Windows 2000 or greater.
- Minimum 25 MB of free disk space on your hard drive.

If any of these conditions do not hold, you still may be able to install and run VDYP7 applications but performance may be affected.

## 4.2 Downloading VDYP7 Applications from the Web Site (CURRENTLY UNAVAILABLE)

To download VDYP7 applications to your pc, complete the following instructions.
1. Go to <u>http://www.for.gov.bc.ca/hre/software/download.htm</u> and click on the link for complete instruction on how to download the VDYP7 core programs and interfaces.
2. At the VDYP for Windows page, click on the link to download the application. A standard Windows File Download dialog box will be displayed.
3. Click the Save button.
4. At the Save As... screen, point to the directory in which you want to save the application and click the Save button. The application will save to your hard drive.

## 4.3 **Installing VDYP7 Applications**

To install WinVDYP7 on your pc, complete the following instructions.

1. Right click the **Start** button and select **Explore** to open Windows Explorer.
2. Navigate to the directory in which you stored the download file and the WinZip Self-Extractor dialog box will open.
3. Note the directory location the files will extract to and click the **Unzip** button.

6 Revised February 2019 Volume 1 - VDYP7 Overview

---



# Getting Started

4. After the files have unzipped, navigate to the extract directory location and double-click the `VDYP7Setup.exe` file to run the setup.

5. The **VDYP7** Setup Wizard will open and the screen shown below will be displayed. Follow the

Setup - VDYP 7

prompts to install the application.

Figure 2-1: The VDYP7 Setup Wizard

6. To run the WinVDYP7 application, click on the <u>WinVDYP7</u> icon or go to your install directory and click on `WinVDYP7.exe`

----

Volume 1 - VDYP7 Overview Revised February 2019 7

---

Getting Started

# 4.4 Configuration Files

There are a number of configuration files that are stored automatically during the installation process in specific locations on your pc:

| File          | Expected Directory                |
| ------------- | --------------------------------- |
| VDYP.INI      | Installation Folder               |
| TABLEDEF.INI  | Installation Folder               |
| FIPSTART.CTR  | Installation Folder\VDYP\_CFG     |
| VDYP.CTR      | Installation Folder\VDYP\_CFG     |
| VDYPBACK.CTR  | Installation Folder\VDYP\_CFG     |
| VRIADJUST.CTR | Installation Folder\VDYP\_CFG     |
| VRISTART.CTR  | Installation Folder\VDYP\_CFG     |
| \*.PRM        | Installation Folder\VDYP\_CFG\coe |
| \*.DAT        | Installation Folder\VDYP\_CFG\coe |
| \*.COE        | Installation Folder\VDYP\_CFG\coe |


VDYP.INI provides startup settings and user preferences for the WinVDYP application including control settings, parameter ranges, species names, default utilization levels, BEC Zones and output formats. Refer to section of this guide 7.1 for more details about the contents of this file.

The *.CTR files are the control files that identify setup information for the various models making up the WinVDYP7 application.

The *.PRM and *.DAT files contain control information, configuration settings, model coefficients, constraints and a host of other values that drive the models making up the VDYP7 application.

👉 You should never manually edit any of these files. The VDYP7 interfaces may fail to run if you do.

# 4.5 Other Support Files

There are a number of other files that get installed automatically. These support files are required in order to start the VDYP7 interfaces and typically are installed into your Windows System directory or installation directory.

👉 Note that these files only replace existing files if they are newer than the files already on your system.

8 Revised February 2019 Volume 1 - VDYP7 Overview

---



Getting Started

| File                         | Directory Installed      |
| ---------------------------- | ------------------------ |
| MSHFLXGD.OCX                 | Windows System Directory |
| THREED.OCX                   | Windows System Directory |
| COMDLG32.DLL                 | Windows System Directory |
| COMDLG32.OCX                 | Windows System Directory |
| MSCOMCTL.OCX                 | Windows System Directory |
| MSCOMCT2.OCX                 | Windows System Directory |
| MSVCRT.DLL                   | Windows System Directory |
| SHLWAPI.DLL                  | Windows System Directory |
| MFC40.DLL                    | Windows System Directory |
| MSVCIRT.DLL                  | Windows System Directory |
| MSVCRT40.DLL                 | Windows System Directory |
| SPIN32.OCX                   | Windows System Directory |
| MSDART32.DLL                 | Windows System Directory |
| STDOLE2.TLB or STDOLE32.TLB? | Windows System Directory |
| MSVBVM60.DLL                 | Windows System Directory |
| OLEAUT32.DLL                 | Windows System Directory |
| OLEPRO32.DLL                 | Windows System Directory |
| ASYCFILT.DLL                 | Windows System Directory |
| COMCAT.DLL                   | Windows System Directory |
| SINDEX33.DLL                 | Installation Directory   |
| V7\_ADJUST.DLL               | Installation Directory   |
| V7\_BACK.DLL                 | Installation Directory   |
| V7\_FIP.DLL                  | Installation Directory   |
| V7\_IO.DLL                   | Installation Directory   |
| V7\_VDYP.DLL                 | Installation Directory   |
| V7\_VRI.DLL                  | Installation Directory   |
| VDYP7CORE.DLL                | Installation Directory   |
| VDYP7INTERFACE.DLL           | Installation Directory   |
| VDYP7IO.DLL                  | Installation Directory   |
| VDYPSI32.DLL                 | Installation Directory   |
| VDYPCORE32.DLL               | Installation Directory   |


Volume 1 - VDYP7 Overview Revised February 2019 9

---



VDYP 7 Model and Process Overview

# 5. **VDYP7 Model and Process Overview**

This section describes each of the VDYP7 core programs that are selectively executed, depending on user inputs, by WinVDYP7, VDYP7Attribute Adjustment and the VDYP7Console to project yields.

## **5.1 FIPSTART (Species % supplied by Volume)**

FIPSTART is typically employed to create the stand description required for projection when attributes from legacy FIP standard inventories are supplied. This stand description contains the basal areas, trees per hectare, Lorey heights and volumes at several diameter limits, as required for projection by VDYP7 growth model. If the stand is too short for FIPSTART to create a stand description (less than about 6-8 meters), then VRIYOUNG mode is invoked in VRISTART (see below).

## **5.2 VRISTART (Species % supplied by Basal Area)**

VRISTART is typically employed to create a stand description when attributes from VRI standard inventories are supplied. In stands where most of the basal area is found in trees with DBH > 7.5 cm, VRISTART will run normally (Mode=1), otherwise Mode=2 (VRIYOUNG) will be used. VRIYOUNG causes the age to be advanced until the stand height is sufficient to predict a significant proportion of BA greater than 7.5 cm in DBH so that a stand description can be produced. This occurs at a height of about 6-8 meters.

## **5.3 FIPSTART and VRISTart**

FIPSTART and VRISTART produce the same output – the complete set of attributes required by VDYP7. They differ in the input parameters they take. The input data to FIPSTART/VRISTART must be sufficient (e.g. species composition, age and height) or an error message will be written to the log file and the polygon not processed further. Values for other attributes are also ‘completed’ at this time, if null values have been supplied, e.g.:

- **Stockability**: this is an estimate of percent of a polygon’s total area will eventually become stocked.
- **Yield Factor**: this factor impacts the predicted BA075 within the stand description. It is normally set to 1.0; except for cases where inventory standard is ‘F’ and NonProductiveDescriptor is not null (e.g. ‘AF’ for alpine forest).

Site information required for the projection (e.g. site index, breast height age and site curve number) is also determined at this time via calls to SINDEX.

Projection layer assignments are determined at the time of creating the input records to FIPSTART/VRISTART. A primary projection layer is always required by the VDYP7 core programs and is determined as the rank ‘1’ layer on the photo inventory. An uppermost photo layer

----

10 Revised February 2019 Volume 1 - VDYP7 Overview

---



VDYP 7 Model and Process Overview

may additionally be identified as a veteran projection layer, if it is judged to have veteran-like characteristics and has not already been assigned a primary layer designation. If no photo layer has a Rank = '1' assignment for a polygon, then alternate logic is used to judge its identity, and a primary layer assigned accordingly. Conversely, if multiple Rank='1' layers exist for a polygon it will not be processed.

Once assigned, these two projection layers (i.e. primary, veteran) are processed separately by all the VDYP7 core programs. Projected yields are reported back to the yield tables according to the original photo layers. Photo layers that do not qualify as projection layers will not appear in the output data.

This implementation of projecting layers is referred to as ‘layering-lite’. In the future, the option will exist to summarize *all* photo layers into either of the two projection layers recognized by the VDYP7 core programs. Implementing this option will be difficult. Attributes will need to be combined across photo layers when creating the FIPSTART/VRISTART input files, and the projected values, as generated by the VDYP7 core programs, need to be de-aggregated back to the original photo layers.

## 5.4 VRIADJUST (Optional)

If Phase II (ground sample) data are available and have been processed to provide adjustment factors, VRIADJUST may be called to adjust the stand description generated by FIPSTART or VRISTART. Note the VRIADJUST factors are linked to a specific reference year. The inventory must first be grown to the reference year and then adjusted. The program directly applies the supplied adjusted values to the stand description, and also modifies the other stand description values to ensure yield relationships are always logical.

## 5.5 VDYP7 GROWTH MODEL

VDYP7 reads the detailed stand description and grows it in one year increments. Height growth employs the height-to-age functions, as contained within the SINDEX software supported by the MoF Research Branch. Basal area and diameter growth is based on functions, fit to permanent sample plot (PSP) data. Whole stem volumes are added using static yield models. Finally, these volumes are reduced using different reduction models to account for close utilization, decay, waste and breakage.

## 5.6 VDYPBACK (Optional)

If the yield of interest occurs prior to the reference age then VDYPBACK is called to estimate the stand description at this prior age if possible (stand height must exceed about 6 to 8 meters), and to interpolate at intermediate ages. It should be noted that the interpolated growth rates predicted by VDYPBACK may be substantially different from the growth rates estimated by VDYP7.

Combining the predictions from VDYPBACK and the VDYP7 allows a yield curve to be created that provides for past and future growth for an existing stand. However, this process should be used with caution. It may not be reasonable, for instance, to apply VDYPBACK to very old stands and expect reliable yield estimates for thrifty stands many decades younger. Yields predicted for young stands in this manner are likely to be substantially underestimated due to the decline in site index found in old growth stands. This trend is not reversed when VDYPBACK is applied to old growth

Volume 1 - VDYP7 Overview Revised February 2019 11

---

# VDYP 7 Model and Process Overview

stands (e.g. stands older than 140 years). Therefore it is not recommended that backward extrapolations for old growth stands be used below age 141 years.

The flow of data through these programs is one of the following:

**Option 1. Adjustment parameters are available and the inventory is to be adjusted.**

1. Complete the required input fields to VDYP7 using either FIPSTART or VRISTart. For polygons less than 6-8m tall, VRIYOUNG is invoked in VRISTART.
2. Grow the inventory using VDYP7 to the reference year of the adjustment parameters.
3. Apply the adjustment parameters to the inventory that has been updated to the reference year.
4. Grow the adjusted inventory to the desired projection year using VDYP7 (or VDYPBack if the projection year is earlier than the reference year).

**Option 2. The inventory is not to be adjusted.**

1. Complete the required input fields to VDYP7 using either FIPSTART or VRISTart. For polygons less than 6-8m tall, VRIYOUNG is invoked in VRISTART.
2. Grow the inventory to the desired projection year using VDYP7 (or VDYPBack if the projection year is earlier than the inventory year).

12 Revised February 2019 Volume 1 - VDYP7 Overview

---



Species Mapping and Default Crown Closure

# 6. **Species Mapping and Default Crown Closure**

This section provides species mappings related to VDYP7 core program and SINDEX software processing and default crown closures. Only those species possibilities allowed by WinVDYP7 are presented here; in total some 140 species mappings exist within VDYP7, in accordance with the BC Tree Species code list.

## **Column Definitions**

- **Spcs Code** – The WinVDYP7 species code
- **SP0 Species** – The internal species mapping when run in the underlying VDYP7 model. Multiple WinVDYP7 species may map to a single SP0 code.
- **Coast SINDEX** – The species mapping to the SINDEX (SiteTool) library if the stand is determined to lie in a coastal region (determined from BEC zone)
- **Int SINDEX** – The species mapping to the SINDEX (SiteTool) library if the stand is determined to line in an interior region (determined from BEC Zone)
- **Coast Curve** – The default SiteTool Site Index Curve used for the species when the stand is determined to lie in a coastal region (determined from BEC zone).
- **Int Curve** – The default SiteTool Site Index Curve used for the species when the stand is determined to lie in an interior region (determined from BEC zone).
- **Coast CC** – The default Crown Closure to use when CC is not supplied and the stand is determined to lie in a coastal region.
- **Int CC** – The default Crown Closure to use when CC is not supplied and the stand is determined to line in an interior region.

| Spcs Code | SP0 Spcs | Coast SINDEX | Int SINDEX | Coast Curve | Int Curve | Coast CC | Int CC | Full Name                   |
| --------- | -------- | ------------ | ---------- | ----------- | --------- | -------- | ------ | --------------------------- |
| AC        | AC       | Acb          | Acb        | 97          | 97        | 61.0     | 61.0   | Poplar                      |
| AT        | AT       | At           | At         | 92          | 92        | 52.0     | 52.0   | Trembling Aspen             |
| B         | B        | Ba           | Bl         | 102         | 93        | 57.0     | 42.0   | True Fir                    |
| BA        | B        | Ba           | Ba         | 102         | 102       | 57.0     | 57.0   | Amabilis/Pacific Silver Fir |
| BG        | B        | Ba           | Ba         | 102         | 102       | 57.0     | 42.0   | Grand Fir                   |
| BL        | B        | Bl           | Bl         | 93          | 93        | 42.0     | 42.0   | Alpine Fir                  |
| CW        | C        | Cwc          | Cwi        | 101         | 77        | 60.0     | 51.0   | Western Red Cedar           |
| DR        | D        | Dr           | Dr         | 13          | 13        | 72.0     | 72.0   | Red Alder                   |
| E         | E        | At           | At         | 92          | 92        | 61.0     | 61.0   | Birch                       |
| EA        | E        | At           | At         | 92          | 92        | 61.0     | 61.0   | Common Paper Birch          |
| EP        | E        | At           | At         | 92          | 92        | 61.0     | 61.0   | Silver Paper Birch          |
| FD        | F        | Fdc          | Fdi        | 100         | 96        | 61.0     | 48.0   | Douglas Fir                 |
| H         | H        | Hwc          | Hwi        | 99          | 37        | 61.0     | 51.0   | Hemlock                     |


Volume 1 - VDYP7 Overview Revised February 2019 13

---



# Species Mapping and Default Crown Closure

| \*\*Spcs Code\*\* | \*\*SP0 Spcs\*\* | \*\*Coast SINDEX\*\* | \*\*Int SINDEX\*\* | Coast Curve | Int Curve | Coast CC | Int CC | Full Name          |
| ----------------- | ---------------- | -------------------- | ------------------ | ----------- | --------- | -------- | ------ | ------------------ |
| HM                | H                | Hm                   | Hm                 | 95          | 95        | 61.0     | 51.0   | Mountain Hemlock   |
| HW                | H                | Hwc                  | Hwi                | 99          | 37        | 61.0     | 51.0   | Western Hemlock    |
| L                 | L                | Lw                   | Lw                 | 90          | 90        | 54.0     | 54.0   | Larch              |
| LA                | L                | Lw                   | Lw                 | 90          | 90        | 54.0     | 54.0   | Alpine Larch       |
| LT                | L                | Lw                   | Lw                 | 90          | 90        | 54.0     | 54.0   | Tamarack           |
| LW                | L                | Lw                   | Lw                 | 90          | 90        | 54.0     | 54.0   | Western Larch      |
| MB                | MB               | Dr                   | Dr                 | 13          | 13        | 71.0     | 71.0   | Broadleaf Maple    |
| PA                | PA               | Pli                  | Pli                | 45          | 45        | 50.0     | 50.0   | Whitebark Pine     |
| PF                | PA               | Pli                  | Pli                | 45          | 45        | 50.0     | 50.0   | Limber Pine        |
| PJ                | PL               | Pli                  | Pli                | 45          | 45        | 50.0     | 50.0   | Jack Pine          |
| PL                | PL               | Pli                  | Pli                | 45          | 45        | 50.0     | 50.0   | Lodgepole Pine     |
| PW                | PW               | Pw                   | Pw                 | 98          | 98        | 55.0     | 55.0   | Western White Pine |
| PY                | PY               | Py                   | Py                 | 107         | 107       | 30.0     | 30.0   | Yellow Pine        |
| S                 | S                | Ss                   | Sw                 | 112         | 112       | 50.0     | 46.0   | Spruce             |
| SB                | S                | Sb                   | Sb                 | 91          | 91        | 46.0     | 46.0   | Black Spruce       |
| SE                | S                | Se                   | Se                 | 105         | 105       | 50.0     | 46.0   | Engelmann Spruce   |
| SS                | S                | Ss                   | Ss                 | 59          | 59        | 50.0     | 50.0   | Sitka Spruce       |
| SW                | S                | Sw                   | Sw                 | 112         | 112       | 46.0     | 46.0   | White Spruce       |
| YC                | Y                | Cwc                  | Cwi                | 101         | 77        | 60.0     | 51.0   | Yellow Cedar       |


14 Revised February 2019 Volume 1 - VDYP7 Overview

---



File Descriptions

# 7. File Descriptions

This section describes the contents of the VDYP.ini and TABLEDEF.ini files that most pertain to WinVDYP7 processing. Descriptions of the intermediate files that can optionally be created are also provided.

## 7.1 VDYP.INI File

This section describes all of the entries found in the VDYP.INI file. The file is broken down by section. You may find it handy to have an editor open such as Notepad with this file displayed in order to follow along.

> It is important that these tables not be modified – certain modifications may cause WinVDYP7 not to run or produce unexpected results.

## 7.1.1 Preferences

Provides a number of user selected preferences that may get changed from time to time.

- **STARTUP_DIALOG=0**
  No longer used. Should be left with a value of 0. A Legacy setting indicating a dialog should or should not be displayed requesting what type of object if any should be opened at startup.

- **GRAPH_TOOLBAR=0**
  No longer used. Legacy code indicating whether or not to display a toolbar for manipulating graphs. It should be left with a value of 0.

- **MaxSiteSpecies=2**
  Indicates the maximum number of species in a stand that could hold site index (growth) information. Should always be 2.

- **DebugMode=False**
  If enabled (True), turns on debugging mode and places diagnostic output into files located in the specified Debug Directory. This mode should be used sparingly as the output is voluminous and has a significant performance penalty. $(InstallDir) refers to the folder holding WinVDYP7.exe.

- DebugDirectory=$(InstallDir)\Debug\
  [VDYPCore Configuration]

## 7.1.2 VDYPCore Configuration

- ConfigurationFilePath=$(InstallDir)\VDYP_CFG
  Indicates the root folder containing all of the CORE configuration files.

----

Volume 1 - VDYP7 Overview Revised February 2019 15

---

# File Descriptions

- LogFileName=$ (InstallDir)\VDYP_CFG\vdyp7.log
  Specifies the file to place output normally destined for the screen using the VDYP7 stand alone executables.

- SaveIntermediateData=False
  If True, accumulates all VDYP7CORE initial, intermediate and final results into the folder specified by the ConfigurationFilePath entry. The data accumulates while WinVDYP7, VDYP7Attribute Adjustment or the VDYP7Console is still running. The data in these files is truncated whenever an interface is restarted. There is some performance penalty to using this mode.

## 7.1.3 PLOT

- EXEPathName=C:\WINVDYP
  Not currently used.

## 7.1.4 Format Patterns

- Describes how numeric values and field widths are presented throughout WinVDYP7. A format pattern of `"##0.00"` indicates a numeric field six characters wide with two decimals of precision.

| SpeciesPercent="##0.0" | TPH="######0.00"     | SiteIndex="#0.00"   |
| ---------------------- | -------------------- | ------------------- |
| IntegerAge="###0"      | MAI="#0.00"          | YTBH="#0.00"        |
| FloatAge="###0.0"      | Volume="######0.0"   | CC="###0"           |
| Diameter="###0.0"      | BasalArea="##0.0000" | PctForest="###0"    |
| Height="##0.00"        | UtilLevel="#0.0"     | YieldFactor="#0.00" |


## 7.1.5 Table Property Ranges

- The following groups indicate valid ranges of some numeric values. When using the scroll buttons, it also indicates in what increments the scroll buttons work.

| PctCompositionHigh=100.0  | BALow=0.0                  |
| ------------------------- | -------------------------- |
| PctCompositionLow=0.0     | BAInc=2.5                  |
| PctCompositionInc=5.0     | TreesPerHectareHigh=9999.9 |
| PctForestedLandHigh=100.0 | TreesPerHectareLow=0.0     |
| PctForestedLandLow=0.0    | TreesPerHectareInc=250.0   |
| PctForestedLandInc=5.0    | VolumeHigh=2500.0          |
| StandTotalAgeHigh=500     | VolumeLow=0.0              |
| StandTotalAgeLow=0        | VolumeInc=250.0            |
| StandTotalAgeInc=10       | StartAgeHigh=600           |
| StandHeightHigh=99.9      | StartAgeLow=0              |


16 Revised February 2019 Volume 1 - VDYP7 Overview

---



File Descriptions

| StandHeightLow=0.0 | StartAgeInc=10             |
| ------------------ | -------------------------- |
| StandHeightInc=1.0 | FinishAgeHigh=1000         |
| StandBHHigh=60.0   | FinishAgeLow=1             |
| StandBHLow=0.0     | FinishAgeInc=10            |
| StandBHInc=1.0     | AgeIncrementHigh=350       |
| StandBHAHigh=500   | AgeIncrementLow=1          |
| StandBHALow=0      | AgeIncrementInc=5          |
| StandBHAInc=25     | EnableCulminationLow=10    |
| CCHigh=100.0       | EnableCulminationHigh=300  |
| CCLow=0.0          | MaximumYearsToProject=400  |
| CCInc=5.0          | MaximumYearsToBackGrow=400 |
| BAHigh=250.0       |                            |


**7.1.6 Batch Age Ranges**

- These values show default values for the VDYP7Attribute Adjustment and VDYP7Console interfaces. They are not used in WinVDYP7.
- StartAge=69
- EndAge=279
- AgeIncrement=6

**7.1.7 Operating Defaults**

- DefaultPctForestedLand=0.0
For a given area of land, this parameter describes what percentage of that land is actually forested as opposed to bare rock, road, marsh, meadow, etc.
A value of 0.0 indicates that a default value should be generated based on the characteristics of the stand. This default is computed within the VDYP7CORE modules.

**7.1.8 Species**

These species represent those displayed by WinVDYP7.

| AC=Poplar            | FD=Douglas Fir      | PJ=Jack Pine               |
| -------------------- | ------------------- | -------------------------- |
| AT=Aspen             | H=Hemlock           | PL=Lodgepole Pine          |
| B=True Fir           | HM=Mountain Hemlock | PW=Western White Pine      |
| BA=Amabilis Fir      | HW=Western Hemlock  | PY=Ponderosa (Yellow) Pine |
| BG=Grand Fir         | L=Larch             | S=Spruce                   |
| BL=Alpine Fir        | LA=Alpine Larch     | SB=Black Spruce            |
| CW=Western Red Cedar | LT=Tamarack         | SE=Engelmann Spruce        |


Volume 1 - VDYP7 Overview Revised February 2019 17

---



# File Descriptions

DR=Red Alder LW=Western Larch SS=Sitka Spruce  
E=Birch MB=Bigleaf Maple SW=White Spruce  
EA=Alaska Paper Birch PA=Whitebark Pine YC=Yellow Cedar  
EP=Common Paper Birch PF=Limber Pine  

## 7.1.9 **Batch Species Report Utilization Levels**

These correspond to the SP0 codes only and are employed as the default values unless otherwise specified.

AC=12.5 cm+ F=12.5 cm+ PL=12.5 cm+  
AT=12.5 cm+ H=12.5 cm+ PW=12.5 cm+  
B=12.5 cm+ L=12.5 cm+ PY=12.5 cm+  
C=12.5 cm+ MB=12.5 cm+ S=12.5 cm+  
D=12.5 cm+ PA=12.5cm+ Y=12.5 cm+  
E=12.5 cm+  

## 7.1.10 **BECs**

Defines the known BEC Zones and their names for WinVDYP7.

1=AT -Alpine Tundra 8=IDF -Interior Douglas Fir  
2=BG -Bunch Grass 9=MH -Mountain Hemlock  
3=BWBS-Boreal White and Black Spruce 10=MS -Montana Spruce  
4=CDF -Coastal Douglas Fir 11=PP -Ponderosa Pine  
5=CWH -Coastal Western Hemlock 12=SBPS-Sub-Boreal Pine-Spruce  
6=ESSF-Engelmann Spruce 13=SBS -Sub-Boreal Spruce  
7=ICH -Interior Cedar Hemlock 14=SWB -Spruce-Willow-Birch  

These BEC Zones are classified into Coastal or Interior regions as follows:

| Coastal BEC Zones           | Interior BEC Zones                    |
| --------------------------- | ------------------------------------- |
| CDF Coastal Douglas Fir     | AT Alpine Tundra                      |
| CWH Coastal Western Hemlock | BG Bunch Grass                        |
| MH Mountain Hemlock         | BWBS Boreal White and Black Spruce    |
|                             | ESSF Englemann Spruce – Subalpine Fir |
|                             | ICH Interior Cedar-Hemlock            |
|                             | IDF Interior Douglas Fir              |
|                             | MS Montane Spruce                     |
|                             | PP Ponderosa Pine                     |


18 Revised February 2019 Volume 1 - VDYP7 Overview

---



File Descriptions

| Coastal BEC Zones | Interior BEC Zones         |
| ----------------- | -------------------------- |
|                   | SBPS SubBoreal Pine-Spruce |
|                   | SBS SubBoreal Spruce       |
|                   | SWB Spruce-Willow-Birch    |


Volume 1 - VDYP7 Overview Revised February 2019 19

---

# File Descriptions

## 7.2 **TABLEDEF.INI File**

This section describes all of the entries found in the TABLEDEF.INI file. These values in this file will appear as the defaults whenever a new WinVDYP7 table is opened. The file is broken down by section. You may find it handy to have an editor open such as Notepad with this file displayed in order to follow along.

## 7.2.1 **– Species Composition**

Identifies the Species composition of the stand. These values appear on the first pane of the model properties window.

Tree Species Code 1=FD Tree Species Code 4=
Tree Species Percent 1=85.0 Tree Species Percent 4=0.0
Tree Species Code 2=BG Tree Species Code 5=
Tree Species Percent 2=10.0 Tree Species Percent 5=0.0
Tree Species Code 3=CW Tree Species Code 6=
Tree Species Percent 3=5.0 Tree Species Percent 6=0.0

## 7.2.2 **– Site Index Parameters**

Identifies the Site Index parameters of the stand. These values appear on the second pane of the model properties window.

| BEC Zone=IDF                       | Stand Height 4=0.00                |
| ---------------------------------- | ---------------------------------- |
| Site Index Computed=True           | Stand BHA50 SI 4=0.00              |
| SI Curve Used 1=23                 | Floating SI Parameter 4=Site Index |
| SI Age Type 1=True                 | SI Curve Used 5=-1                 |
| Stand Age 1=100.0                  | SI Age Type 5=True                 |
| Stand Height 1=20.00               | Stand Age 5=0.0                    |
| Stand BHA50 SI 1=13.99             | Stand Height 5=0.00                |
| Floating SI Parameter 1=Site Index | Stand BHA50 SI 5=0.00              |
| SI Curve Used 2=8                  | Floating SI Parameter 5=Site Index |
| SI Age Type 2=True                 | SI Curve Used 6=-1                 |
| Stand Age 2=100.0                  | SI Age Type 6=True                 |
| Stand Height 2=32.80               | Stand Age 6=0.0                    |
| Stand BHA50 SI 2=22.60             | Stand Height 6=0.00                |
| Floating SI Parameter 2=Site Index | Stand BHA50 SI 6=0.00              |
| SI Curve Used 3=77                 | Floating SI Parameter 6=Site Index |


20 Revised February 2019 Volume 1 - VDYP7 Overview

---



File Descriptions

SI Age Type 3=True FIZ=A
Stand Age 3=0.0 Site Species 1=FD
Stand Height 3=0.00 Site Species 2=BG
Stand BHA50 SI 3=0.00 Site Species 3=CW
Floating SI Parameter 3=Site Index Site Species 4=
SI Curve Used 4=-1 Site Species 5=
SI Age Type 4=True Site Species 6=
Stand Age 4=0.0

## 7.2.3 - **Stand Information**

Defines the stand characteristics of the third pane of the Model Properties window.

- Percent Forested Land=0
- Basal Area Mode=True
- Basal Area=10.0000
- Trees Per Hectare=500.00
- Measured Util Level=7.5 cm+
- Crown Closure=0

## 7.2.4 - **Adjustment Parameters**

Displays the stand adjustments properties of the fourth pane in the Model Properties window within WinVDYP7.

- Perform Adjustments=False
- Lorey Ht 075=18.71
- Vol-WS 075=73.0
- BA 125=8.0596
- Vol-WS 125=64.1
- Vol-CU 125=54.7
- Vol-D 125=53.1
- Vol-DW 125=52.7

## 7.2.5 - **Report Parameters**

Identifies the extent of the report and the details appearing in the report.

Report Title=A Sample Report Title Including Stand Composition=False
Start Age=50.0 Reporting Volume Type WS=True
Finish Age=300.0 Reporting Volume Type CU=False
Age Increment=10.0 Reporting Volume Type D=False

Volume 1 - VDYP7 Overview Revised February 2019 21

---



# File Descriptions

Include Culmination Values=False    Reporting Volume Type DW=False  
Including Computed MAls=False       Reporting Volume Type DWB=False  

These correspond to the SP0 codes only.

AC= 7.5 cm+    L= 7.5 cm+  
AT= 7.5 cm+    MB= 7.5 cm+  
B= 7.5 cm+     PA= 7.5 cm+  
C= 7.5 cm+     PL= 7.5 cm+  
D= 7.5 cm+     PW= 7.5 cm+  
E= 7.5 cm+     PY= 7.5 cm+  
F= 7.5 cm+     S= 7.5 cm+  
H= 7.5 cm+     Y= 7.5 cm+  

## 7.3 **Input and Output Files created by "Save Intermediate Results"**

Each of the core programs has input and output files that are saved in the Installation Directory\VDYP_CFG

Each time you run WinVDYP7 with Save Intermediate Results turned on (setting = 'True'):

1. Any previous intermediate files are deleted as the interface is started.
2. These files accumulate the results of each projection while the interface is active.
3. These files exist until the next time any interface is run with Save Intermediate Results is turned on.

22 Revised February 2019 Volume 1 - VDYP7 Overview

---



File Descriptions

## **7.3.1 FIPSTART**

The input files are:
- SAVE_VDYP7_FIPP.dat -- Polygon Level Input
- SAVE_VDYP7_FIPL.dat -- Layer Level Input
- SAVE_VDYP7_FIPS.dat-- Species Level Input

The output files are:
- SAVE_VDYP7_AJSTP.dat -- Polygon Level Output
- SAVE_VDYP7_AJSTS.dat -- Species Level Output
- SAVE_VDYP7_AJSTU.dat -- Util Level Output

## **7.3.2 VRISTART**

The input files are:
- SAVE_VDYP7_VRIP.dat -- Polygon Level Input
- SAVE_VDYP7_VRIL.dat -- Layer Level Input
- SAVE_VDYP7_VRIS.dat -- Species Level Input
- SAVE_VDYP7_VRII.dat -- Site Index Input

The output files are:
- SAVE_VDYP7_AJSTP.dat -- Polygon Level Output
- SAVE_VDYP7_AJSTS.dat -- Species Level Output
- SAVE_VDYP7_AJSTU.dat -- Util Level Output

## **7.3.3 VRIADJUST**

The input files are:
- SAVE_VDYP7_AJSTP.dat - Polygon Level Input
- SAVE_VDYP7_AJSTS.dat - Species Level Input
- SAVE_VDYP7_AJSTU.dat - Util Level Input
- SAVE_VDYP7_AJSTA.dat - Adjustment Level Input

The output files are:
- SAVE_VDYP7_7_INPP.dat, SAVE_VDYP7_BINPP.dat - Polygon Level Output
- SAVE_VDYP7_7INPS.dat, SAVE_VDYP7_BINPS.dat - Species Level Output
- SAVE_VDYP7_7INPU.dat, SAVE_VDYP7_BINPU.dat - Util Level Output

Volume 1 - VDYP7 Overview Revised February 2019 23

---



File Descriptions

**7.3.4 VDYP7**

The input files are:
- SAVE_VDYP7_7INPP.dat - Polygon Level Input
- SAVE_VDYP7_7INPS.dat - Species Level Input
- SAVE_VDYP7_7INPU.dat - Util Level Input

The output files are:
- SAVE_VDYP7_7OUTP.dat - Polygon Level Output
- SAVE_VDYP7_7OUTS.dat - Species Level Output
- SAVE_VDYP7_7OUTU.dat - Util Level Output

**7.3.5 VDYPBACK**

The input files are:
- SAVE_VDYP7_BINPP.dat - Polygon Level Input
- SAVE_VDYP7_BINPS.dat - Species Level Input
- SAVE_VDYP7_BINPU.dat - Util Level Input

The output files are:
- SAVE_VDYP7_BOUTP.dat - Polygon Level Output
- SAVE_VDYP7_BOUTS.dat - Species Level Output
- SAVE_VDYP7_BOUTU.dat - Util Level Output

👉 Typically, these Intermediate Save Files are used to confirm that the interface results of processing a single stand are appropriate. The files tend to get large quickly. Running of many stands in one run (using VDYP7Attribute Adjustment for instance) will produce very large intermediate files

24 Revised February 2019 Volume 1 - VDYP7 Overview

---

# Glossary

## 8. **Glossary**

| Term                                      | Definition                                                                                                                                                                                 |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Basal Area (BA)                           | Total cross sectional area of all living trees measured outside bark at breast height measured in square meters per hectare (m²/ha) above a specified diameter limit.                      |
| Breakage                                  | Soundwood losses due to felling and yarding breakage; not merchantable because the broken pieces are considered too small.                                                                 |
| Breast Height                             | 1.3 meters above the ground on the uphill side of the tree.                                                                                                                                |
| Breast Height Age (BHA)                   | Average age (ring count) of the site trees at breast height.                                                                                                                               |
| Calculation Mode                          | Indicates which calculation routines were used to generate a stand description from the user inputs.                                                                                       |
| Close Utilization Net Decay Volume        | Whole stem volume less the amount lost to utilization and decay. For instance, cedar tends to have larger amounts of decay wood as the tree ages.                                          |
| Close Utilization Net Decay, Waste Volume | Whole stem volumes less the amount lost to utilization, decay, waste wood, and breakage due to falling and yarding.                                                                        |
| Crown Closure                             | The percentage of the ground covered by tree crowns as assessed from aerial photos (i.e. vertical projection)                                                                              |
| Culmination Age                           | The age, in years, at which maximal mean annual increment occurs.                                                                                                                          |
| Culmination MAI                           | Maximum mean annual increment in stand volume measured in cubic meters per hectare per year (m³/ha/yr).                                                                                    |
| Decay                                     | Soundwood losses due to physical and chemical processes caused by wood-rotting fungi.                                                                                                      |
| Diameter                                  | WinVDYP7 estimates quadratic mean stand diameter measured outside the bark at breast height. That is, the diameter of the tree of average basal area.                                      |
| Even-aged                                 | A forest stand in which a relatively small age difference (10 to 20 years) exist between individual trees, in contrast to uneven-aged stands.                                              |
| Gross Volume                              | Total standing stem volume (inside bark) of trees above the diameter limit, including stumps and tops measured in m³/ha. e.g. Gross volume 7.5cm+ is the volume (ib) if trees >= 7.5cm DBH |
| Inside Bark (ib)                          | With reference to measurements recorded inside the bark.                                                                                                                                   |
| Lorey Height                              | Height in meters of the tree of average basal area. Typically above a given diameter limit, for all species combined or for an individual species.                                         |
| Mean Annual Increment (MAI)               | The average annual increase in stand volume at a particular age. This value is measured in m³/ha/yr.                                                                                       |


Volume 1 - VDYP7 Overview Revised February 2019 25

---



Glossary

<table>
  <tr>
    <th>Term</th>
    <th>Definition</th>
  </tr>
<tr>
    <td>Natural</td>
<td>Refers to a stand that regenerates naturally after a disturbance such as logging or a fire.</td>
  </tr>
<tr>
    <td>Outside Bark (ob)</td>
<td>With reference to measurements recorded outside the bark.</td>
  </tr>
<tr>
    <td>Site Height</td>
<td>Average height in meters for site trees of a specified tree species in a stand, typically the species with the greatest basal area. Also the stand height predicted from a site index curve at given age.</td>
  </tr>
<tr>
    <td>Site Index (SI)</td>
<td>A measure of the site productivity defined as "the height of a site tree at 50 years breast height age."</td>
  </tr>
<tr>
    <td>Site Tree</td>
<td>The largest dbh tree of a given species on a 0.01 ha plot, provided the tree is suitable.</td>
  </tr>
<tr>
    <td>Species Code</td>
<td>A one to three letter code describing a particular commercial tree species. There are 27 different species codes and 5 genus code options in WinVDYP7.</td>
  </tr>
<tr>
    <td>Species Group</td>
<td>The level of species aggregation for which the per hectare yields are predicted in VDYP7.</td>
  </tr>
<tr>
    <td>Species Percent</td>
<td>Percentage of the stand that the corresponding species comprises. On input tree species percentage is based either on relative gross volume or BA above a specified diameter limit. Selecting species by volume restricts density input to Crown Closure (old FIP inventory standard). The alternative choice allows BA and TPH to be supplied (VRI inventory standard). In both cases the output species percentage will be by BA.</td>
  </tr>
<tr>
    <td>Stand Description</td>
<td>A set of the stand attributes and associated breakdown of per hectare yields that both provides the starting point for VDYP7 predictions and the model output in one year age steps.</td>
  </tr>
<tr>
    <td>Stockability</td>
<td>The percentage of area that will eventually be stocked by trees. For example a Stockability of 80% indicates that 20% of the area will not support tree growth.</td>
  </tr>
<tr>
    <td>Total Age</td>
<td>Years since germination. Usually used with reference to stands of natural origin.</td>
  </tr>
<tr>
    <td>Trees Per Hectare(TPH)</td>
<td>Total number of living trees per hectare above a specified diameter limit.</td>
  </tr>
<tr>
    <td>Waste<sub>2</sub></td>
<td>Soundwood portion of a tree or log which has more than 50% decay. Considered to be non-recoverable under current utilization standards.</td>
  </tr>
<tr>
    <td>Whole Stem Volume</td>
<td>The entire tree stem wood volume.</td>
  </tr>
</table>

26 Revised February 2019 Volume 1 - VDYP7 Overview

---



Appendix A – Reference to Common Messages

# **Appendix A – Reference to Common Messages**

## **VDYP7 Core Messages**

See Appendix A of Volume 2 – WinVDYP7 User Guide.

## **VDYP7 Extended Core Messages**

See Appendix A of Volume 2 – WinVDYP7 User Guide.

## **Interface Core Messages**

See:

- Appendix A of Volume 2 – WinVDYP7 User Guide
- Appendix D of Volume 3 – VDYP7Console Interface Guide
- Appendix G of Volume 4 – VDYP7Attribute Adjustment Interface Guide

----

Volume 1 - VDYP7 Overview Revised February 2019 27

---



Appendix B – Revision History

# **Appendix B – Revision History**

| Version | Date               | Description                                 |
| ------- | ------------------ | ------------------------------------------- |
| 0.1     | November 16, 2005  | Created document                            |
| 0.2     | January 6, 2006    | Reviewed and updated document.              |
| 2.1     | February, 26, 2019 | Added Third Party Library copyright notice. |


28 Revised February 2019 Volume 1 - VDYP7 Overview

---



Appendix A – Reference to Common Messages

# **Appendix C – Frequently Asked Questions**

This section collects the most common questions and answers arising from the use of VDYP in general and WinVDYP7 in particular.

**Q: How do the VDYP7 interfaces project yields?**

A: VDYP7 interfaces grow a stand description using the site index (height growth) function, basal area and diameter growth models. Embedded yield models are then used to compute future quadratic mean diameter, TPH and volumes. An associated stand level decay model is applied to obtain net merchantable volumes.

**Q: What can the VDYP7 interfaces do?**

A: Depending on user inputs, WinVDYP7 can predict average yields representative of large areas (i.e., BECs) or stand specific estimates. A number of the estimated stand attributes can be adjusted to modify model predictions. It is intended for use in unmanaged stands of pure or mixed species composition.

**Q: What are VDYP7 interfaces limitations?**

A: Although WinVDYP7 is a growth model, it currently does not model changes in species composition or succession. Also, as it is an unmanaged stand model, it is not designed for modeling responses to stand treatments.

**Q: Why do we need the VDYP7 interfaces?**

A: WinVDYP7 contains several significant improvements over previous versions of VDYP. While VDYP7 can be used with the older FIP style inventory attributes, it is designed to take advantage of the new VRI attributes. Most important of these is basal area that replaces crown closure as a measure of density. The new version also offers much greater potential for adjustment.

**Q: How do VDYP7 volume predictions compare to VDYP 6?**

A: Generally speaking, for stands of average density, at a given height the initial volume estimate for both models should be quite similar. However, due to the insensitivity of Crown Closure to changes in density, VDYP 6 predictions will tend to remain close to the average value. VDYP7 predictions, which use basal area as an input, should more closely approximate actual volumes across the density range. Projected volume trends will also differ between the two models. With VDYP7, the volume trend is affected by change in Lorey height and BA over time. With VDYP 6, Crown Closure is held static over the projection and volume increase depends strongly on height growth. Thus VDYP7 volume projections are more likely to fall in the long term since the lorey height of the stand tends to flatten and the BA may also decline in the long term.

**Q: How do VDYP7 interfaces predictions change by Biogeoclimatic Zone (BEC)?**

----

Volume 1 - VDYP7 Overview Revised February 2019 29

---



# Appendix C – Frequently Asked Questions

A: The BA increment model in VDYP7 was calibrated for coast versus interior BEC zone groups due to the restrictions of the available PSP measurement data. Much less aggregation was required when the yield functions were fitted and as a result predictions will vary between BEC zones.

**Q: What effect does stocking class have on the VDYP7 predictions?**

A: WinVDYP7 does not use stocking class and it is no longer carried in VRI standard inventories.

**Q: Can I localize VDYP7 predictions for my conditions?**

A: Yes. Provision has been made to adjust a number of the model predictions in the "Additional stand attributes" window.

**Q: Will VDYP7 project from my ground measured volume?**
30 Revised February 2019 Volume 1 - VDYP7 Overview

A: Yes. If a ground measured volume is entered in the "Additional stand attributes" window the model will start the projection with the supplied volume.



---



Appendix D – Third Party Libraries

# **Appendix D – Third Party Libraries**

The source code is by and large developed by resources within and contracted by the Ministry of Forests, Lands, Natural Resource Operations and Rural Development; the Ministry owns the copyright to all source code.

While the bulk of the software is owned by the Ministry, select portions of the software does make use of third-party source code. Where that happens, this section will detail that and display any copyright notice demanded of its use from its licensing terms:

**MINPACK:** <http://www.netlib.org/minpack/>

Minpack Copyright Notice (1999) University of Chicago. All rights reserved

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. The end-user documentation included with the redistribution, if any, must include the following acknowledgment:

   "This product includes software developed by the University of Chicago, as Operator of Argonne National Laboratory.

Alternately, this acknowledgment may appear in the software itself, if and wherever such third-party acknowledgments normally appear.

4. **WARRANTY DISCLAIMER.** THE SOFTWARE IS SUPPLIED "AS IS" WITHOUT WARRANTY OF ANY KIND. THE COPYRIGHT HOLDER, THE UNITED STATES, THE UNITED STATES DEPARTMENT OF ENERGY, AND THEIR EMPLOYEES: (1) DISCLAIM ANY WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE OR NON-INFRINGEMENT, (2) DO NOT ASSUME ANY LEGAL LIABILITY OR RESPONSIBILITY FOR THE ACCURACY, COMPLETENESS, OR USEFULNESS OF THE SOFTWARE, (3) DO NOT REPRESENT THAT USE OF THE SOFTWARE WOULD NOT INFRINGE PRIVATELY OWNED RIGHTS, (4) DO NOT WARRANT THAT THE SOFTWARE WILL FUNCTION UNINTERRUPTED, THAT IT IS ERROR-FREE OR THAT ANY ERRORS WILL BE CORRECTED.

Volume 1 - VDYP7 Overview Revised February 2019 31

---



# Appendix D – Third Party Libraries

5. **LIMITATION OF LIABILITY.** IN NO EVENT WILL THE COPYRIGHT HOLDER, THE UNITED STATES, THE UNITED STATES DEPARTMENT OF ENERGY, OR THEIR EMPLOYEES: BE LIABLE FOR ANY INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL OR PUNITIVE DAMAGES OF ANY KIND OR NATURE, INCLUDING BUT NOT LIMITED TO LOSS OF PROFITS OR LOSS OF DATA, FOR ANY REASON WHATSOEVER, WHETHER SUCH LIABILITY IS ASSERTED ON THE BASIS OF CONTRACT, TORT (INCLUDING NEGLIGENCE OR STRICT LIABILITY), OR OTHERWISE, EVEN IF ANY OF SAID PARTIES HAS BEEN WARNED OF THE POSSIBILITY OF SUCH LOSS OR DAMAGES.

32 Revised February 2019 Volume 1 - VDYP7 Overview


---



Index

# Index

Additional Stand Attributes .......................... 13
Adjustment Parameters .............................. 23
Application Support ................................. 6
Basal Area .............................. *12, 13, 23, 27, 28, 31*
Batch Age Ranges ................................. 19
BEC Zone ...................................... 9, 15, 20, 22
Biogeoclimatic Zone ........................... *See BEC*
Breakage ...................................... 27
Breast ......................................... 27, 28
Breast Height .................................. 27
Calculation Mode ................................. 27
Close Utilization Net Decay ..................... 27
Close Utilization Net Decay Volume ............. 27
**Coast CC** ................................... 15
**Coast Curve** .................................. 15
**Coast SINDEX** .................................. 15
Configuration Files ............................... 9, 17
Control Settings ................................ 9
Core Configuration ............................... 17
Crown Closure .............................. *4, 15, 23, 27, 28, 31*
Culmination Age ................................. 27
Decay ........................................... 27
Default Utilization Level ......................... 9
Detailed Stand Description ..................... 4, 13
diameter ....................................... 2
Diameter ........................................ 27
Earliest Age Possible ........................... 13
Error Messages .................................. 6, 12
Estimated Stand Attributes ....................... 31
Even-aged ..................................... 27
**FIPSTART** .................................... 9, 12, 13, 25
FIPSTART/VRISTART .............................. 13
Format Patterns .................................. 18
Frequently Asked Questions ...................... 6
Getting Started ................................ 7
Gross Volume ................................... 27
Ground Measured Volume ......................... 32
growth ......................................... 2
Growth Model .................................. 4, 31
Growth Predictions .............................. 13
height .......................................... 2
Inferred Growth Rates ........................... 13
Inside Bark ..................................... 27
Installation .................................... 7
**Int CC** ........................................ 15
**Int Curve** ..................................... 15
**Int SINDEX** .................................... 15
Layering-lite ..................................... 13
Lorey Height ................................... 27
MAI ............................................... 18, 27, 28
manual ........................................... 2
mean annual increment ........................... *See MAI*
Natural ......................................... 28
Old Growth Stands ............................... 14
Operating Defaults ............................... 19
Output Format .................................. 9
Outside Bark .................................... 28
Parameter Ranges ................................. 9
Permanent Growth Sample ....................... 4
Primary Projection Layer ........................ 13
Projection Layer Assignments ................... 13
Properties ..................................... 23
Report Parameters ............................... 24
**Revision History** ............................. 30
sample data ..................................... 2
Sample Report .................................. 24
Save Intermediate Results ....................... 24
Setup ............................................ 8
Setup Information ............................... 9
SINDEX .......................................... 12
Site Height ..................................... 28
Site Index ...................................... *15, 22, 23, 25, 28*
    Decline in .................................. 14
Site Species ................................... 23
Site Tree ....................................... 28
**SP0 Species** ................................ 15
**Spcs Code** .................................. 15
Species ......................................... 19
Species % ...................................... 12
Species Code .................................. 28
*Species Composition* .......................... 22, 31
Species Group .................................. 28
Species Percent ................................ 28
Split Utilization Limits .......................... 5
stand ........................................... 2
**Stand Composition** .......................... 24
Stand Description .............................. 28
Stand Height .................................. 12, 13, 28
Stand Information .............................. 23
Stand Level Decay Model ....................... 13, 31
Startup Settings ................................ 9
Stockability ................................... 12, 28
Stocking Class ................................ 32
Support Files .................................. 9

Volume 1 - VDYP7 Overview Revised February 2019 33

---



# Index

Support Staff.................................................... 6  
System Requirements ........................................... 7  
Table Property Ranges ......................................... 18  
TABLEDEF.INI .................................................... 9, 22  
Temporary Inventory Sample ................................. 4  
Text Files ....................................................... 3  
Total Age ....................................................... 28  
*TPH* ............................................................ 4, 12, 18, 28, 31  
Utilization Class Statistics .................................. 12  
utilization levels ........................................... 2  
Utilization Levels ........................................... 4  
VDYP Model .................................................. 1, 4  
VDYP.INI ...................................................... 9, 17  
VDYP7 GROWTH MODEL ...................................... 13  

VDYPBACK .................................................... 9, 13, 14, 26  
Veteran Projection Layer ................................... 13  
volume ......................................................... 2  
Volume Preditions  
  Compared with VDYP6 ................................... 31  
VRIADJUST .................................................. 9, 13, 25  
VRISTART ..................................................... 9, 12  
Waste ....................................................... 28  
Waste Volume .............................................. 27  
Whole Stem Volume ......................................... 28  
**yield** ..................................................... 2  
Yield Factor .................................................. 12  
Yield Model ................................................. 4  
Yield Projections .......................................... 31  

34 Revised February 2019 Volume 1 - VDYP7 Overview
