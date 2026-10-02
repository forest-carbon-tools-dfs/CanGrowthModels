# **MGMvs 2017 A1 – MGM Growth Engine and SVS Installation Guide**

## **System Requirements:**
Windows 7 or Higher – 32-bit or 64-bit operating systems
Microsoft Excel 2007, 2010, 2013, or 2016 – <u>32-bit versions only</u>

**To successfully install this version of MGM, please follow the steps in these instructions sequentially.**

## **1. Setup the MGM07AddIn and Stand Visualization System (SVS)**

### **1.1. Prepare to Install the MGM07AddIn and the Stand Visualization System (SVS)**

**1.1.1.** Ensure that you have “Administrator Rights” on your computer. “Administrator Rights” are required to install the MGM07AddIn.

**1.1.2.** <u>Uninstall any previous versions of the MGMAddIn (if applicable).</u> Go to: Start | Control Panel | Programs | Programs and Features. Select “MGM07AddIn” from the list. Click “Uninstall” (Figure 1). Agree to remove the MGM07AddIn. Note that the current MGM07AddIn will not run correctly if previous versions exist on your computer.

| Name                                    | Publisher                        | Installed On | Size    | Version    |
| --------------------------------------- | -------------------------------- | ------------ | ------- | ---------- |
| MapSource                               | Garmin Ltd. and its subsidiaries | 10/3/2012    |         | 6.0        |
| MapSource - Trip & Waypoint Manager v2  | Garmin Ltd. and its subsidiaries | 10/3/2012    | 9.66 MB | 2.00       |
| marvell 91xx driver                     | Marvell                          | 6/3/2011     |         | 1.0.0.1045 |
| MGM07AddIn                              | MGM07AddIn                       | 2/26/2018    |         | 1.0.0.14   |
| Microsoft .NET Framework 4.7.1          | Microsoft Corporation            | 2/17/2018    | 38.8 MB | 4.7.02558  |
| Microsoft Forefront Endpoint Protection | Microsoft Corporation            | 1/25/2017    |         | 4.10.209.0 |
| Microsoft IntelliType Pro 8.2           | Microsoft Corporation            | 8/8/2012     |         | 8.20.469.0 |


**Figure 1.** Uninstall any previous versions of MGM.

### **1.1.3.** <u>Uninstall any previous versions of SVS (if applicable).</u> While in: Start | Control Panel | Programs | Programs and Features. Select “Stand Visualization System (SVS)” from the list. Click “Uninstall” (Figure 2). Agree to all remaining SVS dialogs. Close the Control Panel.

| Name                                                     | Publisher             | Installed On | Size    | Version    |
| -------------------------------------------------------- | --------------------- | ------------ | ------- | ---------- |
| SAS 9.4                                                  | SAS                   | 6/21/2014    |         | 9.4        |
| Sentinel Protection Installer 7.6.8                      | SafeNet, Inc.         | 2/16/2016    | 5.83 MB | 7.6.8      |
| Skype Meetings App                                       | Microsoft Corporation | 10/26/2017   | 31.5 MB | 16.2.0.194 |
| Stand Visualization System (SVS)                         |                       | 5/12/2017    |         |            |
| Trimble Data Transfer                                    |                       | 10/30/2012   |         |            |
| Visual Studio 2005 Tools for Office Second Edition Ru... | Microsoft Corporation | 8/8/2012     |         |            |
| Visual Studio Tools for the Office system 3.0 Runtime    | Microsoft Corporation | 8/8/2012     |         |            |


**Figure 2.** Uninstall any previous versions of SVS.

Page 1
5/17/2018

---

# 1.1.4. <u>Change Excel Settings to enable the use of Add-ins.</u> Open Excel. Go to: File | Options | Trust Center | Trust Center Settings... | Add-ins (Figure 3). Uncheck "Require Application Add-ins to be signed by Trusted Publisher" (Figure 3). Click "OK" to exit the Excel Options menu. Close Excel.

## Figure 3

| Window        | Highlighted Item           |
| ------------- | -------------------------- |
| Excel Options | *Trust Center*             |
| Trust Center  | *Add-ins*                  |
| Trust Center  | *Trust Center Settings...* |


**Figure 3.** Change Excel Settings to enable the use of Add-ins. Uncheck "Require Application Add-ins to be signed by Trusted Publisher".

# 1.2. Install the **MGM07AddIn**

## 1.2.1. Create a new working directory on your computer's hard drive (e.g. "C:\MGMvs 2017" or "C:\Users\YourProfileName\Desktop\MGMvs 2017"). Then, on your web browser, go to: <u>https://mgm.ualberta.ca/software-download/</u>. Click "MGMvs 2017-Package.zip", and allow the file to download. Then, cut and paste "MGMvs 2017-Package.zip" from your web browser's download folder into your new working directory.

## 1.2.2. <u>You now need to modify the security settings of "MGMvs 2017-Package.zip".</u> To do this, go to your working directory from Step 1.2.1. Right-click "MGMvs 2017-Package.zip", and select "Properties". In the new dialog, go to the "General" tab, and click "Unblock" in the lower right-hand corner (Figure 4). Then, click "OK".

## Figure 4

| Tab           |                                         |
| ------------- | --------------------------------------- |
| *General*     |                                         |
| Button        |                                         |
| *Unblock*     |                                         |
| Property      | Value                                   |
| Type of file: | Compressed (zipped) Folder (.zip)       |
| Opens with:   | Windows Explorer                        |
| Location:     | C:\MGMvs 2017                           |
| Size:         | 2.10 MB (2,211,114 bytes)               |
| Size on disk: | 2.10 MB (2,211,840 bytes)               |
| Created:      | Today, February 27, 2018, 7 minutes ago |
| Modified:     | Today, February 27, 2018, 7 minutes ago |
| Accessed:     | Today, February 27, 2018, 7 minutes ago |


**Figure 4.** Modify the security settings of "MGMvs 2017-Package.zip".

Page 2
5/17/2018

---



1.2.3. **Now decompress / extract "MGMvs 2017-Package.zip".** To do this, right-click "MGMvs 2017-Package.zip", and select "Extract All". Extract the files into your working directory (e.g. "C:\MGMvs 2017" or "C:\Users\YourProfileName\Desktop\MGMvs 2017"). (These decompression / extraction dialogs reflect the default Windows Compression / Extraction Utility. Dialogs may be different if using WinZip, etc.) <u>Do not open or execute any files from within the compressed "MGMvs 2017-Package.zip" file!</u>

1.2.4. Ensure that your working directory contains the folder "MGM Workbook Files 2017" and the folder "MGMvs 2017 Growth Engine". <u>Both folders are required to install the MGM07AddIn and run MGMvs 2017.</u>
    1.2.4.1. The folder "MGM Workbook Files 2017" contains the MGM workbooks directory.
    1.2.4.2. The folder "MGMvs 2017 Growth Engine" contains the MGM07AddIn "Setup.exe".
1.2.5. Run "Setup.exe" in the "MGMvs 2017 Growth Engine" folder. A "Publisher cannot be verified" dialog will appear (Figure 5). Click "Install". Then, a "Microsoft Office customization was successfully installed" dialog will appear. Click "Close" (Figure 5).

