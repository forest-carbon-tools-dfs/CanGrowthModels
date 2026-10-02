

# TIPSY 4.6

# What's New March 2024

Logo

BC Ministry of Forests
Forest Analysis and Inventory Branch
March 18, 2024

Logo

Prepared by:

Enfor Consultants Ltd.
March 18, 2024 Page 1 of 6

#118-3721 Delbrook Ave.
North Vancouver, BC, Canada
V7N 3Z4
<u>www.enfor.com</u>

Enfor Consultants Ltd.

---



TIPSY 4.6 What's New March 2024

# What's New History

| Date           | What's New | Description                   | Author                                         |
| -------------- | ---------- | ----------------------------- | ---------------------------------------------- |
| March 18, 2024 | 1.0        | Fiscal Year 2023/2024 Updates | M. Greig, Richard Kyle, Enfor Consultants Ltd. |
|                |            |                               |                                                |
|                |            |                               |                                                |
|                |            |                               |                                                |
|                |            |                               |                                                |


**Document Filename:** TIPSY 4.6 What's New March 18, 2024.doc
March 18, 2024 Page **2** of **6** Enfor Consultants Ltd.

**Source:** I:\Forestry\MOF Research\TIPSY2023-2024\Documentation\TIPSY\TIPSY 4.6 What's New March 18, 2024.doc



---



TIPSY 4.6 What's New March 2024

# **Table of Contents**

**What's New History** .................................................................................... 2

**Table of Contents** ....................................................................................... 3

**What's New in TIPSY 4.6 – March 2024** .................................................................... 4

1. *House Keeping Items* .................................................................................... 4
2. **Windows 11 Testing** .................................................................................. 4
3. *Added a "What's New" menu item* .................................................................. 5
4. **Prepared a "What's New" pdf document.** .................................................... 5
5. *Export Regime File Button* ............................................................................ 5
6. *Updated TIPSY 45 TCL file* ............................................................................ 6
7. *Updated Plotsy button* .................................................................................... 6
8. *Index and Database remain unchanged* .......................................................... 6
9. **Prepared a ChangeLog.txt summarizing changes in the TIPSY install package.** ............................................................................................ 6

**Questions** ...................................................................................................... 6

March 18, 2024 Page **3** of **6** Enfor Consultants Ltd.

---



TIPSY 4.6 What's New March 2024

# **What's New in TIPSY 4.6 – March 2024**

The Table Interpolation Program for Stand Yields (TIPSY) 4.5 was updated to TIPSY 4.6 (March 11, 2024) with the following improvements.

1. House Keeping Items.
2. Windows 11 testing.
3. Added a "What's New" menu item to the help menu (which launches the pdf file).
4. Prepared a "What's New" pdf document.
5. Export Regime button added.
6. Updated TIPSY45 TCL file created in TIPSY to include the BTC linkage column.
7. Update Plotsy button to check for either Plotsy 2 or Plotsy running.
8. Sindex and Database remain unchanged.
9. Prepared a ChangeLog.txt summarizing changes in the TIPSY install package.

## **1. House Keeping Items**

TIPSY 4.6 had the following minor housekeeping updates:

- Updated About screen Ministry of Forests Logo
- Updated Ministry of Forests Name
- Updated Copyright, version number, and version date

About TIPSY Window

## **2. Windows 11 Testing**

TIPSY 4.5 and TIPSY 4.6 was tested on both a fresh installation of Windows 11 by Enfor Consultants Ltd. and the standard Ministry of Forests Windows 11 workstation by Ministry testing staff. No issues were found.
March 18, 2024 Page 4 of 6 Enfor Consultants Ltd.

----



---



TIPSY 4.6 What's New March 2024

# 3. **Added a "What's New" menu item**

TIPSY Version 4.6 - UnNamed1 screenshot showing Help menu with What's New highlighted

A "What's New" menu item has been added to the Help menus of both TIPSY and Batch TIPSY. The buttons will launch the "whatsnew.pdf" file found in the program folder.

Using a pdf file will allow the software developer to more readily keep the users informed of changes to TIPSY.

This is because the original TIPSY Help is compiled into a CHM file (RoboHelp), and as this format ages it is more difficult to update and less compatible with Windows.

The main TIPSY Help will remain in place as it contains all the scientific details about how TIPSY works.

# 4. **Prepared a "What's New" pdf document.**

Updates to TIPSY 4.6 are summarized in the "What's New" pdf document, which is accessible from the new Help menu item.

# 5. **Export Regime File Button**

TIPSY Version 4.6 - UnNamed1 screenshot showing toolbar with Export Regime button highlighted in red

An "Export Regime" button was added to the end of the TIPSY toolbar to allow users to export a regime file more readily. Clicking this button allows users to create a .rgm file of TIPSY results for use in other TIPSY applications.

The regime file is used to send yield and product data to Fansier, Plotsy and BatchTIPSY Composer software. On clicking this button, the user will be prompted for a name and location to store a regime file (.rgm) file created in TIPSY.

Prior to this, users were required to click the Fansier button on the TIPSY menu to create a .rgm file. Clicking the Fansier button creates a .rgm file and sends it to the users temp folder, which can be confusing for new users.

March 18, 2024 Page **5 of 6** Enfor Consultants Ltd.

---



TIPSY 4.6 What's New March 2024

**6.  *Updated TIPSY 45 TCL file***

The .tcl file defines which columns are exported in the .rgm file (see also Export Regime File above). The .tcl file was originally created for use with Plotsy.

Now that BatchTIPSY Composer can also read these .tcl files, optional information can be included. A new “BTC” linkage field has been included to tell BatchTIPSY Composer which columns in the regime file are equivalent to its output columns. This is used to overlay and compare results between multiple programs or versions.

**7.  *Updated Plotsy button***

The Plotsy button in TIPSY has been updated to now check if either Plotsy 2 or Plotsy is already running.

**8.  *SIndex and Database remain unchanged***

The version of SIndex currently in TIPSY is version 1.54. It was released in March 2022. TIPSY 4.6 is based on (and gives the same results as) version 1.52 which was originally released February 2018. It has been used in TIPSY 4.4 since March 2018.

The database in TIPSY is the “Ministry Standard Database, March 2023" was compiled on March 28, 2023, for both TIPSY 4.5 and BatchTIPSY Composer 1.2. A “database.log” file exists in both programs, which contains a summary of what TASS runs were included in the database.

**9.  *Prepared a ChangeLog.txt summarizing changes in the TIPSY install package.***

A changelog.txt file has also been included with the TIPSY 4.6 install summarizing the updates to March 2024.

## **Questions**

For any questions on the TIPSY updates documentation please contact Yanguo Qin, RPF, Forest Analysis and Inventory Branch, BC Ministry of Forests, <u>Yanguo.Qin@gov.bc.ca</u> or Enfor Consultants Ltd.
File: I:\Forestry\MOF Research\TIPSY2023-2024\Documentation\TIPSY\TIPSY 4.6 What's New March 18, 2024.doc

Thank you.

March 18, 2024 Page **6 of 6** Enfor Consultants Ltd.