| Dialog                                   | Message                                                                                                                                                                                                                                                                                                                                                                                                      | Buttons                   |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
| Microsoft Office Customization Installer | Publisher cannot be verified<br/>Are you sure you want to install this customization?<br/>**Name:** MGM07AddIn<br/>**From:** file:///C:/MGMvs 2017/MGMvs 2017 Growth Engine/MGM07AddIn.vsto<br/>**Publisher:** Unknown Publisher<br/>While Office customizations can be useful, they can potentially harm your computer. If you do not trust the source, do not install this software. *More Information...* | Install<br/>Don't Install |
| Microsoft Office Customization Installer | **The Microsoft Office customization was successfully installed.**<br/>**Name:** MGM07AddIn<br/>**From:** file:///C:/MGMvs 2017/MGMvs 2017 Growth Engine/MGM07AddIn.vsto                                                                                                                                                                                                                                     | Close                     |


Figure 5. Run "Setup.exe" in the "MGMvs 2017 Growth Engine" folder.

1.2.6. **Complete the MGM07AddIn installation.** Open Excel. Go to: File | Options | Add-Ins (Figure 6). Verify that the "MGM07AddIn" is listed as an "<u>Active Application Add-in</u>". At the bottom of the same dialog is a "Manage" drop-down menu. Select "Excel Add-ins", and click "Go". Then, a new "Add-Ins" dialog will appear. Check the "Analysis ToolPak" and "Solver Add-in" boxes. Click "OK" (Figure 6). Close Excel.

<table>
  <thead>
<tr>
      <th>Name</th>
      <th>Location</th>
      <th>Type</th>
    </tr>
  </thead>
  <tbody>
<tr>
      <td colspan="3"><b>Active Application Add-ins</b></td>
    </tr>
<tr>
      <td><u>MGM07AddIn</u></td>
<td>file:///...17 Growth Engine/MGM07AddIn.vsto</td>
<td>COM Add-in</td>
    </tr>
<tr>
      <td colspan="3"><b>Inactive Application Add-ins</b></td>
    </tr>
<tr>
      <td>Acrobat PDFMaker Office COM Addin</td>
<td>C:\...5\PDFMaker\Office\PDFMOfficeAddin.dll</td>
<td>COM Add-in</td>
    </tr>
<tr>
      <td>Analysis ToolPak</td>
<td>C:\...e\Office14\Library\Analysis\ANALYS32.XLL</td>
<td>Excel Add-in</td>
    </tr>
<tr>
      <td>Analysis ToolPak - VBA</td>
<td>C:\...ffice14\Library\Analysis\ATPVBAEN.XLAM</td>
<td>Excel Add-in</td>
    </tr>
<tr>
      <td>Custom XML Data</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td>Document Inspector</td>
    </tr>
<tr>
      <td>Date (XML)</td>
<td>C:\...5\microsoft shared\Smart Tag\MOFL.DLL</td>
<td>Action</td>
    </tr>
<tr>
      <td>Euro Currency Tools</td>
<td>C:\...Office\Office14\Library\EUROTOOL.XLAM</td>
<td>Excel Add-in</td>
    </tr>
<tr>
      <td>Financial Symbol (XML)</td>
<td>C:\...5\microsoft shared\Smart Tag\MOFL.DLL</td>
<td>Action</td>
    </tr>
<tr>
      <td>Headers and Footers</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td>Document Inspector</td>
    </tr>
<tr>
      <td>Hidden Rows and Columns</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td>Document Inspector</td>
    </tr>
<tr>
      <td>Hidden Worksheets</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td>Document Inspector</td>
    </tr>
<tr>
      <td>Invisible Content</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td>Document Inspector</td>
    </tr>
<tr>
      <td>Microsoft Actions Pane</td>
<td>C:\...)\Microsoft Office\Office14\OFFRHD.DLL</td>
<td></td>
    </tr>
<tr>
      <td>Microsoft Actions Pane 3</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>Solver Add-in</td>
<td>C:\...e\Office14\Library\SOLVER\SOLVER.XLAM</td>
<td>Excel Add-in</td>
    </tr>
<tr>
      <td colspan="3"><b>Document Related Add-ins</b><br />No Document Related Add-ins</td>
    </tr>
<tr>
      <td>Add-in:</td>
<td>MGM07AddIn</td>
<td></td>
    </tr>
<tr>
      <td>Publisher:</td>
<td>&#x3C;None></td>
<td></td>
    </tr>
<tr>
      <td>Compatibility:</td>
<td>No compatibility information available</td>
<td></td>
    </tr>
<tr>
      <td>Location:</td>
<td>file:///C:/MGMvs 2017/MGMvs 2017 Growth Engine/MGM07AddIn.vsto</td>
<td></td>
    </tr>
<tr>
      <td>Description:</td>
<td>MGM07AddIn</td>
<td></td>
    </tr>
  </tbody>
</table>

| Add-Ins available:       |
| ------------------------ |
| ✓ Analysis ToolPak       |
| ☑ Analysis ToolPak - VBA |
| ☑ Euro Currency Tools    |
| ✓ Solver Add-in          |


Figure 6. Complete the MGM07AddIn installation.

Page 3
5/17/2018

---



1.2.7. <u>**Now you need to install the MGM template files on your computer, and create a working copy of MGM.**</u> Go to your working directory from Step 1.2.1. Open the "MGM Workbook Files 2017" folder. Open the "MGMvs 2017 A1 Rev XXXX.xlsm" workbook. A dialog will appear and recommend that "MGMvs 2017 A1 Rev XXXX.xlsm" should be opened as "read-only". Click "Yes" (Figure 7). Next, a "Security Warning" will appear under the Excel Ribbon. Click "Enable Content" (Figure 8). Finally, a "MGM" dialog will appear. Click "Yes" (Figure 9). Allow all of the Excel worksheets to disappear. Close Excel.

| Button<br/>Yes<br/>No<br/>Cancel                                                                                                       | Text<br/>Yes<br/>No<br/>Cancel |
| -------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------ |
| Microsoft Excel: 'MGMvs 2017 A1 Rev 5400.xlsm' should be opened as read-only unless you need to save changes to it. Open as read-only? |                                |


Figure 7. Install the MGM template files on your computer – Dialog 1.

Page 4
5/17/2018

---



**Figure 8. Install the MGM template files on your computer – Dialog 2.**

|            | 1         | 2              | 3                    | 4                                    | 5                | 6                       | 7                  | 8                                                                                     | 9              | 10                | 11                 | 12                | 13                            | 14                 | 15              | 16                   | 17                    | 18 | 19 |
| ---------- | --------- | -------------- | -------------------- | ------------------------------------ | ---------------- | ----------------------- | ------------------ | ------------------------------------------------------------------------------------- | -------------- | ----------------- | ------------------ | ----------------- | ----------------------------- | ------------------ | --------------- | -------------------- | --------------------- | -- | -- |
| Crop Plans |           |                | Distribution         | Example CP                           | Event            | Saved: 1512 Nov 25 2016 | Settings           |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
|            | Stand Age | Year           |                      |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 3          |           |                | **Crop Plans**       | CropPlansID := Distribution Notes := |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 4          |           |                |                      |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 5          |           |                | Notes                |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 6          |           |                | Crop Plan            | CropPlanID := Crop Plan 1            |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 7          |           |                | Options              | Region := 1                          | SubRegion := 7   | StandsWbkName := MGH    | \_MinDbh := 0      | \_topdb := 0                                                                          | \_StumpHt := 0 | \_VolumeLoss := 0 | Allowingrowth := F | Default\_Sindex : | YearsToF MaxDenAdj := 1 1 1 1 | SppUtilStr := 1111 | MAFlag := False | FlagABnewSi := False | FlagHDSMooth := False |    |    |
| 8          | 8         | 2011 Establish | StandID := Untitled  | StandWT := 1                         | Sourceindex := 3 | Seed := 0.7607          | GapArea% := 0      | StandParaList := \[Aw 8 18 2730 3.2 0.3 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8] |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 9          | 8         | 2011 Record    | Sheet := Stand       |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 10         | 8         | 2011 Grow      | Schedule := 12       |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 11         | 20        | 2023 Grow      | Schedule := 10       |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 12         | 30        | 2033 Thin      | RemRuleIndex := 1    | RemAmtIndex := 4                     | RemovalAmt := 20 | Species := Aw           | MinDbh := 3        | HDbhRatio := False                                                                    |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 13         | 30        | 2033 Loss      | RemRuleIndex := 1    | RemAmtIndex := 3                     | RemovalAmt := 10 | Species := Sw           | HDbhRatio := False |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 14         | 30        | 2033 Grow      | Schedule := 20 10 10 |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |
| 15         | 70        | 2073 End       |                      |                                      |                  |                         |                    |                                                                                       |                |                   |                    |                   |                               |                    |                 |                      |                       |    |    |


**Figure 9. Install the MGM template files on your computer – Dialog 3.**

<table>
<thead>
<tr>
<th></th>
<th>1</th>
<th>2</th>
<th>3</th>
<th>4</th>
<th>5</th>
<th>6</th>
<th>7</th>
<th>8</th>
<th>9</th>
<th>10</th>
<th>11</th>
<th>12</th>
<th>13</th>
<th>14</th>
<th>15</th>
<th>16</th>
<th>17</th>
<th>18</th>
<th>19</th>
</tr>
  </thead>
  <tbody>
<tr>
<td>Crop Plans</td>
<td></td>
<td></td>
<td>Distribution</td>
<td>Example CP</td>
<td>Event</td>
<td>Saved: 1512 Nov 25 2016</td>
<td>Settings</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td>Stand Age</td>
<td>Year</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>3</td>
<td></td>
<td></td>
<td><b>Crop Plans</b></td>
<td>CropPlansID := Distribution Notes :=</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>4</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>5</td>
<td></td>
<td></td>
<td>Notes</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>6</td>
<td></td>
<td></td>
<td>Crop Plan</td>
<td>CropPlanID := Crop Plan 1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>7</td>
<td></td>
<td></td>
<td>Options</td>
<td>Region := 1</td>
<td>SubRegion := 7</td>
<td>StandsWbkName := MGH</td>
<td>_MinDbh := 0</td>
<td>_topdb := 0</td>
<td>_StumpHt := 0</td>
<td>_VolumeLoss := 0</td>
<td>Allowingrowth := F</td>
<td>Default_Sindex :</td>
<td>YearsToF MaxDenAdj := 1 1 1 1</td>
<td>SppUtilStr := 1111</td>
<td>MAFlag := False</td>
<td>FlagABnewSi := False</td>
<td>FlagHDSMooth := False</td>
<td></td>
</tr>
<tr>
<td>8</td>
<td>8</td>
<td>2011 Establish</td>
<td>StandID := Untitled</td>
<td>StandWT := 1</td>
<td>Sourceindex := 3</td>
<td>Seed := 0.7607</td>
<td>GapArea% := 0</td>
<td>StandParaList := [Aw 8 18 2730 3.2 0.3 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8]</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>9</td>
<td>8</td>
<td>2011 Record</td>
<td>Sheet := Stand</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>10</td>
<td>8</td>
<td>2011 Grow</td>
<td>Schedule := 12</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>11</td>
<td>20</td>
<td>2023 Grow</td>
<td>Schedule := 10</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>12</td>
<td>30</td>
<td>2033 Thin</td>
<td>RemRuleIndex := 1</td>
<td>RemAmtIndex := 4</td>
<td>RemovalAmt := 20</td>
<td>Species :=</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>13</td>
<td>30</td>
<td>2033 Loss</td>
<td>RemRuleIndex := 1</td>
<td>RemAmtIndex := 3</td>
<td>RemovalAmt := 10</td>
<td>Species :=</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>14</td>
<td>30</td>
<td>2033 Grow</td>
<td>Schedule := 20 10 10</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>15</td>
<td>70</td>
<td>2073 End</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
  </tbody>
</table>

MGM

Installation for MGMvs 2017 A1 (Rev 5400) 11:39 12 Apr 2017

**READ THIS CAREFULLY!!!**

Essential MGM template files need to be installed before you work with MGM. If access to the Excel templates directory is denied, the files will be created in the MGM workbook directory.

After installation is completed, this MGM workbook will automatically close.

A COPY of this MGM workbook is created in the MGM workbook directory with the name: MGMvs 2017 A1 Rev 5400 - My Working Copy.xlsm

**USE THIS COPY** to complete your analyses.

A new MGM workbook can also be created from the Excel 'My Templates' directory.

If you do not install the template files now, you will receive this message each time you open the MGM workbook.

Do you want to allow installation of these files now?

<circle>Yes</circle> No

Page 5

5/17/2018

---

# 1.3. Installing the Stand Visualization System (SVS)

<u>1.3.1. Create a new folder in your working directory to extract SVS.</u> Go to your working directory from Step 1.2.1, and create a new folder called "SVS".

<u>1.3.2. Download the Stand Visualization System (SVS).</u> On your web browser, go to: http://forsys.cfr.washington.edu/svs.html. (Verify that the website address belongs to the University of Washington.) Under "Download the software using HTTP protocol", click on the "Windows version" of SVS.

<u>1.3.3. Extract SVS.</u> Go to your web browser's download folder. Run "winsvslatest.exe". A "WinZip Self-Extractor" dialog will appear. Unzip "winsvslatest.exe" into the "SVS" folder of your working directory. Close the "WinZip Self-Extractor".

<u>1.3.4. Install SVS.</u> Go to your working directory from Step 1.2.1. Open the "SVS" folder. Run "SETUP.exe". Click "Next" on the "Welcome" dialog and "Next" on the "SVS README file" dialog. In the "Choose Destination Location" dialog, ensure that the SVS "Destination Folder" is: "C:\Program Files (x86)\SVS". (MGMvs 2017 references this directory for the SVS executable files.) Click "Next". In the "Setup Type" dialog, choose "A new installation with example data files". Click "Next" on all remaining dialogs. Then, click "Finish" to complete the SVS installation.

<u>1.3.5. Specify the SVS graphics that will identify each boreal tree species.</u> Go to your working directory from Step 1.2.1. Open the "MGM Workbook Files 2017" folder. Copy the "MGM.trf" file. Go to "C:\Program Files (x86)\SVS". Paste "MGM.trf" into "C:\Program Files (x86)\SVS". Close the "C:\Program Files (x86)\SVS" folder.

# 1.4. Verify your MGM and Stand Visualization System (SVS) Installations

<u>1.4.1. Verify your MGM installation.</u> Go to your working directory from Step 1.2.1. Open the "MGM Workbook Files 2017" folder. Open the "MGMvs 2017 A1 Rev XXXX - My Working Copy.xlsm" workbook. A "Security Warning" will appear under the Excel Ribbon. Click "Enable Content" (Figure 10). Then, a "MGM -- Notes" dialog will appear. Click "Ok" (Figure 11). On the Excel Ribbon, go to the "MGM" tab (Figure 12). Click on the "For All CP" button. Then, a MGM dialog will appear. Click "Yes" (Figure 12). Allow MGM to complete the projection. Then, view the "Record" worksheet (Figure 13) and verify the "Crop Plans Worksheet Name" (i.e. Distribution Example CP) and "Record Date" (i.e. current time/date). No errors should appear in the "Record" worksheet (Figure 13).

|    | 1<br/>Crop Plans | 2<br/>Stand Age          | 3<br/>Year      | 4<br/>Event     | 5<br/>Saved:                       | 6<br/>Distribution Example CP Settings | 7<br/>Distribution Example CP Settings                                                | 8<br/>Distribution Example CP Settings | 9<br/>Distribution Example CP Settings | 10<br/>Distribution Example CP Settings | 11<br/>Distribution Example CP Settings | 12<br/>Distribution Example CP Settings | 13<br/>Distribution Example CP Settings | 14<br/>Distribution Example CP Settings | 15<br/>Distribution Example CP Settings | 16<br/>Distribution Example CP Settings | 17<br/>Distribution Example CP Settings | 18<br/>Distribution Example CP Settings | 19<br/>Distribution Example CP Settings |
| -- | ---------------- | ------------------------ | --------------- | --------------- | ---------------------------------- | -------------------------------------- | ------------------------------------------------------------------------------------- | -------------------------------------- | -------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- |
| 1  | Crop Plans       |                          |                 |                 | Saved: 1512 Nov 25 2016            |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 2  |                  |                          |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 3  | *Crop Plans*     |                          |                 |                 | CropPlansID = Distribution Notes = |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 4  |                  |                          |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 5  |                  |                          |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 6  | Notes            |                          |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 7  | Crop Plan        | CropPlanID = Crop Plan 1 | Region = 1      | SubRegion = 7   | StandsWbkhName = MGM               | \_MinDbh = 0                           | \_topdb = 0                                                                           | \_StumpHt = 0                          | \_VolumeLoss = 0                       | Allowingrowth = F                       | Default\_Sindex = YearsToE              | MaxDenAdj = 1 1 1 1                     | SppUTStr = 1111                         | MAFlag = False                          | FlagABnewSI = False                     | FlagHDSMooth = False                    |                                         |                                         |                                         |
| 8  | 8 2011 Establish | StandID = Untitled       | StandWIT = 1    | SourceIndex = 3 | Seed = 0.7607                      | GapArea% = 0                           | StandParsList = \[Awr 8 18 2730 3.2 0.3 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8] |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 9  | 8 2011 Record    | Sheet = Stand            |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 10 | 8 2011 Grow      | Schedule = 12            |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 11 | 20 2023 Grow     | Schedule = 10            |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 12 | 30 2033 Thin     | RemRuleIndex = 1         | RemAmtIndex = 4 | RemovalAmt = 20 | Species = Aw                       | MinDbh = 3                             | HDdbhRatio = False                                                                    |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 13 | 30 2033 Loss     | RemRuleIndex = 1         | RemAmtIndex = 3 | RemovalAmt = 10 | Species = Sw                       | HDdbhRatio = False                     |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 14 | 30 2033 Grow     | Schedule = 20 10 10      |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |
| 15 | 70 2073 End      |                          |                 |                 |                                    |                                        |                                                                                       |                                        |                                        |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |                                         |


Figure 10. Verify your MGM installation – Dialog 1.

Page 6
5/17/2018

---



Figure 11. Verify your MGM installation – Dialog 2.

|    | 1          | 2         | 3            | 4                         | 5                                    | 6                                 | 7              | 8                   | 9                                                                                   | 10                                                                 | 11                 | 12              | 13                   | 14                    | 15 | 16 | 17 | 18 | 19 |
| -- | ---------- | --------- | ------------ | ------------------------- | ------------------------------------ | --------------------------------- | -------------- | ------------------- | ----------------------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------ | --------------- | -------------------- | --------------------- | -- | -- | -- | -- | -- |
| 1  | Crop Plans |           | Distribution | Example CP                | Event                                | Saved: 1512 Nov 25 2016           |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 2  | Stand Age  | Year      |              |                           |                                      | Settings                          |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 3  |            |           | *Crop Plans* |                           | CropPlansID := Distribution Notes := |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 4  |            |           |              |                           |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 5  |            |           | Notes        |                           |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 6  |            |           | Crop Plan    | CropPlanID := Crop Plan 1 |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 7  |            |           | Options      | Region := 1               | SubRegion := 7                       | StandsWbkName := MGI\_MinDbh := 0 | \_topdb := 0   | \_StumpHt := 0      | \_VolumeLoss := 0                                                                   | Allowingrowth := F.Default\_Sindex : YearsToE MaxDenAdj := 1 1 1 1 | SppUtilStr := 1111 | MAFlag := False | FlagABnewSI := False | FlagHDSMooth := False |    |    |    |    |    |
| 8  | 2011       | Establish |              | StandID := Untitled       | StandWIT := 1                        | Sourceindex := 3                  | Seed := 0.7607 | GapArea% := 0       | StandParams := \[Aw 8 18 2730 3.2 0.3 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8] |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 9  | 8          | 2011      | Record       | Sheet := Stand            |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 10 | 8          | 2011      | Grow         | Schedule := 12            |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 11 | 20         | 2023      | Grow         | Schedule := 10            |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 12 | 30         | 2033      | Thin         | RemRuleIndex := 1         | RemAmtIndex := 4                     | RemovalAmt := 20                  | Species := Aw  | MinDbh := 3         | HDdbhRatio := False                                                                 |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 13 | 30         | 2033      | Loss         | RemRuleIndex := 1         | RemAmtIndex := 3                     | RemovalAmt := 10                  | Species := Sw  | HDdbhRatio := False |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 14 | 30         | 2033      | Grow         | Schedule := 20 10 10      |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 15 |            |           |              |                           |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 16 |            |           |              |                           |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |
| 70 |            | 2073      | End          |                           |                                      |                                   |                |                     |                                                                                     |                                                                    |                    |                 |                      |                       |    |    |    |    |    |


<table>
<thead>
<tr>
<th></th>
<th>Display on startup</th>
<th>OK</th>
<th>Cancel</th>
</tr>
</thead>
<tbody>
<tr>
<td>Make changes as desired and click OK.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>To exit without action, click Cancel or press Esc key.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>This dialog may be displayed from the MGM Toolbar menu.</td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

Figure 12. Verify your MGM installation – Dialog 3.

<table>
<thead>
<tr>
<th>MGM</th>
</tr>
</thead>
<tbody>
<tr>
<td><u>MGM</u></td>
</tr>
<tr>
<td><u>For All CP ></u></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr>
<th></th>
<th>Do you want to project growth for ALL CP in the CP worksheet?</th>
<th>Yes</th>
<th>No</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Page 7

5/17/2018

---



Figure 13. Verify your MGM installation – Dialog 4.

<table>
  <thead>
    <tr>
      <th></th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
<td><b>RECORD</b></td>
      <td colspan="3">171 **NOTE: This worksheet can be saved into the MGM Records workbook; if a special name is desired, append or change the name in cell C2 (keep it short and simple) before clicking the save button on the MGM Toolbar.**</td>
    </tr>
<tr>
      <td>2</td>
<td>Crop Plans Worksheet Name</td>
      <td colspan="3">Distribution Example CP</td>
    </tr>
<tr>
      <td>3</td>
<td>Record Date:</td>
      <td colspan="3">15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>4</td>
<td>MGM Version</td>
      <td colspan="3">MGMvs 2017 A1 (Rev 5400) 11:39 12 Apr 2017</td>
    </tr>
<tr>
      <td>6</td>
<td>Crop Plan</td>
<td>15</td>
<td>Distribution Example CP</td>
<td>Saved: 1512 Nov 25 2016</td>
    </tr>
<tr>
      <td>7</td>
<td>Stand Age</td>
<td>Year</td>
<td>Event</td>
<td>Settings</td>
    </tr>
<tr>
      <td>8</td>
<td></td>
<td></td>
<td>Crop Plans</td>
<td>CropPlanID = Distribi Notes =</td>
    </tr>
<tr>
      <td>10</td>
<td>Notes</td>
<td></td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>11</td>
<td>Crop Plan</td>
<td>CropPlanID = Crop Plan 1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>12</td>
<td>Options</td>
<td>Region = 1</td>
<td>SubRegion = 7</td>
<td>StandsWbkName = !, MinDbh = 0, _topdb: = 0, _Stumpt: : _VolumeLo Allowingrwgt Default_Sindi YearsToBH = MaxDenAdj: = 1 1 SppUtilStr: MAFlag = ! FlagABnev FlagHD FlagVST! FlagMSLight: = False</td>
    </tr>
<tr>
      <td>13</td>
<td>8</td>
<td>2011 Establish</td>
<td>StandID = Untitled</td>
<td>StandWT = 1 SourceIndex = 3 Seed = 0.7607 GapArea% = 0 StandParsList: = [Aw 8 18 2730 3.2 3.0 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8]</td>
    </tr>
<tr>
      <td>14</td>
<td>2011 Record</td>
<td>8</td>
<td>3.199542999</td>
<td>3.218148818 3.957634926</td>
    </tr>
<tr>
      <td>15</td>
<td>8</td>
<td>2011 Grow</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>16</td>
<td>20</td>
<td>2023 Grow</td>
<td>Schedule = 10</td>
<td></td>
    </tr>
<tr>
      <td>17</td>
<td>30</td>
<td>2033 Thin</td>
<td>RemRuleIndex = 1</td>
<td>RemAntindex = 4 RemovalAmt = 20 Species = Aw MinDbh = 3 HDdbhRatio = False</td>
    </tr>
<tr>
      <td>18</td>
<td>30</td>
<td>2033 Loss</td>
<td>RemRuleIndex = 1</td>
<td>RemAntindex = 3 RemovalAmt = 10 Species = Sw HDdbhRatio = False</td>
    </tr>
<tr>
      <td>19</td>
<td>30</td>
<td>2033 Grow</td>
<td>Schedule = 20 10 10</td>
<td></td>
    </tr>
<tr>
      <td>20</td>
<td>70</td>
<td>2073 End</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>24</td>
<td>Note</td>
<td></td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>25</td>
<td>Crop Plan</td>
<td>1</td>
<td>Crop Plan 1</td>
<td>15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>27</td>
      <td colspan="4"><mark>Options event has been executed</mark> <mark>Options</mark> <mark>Region = 1</mark> <mark>SubRegion = 7</mark> <mark>StandsWbkName = !, MinDbh = 0</mark> <mark>_topdb: = 0</mark> <mark>_Stumpt: : _VolumeLo Allowingrwgt Default_Sindi YearsToBH = MaxDenAdj: = 1 1 SppUtilStr: MAFlag = ! FlagABnev FlagHD FlagVST! FlagMSLight: = False</mark></td>
    </tr>
<tr>
      <td>28</td>
<td></td>
<td></td>
<td></td>
<td>15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>29</td>
<td>STAND</td>
<td>100</td>
<td>Crop Plan 1</td>
<td></td>
    </tr>
<tr>
      <td>30</td>
<td>STAND</td>
<td>Untitled</td>
<td>Stand WT</td>
<td>1</td>
    </tr>
<tr>
      <td>31</td>
<td>DateRun</td>
<td>15:30 27 Feb 2018</td>
<td>Gap Area PC</td>
<td>0</td>
    </tr>
<tr>
      <td>32</td>
<td>standAge</td>
<td>8</td>
<td>TopLight</td>
<td>-1</td>
    </tr>
<tr>
      <td>33</td>
<td>Year</td>
<td>2011</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>34</td>
<td>Region</td>
<td>1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>35</td>
<td>SubRegion</td>
<td>7</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>36</td>
<td>CropPlanID</td>
<td>Crop Plan 1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>36</td>
<td>CropPlanID</td>
<td>Distribution Example CP</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>39</td>
<td>YearsToBd Stand summary</td>
<td>Site</td>
<td>stAVD</td>
<td>stQMD</td>
<td>stmaxD</td>
<td>stAVDIncr</td>
<td>stAVh</td>
<td>stTopH</td>
<td>stTopHincr</td>
<td>stmaxH</td>
<td>stAVAge</td>
<td>stAVBHAge</td>
<td>stBa</td>
<td>stDen</td>
<td>stHuDen</td>
<td>stTotDen</td>
<td>streBa</td>
<td>streDe</td>
<td>streTotD</td>
<td>stSF</td>
<td>stVol</td>
<td>stGrVol</td>
<td>stMatDen</td>
<td>stJuvenDen</td>
<td>stAVyHt</td>
    </tr>
<tr>
      <td>40</td>
<td>All</td>
<td></td>
<td>3.162009937</td>
<td>3.186768139</td>
<td>4.483263016</td>
<td>0</td>
<td>3.242567472</td>
<td>3.955641257</td>
<td>0.790015</td>
<td>4.390017</td>
<td>13.6666667</td>
<td>8</td>
<td>3.032913589</td>
<td>3802.5</td>
<td>27.5</td>
<td>3830</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>5.001</td>
<td>3.304831835</td>
<td>3.304831835</td>
<td>27.5</td>
<td>3802.5</td>
<td>3.225172</td>
    </tr>
<tr>
      <td>41</td>
<td>Con</td>
<td></td>
<td>3.066471234</td>
<td>3.105459487</td>
<td>4.483263016</td>
<td>0</td>
<td>2.377357076</td>
<td>3.053698908</td>
<td>0.992267</td>
<td>3.342849</td>
<td>23</td>
<td>8</td>
<td>8.812342019</td>
<td>1072.5</td>
<td>27.5</td>
<td>1100</td>
<td>0.267842</td>
<td>0.282</td>
<td>0.2821</td>
<td>1.2844</td>
<td>0.761973076</td>
<td>0.761973076</td>
<td>27.5</td>
<td>1072.5</td>
<td>2.315682</td>
    </tr>
<tr>
      <td>42</td>
<td>Dec</td>
<td></td>
<td>3.199542999</td>
<td>3.218148818</td>
<td>3.957634926</td>
<td>0</td>
<td>3.582471555</td>
<td>4.159353772</td>
<td>0.719465</td>
<td>4.390017</td>
<td>10</td>
<td>8</td>
<td>2.22057157</td>
<td>2730</td>
<td>0</td>
<td>2730</td>
<td>0.732158</td>
<td>0.718</td>
<td>0.7179</td>
<td>5.342</td>
<td>2.542858759</td>
<td>2.542858759</td>
<td>0</td>
<td>2730</td>
<td>3.582471</td>
    </tr>
<tr>
      <td>43</td>
<td>15 Sw</td>
<td>18</td>
<td>3.066471234</td>
<td>3.105459487</td>
<td>4.483263016</td>
<td>0</td>
<td>2.377357076</td>
<td>3.053698908</td>
<td>0.992267</td>
<td>3.342849</td>
<td>23</td>
<td>8</td>
<td>8.812342019</td>
<td>1072.5</td>
<td>27.5</td>
<td>1100</td>
<td>0.267842</td>
<td>0.282</td>
<td>0.2872</td>
<td>1.2844</td>
<td>0.761973076</td>
<td>0.761973076</td>
<td>27.5</td>
<td>1072.5</td>
<td>2.315682</td>
    </tr>
<tr>
      <td>44</td>
<td>10 Pi</td>
<td>18</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
    </tr>
<tr>
      <td>45</td>
<td>2 Aw</td>
<td>18</td>
<td>3.199542999</td>
<td>3.218148818</td>
<td>3.957634926</td>
<td>0</td>
<td>3.582471555</td>
<td>4.159353772</td>
<td>0.719465</td>
<td>4.390017</td>
<td>10</td>
<td>8</td>
<td>2.22057157</td>
<td>2730</td>
<td>0</td>
<td>2730</td>
<td>0.732158</td>
<td>0.718</td>
<td>0.7128</td>
<td>5.342</td>
<td>2.542858759</td>
<td>2.542858759</td>
<td>0</td>
<td>2730</td>
<td>3.582471</td>
    </tr>
<tr>
      <td>46</td>
<td>20 Sb</td>
<td>10</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
    </tr>
<tr>
      <td>49</td>
<td>trNum</td>
<td>trSpp</td>
<td>trDbh</td>
<td>trPha</td>
<td>trHt</td>
<td>trAge</td>
<td>trBHAge</td>
<td>trCratio</td>
<td>trCwidth</td>
<td>x</td>
<td>y</td>
<td>trDbhIncr</td>
<td>trHtIncr</td>
<td>trPsurv</td>
<td>trSppIdx</td>
<td>trMGMSppI</td>
<td>trBWood</td>
<td>trBBark</td>
<td>trBBrar</td>
<td>trFolIag</td>
<td>trHTotal</td>
<td>HDratio</td>
<td>Hdratio</td>
<td>trBhaIa</td>
<td>trBagt</td>
<td>stCBagt</td>
    </tr>
<tr>
      <td>50</td>
<td>65 Sw</td>
<td>4.483263016</td>
<td>27.5</td>
<td>3.155072296</td>
<td>23</td>
<td>8</td>
<td>0.97586021</td>
<td>1.361426711</td>
<td>57</td>
<td>83</td>
<td>-1</td>
<td>-1</td>
<td>0.483</td>
<td>5.676</td>
<td>3.6308</td>
<td>-1</td>
<td>1</td>
<td>2.158509</td>
<td>0.421973</td>
<td>0.483</td>
<td>0.5676</td>
<td>3.6308</td>
<td>-1</td>
<td>0.739432928</td>
<td>0.043412</td>
<td>0</td>
    </tr>
<tr>
      <td>51</td>
<td>32 Aw</td>
<td>3.957634926</td>
<td>68.25</td>
<td>4.263070239</td>
<td>10</td>
<td>8</td>
<td>0.706093469</td>
<td>1.312017679</td>
<td>86</td>
<td>32</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.516666</td>
<td>0.334719</td>
<td>0.489</td>
<td>1.1532</td>
<td>3.4933</td>
<td>-1</td>
<td>1.077376363</td>
<td>0.083968</td>
<td>0.043412</td>
<td>0.043412</td>
    </tr>
<tr>
      <td>52</td>
<td>47 Sw</td>
<td>3.807149887</td>
<td>27.5</td>
<td>3.150740384</td>
<td>23</td>
<td>8</td>
<td>0.935134149</td>
<td>1.297352066</td>
<td>72</td>
<td>40</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>1</td>
<td>1</td>
<td>1.424183</td>
<td>0.300308</td>
<td>0.341</td>
<td>0.4287</td>
<td>2.494</td>
<td>-1</td>
<td>0.827575608</td>
<td>0.031306</td>
<td>0.12737</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>53</td>
<td>5 Aw</td>
<td>3.801619053</td>
<td>68.25</td>
<td>3.934684515</td>
<td>10</td>
<td>8</td>
<td>0.748200582</td>
<td>1.297352195</td>
<td>34</td>
<td>96</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.370773</td>
<td>0.305846</td>
<td>0.449</td>
<td>1.0894</td>
<td>3.2155</td>
<td>-1</td>
<td>1.035002314</td>
<td>0.077469</td>
<td>0.158676</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>54</td>
<td>52 Sw</td>
<td>3.745769024</td>
<td>27.5</td>
<td>2.626051188</td>
<td>23</td>
<td>8</td>
<td>1.111960127</td>
<td>1.292102337</td>
<td>25</td>
<td>21</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>1</td>
<td>1</td>
<td>1.366501</td>
<td>0.290322</td>
<td>0.329</td>
<td>0.4169</td>
<td>2.403</td>
<td>-1</td>
<td>0.701071308</td>
<td>0.030304</td>
<td>0.236145</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>55</td>
<td>35 Aw</td>
<td>3.723551512</td>
<td>68.25</td>
<td>4.390017033</td>
<td>10</td>
<td>8</td>
<td>0.662993822</td>
<td>1.29001379</td>
<td>34</td>
<td>7</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.301083</td>
<td>0.291939</td>
<td>0.43</td>
<td>1.0579</td>
<td>3.0814</td>
<td>-1</td>
<td>1.178986518</td>
<td>0.07432</td>
<td>0.26645</td>
<td>0.105022</td>
    </tr>
  </tbody>
</table>

1.4.2. <u>Verify your SVS installation.</u> Select the "<u>MGM</u>" tab on the Excel Ribbon (Figure 14). Click "<u>Set SVS.exe Path/Name</u>". If the SVS directory is correct, a new dialog will state "winsvs.exe file found, no further action required". Click "OK" (Figure 14). If the SVS directory is incorrect, set the correct SVS directory path.

<table>
  <thead>
    <tr>
      <th></th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
<td><b>RECORD</b></td>
      <td colspan="3">171 **NOTE: This worksheet can be saved into the MGM Records workbook; if a special name is desired, append or change the name in cell C2 (keep it short and simple) before clicking the save button on the MGM Toolbar.**</td>
    </tr>
<tr>
      <td>2</td>
<td>Crop Plans Worksheet Name</td>
      <td colspan="3">Distribution Example CP</td>
    </tr>
<tr>
      <td>3</td>
<td>Record Date:</td>
      <td colspan="3">15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>4</td>
<td>MGM Version</td>
      <td colspan="3">MGMvs 2017 A1 (Rev 5400) 11:39 12 Apr 2017</td>
    </tr>
<tr>
      <td>6</td>
<td>Crop Plan</td>
<td>15</td>
<td>Distribution Example CP</td>
<td>Saved: 1512 Nov 25 2016</td>
    </tr>
<tr>
      <td>7</td>
<td>Stand Age</td>
<td>Year</td>
<td>Event</td>
<td>Settings</td>
    </tr>
<tr>
      <td>8</td>
<td></td>
<td></td>
<td>Crop Plans</td>
<td>CropPlanID = Distribi Notes =</td>
    </tr>
<tr>
      <td>10</td>
<td>Notes</td>
<td></td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>11</td>
<td>Crop Plan</td>
<td>CropPlanID = Crop Plan 1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>12</td>
<td>Options</td>
<td>Region = 1</td>
<td>SubRegion = 7</td>
<td>StandsWbkName = !, MinDbh = 0, _topdb: = 0, _Stumpt: : _VolumeLo Allowingrwgt Default_Sindi YearsToBH = MaxDenAdj: = 1 1 SppUtilStr: MAFlag = ! FlagABnev FlagHD FlagVST! FlagMSLight: = False</td>
    </tr>
<tr>
      <td>13</td>
<td>8</td>
<td>2011 Establish</td>
<td>StandID = Untitled</td>
<td>StandWT = 1 SourceIndex = 3 Seed = 0.7607 GapArea% = 0 StandParsList: = [Aw 8 18 2730 3.2 3.0 3.5 0.4 0.8,Sw 8 18 1100 2.9 0.6 2.3 0.5 0.8]</td>
    </tr>
<tr>
      <td>14</td>
<td>2011 Record</td>
<td>8</td>
<td>3.199542999</td>
<td>3.218148818 3.957634926</td>
    </tr>
<tr>
      <td>15</td>
<td>8</td>
<td>2011 Grow</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>16</td>
<td>20</td>
<td>2023 Grow</td>
<td>Schedule = 10</td>
<td></td>
    </tr>
<tr>
      <td>17</td>
<td>30</td>
<td>2033 Thin</td>
<td>RemRuleIndex = 1</td>
<td>RemAntindex = 4 RemovalAmt = 20 Species = Aw MinDbh = 3 HDdbhRatio = False</td>
    </tr>
<tr>
      <td>18</td>
<td>30</td>
<td>2033 Loss</td>
<td>RemRuleIndex = 1</td>
<td>RemAntindex = 3 RemovalAmt = 10 Species = Sw HDdbhRatio = False</td>
    </tr>
<tr>
      <td>19</td>
<td>30</td>
<td>2033 Grow</td>
<td>Schedule = 20 10 10</td>
<td></td>
    </tr>
<tr>
      <td>20</td>
<td>70</td>
<td>2073 End</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>24</td>
<td>Note</td>
<td></td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>25</td>
<td>Crop Plan</td>
<td>1</td>
<td>Crop Plan 1</td>
<td>15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>27</td>
      <td colspan="4"><mark>Options event has been executed</mark> <mark>Options</mark> <mark>Region = 1</mark> <mark>SubRegion = 7</mark> <mark>StandsWbkName = !, MinDbh = 0</mark> <mark>_topdb: = 0</mark> <mark>_Stumpt: : _VolumeLo Allowingrwgt Default_Sindi YearsToBH = MaxDenAdj: = 1 1 SppUtilStr: MAFlag = ! FlagABnev FlagHD FlagVST! FlagMSLight: = False</mark></td>
    </tr>
<tr>
      <td>28</td>
<td></td>
<td></td>
<td></td>
<td>15:30 27 Feb 2018</td>
    </tr>
<tr>
      <td>29</td>
<td>STAND</td>
<td>100</td>
<td>Crop Plan 1</td>
<td></td>
    </tr>
<tr>
      <td>30</td>
<td>STAND</td>
<td>Untitled</td>
<td>Stand WT</td>
<td>1</td>
    </tr>
<tr>
      <td>31</td>
<td>DateRun</td>
<td>15:30 27 Feb 2018</td>
<td>Gap Area PC</td>
<td>0</td>
    </tr>
<tr>
      <td>32</td>
<td>standAge</td>
<td>8</td>
<td>TopLight</td>
<td>-1</td>
    </tr>
<tr>
      <td>33</td>
<td>Year</td>
<td>2011</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>34</td>
<td>Region</td>
<td>1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>35</td>
<td>SubRegion</td>
<td>7</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>36</td>
<td>CropPlanID</td>
<td>Crop Plan 1</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>36</td>
<td>CropPlanID</td>
<td>Distribution Example CP</td>
<td></td>
<td></td>
    </tr>
<tr>
      <td>39</td>
<td>YearsToBd Stand summary</td>
<td>Site</td>
<td>stAVD</td>
<td>stQMD</td>
<td>stmaxD</td>
<td>stAVDIncr</td>
<td>stAVh</td>
<td>stTopH</td>
<td>stTopHincr</td>
<td>stmaxH</td>
<td>stAVAge</td>
<td>stAVBHAge</td>
<td>stBa</td>
<td>stDen</td>
<td>stHuDen</td>
<td>stTotDen</td>
<td>streBa</td>
<td>streDe</td>
<td>streTotD</td>
<td>stSF</td>
<td>stVol</td>
<td>stGrVol</td>
<td>stMatDen</td>
<td>stJuvenDen</td>
<td>stAVyHt</td>
    </tr>
<tr>
      <td>40</td>
<td>All</td>
<td></td>
<td>3.162009937</td>
<td>3.186768139</td>
<td>4.483263016</td>
<td>0</td>
<td>3.242567472</td>
<td>3.955641257</td>
<td>0.790015</td>
<td>4.390017</td>
<td>13.6666667</td>
<td>8</td>
<td>3.032913589</td>
<td>3802.5</td>
<td>27.5</td>
<td>3830</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>5.001</td>
<td>3.304831835</td>
<td>3.304831835</td>
<td>27.5</td>
<td>3802.5</td>
<td>3.225172</td>
    </tr>
<tr>
      <td>41</td>
<td>Con</td>
<td></td>
<td>3.066471234</td>
<td>3.105459487</td>
<td>4.483263016</td>
<td>0</td>
<td>2.377357076</td>
<td>3.053698908</td>
<td>0.992267</td>
<td>3.342849</td>
<td>23</td>
<td>8</td>
<td>8.812342019</td>
<td>1072.5</td>
<td>27.5</td>
<td>1100</td>
<td>0.267842</td>
<td>0.282</td>
<td>0.2821</td>
<td>1.2844</td>
<td>0.761973076</td>
<td>0.761973076</td>
<td>27.5</td>
<td>1072.5</td>
<td>2.315682</td>
    </tr>
<tr>
      <td>42</td>
<td>Dec</td>
<td></td>
<td>3.199542999</td>
<td>3.218148818</td>
<td>3.957634926</td>
<td>0</td>
<td>3.582471555</td>
<td>4.159353772</td>
<td>0.719465</td>
<td>4.390017</td>
<td>10</td>
<td>8</td>
<td>2.22057157</td>
<td>2730</td>
<td>0</td>
<td>2730</td>
<td>0.732158</td>
<td>0.718</td>
<td>0.7179</td>
<td>5.342</td>
<td>2.542858759</td>
<td>2.542858759</td>
<td>0</td>
<td>2730</td>
<td>3.582471</td>
    </tr>
<tr>
      <td>43</td>
<td>15 Sw</td>
<td>18</td>
<td>3.066471234</td>
<td>3.105459487</td>
<td>4.483263016</td>
<td>0</td>
<td>2.377357076</td>
<td>3.053698908</td>
<td>0.992267</td>
<td>3.342849</td>
<td>23</td>
<td>8</td>
<td>8.812342019</td>
<td>1072.5</td>
<td>27.5</td>
<td>1100</td>
<td>0.267842</td>
<td>0.282</td>
<td>0.2872</td>
<td>1.2844</td>
<td>0.761973076</td>
<td>0.761973076</td>
<td>27.5</td>
<td>1072.5</td>
<td>2.315682</td>
    </tr>
<tr>
      <td>44</td>
<td>10 Pi</td>
<td>18</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
    </tr>
<tr>
      <td>45</td>
<td>2 Aw</td>
<td>18</td>
<td>3.199542999</td>
<td>3.218148818</td>
<td>3.957634926</td>
<td>0</td>
<td>3.582471555</td>
<td>4.159353772</td>
<td>0.719465</td>
<td>4.390017</td>
<td>10</td>
<td>8</td>
<td>2.22057157</td>
<td>2730</td>
<td>0</td>
<td>2730</td>
<td>0.732158</td>
<td>0.718</td>
<td>0.7128</td>
<td>5.342</td>
<td>2.542858759</td>
<td>2.542858759</td>
<td>0</td>
<td>2730</td>
<td>3.582471</td>
    </tr>
<tr>
      <td>46</td>
<td>20 Sb</td>
<td>10</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
    </tr>
<tr>
      <td>49</td>
<td>trNum</td>
<td>trSpp</td>
<td>trDbh</td>
<td>trPha</td>
<td>trHt</td>
<td>trAge</td>
<td>trBHAge</td>
<td>trCratio</td>
<td>trCwidth</td>
<td>x</td>
<td>y</td>
<td>trDbhIncr</td>
<td>trHtIncr</td>
<td>trPsurv</td>
<td>trSppIdx</td>
<td>trMGMSppI</td>
<td>trBWood</td>
<td>trBBark</td>
<td>trBBrar</td>
<td>trFolIag</td>
<td>trHTotal</td>
<td>HDratio</td>
<td>Hdratio</td>
<td>trBhaIa</td>
<td>trBagt</td>
<td>stCBagt</td>
    </tr>
<tr>
      <td>50</td>
<td>65 Sw</td>
<td>4.483263016</td>
<td>27.5</td>
<td>3.155072296</td>
<td>23</td>
<td>8</td>
<td>0.97586021</td>
<td>1.361426711</td>
<td>57</td>
<td>83</td>
<td>-1</td>
<td>-1</td>
<td>0.483</td>
<td>5.676</td>
<td>3.6308</td>
<td>-1</td>
<td>1</td>
<td>2.158509</td>
<td>0.421973</td>
<td>0.483</td>
<td>0.5676</td>
<td>3.6308</td>
<td>-1</td>
<td>0.739432928</td>
<td>0.043412</td>
<td>0</td>
    </tr>
<tr>
      <td>51</td>
<td>32 Aw</td>
<td>3.957634926</td>
<td>68.25</td>
<td>4.263070239</td>
<td>10</td>
<td>8</td>
<td>0.706093469</td>
<td>1.312017679</td>
<td>86</td>
<td>32</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.516666</td>
<td>0.334719</td>
<td>0.489</td>
<td>1.1532</td>
<td>3.4933</td>
<td>-1</td>
<td>1.077376363</td>
<td>0.083968</td>
<td>0.043412</td>
<td>0.043412</td>
    </tr>
<tr>
      <td>52</td>
<td>47 Sw</td>
<td>3.807149887</td>
<td>27.5</td>
<td>3.150740384</td>
<td>23</td>
<td>8</td>
<td>0.935134149</td>
<td>1.297352066</td>
<td>72</td>
<td>40</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>1</td>
<td>1</td>
<td>1.424183</td>
<td>0.300308</td>
<td>0.341</td>
<td>0.4287</td>
<td>2.494</td>
<td>-1</td>
<td>0.827575608</td>
<td>0.031306</td>
<td>0.12737</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>53</td>
<td>5 Aw</td>
<td>3.801619053</td>
<td>68.25</td>
<td>3.934684515</td>
<td>10</td>
<td>8</td>
<td>0.748200582</td>
<td>1.297352195</td>
<td>34</td>
<td>96</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.370773</td>
<td>0.305846</td>
<td>0.449</td>
<td>1.0894</td>
<td>3.2155</td>
<td>-1</td>
<td>1.035002314</td>
<td>0.077469</td>
<td>0.158676</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>54</td>
<td>52 Sw</td>
<td>3.745769024</td>
<td>27.5</td>
<td>2.626051188</td>
<td>23</td>
<td>8</td>
<td>1.111960127</td>
<td>1.292102337</td>
<td>25</td>
<td>21</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>1</td>
<td>1</td>
<td>1.366501</td>
<td>0.290322</td>
<td>0.329</td>
<td>0.4169</td>
<td>2.403</td>
<td>-1</td>
<td>0.701071308</td>
<td>0.030304</td>
<td>0.236145</td>
<td>0.074717</td>
    </tr>
<tr>
      <td>55</td>
<td>35 Aw</td>
<td>3.723551512</td>
<td>68.25</td>
<td>4.390017033</td>
<td>10</td>
<td>8</td>
<td>0.662993822</td>
<td>1.29001379</td>
<td>34</td>
<td>7</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>-1</td>
<td>3</td>
<td>3</td>
<td>1.301083</td>
<td>0.291939</td>
<td>0.43</td>
<td>1.0579</td>
<td>3.0814</td>
<td>-1</td>
<td>1.178986518</td>
<td>0.07432</td>
<td>0.26645</td>
<td>0.105022</td>
    </tr>
  </tbody>
</table>

Figure 14. Verify your SVS installation.

Page 8

5/17/2018

---



# **1.5. Installation Issues**

1.5.1. These instructions were developed using Windows 7 and Microsoft Office 2010.

1.5.2. Please email <u>Mike.Bokalo@UAlberta.ca</u> if you have any questions or issues.

Page 9

5/17/2018
