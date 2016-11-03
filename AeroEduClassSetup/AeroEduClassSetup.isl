<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?xml-stylesheet type="text/xsl" href="is.xsl" ?>
<!DOCTYPE msi [
   <!ELEMENT msi   (summary,table*)>
   <!ATTLIST msi version    CDATA #REQUIRED>
   <!ATTLIST msi xmlns:dt   CDATA #IMPLIED
                 codepage   CDATA #IMPLIED
                 compression (MSZIP|LZX|none) "LZX">
   
   <!ELEMENT summary       (codepage?,title?,subject?,author?,keywords?,comments?,
                            template,lastauthor?,revnumber,lastprinted?,
                            createdtm?,lastsavedtm?,pagecount,wordcount,
                            charcount?,appname?,security?)>
                            
   <!ELEMENT codepage      (#PCDATA)>
   <!ELEMENT title         (#PCDATA)>
   <!ELEMENT subject       (#PCDATA)>
   <!ELEMENT author        (#PCDATA)>
   <!ELEMENT keywords      (#PCDATA)>
   <!ELEMENT comments      (#PCDATA)>
   <!ELEMENT template      (#PCDATA)>
   <!ELEMENT lastauthor    (#PCDATA)>
   <!ELEMENT revnumber     (#PCDATA)>
   <!ELEMENT lastprinted   (#PCDATA)>
   <!ELEMENT createdtm     (#PCDATA)>
   <!ELEMENT lastsavedtm   (#PCDATA)>
   <!ELEMENT pagecount     (#PCDATA)>
   <!ELEMENT wordcount     (#PCDATA)>
   <!ELEMENT charcount     (#PCDATA)>
   <!ELEMENT appname       (#PCDATA)>
   <!ELEMENT security      (#PCDATA)>                            
                                
   <!ELEMENT table         (col+,row*)>
   <!ATTLIST table
                name        CDATA #REQUIRED>

   <!ELEMENT col           (#PCDATA)>
   <!ATTLIST col
                 key       (yes|no) #IMPLIED
                 def       CDATA #IMPLIED>
                 
   <!ELEMENT row            (td+)>
   
   <!ELEMENT td             (#PCDATA)>
   <!ATTLIST td
                 href       CDATA #IMPLIED
                 dt:dt     (string|bin.base64) #IMPLIED
                 md5        CDATA #IMPLIED>
]>
<msi version="2.0" xmlns:dt="urn:schemas-microsoft-com:datatypes" codepage="65001">
	
	<summary>
		<codepage>1252</codepage>
		<title>Installation Database</title>
		<subject>##ID_STRING9##</subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{6125E6B1-D380-4D8D-AF0A-7D9BE75D2111}</revnumber>
		<lastprinted/>
		<createdtm>06/21/1999 21:00</createdtm>
		<lastsavedtm>07/15/2000 00:50</lastsavedtm>
		<pagecount>200</pagecount>
		<wordcount>0</wordcount>
		<charcount/>
		<appname>InstallShield Express</appname>
		<security>1</security>
	</summary>
	
	<table name="ActionText">
		<col key="yes" def="s72">Action</col>
		<col def="L64">Description</col>
		<col def="L128">Template</col>
		<row><td>Advertise</td><td>##IDS_ACTIONTEXT_Advertising##</td><td/></row>
		<row><td>AllocateRegistrySpace</td><td>##IDS_ACTIONTEXT_AllocatingRegistry##</td><td>##IDS_ACTIONTEXT_FreeSpace##</td></row>
		<row><td>AppSearch</td><td>##IDS_ACTIONTEXT_SearchInstalled##</td><td>##IDS_ACTIONTEXT_PropertySignature##</td></row>
		<row><td>BindImage</td><td>##IDS_ACTIONTEXT_BindingExes##</td><td>##IDS_ACTIONTEXT_File##</td></row>
		<row><td>CCPSearch</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td/></row>
		<row><td>CostFinalize</td><td>##IDS_ACTIONTEXT_ComputingSpace3##</td><td/></row>
		<row><td>CostInitialize</td><td>##IDS_ACTIONTEXT_ComputingSpace##</td><td/></row>
		<row><td>CreateFolders</td><td>##IDS_ACTIONTEXT_CreatingFolders##</td><td>##IDS_ACTIONTEXT_Folder##</td></row>
		<row><td>CreateShortcuts</td><td>##IDS_ACTIONTEXT_CreatingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut##</td></row>
		<row><td>DeleteServices</td><td>##IDS_ACTIONTEXT_DeletingServices##</td><td>##IDS_ACTIONTEXT_Service##</td></row>
		<row><td>DuplicateFiles</td><td>##IDS_ACTIONTEXT_CreatingDuplicate##</td><td>##IDS_ACTIONTEXT_FileDirectorySize##</td></row>
		<row><td>FileCost</td><td>##IDS_ACTIONTEXT_ComputingSpace2##</td><td/></row>
		<row><td>FindRelatedProducts</td><td>##IDS_ACTIONTEXT_SearchForRelated##</td><td>##IDS_ACTIONTEXT_FoundApp##</td></row>
		<row><td>GenerateScript</td><td>##IDS_ACTIONTEXT_GeneratingScript##</td><td>##IDS_ACTIONTEXT_1##</td></row>
		<row><td>ISLockPermissionsCost</td><td>##IDS_ACTIONTEXT_ISLockPermissionsCost##</td><td/></row>
		<row><td>ISLockPermissionsInstall</td><td>##IDS_ACTIONTEXT_ISLockPermissionsInstall##</td><td/></row>
		<row><td>InstallAdminPackage</td><td>##IDS_ACTIONTEXT_CopyingNetworkFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize##</td></row>
		<row><td>InstallFiles</td><td>##IDS_ACTIONTEXT_CopyingNewFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize2##</td></row>
		<row><td>InstallODBC</td><td>##IDS_ACTIONTEXT_InstallODBC##</td><td/></row>
		<row><td>InstallSFPCatalogFile</td><td>##IDS_ACTIONTEXT_InstallingSystemCatalog##</td><td>##IDS_ACTIONTEXT_FileDependencies##</td></row>
		<row><td>InstallServices</td><td>##IDS_ACTIONTEXT_InstallServices##</td><td>##IDS_ACTIONTEXT_Service2##</td></row>
		<row><td>InstallValidate</td><td>##IDS_ACTIONTEXT_Validating##</td><td/></row>
		<row><td>LaunchConditions</td><td>##IDS_ACTIONTEXT_EvaluateLaunchConditions##</td><td/></row>
		<row><td>MigrateFeatureStates</td><td>##IDS_ACTIONTEXT_MigratingFeatureStates##</td><td>##IDS_ACTIONTEXT_Application##</td></row>
		<row><td>MoveFiles</td><td>##IDS_ACTIONTEXT_MovingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize3##</td></row>
		<row><td>PatchFiles</td><td>##IDS_ACTIONTEXT_PatchingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize4##</td></row>
		<row><td>ProcessComponents</td><td>##IDS_ACTIONTEXT_UpdateComponentRegistration##</td><td/></row>
		<row><td>PublishComponents</td><td>##IDS_ACTIONTEXT_PublishingQualifiedComponents##</td><td>##IDS_ACTIONTEXT_ComponentIDQualifier##</td></row>
		<row><td>PublishFeatures</td><td>##IDS_ACTIONTEXT_PublishProductFeatures##</td><td>##IDS_ACTIONTEXT_FeatureColon##</td></row>
		<row><td>PublishProduct</td><td>##IDS_ACTIONTEXT_PublishProductInfo##</td><td/></row>
		<row><td>RMCCPSearch</td><td>##IDS_ACTIONTEXT_SearchingQualifyingProducts##</td><td/></row>
		<row><td>RegisterClassInfo</td><td>##IDS_ACTIONTEXT_RegisterClassServer##</td><td>##IDS_ACTIONTEXT_ClassId##</td></row>
		<row><td>RegisterComPlus</td><td>##IDS_ACTIONTEXT_RegisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppIdAppTypeRSN##</td></row>
		<row><td>RegisterExtensionInfo</td><td>##IDS_ACTIONTEXT_RegisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension2##</td></row>
		<row><td>RegisterFonts</td><td>##IDS_ACTIONTEXT_RegisterFonts##</td><td>##IDS_ACTIONTEXT_Font##</td></row>
		<row><td>RegisterMIMEInfo</td><td>##IDS_ACTIONTEXT_RegisterMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension##</td></row>
		<row><td>RegisterProduct</td><td>##IDS_ACTIONTEXT_RegisteringProduct##</td><td>##IDS_ACTIONTEXT_1b##</td></row>
		<row><td>RegisterProgIdInfo</td><td>##IDS_ACTIONTEXT_RegisteringProgIdentifiers##</td><td>##IDS_ACTIONTEXT_ProgID2##</td></row>
		<row><td>RegisterTypeLibraries</td><td>##IDS_ACTIONTEXT_RegisterTypeLibs##</td><td>##IDS_ACTIONTEXT_LibId##</td></row>
		<row><td>RegisterUser</td><td>##IDS_ACTIONTEXT_RegUser##</td><td>##IDS_ACTIONTEXT_1c##</td></row>
		<row><td>RemoveDuplicateFiles</td><td>##IDS_ACTIONTEXT_RemovingDuplicates##</td><td>##IDS_ACTIONTEXT_FileDir##</td></row>
		<row><td>RemoveEnvironmentStrings</td><td>##IDS_ACTIONTEXT_UpdateEnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction2##</td></row>
		<row><td>RemoveExistingProducts</td><td>##IDS_ACTIONTEXT_RemoveApps##</td><td>##IDS_ACTIONTEXT_AppCommandLine##</td></row>
		<row><td>RemoveFiles</td><td>##IDS_ACTIONTEXT_RemovingFiles##</td><td>##IDS_ACTIONTEXT_FileDir2##</td></row>
		<row><td>RemoveFolders</td><td>##IDS_ACTIONTEXT_RemovingFolders##</td><td>##IDS_ACTIONTEXT_Folder1##</td></row>
		<row><td>RemoveIniValues</td><td>##IDS_ACTIONTEXT_RemovingIni##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue##</td></row>
		<row><td>RemoveODBC</td><td>##IDS_ACTIONTEXT_RemovingODBC##</td><td/></row>
		<row><td>RemoveRegistryValues</td><td>##IDS_ACTIONTEXT_RemovingRegistry##</td><td>##IDS_ACTIONTEXT_KeyName##</td></row>
		<row><td>RemoveShortcuts</td><td>##IDS_ACTIONTEXT_RemovingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut1##</td></row>
		<row><td>Rollback</td><td>##IDS_ACTIONTEXT_RollingBack##</td><td>##IDS_ACTIONTEXT_1d##</td></row>
		<row><td>RollbackCleanup</td><td>##IDS_ACTIONTEXT_RemovingBackup##</td><td>##IDS_ACTIONTEXT_File2##</td></row>
		<row><td>SelfRegModules</td><td>##IDS_ACTIONTEXT_RegisteringModules##</td><td>##IDS_ACTIONTEXT_FileFolder##</td></row>
		<row><td>SelfUnregModules</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td>##IDS_ACTIONTEXT_FileFolder2##</td></row>
		<row><td>SetODBCFolders</td><td>##IDS_ACTIONTEXT_InitializeODBCDirs##</td><td/></row>
		<row><td>StartServices</td><td>##IDS_ACTIONTEXT_StartingServices##</td><td>##IDS_ACTIONTEXT_Service3##</td></row>
		<row><td>StopServices</td><td>##IDS_ACTIONTEXT_StoppingServices##</td><td>##IDS_ACTIONTEXT_Service4##</td></row>
		<row><td>UnmoveFiles</td><td>##IDS_ACTIONTEXT_RemovingMoved##</td><td>##IDS_ACTIONTEXT_FileDir3##</td></row>
		<row><td>UnpublishComponents</td><td>##IDS_ACTIONTEXT_UnpublishQualified##</td><td>##IDS_ACTIONTEXT_ComponentIdQualifier2##</td></row>
		<row><td>UnpublishFeatures</td><td>##IDS_ACTIONTEXT_UnpublishProductFeatures##</td><td>##IDS_ACTIONTEXT_Feature##</td></row>
		<row><td>UnpublishProduct</td><td>##IDS_ACTIONTEXT_UnpublishingProductInfo##</td><td/></row>
		<row><td>UnregisterClassInfo</td><td>##IDS_ACTIONTEXT_UnregisterClassServers##</td><td>##IDS_ACTIONTEXT_ClsID##</td></row>
		<row><td>UnregisterComPlus</td><td>##IDS_ACTIONTEXT_UnregisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppId##</td></row>
		<row><td>UnregisterExtensionInfo</td><td>##IDS_ACTIONTEXT_UnregisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension##</td></row>
		<row><td>UnregisterFonts</td><td>##IDS_ACTIONTEXT_UnregisteringFonts##</td><td>##IDS_ACTIONTEXT_Font2##</td></row>
		<row><td>UnregisterMIMEInfo</td><td>##IDS_ACTIONTEXT_UnregisteringMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension2##</td></row>
		<row><td>UnregisterProgIdInfo</td><td>##IDS_ACTIONTEXT_UnregisteringProgramIds##</td><td>##IDS_ACTIONTEXT_ProgID##</td></row>
		<row><td>UnregisterTypeLibraries</td><td>##IDS_ACTIONTEXT_UnregTypeLibs##</td><td>##IDS_ACTIONTEXT_Libid2##</td></row>
		<row><td>WriteEnvironmentStrings</td><td>##IDS_ACTIONTEXT_EnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction##</td></row>
		<row><td>WriteIniValues</td><td>##IDS_ACTIONTEXT_WritingINI##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue2##</td></row>
		<row><td>WriteRegistryValues</td><td>##IDS_ACTIONTEXT_WritingRegistry##</td><td>##IDS_ACTIONTEXT_KeyNameValue##</td></row>
	</table>

	<table name="AdminExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>InstallAdminPackage</td><td/><td>3900</td><td>InstallAdminPackage</td><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>4010</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdminUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AdminWelcome</td><td/><td>1010</td><td>AdminWelcome</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>50</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1020</td><td>SetupProgress</td><td/></row>
	</table>

	<table name="AdvtExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>4910</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdvtUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="AppId">
		<col key="yes" def="s38">AppId</col>
		<col def="S255">RemoteServerName</col>
		<col def="S255">LocalService</col>
		<col def="S255">ServiceParameters</col>
		<col def="S255">DllSurrogate</col>
		<col def="I2">ActivateAtStorage</col>
		<col def="I2">RunAsInteractiveUser</col>
	</table>

	<table name="AppSearch">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="BBControl">
		<col key="yes" def="s50">Billboard_</col>
		<col key="yes" def="s50">BBControl</col>
		<col def="s50">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L50">Text</col>
	</table>

	<table name="Billboard">
		<col key="yes" def="s50">Billboard</col>
		<col def="s38">Feature_</col>
		<col def="S50">Action</col>
		<col def="I2">Ordering</col>
	</table>

	<table name="Binary">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<row><td>ISExpHlp.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\ISExpHlp.dll</td></row>
		<row><td>ISSELFREG.DLL</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\isregsvr.dll</td></row>
		<row><td>NewBinary1</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\banner.jpg</td></row>
		<row><td>NewBinary10</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CompleteSetupIco.ibd</td></row>
		<row><td>NewBinary11</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary12</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DestIcon.ibd</td></row>
		<row><td>NewBinary13</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\NetworkInstall.ico</td></row>
		<row><td>NewBinary14</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DontInstall.ico</td></row>
		<row><td>NewBinary15</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Install.ico</td></row>
		<row><td>NewBinary16</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallFirstUse.ico</td></row>
		<row><td>NewBinary17</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallPartial.ico</td></row>
		<row><td>NewBinary18</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallStateMenu.ico</td></row>
		<row><td>NewBinary2</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\New.ibd</td></row>
		<row><td>NewBinary3</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Up.ibd</td></row>
		<row><td>NewBinary4</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\WarningIcon.ibd</td></row>
		<row><td>NewBinary5</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\welcome.jpg</td></row>
		<row><td>NewBinary6</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary7</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\ReinstIco.ibd</td></row>
		<row><td>NewBinary8</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\RemoveIco.ibd</td></row>
		<row><td>NewBinary9</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\SetupIcon.ibd</td></row>
		<row><td>SetAllUsers.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\SetAllUsers.dll</td></row>
	</table>

	<table name="BindImage">
		<col key="yes" def="s72">File_</col>
		<col def="S255">Path</col>
	</table>

	<table name="CCPSearch">
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="CheckBox">
		<col key="yes" def="s72">Property</col>
		<col def="S64">Value</col>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td></row>
		<row><td>LAUNCHREADME</td><td>1</td></row>
	</table>

	<table name="Class">
		<col key="yes" def="s38">CLSID</col>
		<col key="yes" def="s32">Context</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_Default</col>
		<col def="L255">Description</col>
		<col def="S38">AppId_</col>
		<col def="S255">FileTypeMask</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="S32">DefInprocHandler</col>
		<col def="S255">Argument</col>
		<col def="s38">Feature_</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="ComboBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="CompLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s38">ComponentId</col>
		<col def="I2">Type</col>
	</table>

	<table name="Complus">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="I2">ExpType</col>
	</table>

	<table name="Component">
		<col key="yes" def="s72">Component</col>
		<col def="S38">ComponentId</col>
		<col def="s72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">Condition</col>
		<col def="S72">KeyPath</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISScanAtBuildFile</col>
		<col def="S255">ISRegFileToMergeAtBuild</col>
		<col def="S0">ISDotNetInstallerArgsInstall</col>
		<col def="S0">ISDotNetInstallerArgsCommit</col>
		<col def="S0">ISDotNetInstallerArgsUninstall</col>
		<col def="S0">ISDotNetInstallerArgsRollback</col>
		<row><td>AeroEduLib.dll</td><td>{0FD32B44-70D5-4EF6-A684-A7DDC23BF966}</td><td>INSTALLDIR</td><td>2</td><td/><td>aeroedulib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduLib.dll1</td><td>{6DDB1C9D-FCEF-4B5F-BBE4-0515D9E2CC98}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>aeroedulib.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduLib.dll2</td><td>{44D837CE-7F89-4E83-9032-8145BBC07FA3}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>aeroedulib.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.BrowserSubprocess.Core.dll</td><td>{D66F532B-C680-4E90-9677-3DB62FDCE3CF}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.browsersubprocess.c</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.BrowserSubprocess.exe</td><td>{D40976CF-34C1-467A-809B-85DC537E1222}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.browsersubprocess.e</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.Core.dll</td><td>{4AE11144-0665-4FA8-AE46-A90DB8B261BD}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.WinForms.dll</td><td>{6B729415-21BF-4381-9BA0-BF1FB01C941F}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.winforms.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.dll</td><td>{A71E4FE0-0D30-4BB5-AC59-A2915BBB298F}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Component</td><td>{ACCF14DC-0FC0-46CE-9BB0-237128BAEB60}</td><td>INSTALLDIR</td><td>2</td><td/><td>File</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Component1</td><td>{9DD244CE-F097-4FB2-AF64-D06D3ECFA1CC}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>File1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Component2</td><td>{D19E5011-1E99-4AF0-841A-BA1175E15971}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>File2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>D3Dcompiler_47.dll</td><td>{9A06A296-C94B-49B3-B65A-43DB6FC630E8}</td><td>_4BIT</td><td>2</td><td/><td>d3dcompiler_47.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DMSkin.dll</td><td>{E9E51E09-DA81-455F-96F6-3C50275CD342}</td><td>INSTALLDIR</td><td>2</td><td/><td>dmskin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DMSkin.dll1</td><td>{083B3F09-8A43-4F33-80FC-D8CE1E4578B4}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>dmskin.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.DotNetBar2.dll</td><td>{61C75B9F-4282-4C8F-9F30-9A0493594675}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>devcomponents.dotnetbar2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.DotNetBar2.dll1</td><td>{D35FBD1A-A5A2-4361-9905-9B1301A755DE}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>devcomponents.dotnetbar2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.Instrumentation.dll</td><td>{B716DE85-7F15-4D07-B239-A1A781BDED73}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>devcomponents.instrumentatio</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll</td><td>{6F911E78-EA10-4259-83B0-FAFDF91186C0}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>dlldeinterlace.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll1</td><td>{B2A13933-7A20-46AE-BB67-09E754B8CB5D}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>dlldeinterlace.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>H264Play.dll</td><td>{AF08C3D5-4CE1-4F27-931C-E98F320696AF}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>h264play.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>H264Play.dll1</td><td>{A6F3BAF4-0719-4EFB-BC58-A2B1BF9A931B}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>h264play.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{881C8369-C985-46A3-B8E4-AA5207BA38B3}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{5BB2AC0A-857F-4103-93B3-09AC69598CB3}</td><td>RECORD_PLAYER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{D3705115-B526-4685-8426-E73CDDBBB071}</td><td>PLATFORMS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{BA466253-A7E6-4339-ACC5-EE59DBB737AF}</td><td>SQLDRIVERS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{5A4F4731-0213-42D7-B3F7-282A5C1F3320}</td><td>TRANSLATIONS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{A68CFD8C-C7BA-42E2-BE29-66F3982521B9}</td><td>DATA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{123D0660-B711-4BC8-A413-6324F8D57B95}</td><td>LIBOBS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{00882D68-C0A0-4E01-B06E-0940CDADBCB3}</td><td>OBS_PLUGINS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{86A2D41D-54D8-4A55-96DD-F818F39C03E7}</td><td>COREAUDIO_ENCODER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{103C30D7-9058-4AC1-BD23-CF551627B77D}</td><td>LOCALE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{77574DE7-FEC0-46E1-BC17-72D1D99A709F}</td><td>IMAGE_SOURCE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{A18046EF-17DA-425D-8597-6CB83192FC66}</td><td>LOCALE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{111B2D97-976C-4EE6-9231-61F4CB27D7C8}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{01E56451-7B16-43FE-ACA1-C15F97B4FC02}</td><td>OBS_FFMPEG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{BFFDC37F-DF85-4A44-BBDC-059C61B5E04D}</td><td>LOCALE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{DAB9AD16-7B45-494A-9F86-C6D253716B00}</td><td>OBS_FILTERS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{BA1D3F81-109F-4068-915B-78F24491F83F}</td><td>LOCALE3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{668D7509-3704-40FD-8A8C-4D033BD11546}</td><td>OBS_OUTPUTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{0BB1BC95-D7B9-4812-9C5B-528604263F24}</td><td>LOCALE4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td>{10BD077B-036F-49F9-A9DE-8A12449F7B5E}</td><td>OBS_QSV11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td>{97A62739-A886-4475-A927-B271AB4B4277}</td><td>LOCALE5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td>{DE88DE00-C94E-46C1-A23B-2FF0195C524D}</td><td>OBS_TRANSITIONS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td>{7E5D04AB-5B1A-464C-8C7E-CD1F5584A285}</td><td>LOCALE6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{147B092D-4878-47AF-AB35-5728ACC303E4}</td><td>TEMPLATE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td>{49AB8BE0-086D-4368-A470-AEDF2042BB8D}</td><td>OBS_X264</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td>{FBDE7ABF-4BE1-4C71-BC5A-CA5EDCF8946A}</td><td>LOCALE7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td>{F22370D1-495C-4EB7-BF05-01A379907EA5}</td><td>RTMP_SERVICES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td>{E9661918-8A0F-41EF-90D6-1ECF5B38B537}</td><td>LOCALE8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td>{C5D949EE-232D-472D-B7A8-C8077853F3FA}</td><td>TEXT_FREETYPE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td>{FCDBA56F-14D8-4264-AF2E-81FD54095191}</td><td>LOCALE9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td>{18D3EA08-2BC2-49D6-90B1-55F26D13F3CA}</td><td>WIN_CAPTURE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td>{D0B5E01D-9D0D-46D5-824B-B42DE9257E38}</td><td>LOCALE10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td>{74C275A3-0E83-4633-8472-DD5085870451}</td><td>WIN_DECKLINK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td>{E8AB340F-EE30-4F2E-810A-B957762269CC}</td><td>LOCALE11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{50E1D936-3B95-4BDB-BD3E-098427DC3468}</td><td>INSTALLDIR</td><td>258</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td>{DAB402AB-1310-466A-9467-B90421F0B390}</td><td>WIN_DSHOW</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td>{75B7244B-E022-40D5-BEBF-1734767CAD96}</td><td>LOCALE12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td>{C3238D4C-ACEA-4320-97B3-C1E81C4A9890}</td><td>WIN_MF</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td>{043D8BA6-80BE-41F5-8D2F-FEF12E3DA49A}</td><td>LOCALE13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td>{2CC8DC8A-D4F8-4E37-94C7-B5CE37E6E355}</td><td>WIN_WASAPI</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td>{484B3A3D-709C-42F4-A9B5-B5BF8D5254A1}</td><td>LOCALE14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td>{5C722588-4E02-4F08-B414-8CB6592017F1}</td><td>OBS_STUDIO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td>{E7139DA1-1ADD-4DAF-AFC6-2A323D398F3C}</td><td>LICENSE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td>{397F8A4A-C863-4E86-83B5-E374D4660B87}</td><td>LOCALE15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td>{5ED687B9-A860-4AD7-844D-D46AF2D48E6A}</td><td>THEMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{70258A06-DE50-4B4E-AC20-A12A1342EC52}</td><td>OBSBIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td>{750859F0-6259-43F4-ABB7-8B6DDAFDEF06}</td><td>DARK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td>{4C46B48D-39C6-4164-AC18-151E807393CA}</td><td>OBS_PLUGINS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td>{E3787604-FD40-4BDB-82B2-AFD79E6BF84E}</td><td>_4BIT1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{BB9D53FC-D4DA-4B39-B1D8-2A08E253AC31}</td><td>BIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{0CAFB904-FEF7-41B8-AC57-663107316F7E}</td><td>_4BIT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{461BF1ED-1CD6-415E-A73E-ACB260F038FB}</td><td>ICONENGINES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{23F95429-A97F-44EE-B5B3-6143C394E216}</td><td>IMAGEFORMATS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetSdk.dll</td><td>{E1CE72BA-CBEB-462D-90F8-D469CBFA8632}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>netsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent1</td><td>{C76F1E47-42B0-4A4F-A961-C7CDEBDF4015}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent2</td><td>{23C51DBF-0276-4962-A606-3FBFD995FC7A}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent3</td><td>{C6F87BFF-94BF-4039-9F11-20B1FC218F18}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent4</td><td>{45CD5F04-325B-4CF3-875B-D9C0B2E1EE1B}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent5</td><td>{758CB6F6-6DBB-41DA-BBA1-9B349DD0D650}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll</td><td>{8A5BA584-5353-46F3-A9FF-10F412D8DC26}</td><td>INSTALLDIR</td><td>2</td><td/><td>newtonsoft.json.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll1</td><td>{F055A38B-2FAB-4C3E-935E-AF19180F7827}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>newtonsoft.json.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll2</td><td>{BDDCE571-69E1-4218-8F3D-9B447071049B}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>newtonsoft.json.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Core.dll</td><td>{BAB87965-4481-4E6F-80C8-1BEDEA990B4F}</td><td>_4BIT</td><td>2</td><td/><td>qt5core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Gui.dll</td><td>{C528431C-A737-4B7D-89DD-7B363F70F268}</td><td>_4BIT</td><td>2</td><td/><td>qt5gui.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Sql.dll</td><td>{3D6EBE5C-D0E4-47DD-B720-CCF1C94EB6CC}</td><td>_4BIT</td><td>2</td><td/><td>qt5sql.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Svg.dll</td><td>{11A66C52-98BE-4C05-B236-99A329CE071D}</td><td>_4BIT</td><td>2</td><td/><td>qt5svg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Widgets.dll</td><td>{35283038-2C42-465E-A7A3-6E631CD8EF06}</td><td>_4BIT</td><td>2</td><td/><td>qt5widgets.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SDL2.dll</td><td>{05E98B4A-06DB-4FAF-AF07-6167FA58928A}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>sdl2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SDL2.dll1</td><td>{A3C15A24-12DE-4466-9881-DC18D3B3DB7A}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>sdl2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll</td><td>{018796B3-B30E-4833-A754-4D24EC804747}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>streamreader.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll1</td><td>{29EB4B43-62D7-4A5C-A5E6-1F79FA9F2308}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>streamreader.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll</td><td>{9B4BF58C-C0D6-48F9-B2B6-E417CD4034ED}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>avcodec_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll1</td><td>{D08FF217-2011-4607-BD2C-5C3DC204DC47}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avcodec_57.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll2</td><td>{3A02F8F2-CF2E-47C8-9BC5-9BC1B893E3E0}</td><td>_4BIT</td><td>2</td><td/><td>avcodec_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avdevice_57.dll</td><td>{2B4D86E1-B70F-4EAD-A75B-CD2C38296284}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>avdevice_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avdevice_57.dll1</td><td>{4E8CD757-C80D-40FA-A3CE-5F1B616F5862}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avdevice_57.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avdevice_57.dll2</td><td>{FA209CF0-7CF3-41C4-ABE0-1DB900D56E86}</td><td>_4BIT</td><td>2</td><td/><td>avdevice_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avfilter_6.dll</td><td>{A5C2EB99-6470-4AB5-BF07-76CC0FF9CF29}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>avfilter_6.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avfilter_6.dll1</td><td>{58DE9E4B-91DD-446B-990F-8024C3DD1D29}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avfilter_6.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avfilter_6.dll2</td><td>{1A32F67C-10EB-45DA-9BDB-BE6F533F3E1F}</td><td>_4BIT</td><td>2</td><td/><td>avfilter_6.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll</td><td>{B27CC2AC-E22A-4A16-8467-B59AA2C66A7B}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>avformat_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll1</td><td>{6B0C172E-CEA9-47D0-B06D-CD535240125A}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avformat_57.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll2</td><td>{534377CD-9D2E-41E3-95A0-6235CF3C4A75}</td><td>_4BIT</td><td>2</td><td/><td>avformat_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll</td><td>{FA1A6676-21E8-453E-A184-1CEB2F0C1769}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>avutil_55.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll1</td><td>{E3817BF2-08FE-418D-8647-ED392689023E}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avutil_55.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll2</td><td>{C9FA7DDE-20C2-4CB9-9222-ADF600780242}</td><td>_4BIT</td><td>2</td><td/><td>avutil_55.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>booth.dll</td><td>{67FED0D1-DADD-44D8-8EAE-D4C08CBFB11E}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>booth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>coreaudio_encoder.dll</td><td>{00CFC520-605A-480D-BE19-CB8FEFE442AA}</td><td>_4BIT1</td><td>2</td><td/><td>coreaudio_encoder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_framework.dll</td><td>{D6613BFB-81FF-42AB-B0AD-53884008587B}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>cs_framework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_framework.dll1</td><td>{085E2801-EBDA-4438-A646-C15274EE8BC0}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_framework.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_logic.dll</td><td>{35F81341-CD1A-4354-A1FF-DFBB0E625B01}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>cs_logic.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_logic.dll1</td><td>{C4FD86E1-8E02-453F-955F-B5BF1B66063F}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_logic.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_xc.dll</td><td>{EEF0AB68-113C-4C7F-86D4-832763337BF4}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>cs_xc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_xc.dll1</td><td>{10C8E67B-FB3B-4E01-8DB9-B97FABD3311D}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_xc.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d3dcompiler_43.dll</td><td>{B292151B-2E58-4267-AF25-78C33D021E77}</td><td>INSTALLDIR</td><td>2</td><td/><td>d3dcompiler_43.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d3dcompiler_47.dll</td><td>{5A11CAEB-EF46-41FB-AFC6-E2E6F5C0686C}</td><td>INSTALLDIR</td><td>2</td><td/><td>d3dcompiler_47.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d_framework.dll</td><td>{4A63A177-A052-47A2-A1D0-FBDB60E5BB1A}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>d_framework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d_framework.dll1</td><td>{1492BBAB-C78B-467F-94D8-7A3D54043E05}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>d_framework.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ffmpeg_mux64.exe</td><td>{7EB3A639-DB9C-489D-A5D8-89055B0E623D}</td><td>OBS_FFMPEG</td><td>2</td><td/><td>ffmpeg_mux64.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>get_graphics_offsets64.exe</td><td>{0CCEFDE1-B71B-4020-BDBC-4CDFB90F9348}</td><td>WIN_CAPTURE</td><td>2</td><td/><td>get_graphics_offsets64.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>graphics_hook64.dll</td><td>{2EB5D39B-65A0-40DF-85CA-61BB7C14292E}</td><td>WIN_CAPTURE</td><td>2</td><td/><td>graphics_hook64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec_v.dll</td><td>{45E71BFA-ACB4-47AC-B1D4-EE12E22657AF}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>hi_h264dec_v.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec_v.dll1</td><td>{420F3B56-6AE4-4A5A-9A9A-69FFBBED4568}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>hi_h264dec_v.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icudt54.dll</td><td>{5EDF6CF3-2CF8-43F0-BCA2-39464624F6DD}</td><td>_4BIT</td><td>2</td><td/><td>icudt54.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuin54.dll</td><td>{F3B9A412-886B-42DF-96C0-563C235785DF}</td><td>_4BIT</td><td>2</td><td/><td>icuin54.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuuc54.dll</td><td>{54551353-6E5B-46DB-A4CD-6334620BBF8D}</td><td>_4BIT</td><td>2</td><td/><td>icuuc54.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>image_source.dll</td><td>{CD32A23E-C81E-4BD7-9517-07C78E0A169F}</td><td>_4BIT1</td><td>2</td><td/><td>image_source.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>inject_helper64.exe</td><td>{83C09058-D24E-4538-B3BA-AE98D78801F5}</td><td>WIN_CAPTURE</td><td>2</td><td/><td>inject_helper64.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libEGL.dll</td><td>{51DF1D84-FF47-49AC-8CEA-FAF45641F72D}</td><td>INSTALLDIR</td><td>2</td><td/><td>libegl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libEGL.dll1</td><td>{E09B67B0-8324-44C3-8A88-C5B3F96A9D1E}</td><td>_4BIT</td><td>2</td><td/><td>libegl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libGLESv2.dll</td><td>{DBFD03EC-FF68-4438-BFCA-FFBB87D19675}</td><td>INSTALLDIR</td><td>2</td><td/><td>libglesv2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libGLESv2.dll1</td><td>{0335565F-EC69-4167-9E8B-4A63192FA9AF}</td><td>_4BIT</td><td>2</td><td/><td>libglesv2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcef.dll</td><td>{33D90DE0-D6A5-4E73-A48A-B6CBDA2AFF00}</td><td>INSTALLDIR</td><td>2</td><td/><td>libcef.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcurl.dll</td><td>{44550D0E-5C87-469E-8AC4-1A4F084E7479}</td><td>_4BIT</td><td>2</td><td/><td>libcurl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll</td><td>{76D337A4-BB32-489A-B618-66F1489A0229}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>libeay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll1</td><td>{40CB0B8F-CF41-4E95-A278-C31B2C2DB9BB}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libeay32.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libobs_d3d11.dll</td><td>{E44DD303-F637-4C99-8EE9-9A6582F2404C}</td><td>_4BIT</td><td>2</td><td/><td>libobs_d3d11.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libobs_opengl.dll</td><td>{48CB18F6-3EBA-4EE1-B69B-94B9B92937E4}</td><td>_4BIT</td><td>2</td><td/><td>libobs_opengl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libogg_0.dll</td><td>{C366B9B6-71C1-433D-8025-02D8BA72543A}</td><td>_4BIT</td><td>2</td><td/><td>libogg_0.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libopus_0.dll</td><td>{D1841510-EE16-498D-9799-113E19C65356}</td><td>_4BIT</td><td>2</td><td/><td>libopus_0.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libportaudio_2.dll.dll</td><td>{780AF609-1B08-4EC8-9C99-7D66F9D95CBD}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>libportaudio_2.dll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libportaudio_2.dll.dll1</td><td>{E9672484-BD40-4651-8F9E-FB3B1D358E0C}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libportaudio_2.dll.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbis_0.dll</td><td>{F419D54B-D00E-424F-9EA5-D3D789979752}</td><td>_4BIT</td><td>2</td><td/><td>libvorbis_0.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbisenc_2.dll</td><td>{89FECAA3-8734-42F0-BBDA-E90AD0FDE10A}</td><td>_4BIT</td><td>2</td><td/><td>libvorbisenc_2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbisfile_3.dll</td><td>{63101F8F-9341-47A7-AFE7-07224E8AB659}</td><td>_4BIT</td><td>2</td><td/><td>libvorbisfile_3.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_146.dll</td><td>{558F3D7F-A364-4FB1-AA3B-41D22040A76A}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>libx264_146.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_146.dll1</td><td>{86A957D2-B3A4-4986-A03B-6FFC6F136D66}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libx264_146.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_148.dll</td><td>{E66402A8-FEEA-4686-ACFE-E0E1AE8EDAFA}</td><td>_4BIT</td><td>2</td><td/><td>libx264_148.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureAudioDevice.dll</td><td>{499B19C5-C0D7-4218-888C-890C1D121672}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>m_captureaudiodevice.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureAudioDevice.dll1</td><td>{8C1966AE-79B8-4CD2-9F5A-E16B2647A456}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_captureaudiodevice.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureDesk.dll</td><td>{0F221DAE-B034-46C8-BB74-01AC715A07E5}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>m_capturedesk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureDesk.dll1</td><td>{958CC6D5-C1EC-48B5-9712-E3886D6F5B6A}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_capturedesk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_recorder.dll</td><td>{C181B65B-EFE8-4B15-AFBD-B161609CABF9}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>m_recorder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_recorder.dll1</td><td>{A4B8DD46-4976-4C0C-B5D9-C34267C6B12B}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_recorder.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_rtsp.dll</td><td>{05E2ADF1-ECF0-4FA2-A259-A188A3D6A962}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>m_rtsp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_rtsp.dll1</td><td>{EA762435-1322-4BD6-9E72-C21BFB18D995}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_rtsp.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_transferDesk.dll</td><td>{515FAEBC-CA4E-42D3-8765-0495B75F9DD3}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>m_transferdesk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_transferDesk.dll1</td><td>{9512D27D-EC2A-40CF-980B-8EDC8B9B1BBF}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_transferdesk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs.dll</td><td>{2575823E-2A63-4629-A3ED-AE451701A6F3}</td><td>_4BIT</td><td>2</td><td/><td>obs.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs64.exe</td><td>{18685724-3EDA-44AA-9D99-BD9AC2785C4F}</td><td>_4BIT</td><td>2</td><td/><td>obs64.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_ffmpeg.dll</td><td>{D102BE43-0DA4-4C9E-9FFF-8C76052EFC17}</td><td>_4BIT1</td><td>2</td><td/><td>obs_ffmpeg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_filters.dll</td><td>{EF75C9AF-2B9D-4EAF-9EBD-72CF32DFC8DF}</td><td>_4BIT1</td><td>2</td><td/><td>obs_filters.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_outputs.dll</td><td>{15FC99E4-4EEC-4E20-9514-F73AD394BD50}</td><td>_4BIT1</td><td>2</td><td/><td>obs_outputs.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_qsv11.dll</td><td>{133B5A06-020C-4C66-98DD-2AC842FC2E6D}</td><td>_4BIT1</td><td>2</td><td/><td>obs_qsv11.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_transitions.dll</td><td>{D30FF977-46CC-48B5-9719-F4CD4D9A6F18}</td><td>_4BIT1</td><td>2</td><td/><td>obs_transitions.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_x264.dll</td><td>{FAD3C542-0CC8-47C4-A4FC-D86D0DA05416}</td><td>_4BIT1</td><td>2</td><td/><td>obs_x264.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obsglad.dll</td><td>{242A111A-DC29-4AD3-AAB0-A39276BAFF81}</td><td>_4BIT</td><td>2</td><td/><td>obsglad.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>opencv_core248.dll</td><td>{F558AAD0-474B-4FF7-96C5-98E4B0BC511D}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>opencv_core248.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>opencv_highgui248.dll</td><td>{8172A915-2251-47CF-B658-AA23876D113A}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>opencv_highgui248.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>opengl32sw.dll</td><td>{42A598F0-BE18-49AF-B528-609D6E1CDCF0}</td><td>_4BIT</td><td>2</td><td/><td>opengl32sw.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>postproc_54.dll</td><td>{4CE28631-D084-40B3-8BB6-FE8E3CFF3203}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>postproc_54.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>postproc_54.dll1</td><td>{C2D38E37-F612-44C0-9A60-07B5084E0204}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>postproc_54.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qdds.dll</td><td>{01720D59-45AB-44A6-900C-930EDEEDBB59}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qdds.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qgif.dll</td><td>{B8928286-1986-461E-94C6-9A1B0511EAA0}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qgif.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qicns.dll</td><td>{0E011A74-5E56-4E6E-A3F9-10AB170DB833}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qicns.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qico.dll</td><td>{E3183F75-2346-415F-B3C1-1D52F8AE150D}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qico.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qjp2.dll</td><td>{37456034-5984-41D6-9C52-9A00A5D750C0}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qjp2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qjpeg.dll</td><td>{AABA1817-20A6-434B-A4D6-206185A74729}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qjpeg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qmng.dll</td><td>{8387FB30-6707-4824-940E-A34B1F1428D7}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qmng.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlite.dll</td><td>{E7C6D4C3-0DC8-4FEA-887F-C7698A074B13}</td><td>SQLDRIVERS</td><td>2</td><td/><td>qsqlite.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlmysql.dll</td><td>{0E4631F0-829B-4E2F-9DE5-98E9B58966D6}</td><td>SQLDRIVERS</td><td>2</td><td/><td>qsqlmysql.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlodbc.dll</td><td>{7CDD2B14-D9B7-421D-B52A-FAC8634C045C}</td><td>SQLDRIVERS</td><td>2</td><td/><td>qsqlodbc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlpsql.dll</td><td>{1FDD4BB8-F553-45D6-B562-CE5F455A4054}</td><td>SQLDRIVERS</td><td>2</td><td/><td>qsqlpsql.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsvg.dll</td><td>{D01F71AB-99B3-4B75-A9C4-435876C10B8B}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qsvg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsvgicon.dll</td><td>{7EE4DC86-5259-4461-9E70-DDDE2EF83BD1}</td><td>ICONENGINES</td><td>2</td><td/><td>qsvgicon.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qtga.dll</td><td>{62872692-16D5-4515-B85B-196FA4D3C480}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qtga.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qtiff.dll</td><td>{80559163-397B-4162-8BD4-D710AA0E0BD7}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qtiff.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwbmp.dll</td><td>{1FAE5811-5BC8-43B8-B636-AA8039810D28}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qwbmp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwebp.dll</td><td>{63D8058E-0071-48AD-BB99-17EB8FE5F02C}</td><td>IMAGEFORMATS</td><td>2</td><td/><td>qwebp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwindows.dll</td><td>{ECDACE2A-C0B7-4A62-BA8A-ADCBCC3F2140}</td><td>PLATFORMS</td><td>2</td><td/><td>qwindows.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>rtmp_services.dll</td><td>{82E75436-71AC-473B-922A-B8DBBA1ACB70}</td><td>_4BIT1</td><td>2</td><td/><td>rtmp_services.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll</td><td>{489E9F25-F657-4203-B33E-FB5E3FED99CA}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>ssleay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll1</td><td>{9EF32840-F4A2-4A89-8D8B-B0EE64C4C48C}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>ssleay32.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll</td><td>{713A13DE-C28A-48DB-AFE5-C58B7840FE2D}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>swresample_2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll1</td><td>{B0978FD0-6EBA-4ED8-901E-E17FD0BE3EE6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>swresample_2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll2</td><td>{63CD98E6-706D-49B7-A43C-89BAF41B469E}</td><td>_4BIT</td><td>2</td><td/><td>swresample_2.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll</td><td>{BDDB8174-B48F-41A6-A799-A93DEA26742C}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>swscale_4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll1</td><td>{09E84B82-0DD8-4771-AEF3-931C9B8080D1}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>swscale_4.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll2</td><td>{9D120042-B80A-44EB-85C9-6E34D13E73DC}</td><td>_4BIT</td><td>2</td><td/><td>swscale_4.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>text_freetype2.dll</td><td>{2B7F9FE1-6BC6-4238-974D-3404863D0ACF}</td><td>_4BIT1</td><td>2</td><td/><td>text_freetype2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>w32_pthreads.dll</td><td>{4509B80F-3B5C-4CED-AAB1-CDE20DF48598}</td><td>_4BIT</td><td>2</td><td/><td>w32_pthreads.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>widevinecdmadapter.dll</td><td>{4D378B12-A432-463D-B394-1AE443DDA76A}</td><td>INSTALLDIR</td><td>2</td><td/><td>widevinecdmadapter.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_capture.dll</td><td>{233DB760-425B-428C-B3C3-A6ED4557661A}</td><td>_4BIT1</td><td>2</td><td/><td>win_capture.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_decklink.dll</td><td>{20A6A617-1462-43F2-8E16-9F0FE36A81D9}</td><td>_4BIT1</td><td>2</td><td/><td>win_decklink.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_dshow.dll</td><td>{4A169A58-6BF4-4003-A483-5218DB74080D}</td><td>_4BIT1</td><td>2</td><td/><td>win_dshow.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_mf.dll</td><td>{C8272B34-75EE-4BBF-A2A9-7C3F47EAA3E3}</td><td>_4BIT1</td><td>2</td><td/><td>win_mf.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_wasapi.dll</td><td>{5FA32B2C-E13E-459C-A5BB-E8C42F18F687}</td><td>_4BIT1</td><td>2</td><td/><td>win_wasapi.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>zlib.dll</td><td>{F144655C-8C3A-4EFF-B296-3FAF21F2404A}</td><td>_4BIT</td><td>2</td><td/><td>zlib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
	</table>

	<table name="Condition">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="i2">Level</col>
		<col def="S255">Condition</col>
	</table>

	<table name="Control">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control</col>
		<col def="s20">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="S72">Property</col>
		<col def="L0">Text</col>
		<col def="S50">Control_Next</col>
		<col def="L50">Help</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISControlId</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="S72">Binary_</col>
		<row><td>AdminChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>458755</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_BrowseDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_ChangeDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>7</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsAdminInstallBrowse_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>3</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsAdminInstallBrowse_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminNetworkLocation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>PushButton</td><td>286</td><td>124</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>SetupPathEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_SpecifyNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>40</td><td>131075</td><td/><td>##IDS__IsAdminInstallPoint_EnterNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocationFormatted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Install##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>LBBrowse</td><td>Text</td><td>21</td><td>90</td><td>100</td><td>10</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>SetupPathEdit</td><td>PathEdit</td><td>21</td><td>102</td><td>330</td><td>17</td><td>3</td><td>TARGETDIR</td><td/><td>Browse</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_Wizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_ServerImage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Icon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>CancelSetup</td><td>No</td><td>PushButton</td><td>135</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_No##</td><td>Yes</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Text</td><td>Text</td><td>48</td><td>15</td><td>194</td><td>30</td><td>131075</td><td/><td>##IDS__IsCancelDlg_ConfirmCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Yes</td><td>PushButton</td><td>62</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_Yes##</td><td>No</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetup</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Tree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>203</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Change##</td><td>Help</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Details</td><td>PushButton</td><td>93</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Space##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_SelectFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgText</td><td>Text</td><td>9</td><td>51</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_ClickFeatureIcon##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>FeatureGroup</td><td>GroupBox</td><td>235</td><td>67</td><td>131</td><td>120</td><td>1</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Help</td><td>PushButton</td><td>22</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Help##</td><td>Details</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Text</td><td>8</td><td>190</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>Text</td><td>241</td><td>80</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_MultilineDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Location</td><td>Text</td><td>8</td><td>203</td><td>291</td><td>20</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeaturePath##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Size</td><td>Text</td><td>241</td><td>133</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureSize##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Tree</td><td>SelectionTree</td><td>8</td><td>70</td><td>220</td><td>118</td><td>7</td><td>_BrowseProperty</td><td/><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetupTips</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetupDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DontInstall</td><td>Icon</td><td>21</td><td>155</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary14</td></row>
		<row><td>CustomSetupTips</td><td>DontInstallText</td><td>Text</td><td>60</td><td>155</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_WillNotBeInstalled##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>FirstInstallText</td><td>Text</td><td>60</td><td>180</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Advertise##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Install</td><td>Icon</td><td>21</td><td>105</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary15</td></row>
		<row><td>CustomSetupTips</td><td>InstallFirstUse</td><td>Icon</td><td>21</td><td>180</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary16</td></row>
		<row><td>CustomSetupTips</td><td>InstallPartial</td><td>Icon</td><td>21</td><td>130</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary17</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateMenu</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary18</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateText</td><td>Text</td><td>21</td><td>91</td><td>300</td><td>10</td><td>3</td><td/><td>##IDS_SetupTips_InstallState##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>CustomSetupTips</td><td>InstallText</td><td>Text</td><td>60</td><td>105</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_AllInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>MenuText</td><td>Text</td><td>50</td><td>52</td><td>300</td><td>36</td><td>3</td><td/><td>##IDS_SetupTips_IconInstallState##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>NetworkInstall</td><td>Icon</td><td>21</td><td>205</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary13</td></row>
		<row><td>CustomSetupTips</td><td>NetworkInstallText</td><td>Text</td><td>60</td><td>205</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Network##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_SetupTips_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>PartialText</td><td>Text</td><td>60</td><td>130</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_SubFeaturesInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomerInformation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>NameLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyEdit</td><td>Edit</td><td>21</td><td>100</td><td>237</td><td>17</td><td>3</td><td>COMPANYNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma80##</td><td>SerialLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyLabel</td><td>Text</td><td>21</td><td>89</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_Organization##</td><td>CompanyEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_PleaseEnterInfo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Text</td><td>21</td><td>161</td><td>300</td><td>14</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_CustomerInformation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameEdit</td><td>Edit</td><td>21</td><td>63</td><td>237</td><td>17</td><td>3</td><td>USERNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma50##</td><td>CompanyLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameLabel</td><td>Text</td><td>21</td><td>52</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_UserName##</td><td>NameEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>63</td><td>170</td><td>300</td><td>50</td><td>2</td><td>ApplicationUsers</td><td>##IDS__IsRegisterUserDlg_16##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Text</td><td>21</td><td>127</td><td>109</td><td>10</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_SerialNumber##</td><td>SerialNumber</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>MaskedEdit</td><td>21</td><td>138</td><td>237</td><td>17</td><td>2</td><td>ISX_SERIALNUM</td><td/><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DatabaseFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CHANGE##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DatabaseFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DatabaseFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_DatabaseFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS_DatabaseFolder_InstallDatabaseTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS__DatabaseFolder_DatabaseDir##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DestinationFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__DestinationFolder_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DestFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DestinationFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_DestinationFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS__DestinationFolder_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS_INSTALLDIR##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DiskSpaceRequirements</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_SpaceRequired##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgText</td><td>Text</td><td>10</td><td>185</td><td>358</td><td>41</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_VolumesTooSmall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_DiskSpaceRequirements##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>List</td><td>VolumeCostList</td><td>8</td><td>55</td><td>358</td><td>125</td><td>393223</td><td/><td>##IDS__IsFeatureDetailsDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>FilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>33</td><td>3</td><td/><td>##IDS__IsFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Exit</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Exit##</td><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Ignore##</td><td>Exit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>87</td><td>331</td><td>135</td><td>7</td><td>FileInUseProcess</td><td/><td>Retry</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Retry</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Retry##</td><td>Ignore</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>InstallChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>4128779</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_BrowseDestFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_ChangeCurrentFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsBrowseFolderDlg_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsBrowseFolderDlg_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Copyright</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Text</td><td>135</td><td>144</td><td>228</td><td>73</td><td>65539</td><td/><td>##IDS__IsWelcomeDlg_WarningCopyright##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_WelcomeProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_InstallProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Agree</td><td>RadioButtonGroup</td><td>8</td><td>190</td><td>291</td><td>40</td><td>3</td><td>AgreeToLicense</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>LicenseAgreement</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ISPrintButton</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_ReadLicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_LicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>PushButton</td><td>301</td><td>188</td><td>65</td><td>17</td><td>3</td><td/><td>##IDS_PRINT_BUTTON##</td><td>Agree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Memo</td><td>ScrollableText</td><td>8</td><td>55</td><td>358</td><td>130</td><td>7</td><td/><td/><td/><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Eula.rtf</td><td/></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MaintenanceType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_MaitenanceOptions##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_ProgramMaintenance##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Ico1</td><td>Icon</td><td>35</td><td>75</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary6</td></row>
		<row><td>MaintenanceType</td><td>Ico2</td><td>Icon</td><td>35</td><td>135</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary7</td></row>
		<row><td>MaintenanceType</td><td>Ico3</td><td>Icon</td><td>35</td><td>195</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary8</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>21</td><td>55</td><td>290</td><td>170</td><td>3</td><td>_IsMaintenance</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text1</td><td>Text</td><td>80</td><td>72</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_ChangeFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text2</td><td>Text</td><td>80</td><td>135</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_RepairMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text3</td><td>Text</td><td>80</td><td>192</td><td>260</td><td>35</td><td>131075</td><td/><td>##IDS__IsMaintenanceDlg_RemoveProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_WizardWelcome##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>50</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MsiRMFilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Restart</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>14</td><td>3</td><td/><td>##IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>66</td><td>331</td><td>130</td><td>3</td><td>FileInUseProcess</td><td/><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Restart</td><td>RadioButtonGroup</td><td>19</td><td>187</td><td>343</td><td>40</td><td>3</td><td>RestartManagerOption</td><td/><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>OutOfSpace</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_DiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>43</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_HighlightedVolumes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_OutOfDiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>List</td><td>VolumeCostList</td><td>21</td><td>95</td><td>332</td><td>120</td><td>393223</td><td/><td>##IDS__IsDiskSpaceDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsPatchDlg_Update##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_WelcomePatchWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>54</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_PatchClickUpdate##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>3</td><td/><td/><td>DlgTitle</td><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadmeInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS__IsReadmeDlg_Cancel##</td><td>Readme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>232</td><td>16</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_PleaseReadInfo##</td><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>3</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>193</td><td>13</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_ReadMeInfo##</td><td>DlgDesc</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Readme</td><td>ScrollableText</td><td>10</td><td>55</td><td>353</td><td>166</td><td>3</td><td/><td/><td>Banner</td><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Readme.rtf</td><td/></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>GroupBox1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToInstall</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Text</td><td>38</td><td>198</td><td>211</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Company##</td><td>SerialNumberText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Text</td><td>19</td><td>80</td><td>81</td><td>10</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_CurrentSettings##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyReadyDlg_WizardReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText1</td><td>Text</td><td>21</td><td>54</td><td>330</td><td>24</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_BackOrCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Text</td><td>21</td><td>99</td><td>330</td><td>20</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ModifyReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyRepair##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyInstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Text</td><td>19</td><td>92</td><td>330</td><td>133</td><td>65541</td><td/><td/><td>SetupTypeText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyReadyDlg_Install##</td><td>InstallPerMachine</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>PushButton</td><td>63</td><td>123</td><td>248</td><td>17</td><td>8388610</td><td/><td>##IDS__IsRegisterUserDlg_Anyone##</td><td>InstallPerUser</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>PushButton</td><td>63</td><td>143</td><td>248</td><td>17</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Text</td><td>38</td><td>211</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Serial##</td><td>CurrentSettingsText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Text</td><td>23</td><td>97</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SetupType##</td><td>SetupTypeText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Text</td><td>37</td><td>114</td><td>306</td><td>14</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SelectedSetupType##</td><td>TargetFolderText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Text</td><td>24</td><td>136</td><td>306</td><td>11</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_DestFolder##</td><td>TargetFolderText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Text</td><td>37</td><td>151</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Installdir##</td><td>UserInformationText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Text</td><td>23</td><td>171</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserInfo##</td><td>UserNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Text</td><td>38</td><td>184</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserName##</td><td>CompanyNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>RemoveNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToRemove</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>24</td><td>131075</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickRemove##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText1</td><td>Text</td><td>21</td><td>79</td><td>330</td><td>23</td><td>3</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickBack##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText2</td><td>Text</td><td>21</td><td>102</td><td>330</td><td>24</td><td>3</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_RemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyRemoveAllDlg_Remove##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFatalError_Finish##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_RestoreOrContinueLater##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsFatalError_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsFatalError_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>CheckBox</td><td>135</td><td>164</td><td>10</td><td>9</td><td>2</td><td>ISCHECKFORPRODUCTUPDATES</td><td>CheckBox1</td><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Text</td><td>152</td><td>162</td><td>190</td><td>30</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_YesCheckForUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>CheckBox</td><td>151</td><td>114</td><td>10</td><td>9</td><td>2</td><td>LAUNCHPROGRAM</td><td/><td>CheckLaunchReadme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>CheckBox</td><td>151</td><td>148</td><td>10</td><td>9</td><td>2</td><td>LAUNCHREADME</td><td/><td>CheckBoxUpdates</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>182</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckLaunchProgram</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Text</td><td>164</td><td>112</td><td>98</td><td>15</td><td>65538</td><td/><td>##IDS__IsExitDialog_LaunchProgram##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Text</td><td>164</td><td>148</td><td>120</td><td>13</td><td>65538</td><td/><td>##IDS__IsExitDialog_ShowReadMe##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsExitDialog_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>182</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsExitDialog_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_InstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_UninstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Text</td><td>135</td><td>30</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_SetupFinished##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_PossibleUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Text</td><td>135</td><td>120</td><td>228</td><td>45</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_InternetConnection##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>A</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Abort##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>C</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>ErrorIcon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>SetupError</td><td>ErrorText</td><td>Text</td><td>50</td><td>15</td><td>200</td><td>50</td><td>131075</td><td/><td>##IDS__IsErrorDlg_ErrorText##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>I</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Ignore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>N</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_NO##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>O</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>R</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Retry##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>Y</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Yes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>Text</td><td>135</td><td>125</td><td>228</td><td>12</td><td>65539</td><td/><td>##IDS__IsInitDlg_1##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>Text</td><td>135</td><td>109</td><td>220</td><td>36</td><td>65539</td><td/><td>##IDS__IsInitDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInitialization</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsInitDlg_WelcomeWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>30</td><td>196611</td><td/><td>##IDS__IsInitDlg_PreparingWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsUserExit_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_RestoreOrContinue##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsUserExit_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsUserExit_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>ProgressBar</td><td>59</td><td>113</td><td>275</td><td>12</td><td>65537</td><td/><td>##IDS__IsProgressDlg_ProgressDone##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>Text</td><td>59</td><td>100</td><td>275</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupProgress</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_InstallingProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_Uninstalling##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbSec</td><td>Text</td><td>192</td><td>139</td><td>32</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_SecHidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbStatus</td><td>Text</td><td>59</td><td>85</td><td>70</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_Status##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>SetupIcon</td><td>Icon</td><td>21</td><td>51</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary9</td></row>
		<row><td>SetupProgress</td><td>ShowTime</td><td>Text</td><td>170</td><td>139</td><td>17</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_Hidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>TextTime</td><td>Text</td><td>59</td><td>139</td><td>110</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_HiddenTimeRemaining##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupResume</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_WizardResume##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Text</td><td>135</td><td>46</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_ResumeSuspended##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_Resuming##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompText</td><td>Text</td><td>80</td><td>80</td><td>246</td><td>30</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompleteIco</td><td>Icon</td><td>34</td><td>80</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary10</td></row>
		<row><td>SetupType</td><td>CustText</td><td>Text</td><td>80</td><td>171</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CustomIco</td><td>Icon</td><td>34</td><td>171</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseSetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgText</td><td>Text</td><td>22</td><td>49</td><td>326</td><td>10</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_SelectSetupType##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_SetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>MinIco</td><td>Icon</td><td>34</td><td>125</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>MinText</td><td>Text</td><td>80</td><td>125</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>20</td><td>59</td><td>264</td><td>139</td><td>1048579</td><td>_IsSetupTypeMin</td><td/><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SplashBitmap</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Image</td><td>Bitmap</td><td>13</td><td>12</td><td>349</td><td>211</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
	</table>

	<table name="ControlCondition">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Action</col>
		<col key="yes" def="s255">Condition</col>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Hide</td><td>SHOWCOPYRIGHT="No"</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Show</td><td>SHOWCOPYRIGHT="Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Disable</td><td>AgreeToLicense &lt;&gt; "Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Enable</td><td>AgreeToLicense = "Yes"</td></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Show</td><td>ProgressType0="Modify"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Show</td><td>ProgressType0="Repair"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Show</td><td>ProgressType0="install"</td></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Disable</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Enable</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>NOT SERIALNUMSHOW</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Show</td><td>ProgressType2="installed" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Show</td><td>ProgressType2="uninstalled" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Show</td><td>ProgressType2="installed"</td></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Show</td><td>ProgressType2="uninstalled"</td></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Show</td><td>ProgressType3="installs"</td></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Show</td><td>ProgressType3="uninstalls"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Show</td><td>ProgressType1="Installing"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Show</td><td>ProgressType1="Uninstalling"</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Hide</td><td>RESUME</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Show</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Hide</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Show</td><td>RESUME</td></row>
	</table>

	<table name="ControlEvent">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col key="yes" def="s255">Argument</col>
		<col key="yes" def="S255">Condition</col>
		<col def="I2">Ordering</col>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>NewDialog</td><td>AdminWelcome</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>SpawnDialog</td><td>AdminChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>3</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>No</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>SetupType</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>DestinationFolder</td><td>NOT Installed</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>0</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfDiskSpace &lt;&gt; 1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>DatabaseFolder</td><td>0</td><td>1</td></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Exit</td><td>EndDialog</td><td>Exit</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>EndDialog</td><td>Ignore</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Retry</td><td>EndDialog</td><td>Retry</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>[_BrowseProperty]</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>NewDialog</td><td>SplashBitmap</td><td>Display_IsBitmapDlg</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>DestinationFolder</td><td>1</td><td>1</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>AgreeToLicense = "Yes"</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Back</td><td>NewDialog</td><td>MaintenanceWelcome</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsMaintenance = "Change"</td><td>12</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsMaintenance = "Reinstall"</td><td>13</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToRemove</td><td>_IsMaintenance = "Remove"</td><td>11</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>_IsMaintenance = "Reinstall"</td><td>10</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>ReinstallMode</td><td>[ReinstallModeText]</td><td>_IsMaintenance = "Reinstall"</td><td>9</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Modify</td><td>_IsMaintenance = "Change"</td><td>2</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Repair</td><td>_IsMaintenance = "Reinstall"</td><td>1</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Modifying</td><td>_IsMaintenance = "Change"</td><td>3</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Repairing</td><td>_IsMaintenance = "Reinstall"</td><td>4</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>modified</td><td>_IsMaintenance = "Change"</td><td>6</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>5</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>modifies</td><td>_IsMaintenance = "Change"</td><td>7</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>8</td></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>RMShutdownAndRestart</td><td>0</td><td>RestartManagerOption="CloseRestart"</td><td>2</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>ACTION = "ADMIN"</td><td>0</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>DestinationFolder</td><td>ACTION &lt;&gt; "ADMIN"</td><td>0</td></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>PATCH And REINSTALL=""</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>ReinstallMode</td><td>omus</td><td>PATCH And REINSTALLMODE=""</td><td>2</td></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>CustomSetup</td><td>Installed OR _IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed AND _IsMaintenance = "Reinstall"</td><td>3</td></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ALLUSERS]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[MSIINSTALLPERUSER]</td><td>{}</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ALLUSERS]</td><td>2</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[MSIINSTALLPERUSER]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>Remove</td><td>ALL</td><td>1</td><td>1</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType1]</td><td>Uninstalling</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType2]</td><td>uninstalled</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType3]</td><td>uninstalls</td><td>1</td><td>0</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1") And NOT ISENABLEDWUSFINISHDIALOG</td><td>6</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupError</td><td>A</td><td>EndDialog</td><td>ErrorAbort</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>C</td><td>EndDialog</td><td>ErrorCancel</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>I</td><td>EndDialog</td><td>ErrorIgnore</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>N</td><td>EndDialog</td><td>ErrorNo</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>O</td><td>EndDialog</td><td>ErrorOk</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>R</td><td>EndDialog</td><td>ErrorRetry</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>Y</td><td>EndDialog</td><td>ErrorYes</td><td>1</td><td>0</td></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>SetupType</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>SetupType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsSetupTypeMin &lt;&gt; "Custom"</td><td>1</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>100</td><td>_IsSetupTypeMin="Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>200</td><td>_IsSetupTypeMin="Typical"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>300</td><td>_IsSetupTypeMin="Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[ISRUNSETUPTYPEADDLOCALEVENT]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameCustom]</td><td>_IsSetupTypeMin = "Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameMinimal]</td><td>_IsSetupTypeMin = "Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameTypical]</td><td>_IsSetupTypeMin = "Typical"</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
	</table>

	<table name="CreateFolder">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>BIN</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>COREAUDIO_ENCODER</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>ICONENGINES</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>IMAGEFORMATS</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>IMAGE_SOURCE</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent1</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent2</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent3</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent4</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent5</td></row>
		<row><td>OBS_FFMPEG</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>OBS_OUTPUTS</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>OBS_PLUGINS</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>OBS_PLUGINS1</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>OBS_QSV11</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>OBS_X264</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>PLATFORMS</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>SQLDRIVERS</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>WIN_CAPTURE</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>WIN_DECKLINK</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>WIN_DSHOW</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>WIN_MF</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>WIN_WASAPI</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>_4BIT1</td><td>ISX_DEFAULTCOMPONENT52</td></row>
	</table>

	<table name="CustomAction">
		<col key="yes" def="s72">Action</col>
		<col def="i2">Type</col>
		<col def="S64">Source</col>
		<col def="S0">Target</col>
		<col def="I4">ExtendedType</col>
		<col def="S255">ISComments</col>
		<row><td>ISPreventDowngrade</td><td>19</td><td/><td>[IS_PREVENT_DOWNGRADE_EXIT]</td><td/><td>Exits install when a newer version of this product is found</td></row>
		<row><td>ISPrint</td><td>1</td><td>SetAllUsers.dll</td><td>PrintScrollableText</td><td/><td>Prints the contents of a ScrollableText control on a dialog.</td></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>1</td><td>ISExpHlp.dll</td><td>RunSetupTypeAddLocalEvent</td><td/><td>Run the AddLocal events associated with the Next button on the Setup Type dialog.</td></row>
		<row><td>ISSelfRegisterCosting</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterCosting</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFiles</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFinalize</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISUnSelfRegisterFiles</td><td/><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td>51</td><td>ARPINSTALLLOCATION</td><td>[INSTALLDIR]</td><td/><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%SystemRoot]\Profiles\All Users</td><td/><td/></row>
		<row><td>ShowMsiLog</td><td>226</td><td>SystemFolder</td><td>[SystemFolder]notepad.exe "[MsiLogFileLocation]"</td><td/><td>Shows Property-driven MSI Log</td></row>
		<row><td>setAllUsersProfile2K</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%ALLUSERSPROFILE]</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>51</td><td>USERPROFILE</td><td>[%USERPROFILE]</td><td/><td/></row>
	</table>

	<table name="Dialog">
		<col key="yes" def="s72">Dialog</col>
		<col def="i2">HCentering</col>
		<col def="i2">VCentering</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L128">Title</col>
		<col def="s50">Control_First</col>
		<col def="S50">Control_Default</col>
		<col def="S50">Control_Cancel</col>
		<col def="S255">ISComments</col>
		<col def="S72">TextStyle_</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISResourceId</col>
		<row><td>AdminChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Install Point Browse</td><td/><td>0</td><td/></row>
		<row><td>AdminNetworkLocation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Network Location</td><td/><td>0</td><td/></row>
		<row><td>AdminWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Administration Welcome</td><td/><td>0</td><td/></row>
		<row><td>CancelSetup</td><td>50</td><td>50</td><td>260</td><td>85</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>No</td><td>No</td><td>No</td><td>Cancel</td><td/><td>0</td><td/></row>
		<row><td>CustomSetup</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tree</td><td>Next</td><td>Cancel</td><td>Custom Selection</td><td/><td>0</td><td/></row>
		<row><td>CustomSetupTips</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Custom Setup Tips</td><td/><td>0</td><td/></row>
		<row><td>CustomerInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>NameEdit</td><td>Next</td><td>Cancel</td><td>Identification</td><td/><td>0</td><td/></row>
		<row><td>DatabaseFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Database Folder</td><td/><td>0</td><td/></row>
		<row><td>DestinationFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Destination Folder</td><td/><td>0</td><td/></row>
		<row><td>DiskSpaceRequirements</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Feature Details</td><td/><td>0</td><td/></row>
		<row><td>FilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Retry</td><td>Retry</td><td>Exit</td><td>Files in Use</td><td/><td>0</td><td/></row>
		<row><td>InstallChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Browse</td><td/><td>0</td><td/></row>
		<row><td>InstallWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Panel</td><td/><td>0</td><td/></row>
		<row><td>LicenseAgreement</td><td>50</td><td>50</td><td>374</td><td>266</td><td>2</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Agree</td><td>Next</td><td>Cancel</td><td>License Agreement</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Change, Reinstall, Remove</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Maintenance Welcome</td><td/><td>0</td><td/></row>
		<row><td>MsiRMFilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>Cancel</td><td>RestartManager Files in Use</td><td/><td>0</td><td/></row>
		<row><td>OutOfSpace</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Resume</td><td>Resume</td><td>Resume</td><td>Out Of Disk Space</td><td/><td>0</td><td/></row>
		<row><td>PatchWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS__IsPatchDlg_PatchWizard##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Patch Panel</td><td/><td>0</td><td/></row>
		<row><td>ReadmeInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>7</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Readme Information</td><td/><td>0</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Ready to Install</td><td/><td>0</td><td/></row>
		<row><td>ReadyToRemove</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RemoveNow</td><td>RemoveNow</td><td>Cancel</td><td>Verify Remove</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteError</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>Fatal Error</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupError</td><td>50</td><td>50</td><td>270</td><td>110</td><td>65543</td><td>##IDS__IsErrorDlg_InstallerInfo##</td><td>ErrorText</td><td>O</td><td>C</td><td>Error</td><td/><td>0</td><td/></row>
		<row><td>SetupInitialization</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Setup Initialization</td><td/><td>0</td><td/></row>
		<row><td>SetupInterrupted</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>User Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupProgress</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Progress</td><td/><td>0</td><td/></row>
		<row><td>SetupResume</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Resume</td><td/><td>0</td><td/></row>
		<row><td>SetupType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Setup Type</td><td/><td>0</td><td/></row>
		<row><td>SplashBitmap</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Bitmap</td><td/><td>0</td><td/></row>
	</table>

	<table name="Directory">
		<col key="yes" def="s72">Directory</col>
		<col def="S72">Directory_Parent</col>
		<col def="l255">DefaultDir</col>
		<col def="S255">ISDescription</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISFolderName</col>
		<row><td>AERO_EDU</td><td>ProgramFilesFolder</td><td>aero-edu</td><td/><td>0</td><td/></row>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>BIN</td><td>OBSBIN</td><td>bin</td><td/><td>0</td><td/></row>
		<row><td>BOOTH_CAMERA</td><td>INSTALLDIR</td><td>BOOTHC~1|Booth Camera</td><td/><td>0</td><td/></row>
		<row><td>COREAUDIO_ENCODER</td><td>OBS_PLUGINS</td><td>COREAU~1|coreaudio-encoder</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DARK</td><td>THEMES</td><td>Dark</td><td/><td>0</td><td/></row>
		<row><td>DATA</td><td>OBSBIN</td><td>data</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY</td><td>ProgramFilesFolder</td><td>北京航天云教~1|北京航天云教育科技有限公司</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY1</td><td>DIRECTORY</td><td>航天云课联网</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY2</td><td>AERO_EDU</td><td>航天云课联网</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>ICONENGINES</td><td>_4BIT</td><td>ICONEN~1|iconengines</td><td/><td>0</td><td/></row>
		<row><td>IMAGEFORMATS</td><td>_4BIT</td><td>IMAGEF~1|imageformats</td><td/><td>0</td><td/></row>
		<row><td>IMAGE_SOURCE</td><td>OBS_PLUGINS</td><td>IMAGE-~1|image-source</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>DIRECTORY1</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>LIBOBS</td><td>DATA</td><td>libobs</td><td/><td>0</td><td/></row>
		<row><td>LICENSE</td><td>OBS_STUDIO</td><td>license</td><td/><td>0</td><td/></row>
		<row><td>LOCALE</td><td>COREAUDIO_ENCODER</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE1</td><td>IMAGE_SOURCE</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE10</td><td>WIN_CAPTURE</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE11</td><td>WIN_DECKLINK</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE12</td><td>WIN_DSHOW</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE13</td><td>WIN_MF</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE14</td><td>WIN_WASAPI</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE15</td><td>OBS_STUDIO</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE2</td><td>OBS_FFMPEG</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE3</td><td>OBS_FILTERS</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE4</td><td>OBS_OUTPUTS</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE5</td><td>OBS_QSV11</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE6</td><td>OBS_TRANSITIONS</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE7</td><td>OBS_X264</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE8</td><td>RTMP_SERVICES</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE9</td><td>TEXT_FREETYPE2</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>DIRECTORY</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>OBSBIN</td><td>INSTALLDIR</td><td>obsbin</td><td/><td>0</td><td/></row>
		<row><td>OBS_FFMPEG</td><td>OBS_PLUGINS</td><td>OBS-FF~1|obs-ffmpeg</td><td/><td>0</td><td/></row>
		<row><td>OBS_FILTERS</td><td>OBS_PLUGINS</td><td>OBS-FI~1|obs-filters</td><td/><td>0</td><td/></row>
		<row><td>OBS_OUTPUTS</td><td>OBS_PLUGINS</td><td>OBS-OU~1|obs-outputs</td><td/><td>0</td><td/></row>
		<row><td>OBS_PLUGINS</td><td>DATA</td><td>OBS-PL~1|obs-plugins</td><td/><td>0</td><td/></row>
		<row><td>OBS_PLUGINS1</td><td>OBSBIN</td><td>OBS-PL~1|obs-plugins</td><td/><td>0</td><td/></row>
		<row><td>OBS_QSV11</td><td>OBS_PLUGINS</td><td>OBS-QS~1|obs-qsv11</td><td/><td>0</td><td/></row>
		<row><td>OBS_STUDIO</td><td>DATA</td><td>OBS-ST~1|obs-studio</td><td/><td>0</td><td/></row>
		<row><td>OBS_TRANSITIONS</td><td>OBS_PLUGINS</td><td>OBS-TR~1|obs-transitions</td><td/><td>0</td><td/></row>
		<row><td>OBS_X264</td><td>OBS_PLUGINS</td><td>obs-x264</td><td/><td>0</td><td/></row>
		<row><td>PLATFORMS</td><td>_4BIT</td><td>PLATFO~1|platforms</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>RECORD_PLAYER</td><td>INSTALLDIR</td><td>RECORD~1|Record Player</td><td/><td>0</td><td/></row>
		<row><td>RTMP_SERVICES</td><td>OBS_PLUGINS</td><td>RTMP-S~1|rtmp-services</td><td/><td>0</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SQLDRIVERS</td><td>_4BIT</td><td>SQLDRI~1|sqldrivers</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TEMPLATE</td><td>RECORD_PLAYER</td><td>Template</td><td/><td>0</td><td/></row>
		<row><td>TEXT_FREETYPE2</td><td>OBS_PLUGINS</td><td>TEXT-F~1|text-freetype2</td><td/><td>0</td><td/></row>
		<row><td>THEMES</td><td>OBS_STUDIO</td><td>themes</td><td/><td>0</td><td/></row>
		<row><td>TRANSLATIONS</td><td>_4BIT</td><td>TRANSL~1|translations</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>WIN_CAPTURE</td><td>OBS_PLUGINS</td><td>WIN-CA~1|win-capture</td><td/><td>0</td><td/></row>
		<row><td>WIN_DECKLINK</td><td>OBS_PLUGINS</td><td>WIN-DE~1|win-decklink</td><td/><td>0</td><td/></row>
		<row><td>WIN_DSHOW</td><td>OBS_PLUGINS</td><td>WIN-DS~1|win-dshow</td><td/><td>0</td><td/></row>
		<row><td>WIN_MF</td><td>OBS_PLUGINS</td><td>win-mf</td><td/><td>0</td><td/></row>
		<row><td>WIN_WASAPI</td><td>OBS_PLUGINS</td><td>WIN-WA~1|win-wasapi</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>_4BIT</td><td>BIN</td><td>64bit</td><td/><td>0</td><td/></row>
		<row><td>_4BIT1</td><td>OBS_PLUGINS1</td><td>64bit</td><td/><td>0</td><td/></row>
		<row><td>company_name1</td><td>ProgramMenuFolder</td><td>北京航~1|北京航天云教育科技有限公司</td><td/><td>1</td><td/></row>
		<row><td>product_name</td><td>company_name1</td><td>航天云~1|航天云课联网</td><td/><td>1</td><td/></row>
	</table>

	<table name="DrLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col key="yes" def="S255">Path</col>
		<col def="I2">Depth</col>
	</table>

	<table name="DuplicateFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="s72">File_</col>
		<col def="L255">DestName</col>
		<col def="S72">DestFolder</col>
	</table>

	<table name="Environment">
		<col key="yes" def="s72">Environment</col>
		<col def="l255">Name</col>
		<col def="L255">Value</col>
		<col def="s72">Component_</col>
	</table>

	<table name="Error">
		<col key="yes" def="i2">Error</col>
		<col def="L255">Message</col>
		<row><td>0</td><td>##IDS_ERROR_0##</td></row>
		<row><td>1</td><td>##IDS_ERROR_1##</td></row>
		<row><td>10</td><td>##IDS_ERROR_8##</td></row>
		<row><td>11</td><td>##IDS_ERROR_9##</td></row>
		<row><td>1101</td><td>##IDS_ERROR_22##</td></row>
		<row><td>12</td><td>##IDS_ERROR_10##</td></row>
		<row><td>13</td><td>##IDS_ERROR_11##</td></row>
		<row><td>1301</td><td>##IDS_ERROR_23##</td></row>
		<row><td>1302</td><td>##IDS_ERROR_24##</td></row>
		<row><td>1303</td><td>##IDS_ERROR_25##</td></row>
		<row><td>1304</td><td>##IDS_ERROR_26##</td></row>
		<row><td>1305</td><td>##IDS_ERROR_27##</td></row>
		<row><td>1306</td><td>##IDS_ERROR_28##</td></row>
		<row><td>1307</td><td>##IDS_ERROR_29##</td></row>
		<row><td>1308</td><td>##IDS_ERROR_30##</td></row>
		<row><td>1309</td><td>##IDS_ERROR_31##</td></row>
		<row><td>1310</td><td>##IDS_ERROR_32##</td></row>
		<row><td>1311</td><td>##IDS_ERROR_33##</td></row>
		<row><td>1312</td><td>##IDS_ERROR_34##</td></row>
		<row><td>1313</td><td>##IDS_ERROR_35##</td></row>
		<row><td>1314</td><td>##IDS_ERROR_36##</td></row>
		<row><td>1315</td><td>##IDS_ERROR_37##</td></row>
		<row><td>1316</td><td>##IDS_ERROR_38##</td></row>
		<row><td>1317</td><td>##IDS_ERROR_39##</td></row>
		<row><td>1318</td><td>##IDS_ERROR_40##</td></row>
		<row><td>1319</td><td>##IDS_ERROR_41##</td></row>
		<row><td>1320</td><td>##IDS_ERROR_42##</td></row>
		<row><td>1321</td><td>##IDS_ERROR_43##</td></row>
		<row><td>1322</td><td>##IDS_ERROR_44##</td></row>
		<row><td>1323</td><td>##IDS_ERROR_45##</td></row>
		<row><td>1324</td><td>##IDS_ERROR_46##</td></row>
		<row><td>1325</td><td>##IDS_ERROR_47##</td></row>
		<row><td>1326</td><td>##IDS_ERROR_48##</td></row>
		<row><td>1327</td><td>##IDS_ERROR_49##</td></row>
		<row><td>1328</td><td>##IDS_ERROR_122##</td></row>
		<row><td>1329</td><td>##IDS_ERROR_1329##</td></row>
		<row><td>1330</td><td>##IDS_ERROR_1330##</td></row>
		<row><td>1331</td><td>##IDS_ERROR_1331##</td></row>
		<row><td>1332</td><td>##IDS_ERROR_1332##</td></row>
		<row><td>1333</td><td>##IDS_ERROR_1333##</td></row>
		<row><td>1334</td><td>##IDS_ERROR_1334##</td></row>
		<row><td>1335</td><td>##IDS_ERROR_1335##</td></row>
		<row><td>1336</td><td>##IDS_ERROR_1336##</td></row>
		<row><td>14</td><td>##IDS_ERROR_12##</td></row>
		<row><td>1401</td><td>##IDS_ERROR_50##</td></row>
		<row><td>1402</td><td>##IDS_ERROR_51##</td></row>
		<row><td>1403</td><td>##IDS_ERROR_52##</td></row>
		<row><td>1404</td><td>##IDS_ERROR_53##</td></row>
		<row><td>1405</td><td>##IDS_ERROR_54##</td></row>
		<row><td>1406</td><td>##IDS_ERROR_55##</td></row>
		<row><td>1407</td><td>##IDS_ERROR_56##</td></row>
		<row><td>1408</td><td>##IDS_ERROR_57##</td></row>
		<row><td>1409</td><td>##IDS_ERROR_58##</td></row>
		<row><td>1410</td><td>##IDS_ERROR_59##</td></row>
		<row><td>15</td><td>##IDS_ERROR_13##</td></row>
		<row><td>1500</td><td>##IDS_ERROR_60##</td></row>
		<row><td>1501</td><td>##IDS_ERROR_61##</td></row>
		<row><td>1502</td><td>##IDS_ERROR_62##</td></row>
		<row><td>1503</td><td>##IDS_ERROR_63##</td></row>
		<row><td>16</td><td>##IDS_ERROR_14##</td></row>
		<row><td>1601</td><td>##IDS_ERROR_64##</td></row>
		<row><td>1602</td><td>##IDS_ERROR_65##</td></row>
		<row><td>1603</td><td>##IDS_ERROR_66##</td></row>
		<row><td>1604</td><td>##IDS_ERROR_67##</td></row>
		<row><td>1605</td><td>##IDS_ERROR_68##</td></row>
		<row><td>1606</td><td>##IDS_ERROR_69##</td></row>
		<row><td>1607</td><td>##IDS_ERROR_70##</td></row>
		<row><td>1608</td><td>##IDS_ERROR_71##</td></row>
		<row><td>1609</td><td>##IDS_ERROR_1609##</td></row>
		<row><td>1651</td><td>##IDS_ERROR_1651##</td></row>
		<row><td>17</td><td>##IDS_ERROR_15##</td></row>
		<row><td>1701</td><td>##IDS_ERROR_72##</td></row>
		<row><td>1702</td><td>##IDS_ERROR_73##</td></row>
		<row><td>1703</td><td>##IDS_ERROR_74##</td></row>
		<row><td>1704</td><td>##IDS_ERROR_75##</td></row>
		<row><td>1705</td><td>##IDS_ERROR_76##</td></row>
		<row><td>1706</td><td>##IDS_ERROR_77##</td></row>
		<row><td>1707</td><td>##IDS_ERROR_78##</td></row>
		<row><td>1708</td><td>##IDS_ERROR_79##</td></row>
		<row><td>1709</td><td>##IDS_ERROR_80##</td></row>
		<row><td>1710</td><td>##IDS_ERROR_81##</td></row>
		<row><td>1711</td><td>##IDS_ERROR_82##</td></row>
		<row><td>1712</td><td>##IDS_ERROR_83##</td></row>
		<row><td>1713</td><td>##IDS_ERROR_123##</td></row>
		<row><td>1714</td><td>##IDS_ERROR_124##</td></row>
		<row><td>1715</td><td>##IDS_ERROR_1715##</td></row>
		<row><td>1716</td><td>##IDS_ERROR_1716##</td></row>
		<row><td>1717</td><td>##IDS_ERROR_1717##</td></row>
		<row><td>1718</td><td>##IDS_ERROR_1718##</td></row>
		<row><td>1719</td><td>##IDS_ERROR_1719##</td></row>
		<row><td>1720</td><td>##IDS_ERROR_1720##</td></row>
		<row><td>1721</td><td>##IDS_ERROR_1721##</td></row>
		<row><td>1722</td><td>##IDS_ERROR_1722##</td></row>
		<row><td>1723</td><td>##IDS_ERROR_1723##</td></row>
		<row><td>1724</td><td>##IDS_ERROR_1724##</td></row>
		<row><td>1725</td><td>##IDS_ERROR_1725##</td></row>
		<row><td>1726</td><td>##IDS_ERROR_1726##</td></row>
		<row><td>1727</td><td>##IDS_ERROR_1727##</td></row>
		<row><td>1728</td><td>##IDS_ERROR_1728##</td></row>
		<row><td>1729</td><td>##IDS_ERROR_1729##</td></row>
		<row><td>1730</td><td>##IDS_ERROR_1730##</td></row>
		<row><td>1731</td><td>##IDS_ERROR_1731##</td></row>
		<row><td>1732</td><td>##IDS_ERROR_1732##</td></row>
		<row><td>18</td><td>##IDS_ERROR_16##</td></row>
		<row><td>1801</td><td>##IDS_ERROR_84##</td></row>
		<row><td>1802</td><td>##IDS_ERROR_85##</td></row>
		<row><td>1803</td><td>##IDS_ERROR_86##</td></row>
		<row><td>1804</td><td>##IDS_ERROR_87##</td></row>
		<row><td>1805</td><td>##IDS_ERROR_88##</td></row>
		<row><td>1806</td><td>##IDS_ERROR_89##</td></row>
		<row><td>1807</td><td>##IDS_ERROR_90##</td></row>
		<row><td>19</td><td>##IDS_ERROR_17##</td></row>
		<row><td>1901</td><td>##IDS_ERROR_91##</td></row>
		<row><td>1902</td><td>##IDS_ERROR_92##</td></row>
		<row><td>1903</td><td>##IDS_ERROR_93##</td></row>
		<row><td>1904</td><td>##IDS_ERROR_94##</td></row>
		<row><td>1905</td><td>##IDS_ERROR_95##</td></row>
		<row><td>1906</td><td>##IDS_ERROR_96##</td></row>
		<row><td>1907</td><td>##IDS_ERROR_97##</td></row>
		<row><td>1908</td><td>##IDS_ERROR_98##</td></row>
		<row><td>1909</td><td>##IDS_ERROR_99##</td></row>
		<row><td>1910</td><td>##IDS_ERROR_100##</td></row>
		<row><td>1911</td><td>##IDS_ERROR_101##</td></row>
		<row><td>1912</td><td>##IDS_ERROR_102##</td></row>
		<row><td>1913</td><td>##IDS_ERROR_103##</td></row>
		<row><td>1914</td><td>##IDS_ERROR_104##</td></row>
		<row><td>1915</td><td>##IDS_ERROR_105##</td></row>
		<row><td>1916</td><td>##IDS_ERROR_106##</td></row>
		<row><td>1917</td><td>##IDS_ERROR_107##</td></row>
		<row><td>1918</td><td>##IDS_ERROR_108##</td></row>
		<row><td>1919</td><td>##IDS_ERROR_109##</td></row>
		<row><td>1920</td><td>##IDS_ERROR_110##</td></row>
		<row><td>1921</td><td>##IDS_ERROR_111##</td></row>
		<row><td>1922</td><td>##IDS_ERROR_112##</td></row>
		<row><td>1923</td><td>##IDS_ERROR_113##</td></row>
		<row><td>1924</td><td>##IDS_ERROR_114##</td></row>
		<row><td>1925</td><td>##IDS_ERROR_115##</td></row>
		<row><td>1926</td><td>##IDS_ERROR_116##</td></row>
		<row><td>1927</td><td>##IDS_ERROR_117##</td></row>
		<row><td>1928</td><td>##IDS_ERROR_118##</td></row>
		<row><td>1929</td><td>##IDS_ERROR_119##</td></row>
		<row><td>1930</td><td>##IDS_ERROR_125##</td></row>
		<row><td>1931</td><td>##IDS_ERROR_126##</td></row>
		<row><td>1932</td><td>##IDS_ERROR_127##</td></row>
		<row><td>1933</td><td>##IDS_ERROR_128##</td></row>
		<row><td>1934</td><td>##IDS_ERROR_129##</td></row>
		<row><td>1935</td><td>##IDS_ERROR_1935##</td></row>
		<row><td>1936</td><td>##IDS_ERROR_1936##</td></row>
		<row><td>1937</td><td>##IDS_ERROR_1937##</td></row>
		<row><td>1938</td><td>##IDS_ERROR_1938##</td></row>
		<row><td>2</td><td>##IDS_ERROR_2##</td></row>
		<row><td>20</td><td>##IDS_ERROR_18##</td></row>
		<row><td>21</td><td>##IDS_ERROR_19##</td></row>
		<row><td>2101</td><td>##IDS_ERROR_2101##</td></row>
		<row><td>2102</td><td>##IDS_ERROR_2102##</td></row>
		<row><td>2103</td><td>##IDS_ERROR_2103##</td></row>
		<row><td>2104</td><td>##IDS_ERROR_2104##</td></row>
		<row><td>2105</td><td>##IDS_ERROR_2105##</td></row>
		<row><td>2106</td><td>##IDS_ERROR_2106##</td></row>
		<row><td>2107</td><td>##IDS_ERROR_2107##</td></row>
		<row><td>2108</td><td>##IDS_ERROR_2108##</td></row>
		<row><td>2109</td><td>##IDS_ERROR_2109##</td></row>
		<row><td>2110</td><td>##IDS_ERROR_2110##</td></row>
		<row><td>2111</td><td>##IDS_ERROR_2111##</td></row>
		<row><td>2112</td><td>##IDS_ERROR_2112##</td></row>
		<row><td>2113</td><td>##IDS_ERROR_2113##</td></row>
		<row><td>22</td><td>##IDS_ERROR_120##</td></row>
		<row><td>2200</td><td>##IDS_ERROR_2200##</td></row>
		<row><td>2201</td><td>##IDS_ERROR_2201##</td></row>
		<row><td>2202</td><td>##IDS_ERROR_2202##</td></row>
		<row><td>2203</td><td>##IDS_ERROR_2203##</td></row>
		<row><td>2204</td><td>##IDS_ERROR_2204##</td></row>
		<row><td>2205</td><td>##IDS_ERROR_2205##</td></row>
		<row><td>2206</td><td>##IDS_ERROR_2206##</td></row>
		<row><td>2207</td><td>##IDS_ERROR_2207##</td></row>
		<row><td>2208</td><td>##IDS_ERROR_2208##</td></row>
		<row><td>2209</td><td>##IDS_ERROR_2209##</td></row>
		<row><td>2210</td><td>##IDS_ERROR_2210##</td></row>
		<row><td>2211</td><td>##IDS_ERROR_2211##</td></row>
		<row><td>2212</td><td>##IDS_ERROR_2212##</td></row>
		<row><td>2213</td><td>##IDS_ERROR_2213##</td></row>
		<row><td>2214</td><td>##IDS_ERROR_2214##</td></row>
		<row><td>2215</td><td>##IDS_ERROR_2215##</td></row>
		<row><td>2216</td><td>##IDS_ERROR_2216##</td></row>
		<row><td>2217</td><td>##IDS_ERROR_2217##</td></row>
		<row><td>2218</td><td>##IDS_ERROR_2218##</td></row>
		<row><td>2219</td><td>##IDS_ERROR_2219##</td></row>
		<row><td>2220</td><td>##IDS_ERROR_2220##</td></row>
		<row><td>2221</td><td>##IDS_ERROR_2221##</td></row>
		<row><td>2222</td><td>##IDS_ERROR_2222##</td></row>
		<row><td>2223</td><td>##IDS_ERROR_2223##</td></row>
		<row><td>2224</td><td>##IDS_ERROR_2224##</td></row>
		<row><td>2225</td><td>##IDS_ERROR_2225##</td></row>
		<row><td>2226</td><td>##IDS_ERROR_2226##</td></row>
		<row><td>2227</td><td>##IDS_ERROR_2227##</td></row>
		<row><td>2228</td><td>##IDS_ERROR_2228##</td></row>
		<row><td>2229</td><td>##IDS_ERROR_2229##</td></row>
		<row><td>2230</td><td>##IDS_ERROR_2230##</td></row>
		<row><td>2231</td><td>##IDS_ERROR_2231##</td></row>
		<row><td>2232</td><td>##IDS_ERROR_2232##</td></row>
		<row><td>2233</td><td>##IDS_ERROR_2233##</td></row>
		<row><td>2234</td><td>##IDS_ERROR_2234##</td></row>
		<row><td>2235</td><td>##IDS_ERROR_2235##</td></row>
		<row><td>2236</td><td>##IDS_ERROR_2236##</td></row>
		<row><td>2237</td><td>##IDS_ERROR_2237##</td></row>
		<row><td>2238</td><td>##IDS_ERROR_2238##</td></row>
		<row><td>2239</td><td>##IDS_ERROR_2239##</td></row>
		<row><td>2240</td><td>##IDS_ERROR_2240##</td></row>
		<row><td>2241</td><td>##IDS_ERROR_2241##</td></row>
		<row><td>2242</td><td>##IDS_ERROR_2242##</td></row>
		<row><td>2243</td><td>##IDS_ERROR_2243##</td></row>
		<row><td>2244</td><td>##IDS_ERROR_2244##</td></row>
		<row><td>2245</td><td>##IDS_ERROR_2245##</td></row>
		<row><td>2246</td><td>##IDS_ERROR_2246##</td></row>
		<row><td>2247</td><td>##IDS_ERROR_2247##</td></row>
		<row><td>2248</td><td>##IDS_ERROR_2248##</td></row>
		<row><td>2249</td><td>##IDS_ERROR_2249##</td></row>
		<row><td>2250</td><td>##IDS_ERROR_2250##</td></row>
		<row><td>2251</td><td>##IDS_ERROR_2251##</td></row>
		<row><td>2252</td><td>##IDS_ERROR_2252##</td></row>
		<row><td>2253</td><td>##IDS_ERROR_2253##</td></row>
		<row><td>2254</td><td>##IDS_ERROR_2254##</td></row>
		<row><td>2255</td><td>##IDS_ERROR_2255##</td></row>
		<row><td>2256</td><td>##IDS_ERROR_2256##</td></row>
		<row><td>2257</td><td>##IDS_ERROR_2257##</td></row>
		<row><td>2258</td><td>##IDS_ERROR_2258##</td></row>
		<row><td>2259</td><td>##IDS_ERROR_2259##</td></row>
		<row><td>2260</td><td>##IDS_ERROR_2260##</td></row>
		<row><td>2261</td><td>##IDS_ERROR_2261##</td></row>
		<row><td>2262</td><td>##IDS_ERROR_2262##</td></row>
		<row><td>2263</td><td>##IDS_ERROR_2263##</td></row>
		<row><td>2264</td><td>##IDS_ERROR_2264##</td></row>
		<row><td>2265</td><td>##IDS_ERROR_2265##</td></row>
		<row><td>2266</td><td>##IDS_ERROR_2266##</td></row>
		<row><td>2267</td><td>##IDS_ERROR_2267##</td></row>
		<row><td>2268</td><td>##IDS_ERROR_2268##</td></row>
		<row><td>2269</td><td>##IDS_ERROR_2269##</td></row>
		<row><td>2270</td><td>##IDS_ERROR_2270##</td></row>
		<row><td>2271</td><td>##IDS_ERROR_2271##</td></row>
		<row><td>2272</td><td>##IDS_ERROR_2272##</td></row>
		<row><td>2273</td><td>##IDS_ERROR_2273##</td></row>
		<row><td>2274</td><td>##IDS_ERROR_2274##</td></row>
		<row><td>2275</td><td>##IDS_ERROR_2275##</td></row>
		<row><td>2276</td><td>##IDS_ERROR_2276##</td></row>
		<row><td>2277</td><td>##IDS_ERROR_2277##</td></row>
		<row><td>2278</td><td>##IDS_ERROR_2278##</td></row>
		<row><td>2279</td><td>##IDS_ERROR_2279##</td></row>
		<row><td>2280</td><td>##IDS_ERROR_2280##</td></row>
		<row><td>2281</td><td>##IDS_ERROR_2281##</td></row>
		<row><td>2282</td><td>##IDS_ERROR_2282##</td></row>
		<row><td>23</td><td>##IDS_ERROR_121##</td></row>
		<row><td>2302</td><td>##IDS_ERROR_2302##</td></row>
		<row><td>2303</td><td>##IDS_ERROR_2303##</td></row>
		<row><td>2304</td><td>##IDS_ERROR_2304##</td></row>
		<row><td>2305</td><td>##IDS_ERROR_2305##</td></row>
		<row><td>2306</td><td>##IDS_ERROR_2306##</td></row>
		<row><td>2307</td><td>##IDS_ERROR_2307##</td></row>
		<row><td>2308</td><td>##IDS_ERROR_2308##</td></row>
		<row><td>2309</td><td>##IDS_ERROR_2309##</td></row>
		<row><td>2310</td><td>##IDS_ERROR_2310##</td></row>
		<row><td>2315</td><td>##IDS_ERROR_2315##</td></row>
		<row><td>2318</td><td>##IDS_ERROR_2318##</td></row>
		<row><td>2319</td><td>##IDS_ERROR_2319##</td></row>
		<row><td>2320</td><td>##IDS_ERROR_2320##</td></row>
		<row><td>2321</td><td>##IDS_ERROR_2321##</td></row>
		<row><td>2322</td><td>##IDS_ERROR_2322##</td></row>
		<row><td>2323</td><td>##IDS_ERROR_2323##</td></row>
		<row><td>2324</td><td>##IDS_ERROR_2324##</td></row>
		<row><td>2325</td><td>##IDS_ERROR_2325##</td></row>
		<row><td>2326</td><td>##IDS_ERROR_2326##</td></row>
		<row><td>2327</td><td>##IDS_ERROR_2327##</td></row>
		<row><td>2328</td><td>##IDS_ERROR_2328##</td></row>
		<row><td>2329</td><td>##IDS_ERROR_2329##</td></row>
		<row><td>2330</td><td>##IDS_ERROR_2330##</td></row>
		<row><td>2331</td><td>##IDS_ERROR_2331##</td></row>
		<row><td>2332</td><td>##IDS_ERROR_2332##</td></row>
		<row><td>2333</td><td>##IDS_ERROR_2333##</td></row>
		<row><td>2334</td><td>##IDS_ERROR_2334##</td></row>
		<row><td>2335</td><td>##IDS_ERROR_2335##</td></row>
		<row><td>2336</td><td>##IDS_ERROR_2336##</td></row>
		<row><td>2337</td><td>##IDS_ERROR_2337##</td></row>
		<row><td>2338</td><td>##IDS_ERROR_2338##</td></row>
		<row><td>2339</td><td>##IDS_ERROR_2339##</td></row>
		<row><td>2340</td><td>##IDS_ERROR_2340##</td></row>
		<row><td>2341</td><td>##IDS_ERROR_2341##</td></row>
		<row><td>2342</td><td>##IDS_ERROR_2342##</td></row>
		<row><td>2343</td><td>##IDS_ERROR_2343##</td></row>
		<row><td>2344</td><td>##IDS_ERROR_2344##</td></row>
		<row><td>2345</td><td>##IDS_ERROR_2345##</td></row>
		<row><td>2347</td><td>##IDS_ERROR_2347##</td></row>
		<row><td>2348</td><td>##IDS_ERROR_2348##</td></row>
		<row><td>2349</td><td>##IDS_ERROR_2349##</td></row>
		<row><td>2350</td><td>##IDS_ERROR_2350##</td></row>
		<row><td>2351</td><td>##IDS_ERROR_2351##</td></row>
		<row><td>2352</td><td>##IDS_ERROR_2352##</td></row>
		<row><td>2353</td><td>##IDS_ERROR_2353##</td></row>
		<row><td>2354</td><td>##IDS_ERROR_2354##</td></row>
		<row><td>2355</td><td>##IDS_ERROR_2355##</td></row>
		<row><td>2356</td><td>##IDS_ERROR_2356##</td></row>
		<row><td>2357</td><td>##IDS_ERROR_2357##</td></row>
		<row><td>2358</td><td>##IDS_ERROR_2358##</td></row>
		<row><td>2359</td><td>##IDS_ERROR_2359##</td></row>
		<row><td>2360</td><td>##IDS_ERROR_2360##</td></row>
		<row><td>2361</td><td>##IDS_ERROR_2361##</td></row>
		<row><td>2362</td><td>##IDS_ERROR_2362##</td></row>
		<row><td>2363</td><td>##IDS_ERROR_2363##</td></row>
		<row><td>2364</td><td>##IDS_ERROR_2364##</td></row>
		<row><td>2365</td><td>##IDS_ERROR_2365##</td></row>
		<row><td>2366</td><td>##IDS_ERROR_2366##</td></row>
		<row><td>2367</td><td>##IDS_ERROR_2367##</td></row>
		<row><td>2368</td><td>##IDS_ERROR_2368##</td></row>
		<row><td>2370</td><td>##IDS_ERROR_2370##</td></row>
		<row><td>2371</td><td>##IDS_ERROR_2371##</td></row>
		<row><td>2372</td><td>##IDS_ERROR_2372##</td></row>
		<row><td>2373</td><td>##IDS_ERROR_2373##</td></row>
		<row><td>2374</td><td>##IDS_ERROR_2374##</td></row>
		<row><td>2375</td><td>##IDS_ERROR_2375##</td></row>
		<row><td>2376</td><td>##IDS_ERROR_2376##</td></row>
		<row><td>2379</td><td>##IDS_ERROR_2379##</td></row>
		<row><td>2380</td><td>##IDS_ERROR_2380##</td></row>
		<row><td>2381</td><td>##IDS_ERROR_2381##</td></row>
		<row><td>2382</td><td>##IDS_ERROR_2382##</td></row>
		<row><td>2401</td><td>##IDS_ERROR_2401##</td></row>
		<row><td>2402</td><td>##IDS_ERROR_2402##</td></row>
		<row><td>2501</td><td>##IDS_ERROR_2501##</td></row>
		<row><td>2502</td><td>##IDS_ERROR_2502##</td></row>
		<row><td>2503</td><td>##IDS_ERROR_2503##</td></row>
		<row><td>2601</td><td>##IDS_ERROR_2601##</td></row>
		<row><td>2602</td><td>##IDS_ERROR_2602##</td></row>
		<row><td>2603</td><td>##IDS_ERROR_2603##</td></row>
		<row><td>2604</td><td>##IDS_ERROR_2604##</td></row>
		<row><td>2605</td><td>##IDS_ERROR_2605##</td></row>
		<row><td>2606</td><td>##IDS_ERROR_2606##</td></row>
		<row><td>2607</td><td>##IDS_ERROR_2607##</td></row>
		<row><td>2608</td><td>##IDS_ERROR_2608##</td></row>
		<row><td>2609</td><td>##IDS_ERROR_2609##</td></row>
		<row><td>2611</td><td>##IDS_ERROR_2611##</td></row>
		<row><td>2612</td><td>##IDS_ERROR_2612##</td></row>
		<row><td>2613</td><td>##IDS_ERROR_2613##</td></row>
		<row><td>2614</td><td>##IDS_ERROR_2614##</td></row>
		<row><td>2615</td><td>##IDS_ERROR_2615##</td></row>
		<row><td>2616</td><td>##IDS_ERROR_2616##</td></row>
		<row><td>2617</td><td>##IDS_ERROR_2617##</td></row>
		<row><td>2618</td><td>##IDS_ERROR_2618##</td></row>
		<row><td>2619</td><td>##IDS_ERROR_2619##</td></row>
		<row><td>2620</td><td>##IDS_ERROR_2620##</td></row>
		<row><td>2621</td><td>##IDS_ERROR_2621##</td></row>
		<row><td>2701</td><td>##IDS_ERROR_2701##</td></row>
		<row><td>2702</td><td>##IDS_ERROR_2702##</td></row>
		<row><td>2703</td><td>##IDS_ERROR_2703##</td></row>
		<row><td>2704</td><td>##IDS_ERROR_2704##</td></row>
		<row><td>2705</td><td>##IDS_ERROR_2705##</td></row>
		<row><td>2706</td><td>##IDS_ERROR_2706##</td></row>
		<row><td>2707</td><td>##IDS_ERROR_2707##</td></row>
		<row><td>2708</td><td>##IDS_ERROR_2708##</td></row>
		<row><td>2709</td><td>##IDS_ERROR_2709##</td></row>
		<row><td>2710</td><td>##IDS_ERROR_2710##</td></row>
		<row><td>2711</td><td>##IDS_ERROR_2711##</td></row>
		<row><td>2712</td><td>##IDS_ERROR_2712##</td></row>
		<row><td>2713</td><td>##IDS_ERROR_2713##</td></row>
		<row><td>2714</td><td>##IDS_ERROR_2714##</td></row>
		<row><td>2715</td><td>##IDS_ERROR_2715##</td></row>
		<row><td>2716</td><td>##IDS_ERROR_2716##</td></row>
		<row><td>2717</td><td>##IDS_ERROR_2717##</td></row>
		<row><td>2718</td><td>##IDS_ERROR_2718##</td></row>
		<row><td>2719</td><td>##IDS_ERROR_2719##</td></row>
		<row><td>2720</td><td>##IDS_ERROR_2720##</td></row>
		<row><td>2721</td><td>##IDS_ERROR_2721##</td></row>
		<row><td>2722</td><td>##IDS_ERROR_2722##</td></row>
		<row><td>2723</td><td>##IDS_ERROR_2723##</td></row>
		<row><td>2724</td><td>##IDS_ERROR_2724##</td></row>
		<row><td>2725</td><td>##IDS_ERROR_2725##</td></row>
		<row><td>2726</td><td>##IDS_ERROR_2726##</td></row>
		<row><td>2727</td><td>##IDS_ERROR_2727##</td></row>
		<row><td>2728</td><td>##IDS_ERROR_2728##</td></row>
		<row><td>2729</td><td>##IDS_ERROR_2729##</td></row>
		<row><td>2730</td><td>##IDS_ERROR_2730##</td></row>
		<row><td>2731</td><td>##IDS_ERROR_2731##</td></row>
		<row><td>2732</td><td>##IDS_ERROR_2732##</td></row>
		<row><td>2733</td><td>##IDS_ERROR_2733##</td></row>
		<row><td>2734</td><td>##IDS_ERROR_2734##</td></row>
		<row><td>2735</td><td>##IDS_ERROR_2735##</td></row>
		<row><td>2736</td><td>##IDS_ERROR_2736##</td></row>
		<row><td>2737</td><td>##IDS_ERROR_2737##</td></row>
		<row><td>2738</td><td>##IDS_ERROR_2738##</td></row>
		<row><td>2739</td><td>##IDS_ERROR_2739##</td></row>
		<row><td>2740</td><td>##IDS_ERROR_2740##</td></row>
		<row><td>2741</td><td>##IDS_ERROR_2741##</td></row>
		<row><td>2742</td><td>##IDS_ERROR_2742##</td></row>
		<row><td>2743</td><td>##IDS_ERROR_2743##</td></row>
		<row><td>2744</td><td>##IDS_ERROR_2744##</td></row>
		<row><td>2745</td><td>##IDS_ERROR_2745##</td></row>
		<row><td>2746</td><td>##IDS_ERROR_2746##</td></row>
		<row><td>2747</td><td>##IDS_ERROR_2747##</td></row>
		<row><td>2748</td><td>##IDS_ERROR_2748##</td></row>
		<row><td>2749</td><td>##IDS_ERROR_2749##</td></row>
		<row><td>2750</td><td>##IDS_ERROR_2750##</td></row>
		<row><td>27500</td><td>##IDS_ERROR_130##</td></row>
		<row><td>27501</td><td>##IDS_ERROR_131##</td></row>
		<row><td>27502</td><td>##IDS_ERROR_27502##</td></row>
		<row><td>27503</td><td>##IDS_ERROR_27503##</td></row>
		<row><td>27504</td><td>##IDS_ERROR_27504##</td></row>
		<row><td>27505</td><td>##IDS_ERROR_27505##</td></row>
		<row><td>27506</td><td>##IDS_ERROR_27506##</td></row>
		<row><td>27507</td><td>##IDS_ERROR_27507##</td></row>
		<row><td>27508</td><td>##IDS_ERROR_27508##</td></row>
		<row><td>27509</td><td>##IDS_ERROR_27509##</td></row>
		<row><td>2751</td><td>##IDS_ERROR_2751##</td></row>
		<row><td>27510</td><td>##IDS_ERROR_27510##</td></row>
		<row><td>27511</td><td>##IDS_ERROR_27511##</td></row>
		<row><td>27512</td><td>##IDS_ERROR_27512##</td></row>
		<row><td>27513</td><td>##IDS_ERROR_27513##</td></row>
		<row><td>27514</td><td>##IDS_ERROR_27514##</td></row>
		<row><td>27515</td><td>##IDS_ERROR_27515##</td></row>
		<row><td>27516</td><td>##IDS_ERROR_27516##</td></row>
		<row><td>27517</td><td>##IDS_ERROR_27517##</td></row>
		<row><td>27518</td><td>##IDS_ERROR_27518##</td></row>
		<row><td>27519</td><td>##IDS_ERROR_27519##</td></row>
		<row><td>2752</td><td>##IDS_ERROR_2752##</td></row>
		<row><td>27520</td><td>##IDS_ERROR_27520##</td></row>
		<row><td>27521</td><td>##IDS_ERROR_27521##</td></row>
		<row><td>27522</td><td>##IDS_ERROR_27522##</td></row>
		<row><td>27523</td><td>##IDS_ERROR_27523##</td></row>
		<row><td>27524</td><td>##IDS_ERROR_27524##</td></row>
		<row><td>27525</td><td>##IDS_ERROR_27525##</td></row>
		<row><td>27526</td><td>##IDS_ERROR_27526##</td></row>
		<row><td>27527</td><td>##IDS_ERROR_27527##</td></row>
		<row><td>27528</td><td>##IDS_ERROR_27528##</td></row>
		<row><td>27529</td><td>##IDS_ERROR_27529##</td></row>
		<row><td>2753</td><td>##IDS_ERROR_2753##</td></row>
		<row><td>27530</td><td>##IDS_ERROR_27530##</td></row>
		<row><td>27531</td><td>##IDS_ERROR_27531##</td></row>
		<row><td>27532</td><td>##IDS_ERROR_27532##</td></row>
		<row><td>27533</td><td>##IDS_ERROR_27533##</td></row>
		<row><td>27534</td><td>##IDS_ERROR_27534##</td></row>
		<row><td>27535</td><td>##IDS_ERROR_27535##</td></row>
		<row><td>27536</td><td>##IDS_ERROR_27536##</td></row>
		<row><td>27537</td><td>##IDS_ERROR_27537##</td></row>
		<row><td>27538</td><td>##IDS_ERROR_27538##</td></row>
		<row><td>27539</td><td>##IDS_ERROR_27539##</td></row>
		<row><td>2754</td><td>##IDS_ERROR_2754##</td></row>
		<row><td>27540</td><td>##IDS_ERROR_27540##</td></row>
		<row><td>27541</td><td>##IDS_ERROR_27541##</td></row>
		<row><td>27542</td><td>##IDS_ERROR_27542##</td></row>
		<row><td>27543</td><td>##IDS_ERROR_27543##</td></row>
		<row><td>27544</td><td>##IDS_ERROR_27544##</td></row>
		<row><td>27545</td><td>##IDS_ERROR_27545##</td></row>
		<row><td>27546</td><td>##IDS_ERROR_27546##</td></row>
		<row><td>27547</td><td>##IDS_ERROR_27547##</td></row>
		<row><td>27548</td><td>##IDS_ERROR_27548##</td></row>
		<row><td>27549</td><td>##IDS_ERROR_27549##</td></row>
		<row><td>2755</td><td>##IDS_ERROR_2755##</td></row>
		<row><td>27550</td><td>##IDS_ERROR_27550##</td></row>
		<row><td>27551</td><td>##IDS_ERROR_27551##</td></row>
		<row><td>27552</td><td>##IDS_ERROR_27552##</td></row>
		<row><td>27553</td><td>##IDS_ERROR_27553##</td></row>
		<row><td>27554</td><td>##IDS_ERROR_27554##</td></row>
		<row><td>27555</td><td>##IDS_ERROR_27555##</td></row>
		<row><td>2756</td><td>##IDS_ERROR_2756##</td></row>
		<row><td>2757</td><td>##IDS_ERROR_2757##</td></row>
		<row><td>2758</td><td>##IDS_ERROR_2758##</td></row>
		<row><td>2759</td><td>##IDS_ERROR_2759##</td></row>
		<row><td>2760</td><td>##IDS_ERROR_2760##</td></row>
		<row><td>2761</td><td>##IDS_ERROR_2761##</td></row>
		<row><td>2762</td><td>##IDS_ERROR_2762##</td></row>
		<row><td>2763</td><td>##IDS_ERROR_2763##</td></row>
		<row><td>2765</td><td>##IDS_ERROR_2765##</td></row>
		<row><td>2766</td><td>##IDS_ERROR_2766##</td></row>
		<row><td>2767</td><td>##IDS_ERROR_2767##</td></row>
		<row><td>2768</td><td>##IDS_ERROR_2768##</td></row>
		<row><td>2769</td><td>##IDS_ERROR_2769##</td></row>
		<row><td>2770</td><td>##IDS_ERROR_2770##</td></row>
		<row><td>2771</td><td>##IDS_ERROR_2771##</td></row>
		<row><td>2772</td><td>##IDS_ERROR_2772##</td></row>
		<row><td>2801</td><td>##IDS_ERROR_2801##</td></row>
		<row><td>2802</td><td>##IDS_ERROR_2802##</td></row>
		<row><td>2803</td><td>##IDS_ERROR_2803##</td></row>
		<row><td>2804</td><td>##IDS_ERROR_2804##</td></row>
		<row><td>2806</td><td>##IDS_ERROR_2806##</td></row>
		<row><td>2807</td><td>##IDS_ERROR_2807##</td></row>
		<row><td>2808</td><td>##IDS_ERROR_2808##</td></row>
		<row><td>2809</td><td>##IDS_ERROR_2809##</td></row>
		<row><td>2810</td><td>##IDS_ERROR_2810##</td></row>
		<row><td>2811</td><td>##IDS_ERROR_2811##</td></row>
		<row><td>2812</td><td>##IDS_ERROR_2812##</td></row>
		<row><td>2813</td><td>##IDS_ERROR_2813##</td></row>
		<row><td>2814</td><td>##IDS_ERROR_2814##</td></row>
		<row><td>2815</td><td>##IDS_ERROR_2815##</td></row>
		<row><td>2816</td><td>##IDS_ERROR_2816##</td></row>
		<row><td>2817</td><td>##IDS_ERROR_2817##</td></row>
		<row><td>2818</td><td>##IDS_ERROR_2818##</td></row>
		<row><td>2819</td><td>##IDS_ERROR_2819##</td></row>
		<row><td>2820</td><td>##IDS_ERROR_2820##</td></row>
		<row><td>2821</td><td>##IDS_ERROR_2821##</td></row>
		<row><td>2822</td><td>##IDS_ERROR_2822##</td></row>
		<row><td>2823</td><td>##IDS_ERROR_2823##</td></row>
		<row><td>2824</td><td>##IDS_ERROR_2824##</td></row>
		<row><td>2825</td><td>##IDS_ERROR_2825##</td></row>
		<row><td>2826</td><td>##IDS_ERROR_2826##</td></row>
		<row><td>2827</td><td>##IDS_ERROR_2827##</td></row>
		<row><td>2828</td><td>##IDS_ERROR_2828##</td></row>
		<row><td>2829</td><td>##IDS_ERROR_2829##</td></row>
		<row><td>2830</td><td>##IDS_ERROR_2830##</td></row>
		<row><td>2831</td><td>##IDS_ERROR_2831##</td></row>
		<row><td>2832</td><td>##IDS_ERROR_2832##</td></row>
		<row><td>2833</td><td>##IDS_ERROR_2833##</td></row>
		<row><td>2834</td><td>##IDS_ERROR_2834##</td></row>
		<row><td>2835</td><td>##IDS_ERROR_2835##</td></row>
		<row><td>2836</td><td>##IDS_ERROR_2836##</td></row>
		<row><td>2837</td><td>##IDS_ERROR_2837##</td></row>
		<row><td>2838</td><td>##IDS_ERROR_2838##</td></row>
		<row><td>2839</td><td>##IDS_ERROR_2839##</td></row>
		<row><td>2840</td><td>##IDS_ERROR_2840##</td></row>
		<row><td>2841</td><td>##IDS_ERROR_2841##</td></row>
		<row><td>2842</td><td>##IDS_ERROR_2842##</td></row>
		<row><td>2843</td><td>##IDS_ERROR_2843##</td></row>
		<row><td>2844</td><td>##IDS_ERROR_2844##</td></row>
		<row><td>2845</td><td>##IDS_ERROR_2845##</td></row>
		<row><td>2846</td><td>##IDS_ERROR_2846##</td></row>
		<row><td>2847</td><td>##IDS_ERROR_2847##</td></row>
		<row><td>2848</td><td>##IDS_ERROR_2848##</td></row>
		<row><td>2849</td><td>##IDS_ERROR_2849##</td></row>
		<row><td>2850</td><td>##IDS_ERROR_2850##</td></row>
		<row><td>2851</td><td>##IDS_ERROR_2851##</td></row>
		<row><td>2852</td><td>##IDS_ERROR_2852##</td></row>
		<row><td>2853</td><td>##IDS_ERROR_2853##</td></row>
		<row><td>2854</td><td>##IDS_ERROR_2854##</td></row>
		<row><td>2855</td><td>##IDS_ERROR_2855##</td></row>
		<row><td>2856</td><td>##IDS_ERROR_2856##</td></row>
		<row><td>2857</td><td>##IDS_ERROR_2857##</td></row>
		<row><td>2858</td><td>##IDS_ERROR_2858##</td></row>
		<row><td>2859</td><td>##IDS_ERROR_2859##</td></row>
		<row><td>2860</td><td>##IDS_ERROR_2860##</td></row>
		<row><td>2861</td><td>##IDS_ERROR_2861##</td></row>
		<row><td>2862</td><td>##IDS_ERROR_2862##</td></row>
		<row><td>2863</td><td>##IDS_ERROR_2863##</td></row>
		<row><td>2864</td><td>##IDS_ERROR_2864##</td></row>
		<row><td>2865</td><td>##IDS_ERROR_2865##</td></row>
		<row><td>2866</td><td>##IDS_ERROR_2866##</td></row>
		<row><td>2867</td><td>##IDS_ERROR_2867##</td></row>
		<row><td>2868</td><td>##IDS_ERROR_2868##</td></row>
		<row><td>2869</td><td>##IDS_ERROR_2869##</td></row>
		<row><td>2870</td><td>##IDS_ERROR_2870##</td></row>
		<row><td>2871</td><td>##IDS_ERROR_2871##</td></row>
		<row><td>2872</td><td>##IDS_ERROR_2872##</td></row>
		<row><td>2873</td><td>##IDS_ERROR_2873##</td></row>
		<row><td>2874</td><td>##IDS_ERROR_2874##</td></row>
		<row><td>2875</td><td>##IDS_ERROR_2875##</td></row>
		<row><td>2876</td><td>##IDS_ERROR_2876##</td></row>
		<row><td>2877</td><td>##IDS_ERROR_2877##</td></row>
		<row><td>2878</td><td>##IDS_ERROR_2878##</td></row>
		<row><td>2879</td><td>##IDS_ERROR_2879##</td></row>
		<row><td>2880</td><td>##IDS_ERROR_2880##</td></row>
		<row><td>2881</td><td>##IDS_ERROR_2881##</td></row>
		<row><td>2882</td><td>##IDS_ERROR_2882##</td></row>
		<row><td>2883</td><td>##IDS_ERROR_2883##</td></row>
		<row><td>2884</td><td>##IDS_ERROR_2884##</td></row>
		<row><td>2885</td><td>##IDS_ERROR_2885##</td></row>
		<row><td>2886</td><td>##IDS_ERROR_2886##</td></row>
		<row><td>2887</td><td>##IDS_ERROR_2887##</td></row>
		<row><td>2888</td><td>##IDS_ERROR_2888##</td></row>
		<row><td>2889</td><td>##IDS_ERROR_2889##</td></row>
		<row><td>2890</td><td>##IDS_ERROR_2890##</td></row>
		<row><td>2891</td><td>##IDS_ERROR_2891##</td></row>
		<row><td>2892</td><td>##IDS_ERROR_2892##</td></row>
		<row><td>2893</td><td>##IDS_ERROR_2893##</td></row>
		<row><td>2894</td><td>##IDS_ERROR_2894##</td></row>
		<row><td>2895</td><td>##IDS_ERROR_2895##</td></row>
		<row><td>2896</td><td>##IDS_ERROR_2896##</td></row>
		<row><td>2897</td><td>##IDS_ERROR_2897##</td></row>
		<row><td>2898</td><td>##IDS_ERROR_2898##</td></row>
		<row><td>2899</td><td>##IDS_ERROR_2899##</td></row>
		<row><td>2901</td><td>##IDS_ERROR_2901##</td></row>
		<row><td>2902</td><td>##IDS_ERROR_2902##</td></row>
		<row><td>2903</td><td>##IDS_ERROR_2903##</td></row>
		<row><td>2904</td><td>##IDS_ERROR_2904##</td></row>
		<row><td>2905</td><td>##IDS_ERROR_2905##</td></row>
		<row><td>2906</td><td>##IDS_ERROR_2906##</td></row>
		<row><td>2907</td><td>##IDS_ERROR_2907##</td></row>
		<row><td>2908</td><td>##IDS_ERROR_2908##</td></row>
		<row><td>2909</td><td>##IDS_ERROR_2909##</td></row>
		<row><td>2910</td><td>##IDS_ERROR_2910##</td></row>
		<row><td>2911</td><td>##IDS_ERROR_2911##</td></row>
		<row><td>2912</td><td>##IDS_ERROR_2912##</td></row>
		<row><td>2919</td><td>##IDS_ERROR_2919##</td></row>
		<row><td>2920</td><td>##IDS_ERROR_2920##</td></row>
		<row><td>2924</td><td>##IDS_ERROR_2924##</td></row>
		<row><td>2927</td><td>##IDS_ERROR_2927##</td></row>
		<row><td>2928</td><td>##IDS_ERROR_2928##</td></row>
		<row><td>2929</td><td>##IDS_ERROR_2929##</td></row>
		<row><td>2932</td><td>##IDS_ERROR_2932##</td></row>
		<row><td>2933</td><td>##IDS_ERROR_2933##</td></row>
		<row><td>2934</td><td>##IDS_ERROR_2934##</td></row>
		<row><td>2935</td><td>##IDS_ERROR_2935##</td></row>
		<row><td>2936</td><td>##IDS_ERROR_2936##</td></row>
		<row><td>2937</td><td>##IDS_ERROR_2937##</td></row>
		<row><td>2938</td><td>##IDS_ERROR_2938##</td></row>
		<row><td>2939</td><td>##IDS_ERROR_2939##</td></row>
		<row><td>2940</td><td>##IDS_ERROR_2940##</td></row>
		<row><td>2941</td><td>##IDS_ERROR_2941##</td></row>
		<row><td>2942</td><td>##IDS_ERROR_2942##</td></row>
		<row><td>2943</td><td>##IDS_ERROR_2943##</td></row>
		<row><td>2944</td><td>##IDS_ERROR_2944##</td></row>
		<row><td>2945</td><td>##IDS_ERROR_2945##</td></row>
		<row><td>3001</td><td>##IDS_ERROR_3001##</td></row>
		<row><td>3002</td><td>##IDS_ERROR_3002##</td></row>
		<row><td>32</td><td>##IDS_ERROR_20##</td></row>
		<row><td>33</td><td>##IDS_ERROR_21##</td></row>
		<row><td>4</td><td>##IDS_ERROR_3##</td></row>
		<row><td>5</td><td>##IDS_ERROR_4##</td></row>
		<row><td>7</td><td>##IDS_ERROR_5##</td></row>
		<row><td>8</td><td>##IDS_ERROR_6##</td></row>
		<row><td>9</td><td>##IDS_ERROR_7##</td></row>
	</table>

	<table name="EventMapping">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col def="s50">Attribute</col>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>SelectionDescription</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Location</td><td>SelectionPath</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Size</td><td>SelectionSize</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>ActionData</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>AdminInstallFinalize</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>InstallFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>MoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>SetProgress</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>UnmoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteIniValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
	</table>

	<table name="Extension">
		<col key="yes" def="s255">Extension</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_</col>
		<col def="S64">MIME_</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="Feature">
		<col key="yes" def="s38">Feature</col>
		<col def="S38">Feature_Parent</col>
		<col def="L64">Title</col>
		<col def="L255">Description</col>
		<col def="I2">Display</col>
		<col def="i2">Level</col>
		<col def="S72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISFeatureCabName</col>
		<col def="S255">ISProFeatureName</col>
		<row><td>AlwaysInstall</td><td/><td>##DN_AlwaysInstall##</td><td>Enter the description for this feature here.</td><td>0</td><td>1</td><td>INSTALLDIR</td><td>16</td><td/><td>Enter comments regarding this feature here.</td><td/><td/></row>
	</table>

	<table name="FeatureComponents">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll2</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.BrowserSubprocess.Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.BrowserSubprocess.exe</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.WinForms.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.dll</td></row>
		<row><td>AlwaysInstall</td><td>Component</td></row>
		<row><td>AlwaysInstall</td><td>Component1</td></row>
		<row><td>AlwaysInstall</td><td>Component2</td></row>
		<row><td>AlwaysInstall</td><td>D3Dcompiler_47.dll</td></row>
		<row><td>AlwaysInstall</td><td>DMSkin.dll</td></row>
		<row><td>AlwaysInstall</td><td>DMSkin.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.DotNetBar2.dll</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.DotNetBar2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.Instrumentation.dll</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll1</td></row>
		<row><td>AlwaysInstall</td><td>H264Play.dll</td></row>
		<row><td>AlwaysInstall</td><td>H264Play.dll1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT31</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT33</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT34</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT39</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT41</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT43</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT45</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT46</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT48</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT49</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT50</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT52</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>AlwaysInstall</td><td>NetSdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent1</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent2</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent3</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent4</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent5</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Gui.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Sql.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Svg.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Widgets.dll</td></row>
		<row><td>AlwaysInstall</td><td>SDL2.dll</td></row>
		<row><td>AlwaysInstall</td><td>SDL2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avdevice_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avdevice_57.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avdevice_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avfilter_6.dll</td></row>
		<row><td>AlwaysInstall</td><td>avfilter_6.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avfilter_6.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll2</td></row>
		<row><td>AlwaysInstall</td><td>booth.dll</td></row>
		<row><td>AlwaysInstall</td><td>coreaudio_encoder.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_framework.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_framework.dll1</td></row>
		<row><td>AlwaysInstall</td><td>cs_logic.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_logic.dll1</td></row>
		<row><td>AlwaysInstall</td><td>cs_xc.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_xc.dll1</td></row>
		<row><td>AlwaysInstall</td><td>d3dcompiler_43.dll</td></row>
		<row><td>AlwaysInstall</td><td>d3dcompiler_47.dll</td></row>
		<row><td>AlwaysInstall</td><td>d_framework.dll</td></row>
		<row><td>AlwaysInstall</td><td>d_framework.dll1</td></row>
		<row><td>AlwaysInstall</td><td>ffmpeg_mux64.exe</td></row>
		<row><td>AlwaysInstall</td><td>get_graphics_offsets64.exe</td></row>
		<row><td>AlwaysInstall</td><td>graphics_hook64.dll</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec_v.dll</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec_v.dll1</td></row>
		<row><td>AlwaysInstall</td><td>icudt54.dll</td></row>
		<row><td>AlwaysInstall</td><td>icuin54.dll</td></row>
		<row><td>AlwaysInstall</td><td>icuuc54.dll</td></row>
		<row><td>AlwaysInstall</td><td>image_source.dll</td></row>
		<row><td>AlwaysInstall</td><td>inject_helper64.exe</td></row>
		<row><td>AlwaysInstall</td><td>libEGL.dll</td></row>
		<row><td>AlwaysInstall</td><td>libEGL.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libGLESv2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libGLESv2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libcef.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcurl.dll</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libobs_d3d11.dll</td></row>
		<row><td>AlwaysInstall</td><td>libobs_opengl.dll</td></row>
		<row><td>AlwaysInstall</td><td>libogg_0.dll</td></row>
		<row><td>AlwaysInstall</td><td>libopus_0.dll</td></row>
		<row><td>AlwaysInstall</td><td>libportaudio_2.dll.dll</td></row>
		<row><td>AlwaysInstall</td><td>libportaudio_2.dll.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libvorbis_0.dll</td></row>
		<row><td>AlwaysInstall</td><td>libvorbisenc_2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libvorbisfile_3.dll</td></row>
		<row><td>AlwaysInstall</td><td>libx264_146.dll</td></row>
		<row><td>AlwaysInstall</td><td>libx264_146.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libx264_148.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_captureAudioDevice.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_captureAudioDevice.dll1</td></row>
		<row><td>AlwaysInstall</td><td>m_captureDesk.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_captureDesk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>m_recorder.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_recorder.dll1</td></row>
		<row><td>AlwaysInstall</td><td>m_rtsp.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_rtsp.dll1</td></row>
		<row><td>AlwaysInstall</td><td>m_transferDesk.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_transferDesk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs64.exe</td></row>
		<row><td>AlwaysInstall</td><td>obs_ffmpeg.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs_filters.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs_outputs.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs_qsv11.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs_transitions.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs_x264.dll</td></row>
		<row><td>AlwaysInstall</td><td>obsglad.dll</td></row>
		<row><td>AlwaysInstall</td><td>opencv_core248.dll</td></row>
		<row><td>AlwaysInstall</td><td>opencv_highgui248.dll</td></row>
		<row><td>AlwaysInstall</td><td>opengl32sw.dll</td></row>
		<row><td>AlwaysInstall</td><td>postproc_54.dll</td></row>
		<row><td>AlwaysInstall</td><td>postproc_54.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qdds.dll</td></row>
		<row><td>AlwaysInstall</td><td>qgif.dll</td></row>
		<row><td>AlwaysInstall</td><td>qicns.dll</td></row>
		<row><td>AlwaysInstall</td><td>qico.dll</td></row>
		<row><td>AlwaysInstall</td><td>qjp2.dll</td></row>
		<row><td>AlwaysInstall</td><td>qjpeg.dll</td></row>
		<row><td>AlwaysInstall</td><td>qmng.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsqlite.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsqlmysql.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsqlodbc.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsqlpsql.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsvg.dll</td></row>
		<row><td>AlwaysInstall</td><td>qsvgicon.dll</td></row>
		<row><td>AlwaysInstall</td><td>qtga.dll</td></row>
		<row><td>AlwaysInstall</td><td>qtiff.dll</td></row>
		<row><td>AlwaysInstall</td><td>qwbmp.dll</td></row>
		<row><td>AlwaysInstall</td><td>qwebp.dll</td></row>
		<row><td>AlwaysInstall</td><td>qwindows.dll</td></row>
		<row><td>AlwaysInstall</td><td>rtmp_services.dll</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll1</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll2</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll1</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll2</td></row>
		<row><td>AlwaysInstall</td><td>text_freetype2.dll</td></row>
		<row><td>AlwaysInstall</td><td>w32_pthreads.dll</td></row>
		<row><td>AlwaysInstall</td><td>widevinecdmadapter.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_capture.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_decklink.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_dshow.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_mf.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_wasapi.dll</td></row>
		<row><td>AlwaysInstall</td><td>zlib.dll</td></row>
	</table>

	<table name="File">
		<col key="yes" def="s72">File</col>
		<col def="s72">Component_</col>
		<col def="s255">FileName</col>
		<col def="i4">FileSize</col>
		<col def="S72">Version</col>
		<col def="S20">Language</col>
		<col def="I2">Attributes</col>
		<col def="i2">Sequence</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I4">ISAttributes</col>
		<col def="S72">ISComponentSubFolder_</col>
		<row><td>File</td><td>Component</td><td>AeroEduClass.主输出</td><td>0</td><td/><td/><td/><td>1</td><td>&lt;AeroEduClass&gt;|Built</td><td>3</td><td/></row>
		<row><td>File.htm</td><td>ISX_DEFAULTCOMPONENT3</td><td>教师带~1.HTM|教师带声音.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Template\教师带声音.htm</td><td>1</td><td/></row>
		<row><td>File.htm1</td><td>ISX_DEFAULTCOMPONENT3</td><td>屏幕带~1.HTM|屏幕带声音.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Template\屏幕带声音.htm</td><td>1</td><td/></row>
		<row><td>File.htm2</td><td>ISX_DEFAULTCOMPONENT3</td><td>学生带~1.HTM|学生带声音.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Template\学生带声音.htm</td><td>1</td><td/></row>
		<row><td>File1</td><td>Component1</td><td>Booth Camera.主输出</td><td>0</td><td/><td/><td/><td>1</td><td>&lt;Booth Camera&gt;|Built</td><td>3</td><td/></row>
		<row><td>File2</td><td>Component2</td><td>Record Player.主输出</td><td>0</td><td/><td/><td/><td>1</td><td>&lt;Record Player&gt;|Built</td><td>3</td><td/></row>
		<row><td>_gitignore</td><td>ISX_DEFAULTCOMPONENT5</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\.gitignore</td><td>1</td><td/></row>
		<row><td>_gitignore1</td><td>ISX_DEFAULTCOMPONENT7</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\.gitignore</td><td>1</td><td/></row>
		<row><td>_gitignore2</td><td>ISX_DEFAULTCOMPONENT13</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\.gitignore</td><td>1</td><td/></row>
		<row><td>aeroedu.db</td><td>ISX_DEFAULTCOMPONENT7</td><td>aeroedu.db</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\aeroedu.db</td><td>1</td><td/></row>
		<row><td>aeroeduclass.exe.config</td><td>ISX_DEFAULTCOMPONENT2</td><td>AEROED~1.CON|AeroEduClass.exe.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe.config</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll</td><td>AeroEduLib.dll</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll1</td><td>AeroEduLib.dll1</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll2</td><td>AeroEduLib.dll2</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>ar_sa.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll</td><td>avcodec_57.dll</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll1</td><td>avcodec_57.dll1</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll2</td><td>avcodec_57.dll2</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avdevice_57.dll</td><td>avdevice_57.dll</td><td>AVDEVI~1.DLL|avdevice-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\avdevice-57.dll</td><td>1</td><td/></row>
		<row><td>avdevice_57.dll1</td><td>avdevice_57.dll1</td><td>AVDEVI~1.DLL|avdevice-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\avdevice-57.dll</td><td>1</td><td/></row>
		<row><td>avdevice_57.dll2</td><td>avdevice_57.dll2</td><td>AVDEVI~1.DLL|avdevice-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\avdevice-57.dll</td><td>1</td><td/></row>
		<row><td>avfilter_6.dll</td><td>avfilter_6.dll</td><td>AVFILT~1.DLL|avfilter-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\avfilter-6.dll</td><td>1</td><td/></row>
		<row><td>avfilter_6.dll1</td><td>avfilter_6.dll1</td><td>AVFILT~1.DLL|avfilter-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\avfilter-6.dll</td><td>1</td><td/></row>
		<row><td>avfilter_6.dll2</td><td>avfilter_6.dll2</td><td>AVFILT~1.DLL|avfilter-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\avfilter-6.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll</td><td>avformat_57.dll</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll1</td><td>avformat_57.dll1</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll2</td><td>avformat_57.dll2</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll</td><td>avutil_55.dll</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll1</td><td>avutil_55.dll1</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll2</td><td>avutil_55.dll2</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>bg_bg.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini3</td><td>ISX_DEFAULTCOMPONENT31</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini4</td><td>ISX_DEFAULTCOMPONENT39</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini5</td><td>ISX_DEFAULTCOMPONENT41</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini6</td><td>ISX_DEFAULTCOMPONENT45</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini7</td><td>ISX_DEFAULTCOMPONENT48</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bicubic_scale.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>BICUBI~1.EFF|bicubic_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\bicubic_scale.effect</td><td>1</td><td/></row>
		<row><td>bilinear_lowres_scale.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>BILINE~1.EFF|bilinear_lowres_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\bilinear_lowres_scale.effect</td><td>1</td><td/></row>
		<row><td>blend_add_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>BLEND_~1.EFF|blend_add_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\blend_add_filter.effect</td><td>1</td><td/></row>
		<row><td>blend_mul_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>BLEND_~1.EFF|blend_mul_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\blend_mul_filter.effect</td><td>1</td><td/></row>
		<row><td>blend_sub_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>BLEND_~1.EFF|blend_sub_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\blend_sub_filter.effect</td><td>1</td><td/></row>
		<row><td>booth.dll</td><td>booth.dll</td><td>booth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\booth.dll</td><td>1</td><td/></row>
		<row><td>ca_es.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>cef.pak</td><td>ISX_DEFAULTCOMPONENT2</td><td>cef.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\cef.pak</td><td>1</td><td/></row>
		<row><td>cef_100_percent.pak</td><td>ISX_DEFAULTCOMPONENT2</td><td>CEF_10~1.PAK|cef_100_percent.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\cef_100_percent.pak</td><td>1</td><td/></row>
		<row><td>cef_200_percent.pak</td><td>ISX_DEFAULTCOMPONENT2</td><td>CEF_20~1.PAK|cef_200_percent.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\cef_200_percent.pak</td><td>1</td><td/></row>
		<row><td>cef_extensions.pak</td><td>ISX_DEFAULTCOMPONENT2</td><td>CEF_EX~1.PAK|cef_extensions.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\cef_extensions.pak</td><td>1</td><td/></row>
		<row><td>cefsharp.browsersubprocess.c</td><td>CefSharp.BrowserSubprocess.Core.dll</td><td>CEFSHA~1.DLL|CefSharp.BrowserSubprocess.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.BrowserSubprocess.Core.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.browsersubprocess.e</td><td>CefSharp.BrowserSubprocess.exe</td><td>CEFSHA~1.EXE|CefSharp.BrowserSubprocess.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.BrowserSubprocess.exe</td><td>1</td><td/></row>
		<row><td>cefsharp.core.dll</td><td>CefSharp.Core.dll</td><td>CEFSHA~1.DLL|CefSharp.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.Core.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.core.xml</td><td>ISX_DEFAULTCOMPONENT2</td><td>CEFSHA~1.XML|CefSharp.Core.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.Core.xml</td><td>1</td><td/></row>
		<row><td>cefsharp.dll</td><td>CefSharp.dll</td><td>CefSharp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.winforms.dll</td><td>CefSharp.WinForms.dll</td><td>CEFSHA~1.DLL|CefSharp.WinForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.WinForms.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.winforms.xml</td><td>ISX_DEFAULTCOMPONENT2</td><td>CEFSHA~1.XML|CefSharp.WinForms.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.WinForms.xml</td><td>1</td><td/></row>
		<row><td>cefsharp.xml</td><td>ISX_DEFAULTCOMPONENT2</td><td>CefSharp.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\CefSharp.xml</td><td>1</td><td/></row>
		<row><td>chroma_key_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>CHROMA~1.EFF|chroma_key_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\chroma_key_filter.effect</td><td>1</td><td/></row>
		<row><td>cogwheel.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>cogwheel.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\cogwheel.png</td><td>1</td><td/></row>
		<row><td>color_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>COLOR_~1.EFF|color_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\color_filter.effect</td><td>1</td><td/></row>
		<row><td>color_key_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>COLOR_~1.EFF|color_key_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\color_key_filter.effect</td><td>1</td><td/></row>
		<row><td>config.xml</td><td>ISX_DEFAULTCOMPONENT2</td><td>Config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\Config.xml</td><td>1</td><td/></row>
		<row><td>config.xml1</td><td>ISX_DEFAULTCOMPONENT</td><td>Config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\Config.xml</td><td>1</td><td/></row>
		<row><td>config.xml2</td><td>ISX_DEFAULTCOMPONENT1</td><td>Config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Config.xml</td><td>1</td><td/></row>
		<row><td>coreaudio_encoder.dll</td><td>coreaudio_encoder.dll</td><td>COREAU~1.DLL|coreaudio-encoder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\coreaudio-encoder.dll</td><td>1</td><td/></row>
		<row><td>crop_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>CROP_F~1.EFF|crop_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\crop_filter.effect</td><td>1</td><td/></row>
		<row><td>cs_cz.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_framework.dll</td><td>cs_framework.dll</td><td>CS_FRA~1.DLL|cs_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\cs_framework.dll</td><td>1</td><td/></row>
		<row><td>cs_framework.dll1</td><td>cs_framework.dll1</td><td>CS_FRA~1.DLL|cs_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\cs_framework.dll</td><td>1</td><td/></row>
		<row><td>cs_logic.dll</td><td>cs_logic.dll</td><td>cs_logic.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\cs_logic.dll</td><td>1</td><td/></row>
		<row><td>cs_logic.dll1</td><td>cs_logic.dll1</td><td>cs_logic.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\cs_logic.dll</td><td>1</td><td/></row>
		<row><td>cs_xc.dll</td><td>cs_xc.dll</td><td>cs_xc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\cs_xc.dll</td><td>1</td><td/></row>
		<row><td>cs_xc.dll1</td><td>cs_xc.dll1</td><td>cs_xc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\cs_xc.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_43.dll</td><td>d3dcompiler_43.dll</td><td>D3DCOM~1.DLL|d3dcompiler_43.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\d3dcompiler_43.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_47.dll</td><td>d3dcompiler_47.dll</td><td>D3DCOM~1.DLL|d3dcompiler_47.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\d3dcompiler_47.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_47.dll1</td><td>D3Dcompiler_47.dll</td><td>D3DCOM~1.DLL|D3Dcompiler_47.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\D3Dcompiler_47.dll</td><td>1</td><td/></row>
		<row><td>d_framework.dll</td><td>d_framework.dll</td><td>D_FRAM~1.DLL|d_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\d_framework.dll</td><td>1</td><td/></row>
		<row><td>d_framework.dll1</td><td>d_framework.dll1</td><td>D_FRAM~1.DLL|d_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\d_framework.dll</td><td>1</td><td/></row>
		<row><td>da_dk.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini10</td><td>ISX_DEFAULTCOMPONENT39</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini11</td><td>ISX_DEFAULTCOMPONENT41</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini12</td><td>ISX_DEFAULTCOMPONENT43</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini13</td><td>ISX_DEFAULTCOMPONENT45</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini14</td><td>ISX_DEFAULTCOMPONENT48</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini5</td><td>ISX_DEFAULTCOMPONENT29</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini6</td><td>ISX_DEFAULTCOMPONENT31</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini7</td><td>ISX_DEFAULTCOMPONENT33</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini8</td><td>ISX_DEFAULTCOMPONENT35</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini9</td><td>ISX_DEFAULTCOMPONENT37</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>dark.qss</td><td>ISX_DEFAULTCOMPONENT49</td><td>Dark.qss</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark.qss</td><td>1</td><td/></row>
		<row><td>de_de.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>default.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEFAUL~1.EFF|default.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\default.effect</td><td>1</td><td/></row>
		<row><td>default.qss</td><td>ISX_DEFAULTCOMPONENT49</td><td>Default.qss</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Default.qss</td><td>1</td><td/></row>
		<row><td>default_rect.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEFAUL~1.EFF|default_rect.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\default_rect.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_base.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_base.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_base.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_blend.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_blend.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_blend.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_blend_2x.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_blend_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_blend_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_discard.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_discard.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_discard.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_discard_2x.effec</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_discard_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_discard_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_linear.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_linear.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_linear.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_linear_2x.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_linear_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_linear_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_yadif.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_yadif.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_yadif.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_yadif_2x.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>DEINTE~1.EFF|deinterlace_yadif_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\deinterlace_yadif_2x.effect</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.dll</td><td>DevComponents.DotNetBar2.dll</td><td>DEVCOM~1.DLL|DevComponents.DotNetBar2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\DevComponents.DotNetBar2.dll</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.dll1</td><td>DevComponents.DotNetBar2.dll1</td><td>DEVCOM~1.DLL|DevComponents.DotNetBar2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\DevComponents.DotNetBar2.dll</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.xml</td><td>ISX_DEFAULTCOMPONENT</td><td>DEVCOM~1.XML|DevComponents.DotNetBar2.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\DevComponents.DotNetBar2.xml</td><td>1</td><td/></row>
		<row><td>devcomponents.instrumentatio</td><td>DevComponents.Instrumentation.dll</td><td>DEVCOM~1.DLL|DevComponents.Instrumentation.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\DevComponents.Instrumentation.dll</td><td>1</td><td/></row>
		<row><td>devtools_resources.pak</td><td>ISX_DEFAULTCOMPONENT2</td><td>DEVTOO~1.PAK|devtools_resources.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\devtools_resources.pak</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll</td><td>DllDeinterlace.dll</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll1</td><td>DllDeinterlace.dll1</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dmskin.dll</td><td>DMSkin.dll</td><td>DMSkin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\DMSkin.dll</td><td>1</td><td/></row>
		<row><td>dmskin.dll1</td><td>DMSkin.dll1</td><td>DMSkin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\DMSkin.dll</td><td>1</td><td/></row>
		<row><td>down_arrow.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>DOWN_A~1.PNG|down_arrow.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\down_arrow.png</td><td>1</td><td/></row>
		<row><td>el_gr.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini10</td><td>ISX_DEFAULTCOMPONENT39</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini11</td><td>ISX_DEFAULTCOMPONENT41</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini12</td><td>ISX_DEFAULTCOMPONENT43</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini13</td><td>ISX_DEFAULTCOMPONENT45</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini14</td><td>ISX_DEFAULTCOMPONENT48</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini5</td><td>ISX_DEFAULTCOMPONENT29</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini6</td><td>ISX_DEFAULTCOMPONENT31</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini7</td><td>ISX_DEFAULTCOMPONENT33</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini8</td><td>ISX_DEFAULTCOMPONENT35</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini9</td><td>ISX_DEFAULTCOMPONENT37</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini</td><td>ISX_DEFAULTCOMPONENT31</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini1</td><td>ISX_DEFAULTCOMPONENT45</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini2</td><td>ISX_DEFAULTCOMPONENT48</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>fade_to_color_transition.eff</td><td>ISX_DEFAULTCOMPONENT28</td><td>FADE_T~1.EFF|fade_to_color_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\fade_to_color_transition.effect</td><td>1</td><td/></row>
		<row><td>fade_transition.effect</td><td>ISX_DEFAULTCOMPONENT28</td><td>FADE_T~1.EFF|fade_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\fade_transition.effect</td><td>1</td><td/></row>
		<row><td>ffmpeg_mux64.exe</td><td>ffmpeg_mux64.exe</td><td>FFMPEG~1.EXE|ffmpeg-mux64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\ffmpeg-mux64.exe</td><td>1</td><td/></row>
		<row><td>fi_fi.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>format_conversion.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>FORMAT~1.EFF|format_conversion.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\format_conversion.effect</td><td>1</td><td/></row>
		<row><td>fr_fr.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>get_graphics_offsets64.exe</td><td>get_graphics_offsets64.exe</td><td>GET-GR~1.EXE|get-graphics-offsets64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\get-graphics-offsets64.exe</td><td>1</td><td/></row>
		<row><td>gl_es.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gplv2.txt</td><td>ISX_DEFAULTCOMPONENT47</td><td>gplv2.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\license\gplv2.txt</td><td>1</td><td/></row>
		<row><td>graphics_hook64.dll</td><td>graphics_hook64.dll</td><td>GRAPHI~1.DLL|graphics-hook64.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\graphics-hook64.dll</td><td>1</td><td/></row>
		<row><td>h264play.dll</td><td>H264Play.dll</td><td>H264Play.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\H264Play.dll</td><td>1</td><td/></row>
		<row><td>h264play.dll1</td><td>H264Play.dll1</td><td>H264Play.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\H264Play.dll</td><td>1</td><td/></row>
		<row><td>he_il.ini</td><td>ISX_DEFAULTCOMPONENT19</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini1</td><td>ISX_DEFAULTCOMPONENT21</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini2</td><td>ISX_DEFAULTCOMPONENT23</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini3</td><td>ISX_DEFAULTCOMPONENT25</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini4</td><td>ISX_DEFAULTCOMPONENT29</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini5</td><td>ISX_DEFAULTCOMPONENT31</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini6</td><td>ISX_DEFAULTCOMPONENT33</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini7</td><td>ISX_DEFAULTCOMPONENT35</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini8</td><td>ISX_DEFAULTCOMPONENT39</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini9</td><td>ISX_DEFAULTCOMPONENT48</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>hi_h264dec_v.dll</td><td>hi_h264dec_v.dll</td><td>HI_H26~1.DLL|hi_h264dec_v.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\hi_h264dec_v.dll</td><td>1</td><td/></row>
		<row><td>hi_h264dec_v.dll1</td><td>hi_h264dec_v.dll1</td><td>HI_H26~1.DLL|hi_h264dec_v.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\hi_h264dec_v.dll</td><td>1</td><td/></row>
		<row><td>hr_hr.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>icudt54.dll</td><td>icudt54.dll</td><td>icudt54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\icudt54.dll</td><td>1</td><td/></row>
		<row><td>icudtl.dat</td><td>ISX_DEFAULTCOMPONENT2</td><td>icudtl.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\icudtl.dat</td><td>1</td><td/></row>
		<row><td>icuin54.dll</td><td>icuin54.dll</td><td>icuin54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\icuin54.dll</td><td>1</td><td/></row>
		<row><td>icuuc54.dll</td><td>icuuc54.dll</td><td>icuuc54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\icuuc54.dll</td><td>1</td><td/></row>
		<row><td>image_source.dll</td><td>image_source.dll</td><td>IMAGE-~1.DLL|image-source.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\image-source.dll</td><td>1</td><td/></row>
		<row><td>inject_helper64.exe</td><td>inject_helper64.exe</td><td>INJECT~1.EXE|inject-helper64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\inject-helper64.exe</td><td>1</td><td/></row>
		<row><td>it_it.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>jquery_1.7.2.js</td><td>ISX_DEFAULTCOMPONENT3</td><td>JQUERY~1.JS|jquery-1.7.2.js</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Template\jquery-1.7.2.js</td><td>1</td><td/></row>
		<row><td>ko_kr.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>lanczos_scale.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>LANCZO~1.EFF|lanczos_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\lanczos_scale.effect</td><td>1</td><td/></row>
		<row><td>libcef.dll</td><td>libcef.dll</td><td>libcef.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\libcef.dll</td><td>1</td><td/></row>
		<row><td>libcurl.dll</td><td>libcurl.dll</td><td>libcurl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libcurl.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll</td><td>libeay32.dll</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll1</td><td>libeay32.dll1</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libegl.dll</td><td>libEGL.dll</td><td>libEGL.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\libEGL.dll</td><td>1</td><td/></row>
		<row><td>libegl.dll1</td><td>libEGL.dll1</td><td>libEGL.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libEGL.dll</td><td>1</td><td/></row>
		<row><td>libglesv2.dll</td><td>libGLESv2.dll</td><td>LIBGLE~1.DLL|libGLESv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\libGLESv2.dll</td><td>1</td><td/></row>
		<row><td>libglesv2.dll1</td><td>libGLESv2.dll1</td><td>LIBGLE~1.DLL|libGLESv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libGLESv2.dll</td><td>1</td><td/></row>
		<row><td>libobs_d3d11.dll</td><td>libobs_d3d11.dll</td><td>LIBOBS~1.DLL|libobs-d3d11.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libobs-d3d11.dll</td><td>1</td><td/></row>
		<row><td>libobs_opengl.dll</td><td>libobs_opengl.dll</td><td>LIBOBS~1.DLL|libobs-opengl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libobs-opengl.dll</td><td>1</td><td/></row>
		<row><td>libogg_0.dll</td><td>libogg_0.dll</td><td>libogg-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libogg-0.dll</td><td>1</td><td/></row>
		<row><td>libopus_0.dll</td><td>libopus_0.dll</td><td>LIBOPU~1.DLL|libopus-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libopus-0.dll</td><td>1</td><td/></row>
		<row><td>libportaudio_2.dll.dll</td><td>libportaudio_2.dll.dll</td><td>LIBPOR~1.DLL|libportaudio-2.dll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\libportaudio-2.dll.dll</td><td>1</td><td/></row>
		<row><td>libportaudio_2.dll.dll1</td><td>libportaudio_2.dll.dll1</td><td>LIBPOR~1.DLL|libportaudio-2.dll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\libportaudio-2.dll.dll</td><td>1</td><td/></row>
		<row><td>libvorbis_0.dll</td><td>libvorbis_0.dll</td><td>LIBVOR~1.DLL|libvorbis-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libvorbis-0.dll</td><td>1</td><td/></row>
		<row><td>libvorbisenc_2.dll</td><td>libvorbisenc_2.dll</td><td>LIBVOR~1.DLL|libvorbisenc-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libvorbisenc-2.dll</td><td>1</td><td/></row>
		<row><td>libvorbisfile_3.dll</td><td>libvorbisfile_3.dll</td><td>LIBVOR~1.DLL|libvorbisfile-3.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libvorbisfile-3.dll</td><td>1</td><td/></row>
		<row><td>libx264_146.dll</td><td>libx264_146.dll</td><td>LIBX26~1.DLL|libx264-146.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\libx264-146.dll</td><td>1</td><td/></row>
		<row><td>libx264_146.dll1</td><td>libx264_146.dll1</td><td>LIBX26~1.DLL|libx264-146.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\libx264-146.dll</td><td>1</td><td/></row>
		<row><td>libx264_148.dll</td><td>libx264_148.dll</td><td>LIBX26~1.DLL|libx264-148.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\libx264-148.dll</td><td>1</td><td/></row>
		<row><td>license.xml</td><td>ISX_DEFAULTCOMPONENT2</td><td>License.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\License.xml</td><td>1</td><td/></row>
		<row><td>license.xml1</td><td>ISX_DEFAULTCOMPONENT</td><td>License.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\License.xml</td><td>1</td><td/></row>
		<row><td>license.xml2</td><td>ISX_DEFAULTCOMPONENT1</td><td>License.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\License.xml</td><td>1</td><td/></row>
		<row><td>locale.ini</td><td>ISX_DEFAULTCOMPONENT46</td><td>locale.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale.ini</td><td>1</td><td/></row>
		<row><td>logo.png</td><td>ISX_DEFAULTCOMPONENT13</td><td>logo.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\logo.png</td><td>1</td><td/></row>
		<row><td>lt_lt.ini</td><td>ISX_DEFAULTCOMPONENT48</td><td>lt-LT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\lt-LT.ini</td><td>1</td><td/></row>
		<row><td>m_captureaudiodevice.dll</td><td>m_captureAudioDevice.dll</td><td>M_CAPT~1.DLL|m_captureAudioDevice.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\m_captureAudioDevice.dll</td><td>1</td><td/></row>
		<row><td>m_captureaudiodevice.dll1</td><td>m_captureAudioDevice.dll1</td><td>M_CAPT~1.DLL|m_captureAudioDevice.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\m_captureAudioDevice.dll</td><td>1</td><td/></row>
		<row><td>m_capturedesk.dll</td><td>m_captureDesk.dll</td><td>M_CAPT~1.DLL|m_captureDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\m_captureDesk.dll</td><td>1</td><td/></row>
		<row><td>m_capturedesk.dll1</td><td>m_captureDesk.dll1</td><td>M_CAPT~1.DLL|m_captureDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\m_captureDesk.dll</td><td>1</td><td/></row>
		<row><td>m_recorder.dll</td><td>m_recorder.dll</td><td>M_RECO~1.DLL|m_recorder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\m_recorder.dll</td><td>1</td><td/></row>
		<row><td>m_recorder.dll1</td><td>m_recorder.dll1</td><td>M_RECO~1.DLL|m_recorder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\m_recorder.dll</td><td>1</td><td/></row>
		<row><td>m_rtsp.dll</td><td>m_rtsp.dll</td><td>m_rtsp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\m_rtsp.dll</td><td>1</td><td/></row>
		<row><td>m_rtsp.dll1</td><td>m_rtsp.dll1</td><td>m_rtsp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\m_rtsp.dll</td><td>1</td><td/></row>
		<row><td>m_transferdesk.dll</td><td>m_transferDesk.dll</td><td>M_TRAN~1.DLL|m_transferDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\m_transferDesk.dll</td><td>1</td><td/></row>
		<row><td>m_transferdesk.dll1</td><td>m_transferDesk.dll1</td><td>M_TRAN~1.DLL|m_transferDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\m_transferDesk.dll</td><td>1</td><td/></row>
		<row><td>mask_alpha_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>MASK_A~1.EFF|mask_alpha_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\mask_alpha_filter.effect</td><td>1</td><td/></row>
		<row><td>mask_color_filter.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>MASK_C~1.EFF|mask_color_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\mask_color_filter.effect</td><td>1</td><td/></row>
		<row><td>minus.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>minus.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\minus.png</td><td>1</td><td/></row>
		<row><td>ms_my.ini</td><td>ISX_DEFAULTCOMPONENT48</td><td>ms-MY.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ms-MY.ini</td><td>1</td><td/></row>
		<row><td>mute.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>mute.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\mute.png</td><td>1</td><td/></row>
		<row><td>natives_blob.bin</td><td>ISX_DEFAULTCOMPONENT2</td><td>NATIVE~1.BIN|natives_blob.bin</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\natives_blob.bin</td><td>1</td><td/></row>
		<row><td>nb_no.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>netsdk.dll</td><td>NetSdk.dll</td><td>NetSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\NetSdk.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll</td><td>Newtonsoft.Json.dll</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll1</td><td>Newtonsoft.Json.dll1</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll2</td><td>Newtonsoft.Json.dll2</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>nl_nl.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>obs.dll</td><td>obs.dll</td><td>obs.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obs.dll</td><td>1</td><td/></row>
		<row><td>obs64.exe</td><td>obs64.exe</td><td>obs64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obs64.exe</td><td>1</td><td/></row>
		<row><td>obs64.lnk</td><td>ISX_DEFAULTCOMPONENT7</td><td>obs64.lnk</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obs64.lnk</td><td>1</td><td/></row>
		<row><td>obs_ffmpeg.dll</td><td>obs_ffmpeg.dll</td><td>OBS-FF~1.DLL|obs-ffmpeg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-ffmpeg.dll</td><td>1</td><td/></row>
		<row><td>obs_filters.dll</td><td>obs_filters.dll</td><td>OBS-FI~1.DLL|obs-filters.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-filters.dll</td><td>1</td><td/></row>
		<row><td>obs_outputs.dll</td><td>obs_outputs.dll</td><td>OBS-OU~1.DLL|obs-outputs.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-outputs.dll</td><td>1</td><td/></row>
		<row><td>obs_qsv11.dll</td><td>obs_qsv11.dll</td><td>OBS-QS~1.DLL|obs-qsv11.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-qsv11.dll</td><td>1</td><td/></row>
		<row><td>obs_transitions.dll</td><td>obs_transitions.dll</td><td>OBS-TR~1.DLL|obs-transitions.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-transitions.dll</td><td>1</td><td/></row>
		<row><td>obs_x264.dll</td><td>obs_x264.dll</td><td>obs-x264.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\obs-x264.dll</td><td>1</td><td/></row>
		<row><td>obsglad.dll</td><td>obsglad.dll</td><td>obsglad.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obsglad.dll</td><td>1</td><td/></row>
		<row><td>opaque.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>OPAQUE~1.EFF|opaque.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\opaque.effect</td><td>1</td><td/></row>
		<row><td>opencv_core248.dll</td><td>opencv_core248.dll</td><td>OPENCV~1.DLL|opencv_core248.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\opencv_core248.dll</td><td>1</td><td/></row>
		<row><td>opencv_highgui248.dll</td><td>opencv_highgui248.dll</td><td>OPENCV~1.DLL|opencv_highgui248.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\opencv_highgui248.dll</td><td>1</td><td/></row>
		<row><td>opengl32sw.dll</td><td>opengl32sw.dll</td><td>OPENGL~1.DLL|opengl32sw.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\opengl32sw.dll</td><td>1</td><td/></row>
		<row><td>package.json</td><td>ISX_DEFAULTCOMPONENT32</td><td>PACKAG~1.JSO|package.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\package.json</td><td>1</td><td/></row>
		<row><td>pl_pl.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>play.htm</td><td>ISX_DEFAULTCOMPONENT3</td><td>Play.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\Template\Play.htm</td><td>1</td><td/></row>
		<row><td>plus.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>plus.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\plus.png</td><td>1</td><td/></row>
		<row><td>postproc_54.dll</td><td>postproc_54.dll</td><td>POSTPR~1.DLL|postproc-54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\postproc-54.dll</td><td>1</td><td/></row>
		<row><td>postproc_54.dll1</td><td>postproc_54.dll1</td><td>POSTPR~1.DLL|postproc-54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\postproc-54.dll</td><td>1</td><td/></row>
		<row><td>premultiplied_alpha.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>PREMUL~1.EFF|premultiplied_alpha.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\premultiplied_alpha.effect</td><td>1</td><td/></row>
		<row><td>pt_br.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>qdds.dll</td><td>qdds.dll</td><td>qdds.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qdds.dll</td><td>1</td><td/></row>
		<row><td>qgif.dll</td><td>qgif.dll</td><td>qgif.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qgif.dll</td><td>1</td><td/></row>
		<row><td>qicns.dll</td><td>qicns.dll</td><td>qicns.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qicns.dll</td><td>1</td><td/></row>
		<row><td>qico.dll</td><td>qico.dll</td><td>qico.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qico.dll</td><td>1</td><td/></row>
		<row><td>qjp2.dll</td><td>qjp2.dll</td><td>qjp2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qjp2.dll</td><td>1</td><td/></row>
		<row><td>qjpeg.dll</td><td>qjpeg.dll</td><td>qjpeg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qjpeg.dll</td><td>1</td><td/></row>
		<row><td>qmng.dll</td><td>qmng.dll</td><td>qmng.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qmng.dll</td><td>1</td><td/></row>
		<row><td>qsqlite.dll</td><td>qsqlite.dll</td><td>qsqlite.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\sqldrivers\qsqlite.dll</td><td>1</td><td/></row>
		<row><td>qsqlmysql.dll</td><td>qsqlmysql.dll</td><td>QSQLMY~1.DLL|qsqlmysql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\sqldrivers\qsqlmysql.dll</td><td>1</td><td/></row>
		<row><td>qsqlodbc.dll</td><td>qsqlodbc.dll</td><td>qsqlodbc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\sqldrivers\qsqlodbc.dll</td><td>1</td><td/></row>
		<row><td>qsqlpsql.dll</td><td>qsqlpsql.dll</td><td>qsqlpsql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\sqldrivers\qsqlpsql.dll</td><td>1</td><td/></row>
		<row><td>qsvg.dll</td><td>qsvg.dll</td><td>qsvg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qsvg.dll</td><td>1</td><td/></row>
		<row><td>qsvgicon.dll</td><td>qsvgicon.dll</td><td>qsvgicon.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\iconengines\qsvgicon.dll</td><td>1</td><td/></row>
		<row><td>qt5core.dll</td><td>Qt5Core.dll</td><td>Qt5Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\Qt5Core.dll</td><td>1</td><td/></row>
		<row><td>qt5gui.dll</td><td>Qt5Gui.dll</td><td>Qt5Gui.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\Qt5Gui.dll</td><td>1</td><td/></row>
		<row><td>qt5sql.dll</td><td>Qt5Sql.dll</td><td>Qt5Sql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\Qt5Sql.dll</td><td>1</td><td/></row>
		<row><td>qt5svg.dll</td><td>Qt5Svg.dll</td><td>Qt5Svg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\Qt5Svg.dll</td><td>1</td><td/></row>
		<row><td>qt5widgets.dll</td><td>Qt5Widgets.dll</td><td>QT5WID~1.DLL|Qt5Widgets.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\Qt5Widgets.dll</td><td>1</td><td/></row>
		<row><td>qt_ca.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_ca.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_ca.qm</td><td>1</td><td/></row>
		<row><td>qt_cs.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_cs.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_cs.qm</td><td>1</td><td/></row>
		<row><td>qt_de.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_de.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_de.qm</td><td>1</td><td/></row>
		<row><td>qt_en.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_en.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_en.qm</td><td>1</td><td/></row>
		<row><td>qt_fi.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_fi.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_fi.qm</td><td>1</td><td/></row>
		<row><td>qt_fr.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_fr.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_fr.qm</td><td>1</td><td/></row>
		<row><td>qt_he.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_he.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_he.qm</td><td>1</td><td/></row>
		<row><td>qt_hu.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_hu.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_hu.qm</td><td>1</td><td/></row>
		<row><td>qt_it.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_it.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_it.qm</td><td>1</td><td/></row>
		<row><td>qt_ja.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_ja.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_ja.qm</td><td>1</td><td/></row>
		<row><td>qt_ko.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_ko.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_ko.qm</td><td>1</td><td/></row>
		<row><td>qt_lv.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_lv.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_lv.qm</td><td>1</td><td/></row>
		<row><td>qt_ru.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_ru.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_ru.qm</td><td>1</td><td/></row>
		<row><td>qt_sk.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_sk.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_sk.qm</td><td>1</td><td/></row>
		<row><td>qt_uk.qm</td><td>ISX_DEFAULTCOMPONENT12</td><td>qt_uk.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\translations\qt_uk.qm</td><td>1</td><td/></row>
		<row><td>qtga.dll</td><td>qtga.dll</td><td>qtga.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qtga.dll</td><td>1</td><td/></row>
		<row><td>qtiff.dll</td><td>qtiff.dll</td><td>qtiff.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qtiff.dll</td><td>1</td><td/></row>
		<row><td>qwbmp.dll</td><td>qwbmp.dll</td><td>qwbmp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qwbmp.dll</td><td>1</td><td/></row>
		<row><td>qwebp.dll</td><td>qwebp.dll</td><td>qwebp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\imageformats\qwebp.dll</td><td>1</td><td/></row>
		<row><td>qwindows.dll</td><td>qwindows.dll</td><td>qwindows.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\platforms\qwindows.dll</td><td>1</td><td/></row>
		<row><td>ro_ro.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>rtmp_services.dll</td><td>rtmp_services.dll</td><td>RTMP-S~1.DLL|rtmp-services.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\rtmp-services.dll</td><td>1</td><td/></row>
		<row><td>ru_ru.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>sdl2.dll</td><td>SDL2.dll</td><td>SDL2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\SDL2.dll</td><td>1</td><td/></row>
		<row><td>sdl2.dll1</td><td>SDL2.dll1</td><td>SDL2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\SDL2.dll</td><td>1</td><td/></row>
		<row><td>services.json</td><td>ISX_DEFAULTCOMPONENT32</td><td>SERVIC~1.JSO|services.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\services.json</td><td>1</td><td/></row>
		<row><td>sharpness.effect</td><td>ISX_DEFAULTCOMPONENT22</td><td>SHARPN~1.EFF|sharpness.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\sharpness.effect</td><td>1</td><td/></row>
		<row><td>sk_sk.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini10</td><td>ISX_DEFAULTCOMPONENT41</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini11</td><td>ISX_DEFAULTCOMPONENT43</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini12</td><td>ISX_DEFAULTCOMPONENT45</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini13</td><td>ISX_DEFAULTCOMPONENT48</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini5</td><td>ISX_DEFAULTCOMPONENT31</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini6</td><td>ISX_DEFAULTCOMPONENT33</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini7</td><td>ISX_DEFAULTCOMPONENT35</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini8</td><td>ISX_DEFAULTCOMPONENT37</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini9</td><td>ISX_DEFAULTCOMPONENT39</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini</td><td>ISX_DEFAULTCOMPONENT19</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini1</td><td>ISX_DEFAULTCOMPONENT21</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini10</td><td>ISX_DEFAULTCOMPONENT45</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini11</td><td>ISX_DEFAULTCOMPONENT48</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini2</td><td>ISX_DEFAULTCOMPONENT23</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini3</td><td>ISX_DEFAULTCOMPONENT25</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini4</td><td>ISX_DEFAULTCOMPONENT31</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini5</td><td>ISX_DEFAULTCOMPONENT33</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini6</td><td>ISX_DEFAULTCOMPONENT35</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini7</td><td>ISX_DEFAULTCOMPONENT37</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini8</td><td>ISX_DEFAULTCOMPONENT39</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini9</td><td>ISX_DEFAULTCOMPONENT41</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>slide_transition.effect</td><td>ISX_DEFAULTCOMPONENT28</td><td>SLIDE_~1.EFF|slide_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\slide_transition.effect</td><td>1</td><td/></row>
		<row><td>snapshot_blob.bin</td><td>ISX_DEFAULTCOMPONENT2</td><td>SNAPSH~1.BIN|snapshot_blob.bin</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\snapshot_blob.bin</td><td>1</td><td/></row>
		<row><td>solid.effect</td><td>ISX_DEFAULTCOMPONENT14</td><td>SOLID~1.EFF|solid.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\libobs\solid.effect</td><td>1</td><td/></row>
		<row><td>sr_cs.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>ssleay32.dll</td><td>ssleay32.dll</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>ssleay32.dll1</td><td>ssleay32.dll1</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>streamreader.dll</td><td>StreamReader.dll</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>streamreader.dll1</td><td>StreamReader.dll1</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>sv_se.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>swipe_transition.effect</td><td>ISX_DEFAULTCOMPONENT28</td><td>SWIPE_~1.EFF|swipe_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\swipe_transition.effect</td><td>1</td><td/></row>
		<row><td>swresample_2.dll</td><td>swresample_2.dll</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swresample_2.dll1</td><td>swresample_2.dll1</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swresample_2.dll2</td><td>swresample_2.dll2</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll</td><td>swscale_4.dll</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll1</td><td>swscale_4.dll1</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\lubo2012\bin\Release\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll2</td><td>swscale_4.dll2</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>ta_in.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini1</td><td>ISX_DEFAULTCOMPONENT43</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini2</td><td>ISX_DEFAULTCOMPONENT45</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini3</td><td>ISX_DEFAULTCOMPONENT48</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>text_default.effect</td><td>ISX_DEFAULTCOMPONENT34</td><td>TEXT_D~1.EFF|text_default.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\text_default.effect</td><td>1</td><td/></row>
		<row><td>text_freetype2.dll</td><td>text_freetype2.dll</td><td>TEXT-F~1.DLL|text-freetype2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\text-freetype2.dll</td><td>1</td><td/></row>
		<row><td>th_th.ini</td><td>ISX_DEFAULTCOMPONENT19</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini1</td><td>ISX_DEFAULTCOMPONENT21</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini2</td><td>ISX_DEFAULTCOMPONENT25</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini3</td><td>ISX_DEFAULTCOMPONENT31</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini4</td><td>ISX_DEFAULTCOMPONENT33</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini5</td><td>ISX_DEFAULTCOMPONENT35</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini6</td><td>ISX_DEFAULTCOMPONENT37</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini7</td><td>ISX_DEFAULTCOMPONENT41</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini8</td><td>ISX_DEFAULTCOMPONENT45</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini9</td><td>ISX_DEFAULTCOMPONENT48</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini</td><td>ISX_DEFAULTCOMPONENT25</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini1</td><td>ISX_DEFAULTCOMPONENT31</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini2</td><td>ISX_DEFAULTCOMPONENT33</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini3</td><td>ISX_DEFAULTCOMPONENT37</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini4</td><td>ISX_DEFAULTCOMPONENT48</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>unmute.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>unmute.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\unmute.png</td><td>1</td><td/></row>
		<row><td>up_arrow.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>up_arrow.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\up_arrow.png</td><td>1</td><td/></row>
		<row><td>updown.png</td><td>ISX_DEFAULTCOMPONENT50</td><td>updown.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\themes\Dark\updown.png</td><td>1</td><td/></row>
		<row><td>userinfo.xml</td><td>ISX_DEFAULTCOMPONENT</td><td>UserInfo.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\UserInfo.xml</td><td>1</td><td/></row>
		<row><td>vi_vn.ini</td><td>ISX_DEFAULTCOMPONENT48</td><td>vi-VN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\vi-VN.ini</td><td>1</td><td/></row>
		<row><td>w32_pthreads.dll</td><td>w32_pthreads.dll</td><td>W32-PT~1.DLL|w32-pthreads.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\w32-pthreads.dll</td><td>1</td><td/></row>
		<row><td>widevinecdmadapter.dll</td><td>widevinecdmadapter.dll</td><td>WIDEVI~1.DLL|widevinecdmadapter.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\widevinecdmadapter.dll</td><td>1</td><td/></row>
		<row><td>win_capture.dll</td><td>win_capture.dll</td><td>WIN-CA~1.DLL|win-capture.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\win-capture.dll</td><td>1</td><td/></row>
		<row><td>win_decklink.dll</td><td>win_decklink.dll</td><td>WIN-DE~1.DLL|win-decklink.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\win-decklink.dll</td><td>1</td><td/></row>
		<row><td>win_dshow.dll</td><td>win_dshow.dll</td><td>WIN-DS~1.DLL|win-dshow.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\win-dshow.dll</td><td>1</td><td/></row>
		<row><td>win_mf.dll</td><td>win_mf.dll</td><td>win-mf.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\win-mf.dll</td><td>1</td><td/></row>
		<row><td>win_wasapi.dll</td><td>win_wasapi.dll</td><td>WIN-WA~1.DLL|win-wasapi.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\obs-plugins\64bit\win-wasapi.dll</td><td>1</td><td/></row>
		<row><td>zh_cn.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\coreaudio-encoder\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini1</td><td>ISX_DEFAULTCOMPONENT19</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\image-source\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini10</td><td>ISX_DEFAULTCOMPONENT37</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-capture\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini11</td><td>ISX_DEFAULTCOMPONENT39</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-decklink\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini12</td><td>ISX_DEFAULTCOMPONENT41</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-dshow\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini13</td><td>ISX_DEFAULTCOMPONENT43</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-mf\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini14</td><td>ISX_DEFAULTCOMPONENT45</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\win-wasapi\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini15</td><td>ISX_DEFAULTCOMPONENT48</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-studio\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini2</td><td>ISX_DEFAULTCOMPONENT21</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-ffmpeg\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini3</td><td>ISX_DEFAULTCOMPONENT23</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-filters\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini4</td><td>ISX_DEFAULTCOMPONENT25</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-outputs\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini5</td><td>ISX_DEFAULTCOMPONENT27</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-qsv11\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini6</td><td>ISX_DEFAULTCOMPONENT29</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-transitions\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini7</td><td>ISX_DEFAULTCOMPONENT31</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\obs-x264\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini8</td><td>ISX_DEFAULTCOMPONENT33</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\rtmp-services\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini9</td><td>ISX_DEFAULTCOMPONENT35</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\data\obs-plugins\text-freetype2\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zlib.dll</td><td>zlib.dll</td><td>zlib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\zlib.dll</td><td>1</td><td/></row>
	</table>

	<table name="FileSFPCatalog">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s255">SFPCatalog_</col>
	</table>

	<table name="Font">
		<col key="yes" def="s72">File_</col>
		<col def="S128">FontTitle</col>
	</table>

	<table name="ISAssistantTag">
		<col key="yes" def="s72">Tag</col>
		<col def="S255">Data</col>
		<row><td>PROJECT_ASSISTANT_DEFAULT_FEATURE</td><td>AlwaysInstall</td></row>
		<row><td>PROJECT_ASSISTANT_FEATURES</td><td>NonSelectable</td></row>
	</table>

	<table name="ISBillBoard">
		<col key="yes" def="s72">ISBillboard</col>
		<col def="i2">Duration</col>
		<col def="i2">Origin</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Effect</col>
		<col def="i2">Sequence</col>
		<col def="i2">Target</col>
		<col def="S72">Color</col>
		<col def="S72">Style</col>
		<col def="S72">Font</col>
		<col def="L72">Title</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackage">
		<col key="yes" def="s72">Package</col>
		<col def="S255">SourcePath</col>
		<col def="S72">ProductCode</col>
		<col def="i2">Order</col>
		<col def="i4">Options</col>
		<col def="S255">InstallCondition</col>
		<col def="S255">RemoveCondition</col>
		<col def="S0">InstallProperties</col>
		<col def="S0">RemoveProperties</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackageData">
		<col key="yes" def="s72">Package_</col>
		<col key="yes" def="s72">File</col>
		<col def="s50">FilePath</col>
		<col def="I4">Options</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISClrWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISComCatalogAttribute">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col key="yes" def="s255">ItemName</col>
		<col def="S0">ItemValue</col>
	</table>

	<table name="ISComCatalogCollection">
		<col key="yes" def="s72">ISComCatalogCollection</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s255">CollectionName</col>
	</table>

	<table name="ISComCatalogCollectionObjects">
		<col key="yes" def="s72">ISComCatalogCollection_</col>
		<col key="yes" def="s72">ISComCatalogObject_</col>
	</table>

	<table name="ISComCatalogObject">
		<col key="yes" def="s72">ISComCatalogObject</col>
		<col def="s255">DisplayName</col>
	</table>

	<table name="ISComPlusApplication">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col def="S255">ComputerName</col>
		<col def="s72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusApplicationDLL">
		<col key="yes" def="s72">ISComPlusApplicationDLL</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s0">CLSID</col>
		<col def="S0">ProgId</col>
		<col def="S0">DLL</col>
		<col def="S0">AlterDLL</col>
	</table>

	<table name="ISComPlusProxy">
		<col key="yes" def="s72">ISComPlusProxy</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="S72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusProxyDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusProxyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComPlusServerDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusServerFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComponentExtended">
		<col key="yes" def="s72">Component_</col>
		<col def="I4">OS</col>
		<col def="S0">Language</col>
		<col def="s72">FilterProperty</col>
		<col def="I4">Platforms</col>
		<col def="S0">FTPLocation</col>
		<col def="S0">HTTPLocation</col>
		<col def="S0">Miscellaneous</col>
		<row><td>AeroEduLib.dll</td><td/><td/><td>_3C5B6D82_0460_487C_AB98_4F84B89AC575_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduLib.dll1</td><td/><td/><td>_23A85A5A_CA15_4145_90F4_87B746E43B89_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduLib.dll2</td><td/><td/><td>_3BDBC77A_773D_44A6_A813_E00195F162F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.BrowserSubprocess.Core.dll</td><td/><td/><td>_E59F3573_A65E_400D_96EA_A25C4F74577F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.BrowserSubprocess.exe</td><td/><td/><td>_667BDDC6_2A9A_4A7E_89A5_0CD01933B4C0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.Core.dll</td><td/><td/><td>_4B22AC0F_53CA_4027_A6DF_F013E31846A0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.WinForms.dll</td><td/><td/><td>_66162F5D_AE95_4AE6_BED5_DCE8E846FFB3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.dll</td><td/><td/><td>_A7ACF9B0_58D9_4CFF_BF14_2CC031F3385C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Component</td><td/><td/><td>_581674D3_D5D5_4860_B3A9_9EEA9DBD1F27_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Component1</td><td/><td/><td>_22701A98_F64E_4195_B228_630D6D3B690C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Component2</td><td/><td/><td>_6BF7C204_DE5B_49D6_8D0F_E6172CCF34F7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>D3Dcompiler_47.dll</td><td/><td/><td>_D3AB2F6B_343E_4C19_B129_3E145D83A034_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DMSkin.dll</td><td/><td/><td>_111524BF_CC73_4A44_A0E4_F82A32520B37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DMSkin.dll1</td><td/><td/><td>_7DA114B6_7205_40FF_A7A2_A345CACE2763_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.DotNetBar2.dll</td><td/><td/><td>_ADEF0098_C05E_4A04_A1C7_78C45620DC0E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.DotNetBar2.dll1</td><td/><td/><td>_B7700A11_2262_44F9_A5E0_11CD5BE88CF2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.Instrumentation.dll</td><td/><td/><td>_4A95D6F6_A406_49C6_895B_38D42093241E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll</td><td/><td/><td>_ECC44DC2_A754_4AAC_A63F_84DACEADA237_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll1</td><td/><td/><td>_100799BC_B2A9_4565_ACC3_573CBA45A432_FILTER</td><td/><td/><td/><td/></row>
		<row><td>H264Play.dll</td><td/><td/><td>_E21F26C2_9A79_4042_9019_0DC6364D40D1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>H264Play.dll1</td><td/><td/><td>_7EA08FD6_F357_4D60_9F14_F6538ED1495A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_E290057C_3DB4_4814_BDF9_8160ED709F2F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_1AC4139C_F531_4E33_89DD_9C185991EDA3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_2B73306E_1492_4C98_9338_927C17E3EE20_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_74DC7B7B_7400_4DA1_86D0_FDC3D46BD61C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_E855317A_1C36_47E9_81C8_05C42056684A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_3F931156_7ECA_4675_9881_8C803DECAAAA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_28417475_4374_43B4_9F27_A907C1748183_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_3E7F9B51_C749_49F0_B6CC_2118008F491A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_6368A066_9D91_42C9_B102_284C5563A9F4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_3E888C85_454B_4947_BD58_11B847AA6B17_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_AD3FF55B_B677_4D66_B33F_DC120EAC5C04_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_B2B47DCE_0599_456A_A79B_B5361869E638_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_255588BA_22D6_4882_8C9C_FBFFB3FF4FB3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_52910708_DE6C_4ABE_94CB_87A6F800DE51_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_8A8F749C_AAB1_41DA_BC38_5526C6B6AEC8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_65E1ACAF_E383_4D6C_830E_5EFD3E0CEEB8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_4A0E4399_6B95_4DE0_9B55_9C37752766D0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_61CEEA6E_619B_47B7_9879_DFA81150D1CF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_0951681C_6F24_4245_995B_93FB9E07F806_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td/><td/><td>_479600E5_3A50_405B_AF12_C3A37AC1AFAB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td/><td/><td>_D5907C2C_7ADF_4B1F_BD6E_45FDE084FE4B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td/><td/><td>_257911FF_04CF_48BC_8686_9256ADFFAF2D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td/><td/><td>_59A2BA85_4F50_4956_AAA4_912E24035024_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_D5FF4A22_F816_4BE3_96E5_1C93B325C64A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td/><td/><td>_26491E91_33B8_4F70_8A20_7F6EB15E228F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td/><td/><td>_AB789173_5963_434C_B67B_E34AEB10C0C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td/><td/><td>_D3EBFA28_01AB_4AEB_81E1_39E8F9F216CC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td/><td/><td>_1302B823_3679_4E1C_B949_827591DB7836_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td/><td/><td>_5F43A929_9666_4126_9BB9_1109CEEAE7A4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td/><td/><td>_C2DF3FA2_BBF6_435C_AAC5_AD2B7D334CED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td/><td/><td>_C9C39240_FE29_4360_A100_71060140DD23_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td/><td/><td>_4D78D11E_D58A_4610_8912_83A3B7999D2E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td/><td/><td>_58952754_F7D9_43EB_B505_1BFF99864571_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td/><td/><td>_4EC9FA9D_9AFB_469B_9B1D_5A984642E245_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_9007A94A_E00B_42D6_ACC3_C9F88445C0D0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td/><td/><td>_FA8535DF_41A1_4065_887E_9AE0D2093C7B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td/><td/><td>_2618EDE6_3812_452D_A2A9_92E4E078E303_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td/><td/><td>_708756DE_4FD9_4180_A40A_4B4E20CAAE5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td/><td/><td>_C90F5A4A_9682_4CF6_A01C_9C38FBE1C1A3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td/><td/><td>_656ED1E7_5128_4C09_9C1C_C1D81F331B36_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td/><td/><td>_DFA30527_E4F8_4FF8_95BF_76DCD0933D5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td/><td/><td>_72A4327F_4D5F_476D_B256_5BA2E4FAFF20_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td/><td/><td>_79FA751B_CAB5_442B_A4A2_41DF2FC1E201_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td/><td/><td>_F5960EC6_445E_40AA_865A_6E28F6B3FB96_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td/><td/><td>_9C812FEC_3960_4FBC_9CE9_B2B5BC598EEF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_1FECE3B4_8C17_4D13_A9E3_32350FC21931_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td/><td/><td>_83425C19_FBA9_45AC_87AE_3C534E9A585A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td/><td/><td>_853044EE_36F6_495D_9DDC_A64084A30694_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td/><td/><td>_63EAC65B_86D6_43DD_9B7D_6D1E5B53F671_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_0C0031B7_8FE1_4EDF_9E78_9F624537F49F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_C1509B25_B730_40CC_B985_D485E4CFD14A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_AB15851F_CDE4_4581_BAC4_C02740BB5C8C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_18A6CD60_56C7_4320_966C_9DB04446D919_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetSdk.dll</td><td/><td/><td>_6DF59F81_B87E_45CF_945F_486134567894_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent1</td><td/><td/><td>_9E9713AE_758C_46E8_9CE8_9E9F64B2E197_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent2</td><td/><td/><td>_7EFF6AFC_DA13_43EF_B370_5D58277AC39B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent3</td><td/><td/><td>_F0DF4D70_5701_4210_80BE_642EBAD1A0CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent4</td><td/><td/><td>_32AF480B_200E_4CD8_A77E_CEF3138AE28A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent5</td><td/><td/><td>_C2256537_32D3_4CD7_97E4_83820351FA18_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll</td><td/><td/><td>_9545892E_E8D2_44EC_8E57_0981C06D67C2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll1</td><td/><td/><td>_D8B3ACCC_B8E6_4131_8BFE_6D178845ECA8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll2</td><td/><td/><td>_AD3B1FF8_F5CB_400E_BC03_3B62BCB15B20_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Core.dll</td><td/><td/><td>_CE2CDACF_EF44_42C0_A2F9_8C040B96E0C2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Gui.dll</td><td/><td/><td>_8472D7F8_7D56_4E07_BDF6_60BCE7AD5503_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Sql.dll</td><td/><td/><td>_7C6457AE_08A5_4F29_90DB_2D51F5E1A379_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Svg.dll</td><td/><td/><td>_9C62C674_4996_4004_816D_2BFA8CF38F5B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Widgets.dll</td><td/><td/><td>_F3D42083_7ADE_43B1_A75D_9837C46F7741_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SDL2.dll</td><td/><td/><td>_FAD13369_D838_43C9_A0B5_FF3D9E62037D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SDL2.dll1</td><td/><td/><td>_67DF5983_6199_41F6_B4E5_51D22865AAF8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll</td><td/><td/><td>_6CCEFABF_FECD_45A5_85B7_2F4B03171F5F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll1</td><td/><td/><td>_65A752B4_B90A_4EDB_9EC5_BEE53A8D0A72_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll</td><td/><td/><td>_96F85FD0_84A6_468E_9C4D_94292D32DD46_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll1</td><td/><td/><td>_63D5C5D7_2D08_4AC0_AB34_11A4C1108F5B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll2</td><td/><td/><td>_E886BA57_74F7_4F86_A170_D8991D99BACF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avdevice_57.dll</td><td/><td/><td>_D92F1FEE_A2B5_41EF_9E42_AC0CBB00F6B7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avdevice_57.dll1</td><td/><td/><td>_BA2B1CC5_89C6_42A6_BC13_DCEC0A442DE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avdevice_57.dll2</td><td/><td/><td>_B5C40096_FC86_49D5_9F5C_F572B42B1CE1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avfilter_6.dll</td><td/><td/><td>_5F8F7034_53E7_4D3A_8C6D_AD9EA8873D44_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avfilter_6.dll1</td><td/><td/><td>_92E90E88_BAD7_498D_A75A_0BED71AAEAC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avfilter_6.dll2</td><td/><td/><td>_9362494A_B3C5_46EE_9261_E733A60E4A95_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll</td><td/><td/><td>_5664D6D0_A7C1_4493_AB7B_6BEC6292AC21_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll1</td><td/><td/><td>_D0DB3B9D_7A1B_446B_9EDC_52C5341105B3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll2</td><td/><td/><td>_337B1C96_5E28_4CED_B845_1B017F83DF7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll</td><td/><td/><td>_F4E8D17F_426B_4A36_8548_6EF9310DC9E1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll1</td><td/><td/><td>_441F608C_C23A_4317_92DC_307356AE2C1A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll2</td><td/><td/><td>_26CCBBAC_595B_4433_955E_67EA8AABC257_FILTER</td><td/><td/><td/><td/></row>
		<row><td>booth.dll</td><td/><td/><td>_73DC5EE0_8282_4EF3_BA20_BDDAFC2ED6E0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>coreaudio_encoder.dll</td><td/><td/><td>_0B0B4175_0593_430B_9A89_4DDCFD2EACB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_framework.dll</td><td/><td/><td>_C280E1D5_65D1_4CAF_A249_EC42BCA42835_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_framework.dll1</td><td/><td/><td>_8E8F10C5_3312_4637_9FB3_A2FE1FF5EA6A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_logic.dll</td><td/><td/><td>_328F2DD2_7A98_475A_92E9_24BA48666092_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_logic.dll1</td><td/><td/><td>_EBBAF09E_3712_49A1_9F71_96435F0E3E5B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_xc.dll</td><td/><td/><td>_B4DC1AB6_651A_4001_A609_B4196762EEAF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_xc.dll1</td><td/><td/><td>_FA1F1E46_7506_4A9D_BE4C_BD686DFF38A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d3dcompiler_43.dll</td><td/><td/><td>_A4A5AD44_02FC_4E7E_8CA3_C2FAB8E2439D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d3dcompiler_47.dll</td><td/><td/><td>_967FF6D8_6721_4BB4_993B_DFC70FA1C3A4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d_framework.dll</td><td/><td/><td>_D3C53420_C28D_40C0_B447_912E8DD4D93E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d_framework.dll1</td><td/><td/><td>_6B245F16_7500_4FC8_865F_A24DA85F4522_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ffmpeg_mux64.exe</td><td/><td/><td>_892344DB_C1B4_44A5_A566_710040BE20D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>get_graphics_offsets64.exe</td><td/><td/><td>_9351F6F0_91C2_4E75_9942_ACF2599C5E63_FILTER</td><td/><td/><td/><td/></row>
		<row><td>graphics_hook64.dll</td><td/><td/><td>_71AFC227_96A8_45F5_B912_AC6867F8BC01_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec_v.dll</td><td/><td/><td>_227405BE_F80C_40CE_B8E2_106719B6C35A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec_v.dll1</td><td/><td/><td>_33ADE8CE_AF8B_47BC_808D_4C7DA8B2466A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icudt54.dll</td><td/><td/><td>_15AFD0E5_3F9B_4EE1_BD56_3EA5F33B8A37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuin54.dll</td><td/><td/><td>_0269D2F3_BB77_48FB_97D0_04B32F184C50_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuuc54.dll</td><td/><td/><td>_AE8F3D6C_B2DD_4F39_8182_8913EE377B8D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>image_source.dll</td><td/><td/><td>_D403BAB0_98CC_4C8B_B5E8_B3981AA16302_FILTER</td><td/><td/><td/><td/></row>
		<row><td>inject_helper64.exe</td><td/><td/><td>_A885713A_D990_4112_A847_7F96B662FA68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libEGL.dll</td><td/><td/><td>_DA010F75_5081_44F7_8B2C_AF61D57DFC98_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libEGL.dll1</td><td/><td/><td>_F2857794_76ED_4593_98A2_FB0A0EAEACFA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libGLESv2.dll</td><td/><td/><td>_A7160C56_153C_4F31_9FBA_8F89835FB208_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libGLESv2.dll1</td><td/><td/><td>_ADF5DBD7_A172_4441_99BD_8A80DE8D949E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcef.dll</td><td/><td/><td>_6A328E95_AE82_4B65_8225_1F7C81DA4160_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcurl.dll</td><td/><td/><td>_EA2A050A_2C0B_4A59_A452_67A81025F546_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll</td><td/><td/><td>_C6C5178B_C98C_480B_8B41_EA1473327CFF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll1</td><td/><td/><td>_9769A100_F793_4520_B1E5_89ABBD3364C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libobs_d3d11.dll</td><td/><td/><td>_1C050F60_E141_4929_8C14_A256D5835A89_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libobs_opengl.dll</td><td/><td/><td>_7BD9C281_C82B_4CE4_8E11_6FB24BE4E4AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libogg_0.dll</td><td/><td/><td>_BEAD3931_2EA3_488F_B571_9376CD2483E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libopus_0.dll</td><td/><td/><td>_0EB1C648_CEE3_4B65_BDDA_5FDAFD3CA070_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libportaudio_2.dll.dll</td><td/><td/><td>_77EDFCC7_C97F_4426_A76C_2979764C8090_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libportaudio_2.dll.dll1</td><td/><td/><td>_774380E9_58B6_47A5_9857_3953EA9FB367_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbis_0.dll</td><td/><td/><td>_8249F1FD_083A_43A5_BDCD_BBDDE25092A0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbisenc_2.dll</td><td/><td/><td>_2C98587E_7990_4DBC_8ECE_C1CE9277BC8E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbisfile_3.dll</td><td/><td/><td>_7018FDA0_2350_4EFC_87BF_FA777F82F84F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_146.dll</td><td/><td/><td>_996C423D_8138_480A_AC57_48FDCC08F6F8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_146.dll1</td><td/><td/><td>_1397C361_F705_415B_8CD9_16392F7D373D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_148.dll</td><td/><td/><td>_C5ADF0DC_454B_4FA5_AB6D_09EBECC18197_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureAudioDevice.dll</td><td/><td/><td>_6FD627FB_85CA_46D7_9DF7_824575A5966E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureAudioDevice.dll1</td><td/><td/><td>_4E472123_DF31_4607_B6DE_B395D05AE897_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureDesk.dll</td><td/><td/><td>_1C9A119D_A144_4CFE_BF19_7914ACDF1DD0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureDesk.dll1</td><td/><td/><td>_32E9181A_9F45_4A4E_9800_8F75B2E66E70_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_recorder.dll</td><td/><td/><td>_EA19CF63_5662_4DDC_8359_6D6D5231CC66_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_recorder.dll1</td><td/><td/><td>_B826997B_9920_49A6_B85C_813EA920B62E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_rtsp.dll</td><td/><td/><td>_FD425B93_FC16_4E83_85A2_AF087B128995_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_rtsp.dll1</td><td/><td/><td>_D2E8ED24_4DF5_4A64_9119_9DD215DC5B46_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_transferDesk.dll</td><td/><td/><td>_5C68327C_38DA_43B1_A527_B498207E6E90_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_transferDesk.dll1</td><td/><td/><td>_AEDF55E3_3456_438E_ACD0_45A728A726DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs.dll</td><td/><td/><td>_78597004_62D4_45CD_9E76_BC76FFA3DC17_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs64.exe</td><td/><td/><td>_44B540BF_8E16_44C0_9686_8CEB26FA2A4F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_ffmpeg.dll</td><td/><td/><td>_761966E1_7424_46BF_88F3_5F452866F1F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_filters.dll</td><td/><td/><td>_A309E413_A05C_4953_B615_3DF5E14006F1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_outputs.dll</td><td/><td/><td>_DE733241_F227_4DFB_A61D_31BAD15DAA42_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_qsv11.dll</td><td/><td/><td>_05319063_9DE4_4637_8830_F25B9BA2F1B5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_transitions.dll</td><td/><td/><td>_9099201F_6E5A_400B_AA2C_4971854598D6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_x264.dll</td><td/><td/><td>_0CBDE7F7_127A_4268_9D50_581793B6BAFD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obsglad.dll</td><td/><td/><td>_F9A32FB4_1AC4_49A3_89B9_C0FE106D6B57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>opencv_core248.dll</td><td/><td/><td>_0B2DC3D5_EB08_4B72_BABA_3F0A787DBE9F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>opencv_highgui248.dll</td><td/><td/><td>_3D60920C_F7E9_4627_B363_364FD9C26868_FILTER</td><td/><td/><td/><td/></row>
		<row><td>opengl32sw.dll</td><td/><td/><td>_869C304F_FA35_4CB7_A4DC_DF04DBA47CE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>postproc_54.dll</td><td/><td/><td>_506C69D0_1EF9_42CC_9536_57703816E298_FILTER</td><td/><td/><td/><td/></row>
		<row><td>postproc_54.dll1</td><td/><td/><td>_DA7F83EA_6FA0_4A50_814F_4DB746A4150E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qdds.dll</td><td/><td/><td>_AA54A0CD_5DED_4837_8BEE_30C61E65B755_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qgif.dll</td><td/><td/><td>_12F4D728_CB8B_4E13_BBE0_220F75965536_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qicns.dll</td><td/><td/><td>_AA09CE82_46A2_4665_8E3A_895C93939439_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qico.dll</td><td/><td/><td>_79CDDE06_FB7E_4700_8D39_EAE1EA517415_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qjp2.dll</td><td/><td/><td>_D8463139_BC58_47D7_9238_40D54C2570D7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qjpeg.dll</td><td/><td/><td>_75E6FD8C_7C7A_4DB3_89C1_88D1E3BF5257_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qmng.dll</td><td/><td/><td>_1C91C8EC_4923_4D45_BDA7_97A1BBA4846E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlite.dll</td><td/><td/><td>_32870015_0757_439B_8274_781D30D1349B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlmysql.dll</td><td/><td/><td>_A46D4BAB_A484_44DE_9153_C1330D2CF0EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlodbc.dll</td><td/><td/><td>_75B817BB_3743_4D62_88E6_36778BAA1398_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlpsql.dll</td><td/><td/><td>_E2C071DA_2C15_4D40_988B_37FE2F833D27_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsvg.dll</td><td/><td/><td>_588E3B8B_AF2F_4276_8744_DDC9BED5F9C0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsvgicon.dll</td><td/><td/><td>_50BC6ACB_43E2_4C60_B267_7004C7454BD3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qtga.dll</td><td/><td/><td>_F5F02C73_A322_4B49_85BF_79CC9C7573ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qtiff.dll</td><td/><td/><td>_AD068FB1_04C7_4DE4_B4E0_7C913A8A8FAD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwbmp.dll</td><td/><td/><td>_4159734B_4021_42D6_B50C_EEAF1073C8E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwebp.dll</td><td/><td/><td>_E7B969C9_BA69_4B9E_9DCC_C262CB5155C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwindows.dll</td><td/><td/><td>_B21DC41D_2F9F_4013_982C_908100B0BAE9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>rtmp_services.dll</td><td/><td/><td>_78E17A35_D34C_4B9D_AD72_6CF7B50103F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll</td><td/><td/><td>_1697B6B6_2F9E_4F8C_8DE9_4F43C9524884_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll1</td><td/><td/><td>_A8BFEAB3_8EC6_4C17_B59B_BF458F244AB5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll</td><td/><td/><td>_AF21E73B_1601_44CA_BA6B_C6D14BAC7DEE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll1</td><td/><td/><td>_DAE144CF_9775_4C2A_9A01_D73686413FA4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll2</td><td/><td/><td>_1721347F_87F9_4BEF_99AA_B5FCFD5302E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll</td><td/><td/><td>_BF061720_6A26_4550_8470_DC51BFF5ECC0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll1</td><td/><td/><td>_0307DEE4_8594_47D2_9D73_D872530DCE14_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll2</td><td/><td/><td>_7F6C6194_487A_4F90_ADB4_1F3DF8D3A7D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>text_freetype2.dll</td><td/><td/><td>_906EFE22_EA82_4E7E_A5DF_F99961C0A65F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>w32_pthreads.dll</td><td/><td/><td>_19A62168_1656_437F_A0A9_76970A42A9FD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>widevinecdmadapter.dll</td><td/><td/><td>_BAD982FA_97EB_408D_912C_C879E830FB6C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_capture.dll</td><td/><td/><td>_99486DC2_7D09_48BC_AB06_8357254BBDAA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_decklink.dll</td><td/><td/><td>_AA9DA925_381E_4186_BB01_76CA761D4BCF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_dshow.dll</td><td/><td/><td>_6C6F2A33_3714_4B7B_A9C0_9C27F9553A64_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_mf.dll</td><td/><td/><td>_5DAFF788_17B3_4A6E_A023_402660E3381E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_wasapi.dll</td><td/><td/><td>_10B51862_1AC5_4FA3_A68E_FDFB800DBC27_FILTER</td><td/><td/><td/><td/></row>
		<row><td>zlib.dll</td><td/><td/><td>_84E316CC_1EDE_4F92_BCAF_B0CEA6E0E3EB_FILTER</td><td/><td/><td/><td/></row>
	</table>

	<table name="ISCustomActionReference">
		<col key="yes" def="s72">Action_</col>
		<col def="S0">Description</col>
		<col def="S255">FileType</col>
		<col def="S255">ISCAReferenceFilePath</col>
	</table>

	<table name="ISDIMDependency">
		<col key="yes" def="s72">ISDIMReference_</col>
		<col def="s255">RequiredUUID</col>
		<col def="S255">RequiredMajorVersion</col>
		<col def="S255">RequiredMinorVersion</col>
		<col def="S255">RequiredBuildVersion</col>
		<col def="S255">RequiredRevisionVersion</col>
	</table>

	<table name="ISDIMReference">
		<col key="yes" def="s72">ISDIMReference</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISDIMReferenceDependencies">
		<col key="yes" def="s72">ISDIMReference_Parent</col>
		<col key="yes" def="s72">ISDIMDependency_</col>
	</table>

	<table name="ISDIMVariable">
		<col key="yes" def="s72">ISDIMVariable</col>
		<col def="s72">ISDIMReference_</col>
		<col def="s0">Name</col>
		<col def="S0">NewValue</col>
		<col def="I4">Type</col>
	</table>

	<table name="ISDLLWrapper">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s0">Source</col>
		<col def="s255">Target</col>
	</table>

	<table name="ISDRMFile">
		<col key="yes" def="s72">ISDRMFile</col>
		<col def="S72">File_</col>
		<col def="S72">ISDRMLicense_</col>
		<col def="s255">Shell</col>
	</table>

	<table name="ISDRMFileAttribute">
		<col key="yes" def="s72">ISDRMFile_</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISDRMLicense">
		<col key="yes" def="s72">ISDRMLicense</col>
		<col def="S255">Description</col>
		<col def="S50">ProjectVersion</col>
		<col def="I4">Attributes</col>
		<col def="S255">LicenseNumber</col>
		<col def="S255">RequestCode</col>
		<col def="S255">ResponseCode</col>
	</table>

	<table name="ISDependency">
		<col key="yes" def="S50">ISDependency</col>
		<col def="I2">Exclude</col>
	</table>

	<table name="ISDisk1File">
		<col key="yes" def="s72">ISDisk1File</col>
		<col def="s255">ISBuildSourcePath</col>
		<col def="I4">Disk</col>
	</table>

	<table name="ISDynamicFile">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">SourceFolder</col>
		<col def="I2">IncludeFlags</col>
		<col def="S0">IncludeFiles</col>
		<col def="S0">ExcludeFiles</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISFeatureDIMReferences">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISDIMReference_</col>
	</table>

	<table name="ISFeatureMergeModuleExcludes">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ModuleID</col>
		<col key="yes" def="i2">Language</col>
	</table>

	<table name="ISFeatureMergeModules">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
	</table>

	<table name="ISFeatureSetupPrerequisites">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISSetupPrerequisites_</col>
	</table>

	<table name="ISFileManifests">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Manifest_</col>
	</table>

	<table name="ISIISItem">
		<col key="yes" def="s72">ISIISItem</col>
		<col def="S72">ISIISItem_Parent</col>
		<col def="L255">DisplayName</col>
		<col def="i4">Type</col>
		<col def="S72">Component_</col>
	</table>

	<table name="ISIISProperty">
		<col key="yes" def="s72">ISIISProperty</col>
		<col key="yes" def="s72">ISIISItem_</col>
		<col def="S0">Schema</col>
		<col def="S255">FriendlyName</col>
		<col def="I4">MetaDataProp</col>
		<col def="I4">MetaDataType</col>
		<col def="I4">MetaDataUserType</col>
		<col def="I4">MetaDataAttributes</col>
		<col def="L0">MetaDataValue</col>
		<col def="I4">Order</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISInstallScriptAction">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s72">Source</col>
		<col def="S255">Target</col>
	</table>

	<table name="ISLanguage">
		<col key="yes" def="s50">ISLanguage</col>
		<col def="I2">Included</col>
		<row><td>1033</td><td>0</td></row>
		<row><td>2052</td><td>1</td></row>
	</table>

	<table name="ISLinkerLibrary">
		<col key="yes" def="s72">ISLinkerLibrary</col>
		<col def="s255">Library</col>
		<col def="i4">Order</col>
		<row><td>isrt.obl</td><td>isrt.obl</td><td>2</td></row>
		<row><td>iswi.obl</td><td>iswi.obl</td><td>1</td></row>
	</table>

	<table name="ISLocalControl">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="I2">X</col>
		<col def="I2">Y</col>
		<col def="I2">Width</col>
		<col def="I2">Height</col>
		<col def="S72">Binary_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISLocalDialog">
		<col key="yes" def="S50">Dialog_</col>
		<col key="yes" def="S50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="S72">TextStyle_</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLocalRadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISLogicalDisk">
		<col key="yes" def="i2">DiskId</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="ISLogicalDiskFeatures">
		<col key="yes" def="i2">ISLogicalDisk_</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col key="yes" def="S38">Feature_</col>
		<col def="i2">Sequence</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModule">
		<col key="yes" def="s255">ISMergeModule</col>
		<col key="yes" def="i2">Language</col>
		<col def="s255">Name</col>
		<col def="S255">Destination</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModuleCfgValues">
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
		<col key="yes" def="s72">ModuleConfiguration_</col>
		<col def="L0">Value</col>
		<col def="i2">Format</col>
		<col def="L255">Type</col>
		<col def="L255">ContextData</col>
		<col def="L255">DefaultValue</col>
		<col def="I2">Attributes</col>
		<col def="L255">DisplayName</col>
		<col def="L255">Description</col>
		<col def="L255">HelpLocation</col>
		<col def="L255">HelpKeyword</col>
	</table>

	<table name="ISObject">
		<col key="yes" def="s50">ObjectName</col>
		<col def="s15">Language</col>
	</table>

	<table name="ISObjectProperty">
		<col key="yes" def="S50">ObjectName</col>
		<col key="yes" def="S50">Property</col>
		<col def="S0">Value</col>
		<col def="I2">IncludeInBuild</col>
	</table>

	<table name="ISPatchConfigImage">
		<col key="yes" def="S72">PatchConfiguration_</col>
		<col key="yes" def="s72">UpgradedImage_</col>
	</table>

	<table name="ISPatchConfiguration">
		<col key="yes" def="s72">Name</col>
		<col def="i2">CanPCDiffer</col>
		<col def="i2">CanPVDiffer</col>
		<col def="i2">IncludeWholeFiles</col>
		<col def="i2">LeaveDecompressed</col>
		<col def="i2">OptimizeForSize</col>
		<col def="i2">EnablePatchCache</col>
		<col def="S0">PatchCacheDir</col>
		<col def="i4">Flags</col>
		<col def="S0">PatchGuidsToReplace</col>
		<col def="s0">TargetProductCodes</col>
		<col def="s50">PatchGuid</col>
		<col def="s0">OutputPath</col>
		<col def="i2">MinMsiVersion</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISPatchConfigurationProperty">
		<col key="yes" def="S72">ISPatchConfiguration_</col>
		<col key="yes" def="S50">Property</col>
		<col def="S50">Value</col>
	</table>

	<table name="ISPatchExternalFile">
		<col key="yes" def="s50">Name</col>
		<col key="yes" def="s13">ISUpgradedImage_</col>
		<col def="s72">FileKey</col>
		<col def="s255">FilePath</col>
	</table>

	<table name="ISPatchWholeFile">
		<col key="yes" def="s50">UpgradedImage</col>
		<col key="yes" def="s72">FileKey</col>
		<col def="S72">Component</col>
	</table>

	<table name="ISPathVariable">
		<col key="yes" def="s72">ISPathVariable</col>
		<col def="S255">Value</col>
		<col def="S255">TestValue</col>
		<col def="i4">Type</col>
		<row><td>AeroEduClass</td><td>AeroEduClass\AeroEduClass.csproj</td><td/><td>2</td></row>
		<row><td>Booth Camera</td><td>Booth Camera\Booth Camera.csproj</td><td/><td>2</td></row>
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>Record Player</td><td>lubo2012\Record Player.csproj</td><td/><td>2</td></row>
		<row><td>SystemFolder</td><td/><td/><td>1</td></row>
		<row><td>WindowsFolder</td><td/><td/><td>1</td></row>
	</table>

	<table name="ISPowerShellWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISProductConfiguration">
		<col key="yes" def="s72">ISProductConfiguration</col>
		<col def="S255">ProductConfigurationFlags</col>
		<col def="I4">GeneratePackageCode</col>
		<row><td>Express</td><td/><td>1</td></row>
	</table>

	<table name="ISProductConfigurationInstance">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="i2">InstanceId</col>
		<col key="yes" def="s72">Property</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISProductConfigurationProperty">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Property</col>
		<col def="L255">Value</col>
	</table>

	<table name="ISRelease">
		<col key="yes" def="s72">ISRelease</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="s255">BuildLocation</col>
		<col def="s255">PackageName</col>
		<col def="i4">Type</col>
		<col def="s0">SupportedLanguagesUI</col>
		<col def="i4">MsiSourceType</col>
		<col def="i4">ReleaseType</col>
		<col def="s72">Platforms</col>
		<col def="S0">SupportedLanguagesData</col>
		<col def="s6">DefaultLanguage</col>
		<col def="i4">SupportedOSs</col>
		<col def="s50">DiskSize</col>
		<col def="i4">DiskSizeUnit</col>
		<col def="i4">DiskClusterSize</col>
		<col def="S0">ReleaseFlags</col>
		<col def="i4">DiskSpanning</col>
		<col def="S255">SynchMsi</col>
		<col def="s255">MediaLocation</col>
		<col def="S255">URLLocation</col>
		<col def="S255">DigitalURL</col>
		<col def="S255">DigitalPVK</col>
		<col def="S255">DigitalSPC</col>
		<col def="S255">Password</col>
		<col def="S255">VersionCopyright</col>
		<col def="i4">Attributes</col>
		<col def="S255">CDBrowser</col>
		<col def="S255">DotNetBuildConfiguration</col>
		<col def="S255">MsiCommandLine</col>
		<col def="I4">ISSetupPrerequisiteLocation</col>
		<row><td>CD_ROM</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>0</td><td>2052</td><td>0</td><td>2</td><td>Intel</td><td/><td>2052</td><td>0</td><td>650</td><td>0</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>Custom</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>2</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>100</td><td>0</td><td>1024</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-10</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>8.75</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-18</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>15.83</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-5</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>2052</td><td>0</td><td>2</td><td>Intel</td><td/><td>2052</td><td>0</td><td>4.38</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-9</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>7.95</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>SingleImage</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>1</td><td>2052</td><td>0</td><td>1</td><td>Intel</td><td/><td>2052</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>108573</td><td/><td/><td/><td>1</td></row>
		<row><td>WebDeployment</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>4</td><td>1033</td><td>2</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>124941</td><td/><td/><td/><td>3</td></row>
	</table>

	<table name="ISReleaseASPublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="S0">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISReleaseExtended">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="I4">WebType</col>
		<col def="S255">WebURL</col>
		<col def="I4">WebCabSize</col>
		<col def="S255">OneClickCabName</col>
		<col def="S255">OneClickHtmlName</col>
		<col def="S255">WebLocalCachePath</col>
		<col def="I4">EngineLocation</col>
		<col def="S255">Win9xMsiUrl</col>
		<col def="S255">WinNTMsiUrl</col>
		<col def="I4">ISEngineLocation</col>
		<col def="S255">ISEngineURL</col>
		<col def="I4">OneClickTargetBrowser</col>
		<col def="S255">DigitalCertificateIdNS</col>
		<col def="S255">DigitalCertificateDBaseNS</col>
		<col def="S255">DigitalCertificatePasswordNS</col>
		<col def="I4">DotNetRedistLocation</col>
		<col def="S255">DotNetRedistURL</col>
		<col def="I4">DotNetVersion</col>
		<col def="S255">DotNetBaseLanguage</col>
		<col def="S0">DotNetLangaugePacks</col>
		<col def="S255">DotNetFxCmdLine</col>
		<col def="S255">DotNetLangPackCmdLine</col>
		<col def="S50">JSharpCmdLine</col>
		<col def="I4">Attributes</col>
		<col def="I4">JSharpRedistLocation</col>
		<col def="I4">MsiEngineVersion</col>
		<col def="S255">WinMsi30Url</col>
		<col def="S255">CertPassword</col>
		<row><td>CD_ROM</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>Custom</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-10</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-18</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-5</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-9</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>SingleImage</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>1</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>WebDeployment</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>setup</td><td>Default</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>2</td><td>http://www.Installengine.com/Msiengine20</td><td>http://www.Installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
	</table>

	<table name="ISReleaseProperty">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
	</table>

	<table name="ISReleasePublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="S255">Repository</col>
		<col def="S255">DisplayName</col>
		<col def="S255">Publisher</col>
		<col def="S255">Description</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISSQLConnection">
		<col key="yes" def="s72">ISSQLConnection</col>
		<col def="s255">Server</col>
		<col def="s255">Database</col>
		<col def="s255">UserName</col>
		<col def="s255">Password</col>
		<col def="s255">Authentication</col>
		<col def="i2">Attributes</col>
		<col def="i2">Order</col>
		<col def="S0">Comments</col>
		<col def="I4">CmdTimeout</col>
		<col def="S0">BatchSeparator</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
	</table>

	<table name="ISSQLConnectionDBServer">
		<col key="yes" def="s72">ISSQLConnectionDBServer</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLDBMetaData_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLConnectionScript">
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLDBMetaData">
		<col key="yes" def="s72">ISSQLDBMetaData</col>
		<col def="S0">DisplayName</col>
		<col def="S0">AdoDriverName</col>
		<col def="S0">AdoCxnDriver</col>
		<col def="S0">AdoCxnServer</col>
		<col def="S0">AdoCxnDatabase</col>
		<col def="S0">AdoCxnUserID</col>
		<col def="S0">AdoCxnPassword</col>
		<col def="S0">AdoCxnWindowsSecurity</col>
		<col def="S0">AdoCxnNetLibrary</col>
		<col def="S0">TestDatabaseCmd</col>
		<col def="S0">TestTableCmd</col>
		<col def="S0">VersionInfoCmd</col>
		<col def="S0">VersionBeginToken</col>
		<col def="S0">VersionEndToken</col>
		<col def="S0">LocalInstanceNames</col>
		<col def="S0">CreateDbCmd</col>
		<col def="S0">SwitchDbCmd</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">TestTableCmd2</col>
		<col def="S0">WinAuthentUserId</col>
		<col def="S0">DsnODBCName</col>
		<col def="S0">AdoCxnPort</col>
		<col def="S0">AdoCxnAdditional</col>
		<col def="S0">QueryDatabasesCmd</col>
		<col def="S0">CreateTableCmd</col>
		<col def="S0">InsertRecordCmd</col>
		<col def="S0">SelectTableCmd</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
		<col def="S0">ScriptVersion_ColumnType</col>
	</table>

	<table name="ISSQLRequirement">
		<col key="yes" def="s72">ISSQLRequirement</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col def="S15">MajorVersion</col>
		<col def="S25">ServicePackLevel</col>
		<col def="i4">Attributes</col>
		<col def="S72">ISSQLConnectionDBServer_</col>
	</table>

	<table name="ISSQLScriptError">
		<col key="yes" def="i4">ErrNumber</col>
		<col key="yes" def="S72">ISSQLScriptFile_</col>
		<col def="i2">ErrHandling</col>
		<col def="L255">Message</col>
		<col def="i2">Attributes</col>
	</table>

	<table name="ISSQLScriptFile">
		<col key="yes" def="s72">ISSQLScriptFile</col>
		<col def="s72">Component_</col>
		<col def="i2">Scheduling</col>
		<col def="L255">InstallText</col>
		<col def="L255">UninstallText</col>
		<col def="S0">ISBuildSourcePath</col>
		<col def="S0">Comments</col>
		<col def="i2">ErrorHandling</col>
		<col def="i2">Attributes</col>
		<col def="S255">Version</col>
		<col def="S255">Condition</col>
		<col def="S0">DisplayName</col>
	</table>

	<table name="ISSQLScriptImport">
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S255">Server</col>
		<col def="S255">Database</col>
		<col def="S255">UserName</col>
		<col def="S255">Password</col>
		<col def="i4">Authentication</col>
		<col def="S0">IncludeTables</col>
		<col def="S0">ExcludeTables</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISSQLScriptReplace">
		<col key="yes" def="s72">ISSQLScriptReplace</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S0">Search</col>
		<col def="S0">Replace</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISScriptFile">
		<col key="yes" def="s255">ISScriptFile</col>
	</table>

	<table name="ISSelfReg">
		<col key="yes" def="s72">FileKey</col>
		<col def="I2">Cost</col>
		<col def="I2">Order</col>
		<col def="S50">CmdLine</col>
	</table>

	<table name="ISSetupFile">
		<col key="yes" def="s72">ISSetupFile</col>
		<col def="S255">FileName</col>
		<col def="V0">Stream</col>
		<col def="S50">Language</col>
		<col def="I2">Splash</col>
		<col def="S0">Path</col>
	</table>

	<table name="ISSetupPrerequisites">
		<col key="yes" def="s72">ISSetupPrerequisites</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">Order</col>
		<col def="I2">ISSetupLocation</col>
		<col def="S255">ISReleaseFlags</col>
		<row><td>_7B01090E_F828_4452_A671_E2AB32EC2C1C_</td><td>Microsoft .NET Framework 4.0 Client.prq</td><td/><td/><td/></row>
	</table>

	<table name="ISSetupType">
		<col key="yes" def="s38">ISSetupType</col>
		<col def="L255">Description</col>
		<col def="L255">Display_Name</col>
		<col def="i2">Display</col>
		<col def="S255">Comments</col>
		<row><td>Custom</td><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Custom##</td><td>3</td><td/></row>
		<row><td>Minimal</td><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Minimal##</td><td>2</td><td/></row>
		<row><td>Typical</td><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td>1</td><td/></row>
	</table>

	<table name="ISSetupTypeFeatures">
		<col key="yes" def="s38">ISSetupType_</col>
		<col key="yes" def="s38">Feature_</col>
		<row><td>Custom</td><td>AlwaysInstall</td></row>
		<row><td>Minimal</td><td>AlwaysInstall</td></row>
		<row><td>Typical</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISStorages">
		<col key="yes" def="s72">Name</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISString">
		<col key="yes" def="s255">ISString</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="S0">Value</col>
		<col def="I2">Encoded</col>
		<col def="S0">Comment</col>
		<col def="I4">TimeStamp</col>
		<row><td>COMPANY_NAME</td><td>2052</td><td>北京航天云教育科技有限公司</td><td>0</td><td/><td>-727430358</td></row>
		<row><td>DN_AlwaysInstall</td><td>2052</td><td>始终安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>2052</td><td>系统颜色设置不足以运行 [ProductName]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION40CLIENT</td><td>1033</td><td>Microsoft .NET Framework 4.0 Client Package or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>1109715729</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION40CLIENT</td><td>2052</td><td>Microsoft .NET Framework 4.0 Client Package or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>1914971466</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>2052</td><td>操作系统不足以运行 [ProductName]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>2052</td><td>处理器不足以运行 [ProductName]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>2052</td><td>RAM 量不足以运行 [ProductName]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>2052</td><td>屏幕分辨率不足以运行 [ProductName] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>2052</td><td>压缩</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>2052</td><td>压缩说明</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>2052</td><td>自定义</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>2052</td><td>自定义说明</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>2052</td><td>自定义</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>2052</td><td>典型</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>2052</td><td>典型说明</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>2052</td><td>[1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>2052</td><td>[1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>2052</td><td>[1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>2052</td><td>[1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>2052</td><td>通知应用程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>2052</td><td>正在分配注册表空间</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>2052</td><td>应用程序: [1]，命令行: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>2052</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>2052</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>2052</td><td>应用程序: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>2052</td><td>绑定可执行文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>2052</td><td>正在复制网络安装文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>2052</td><td>正在复制新文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>2052</td><td>正在创建重复文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>2052</td><td>正在创建文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>2052</td><td>正在创建 IIS 虚拟根目录...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>2052</td><td>正在创建快捷方式</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>2052</td><td>正在删除服务</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>2052</td><td>正在评估启动条件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>2052</td><td>文件：[1],  依存： [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>2052</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>2052</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>2052</td><td>文件: [1]，目录: [2]，大小: [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>2052</td><td>找到应用程序: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>2052</td><td>自由空间: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>2052</td><td>正在生成脚本操作，用于：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>2052</td><td>正在搜集对象的许可信息...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>2052</td><td>正在应用对象的许可信息...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>2052</td><td>正在初始化 ODBC 目录</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>2052</td><td>正在安装 ODBC 组件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>2052</td><td>正在安装新服务</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>2052</td><td>安装系统目录</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>2052</td><td>键值: [1]，名称: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>2052</td><td>键: [1]，名称: [2]，数值: [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>2052</td><td>正在从相关应用程序迁移功能</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>2052</td><td>正在移动文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>2052</td><td>正在修补文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>2052</td><td>属性: [1]，签名: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>2052</td><td>正在发布产品功能</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>2052</td><td>正在发布产品信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>2052</td><td>正在发布合格的组件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>2052</td><td>正在注册用户</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>2052</td><td>正在注册类服务器</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>2052</td><td>正在注册扩展服务器</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>2052</td><td>正在注册字体</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>2052</td><td>正在注册 MIME 信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>2052</td><td>正在注册类型库</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>2052</td><td>正在注册 COM+ 应用程序和组件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>2052</td><td>正在注册模块</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>2052</td><td>正在注册产品</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>2052</td><td>正在删除应用程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>2052</td><td>正在删除备份文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>2052</td><td>正在删除重复的文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>2052</td><td>正在删除文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>2052</td><td>正在删除文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>2052</td><td>正在删除 IIS 虚拟根目录...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>2052</td><td>正在删除 INI 文件条目</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>2052</td><td>正在删除移动过的文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>2052</td><td>正在删除 ODBC 组件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>2052</td><td>正在删除系统注册表值</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>2052</td><td>正在删除快捷方式</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>2052</td><td>回滚操作: </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>2052</td><td>正在搜索相关产品</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>2052</td><td>正在搜索已安装的应用程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>2052</td><td>服务: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>2052</td><td>正在启动服务</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>2052</td><td>正在停止服务</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>2052</td><td>正在取消产品功能的发布</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>2052</td><td>正在取消合格组件的发布</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>2052</td><td>正在取消产品信息的发布</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>2052</td><td>正在撤消类型库的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>2052</td><td>正在撤消类服务器的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>2052</td><td>正在撤消扩展服务器的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>2052</td><td>正在撤消模块的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>2052</td><td>正在撤消 COM+ 应用程序和组件的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>2052</td><td>正在撤消字体的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>2052</td><td>正在撤消 MIME 信息的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>2052</td><td>正在更新组件注册表</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>2052</td><td>正在验证安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>2052</td><td>正在写入 INI 文件数值</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>2052</td><td>正在写入系统注册表值</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_BACK</td><td>2052</td><td>&lt; 上一步(&amp;B)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_CANCEL</td><td>2052</td><td>取消</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_CANCEL2</td><td>2052</td><td>{&amp;Tahoma8}取消(&amp;C)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_CHANGE</td><td>2052</td><td>更改(&amp;C)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>2052</td><td>正在计算 COM+ 应用程序成本： [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>2052</td><td>正在安装 COM+ 应用程序： [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>2052</td><td>正在卸载 COM+ 应用程序： [1]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>2052</td><td>对话框一般描述</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>2052</td><td>{&amp;TahomaBold10}对话框粗体标题</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>2052</td><td>{&amp;MSSansBold8}对话框粗体标题</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>2052</td><td>[ProductName] 需要 X64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIFX_IA64</td><td>2052</td><td>[ProductName] 需要 IA64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DIFX_X86</td><td>2052</td><td>[ProductName] 需要 X86 处理器。单击确定以退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>2052</td><td>将 [ProductName] 数据库安装到：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_0</td><td>2052</td><td>{{致命错误: }}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1</td><td>2052</td><td>{{错误 [1]。 }}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_10</td><td>2052</td><td>=== 记录开始: [Date]  [Time] ===</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_100</td><td>2052</td><td>无法删除快捷方式 [2]。请确认该快捷方式文件存在，并且您可以访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_101</td><td>2052</td><td>无法将文件 [2] 注册到类型库中。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_102</td><td>2052</td><td>无法撤消文件 [2] 在类型库中的注册。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_103</td><td>2052</td><td>无法更新 INI 文件 [2][3]。请确认该文件存在并且您可以访问它。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_104</td><td>2052</td><td>无法安排在重新启动时用文件 [2] 替换文件 [3]。请确认您拥有对文件 [3] 的写权限。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_105</td><td>2052</td><td>删除 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_106</td><td>2052</td><td>安装 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_107</td><td>2052</td><td>删除 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认您有足够的权限删除 ODBC 驱动程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_108</td><td>2052</td><td>安装 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_109</td><td>2052</td><td>配置 ODBC 数据源 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_11</td><td>2052</td><td>=== 记录停止: [Date]  [Time] ===</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_110</td><td>2052</td><td>服务 [2]（[3]）的启动失败。请确认您有足够的权限启动系统服务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_111</td><td>2052</td><td>无法终止服务 [2]（[3]）。请确认您有足够的权限终止系统服务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_112</td><td>2052</td><td>无法删除服务 [2]（[3]）。请确认您有足够的权限删除系统服务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_113</td><td>2052</td><td>无法安装服务 [2]（[3]）。请确认您有足够的权限安装系统服务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_114</td><td>2052</td><td>无法更新环境变量 [2]。请确认您有足够的权限修改环境变量。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_115</td><td>2052</td><td>您没有足够的权限为该计算机所有用户完成此安装。请以管理员的身份登录，然后重新尝试进行此安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_116</td><td>2052</td><td>无法对文件 [3] 的安全权限进行设置。错误: [2]。请确认您有足够的权限修改此文件的安全权限。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_117</td><td>2052</td><td>此计算机上未安装 Component Services (COM+ 1.0)。要成功完成安装需要 Component Services。Component Services 在 Windows 2000 上有效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_118</td><td>2052</td><td>注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_119</td><td>2052</td><td>撤消注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_12</td><td>2052</td><td>操作开始 [Time]: [1]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_120</td><td>2052</td><td>正在删除此应用程序旧的版本...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_121</td><td>2052</td><td>正在准备删除此应用程序旧的版本...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_122</td><td>2052</td><td>对文件 [2] 应用修补程序时出错。该文件可能被更新过，所以本修补程序不能修改它。详细信息，请与您的修补程序供应商联系。 {{系统错误: [3]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_123</td><td>2052</td><td>[2] 不能安装某一所需产品。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_124</td><td>2052</td><td>不能删除旧版本的 [2]。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_125</td><td>2052</td><td>服务 [2] ([3]) 的描述不能更改。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_126</td><td>2052</td><td>Windows Installer 服务不能更新系统文件 [2]，因为该文件被 Windows 保护。为使该程序正确工作，您可能需要更新操作系统。{{程序包版本: [3]，操作系统保护版本: [4]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_127</td><td>2052</td><td>Windows Installer 服务不能更新被保护的 Windows 文件 [2]。{{程序包版本: [3]，操作系统保护版本: [4]，SFP 错误: [5]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_128</td><td>2052</td><td>Windows Installer 服务无法更新一个或多个受保护的 Windows 文件。SFP 错误：[2]. 受保护文件列表：[3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_129</td><td>2052</td><td>计算机上的策略禁止用户安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_13</td><td>2052</td><td>操作结束 [Time]: [1]。返回值 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_130</td><td>2052</td><td>此安装程序要求 Internet Information Server 4.0 或更高版本，才能配置 IIS 虚拟根目录。请确保您有 IIS 4.0 或更高版本。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_131</td><td>2052</td><td>此安装程序要求管理员权限，才能配置 IIS 虚拟根目录。IDS_ERROR_13</td><td>0</td><td>操作结束 [Time]: [1]。返回值 [2]。	</td><td>1109705807</td></row>
		<row><td>IDS_ERROR_1329</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 未经过数字签名。可能表明 CAB 文件已损坏。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1330</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 的数字签名无效。可能表明 CAB 文件已损坏。{WinVerifyTrust 返回了错误 [3]。}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1331</td><td>2052</td><td>无法正确地复制 [2] 文件:CRC 错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1332</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1333</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1334</td><td>2052</td><td>无法安装文件 '[2]'，因为无法在 CAB 文件 '[3]' 中找到此文件。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1335</td><td>2052</td><td>此安装所需的 CAB 文件 '[2]' 已损坏，且无法使用。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1336</td><td>2052</td><td>创建完成此安装所需的临时文件时出错。文件夹:[3]。系统错误代码: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_14</td><td>2052</td><td>剩余时间: {[1] 分 }{[2] 秒}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_15</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_16</td><td>2052</td><td>安装程序已不再反应。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1609</td><td>2052</td><td>应用安全设置时出错。[2] 不是有效的用户或组。可能是软件包存在问题，或者连接到网络上的域控制器时出现问题。检查网络连接，然后单击重试或取消以结束安装。无法定位用户的 SID，系统错误 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1651</td><td>2052</td><td>管理用户无法对每用户管理的或每机器的处于广告状态的应用程序应用修补程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_17</td><td>2052</td><td>安装程序过早停止。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1715</td><td>2052</td><td>已安装 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1716</td><td>2052</td><td>已配置 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1717</td><td>2052</td><td>删除 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1718</td><td>2052</td><td>文件 [2] 被数字签名策略拒绝。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1719</td><td>2052</td><td>无法访问 Windows Installer 服务。请与支持人员联系，验证该服务是否已正确注册并启用。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1720</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的脚本。请与您的支持人员或软件包供应商联系。自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1721</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的程序。请与您的支持人员或软件包供应商联系。操作:[2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1722</td><td>2052</td><td>Windows Installer 软件包存在问题。作为安装一部分的程序没有按预期完成。请与您的支持人员或软件包供应商联系。操作 [2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1723</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的 DLL。请与您的支持人员或软件包供应商联系。操作 [2]，条目:[3]，库: [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1724</td><td>2052</td><td>成功地完成了删除。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1725</td><td>2052</td><td>删除失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1726</td><td>2052</td><td>成功地完成了广告。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1727</td><td>2052</td><td>广告失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1728</td><td>2052</td><td>成功地完成了配置。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1729</td><td>2052</td><td>配置失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1730</td><td>2052</td><td>只有管理员才可以删除该应用程序。要删除此应用程序，您可用管理员身份登录，或与您的技术支持小组联系以获得帮助。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1731</td><td>2052</td><td>产品 [2] 的源安装包与客户包不同步。使用安装包 '[3]' 的有效副本尝试重新安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1732</td><td>2052</td><td>为完成 [2] 的安装，必须重新启动计算机。当前有其他用户已登录到该计算机，因此重新启动可能使他们失去其工作。是否立即重新启动？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_18</td><td>2052</td><td>Windows 正在配置 [ProductName]，请稍等。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_19</td><td>2052</td><td>正在收集所需信息...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1935</td><td>2052</td><td>安装程序集组件 [2] 时出错。HRESULT:[3]。{{程序集界面:[4], 函数:[5]。{{程序集名称: [6]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1936</td><td>2052</td><td>安装程序集 '[6]' 时出错。此程序集没有命名不够安全或密钥长度未达到最低限制。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1937</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法验证签名或编录，或签名或编录无效。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_1938</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法找到程序集的一个或多个模块。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2</td><td>2052</td><td>警告 [1]。 </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_20</td><td>2052</td><td>{[ProductName] }的安装已成功完成。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_21</td><td>2052</td><td>{[ProductName] }安装失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2101</td><td>2052</td><td>操作系统不支持快捷方式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2102</td><td>2052</td><td>无效的 .ini 操作: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2103</td><td>2052</td><td>无法解析 shell 文件夹 [2] 的路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2104</td><td>2052</td><td>写入 ini 文件:[3]: 系统错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2105</td><td>2052</td><td>创建快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2106</td><td>2052</td><td>删除快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2107</td><td>2052</td><td>错误 [3] 注册类型库 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2108</td><td>2052</td><td>错误 [3] 未注册类型库 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2109</td><td>2052</td><td>.ini 操作缺少区段。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2110</td><td>2052</td><td>.ini 操作缺少关键字。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2111</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能数据。返回注册操作: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2112</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能指数。返回注册操作: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2113</td><td>2052</td><td>检测运行的应用程序失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_22</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}  请确认该文件的确存在并且您可以对其进行访问。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2200</td><td>2052</td><td>数据库:[2]。创建数据库对象失败，模式 = [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2201</td><td>2052</td><td>数据库:[2]。初始化失败，内存不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2202</td><td>2052</td><td>数据库:[2]。数据访问失败，内存不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2203</td><td>2052</td><td>数据库:[2]。无法打开数据库文件。系统错误 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2204</td><td>2052</td><td>数据库:[2]。表已存在: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2205</td><td>2052</td><td>数据库:[2]。表不存在: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2206</td><td>2052</td><td>数据库:[2]。不能丢弃表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2207</td><td>2052</td><td>数据库:[2]。意向冲突。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2208</td><td>2052</td><td>数据库:[2]。执行所需参数不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2209</td><td>2052</td><td>数据库:[2]。光标处于无效状态。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2210</td><td>2052</td><td>数据库:[2]。列 [3] 中的无效更新数据类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2211</td><td>2052</td><td>数据库:[2]。无法创建数据库表 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2212</td><td>2052</td><td>数据库:[2]。数据库不在可写入状态。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2213</td><td>2052</td><td>数据库:[2]。保存数据库表时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2214</td><td>2052</td><td>数据库:[2]。写入导出文件时出错: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2215</td><td>2052</td><td>数据库:[2]。无法打开导入文件: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2216</td><td>2052</td><td>数据库:[2]。导入文件格式错误:[3]，第 [4] 行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2217</td><td>2052</td><td>数据库:[2]。到 CreateOutputDatabase [3] 的错误状态。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2218</td><td>2052</td><td>数据库:[2]。未提供表名称。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2219</td><td>2052</td><td>数据库:[2]。无效的 Installer 数据库格式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2220</td><td>2052</td><td>数据库:[2]。无效行/字段数据。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2221</td><td>2052</td><td>数据库:[2]。导入文件中的代码页冲突: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2222</td><td>2052</td><td>数据库:[2]。转换或合并代码页 [3] 与数据库代码页 [4] 不同。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2223</td><td>2052</td><td>数据库:[2]。数据库均相同。未生成转换。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2224</td><td>2052</td><td>数据库:[2]。GenerateTransform:数据库已损坏。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2225</td><td>2052</td><td>数据库:[2]。转换:无法转换临时表。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2226</td><td>2052</td><td>数据库:[2]。转换失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2227</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效标识符 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2228</td><td>2052</td><td>数据库:[2]。SQL 查询中的未知表 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2229</td><td>2052</td><td>数据库:[2]。无法在 SQL 查询中加载表 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2230</td><td>2052</td><td>数据库:[2]。SQL 查询中的重复表 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2231</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 ')': [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2232</td><td>2052</td><td>数据库:[2]。SQL 查询中的意外标记 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2233</td><td>2052</td><td>数据库:[2]。SQL 查询的 SELECT 子句中没有列: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2234</td><td>2052</td><td>数据库:[2]。SQL 查询的 ORDER BY 子句中没有列: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2235</td><td>2052</td><td>数据库:[2]。SQL 查询中列 '[3]' 不存在或不明确: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2236</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效操作符 '[3]': [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2237</td><td>2052</td><td>数据库:[2]。无效或缺少查询字符串: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2238</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 FROM 子句: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2239</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中值不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2240</td><td>2052</td><td>数据库:[2]。UPDATE SQL 语句中缺少更新列。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2241</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中缺少插入列。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2242</td><td>2052</td><td>数据库:[2]。列 '[3]' 重复。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2243</td><td>2052</td><td>数据库:[2]。未定义主列以创建表。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2244</td><td>2052</td><td>数据库:[2]。SQL 查询 [4] 中的无效类型说明符 '[3]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2245</td><td>2052</td><td>IStorage::Stat 失败，错误 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2246</td><td>2052</td><td>数据库:[2]。无效的 Installer 转换格式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2247</td><td>2052</td><td>数据库:[2] 变换流读取/写入失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2248</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的列类型与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2249</td><td>2052</td><td>数据库:[2] GenerateTransform:基表中的列比引用表中的列多。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2250</td><td>2052</td><td>数据库:[2] 转换:无法添加现有行。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2251</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的行。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2252</td><td>2052</td><td>数据库:[2] 转换:无法添加现有表。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2253</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的表。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2254</td><td>2052</td><td>数据库:[2] 转换:无法更新不存在的行。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2255</td><td>2052</td><td>数据库:[2] 转换:已存在具有该名称的列。表:[3] 列: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2256</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的主键数与引用表不匹配。表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2257</td><td>2052</td><td>数据库:[2]。试图修改只读表: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2258</td><td>2052</td><td>数据库:[2]。参数类型不匹配: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2259</td><td>2052</td><td>数据库:[2] 表更新失败</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2260</td><td>2052</td><td>存储 CopyTo 失败。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2261</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2262</td><td>2052</td><td>流不存在:[2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2263</td><td>2052</td><td>无法打开流 [2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2264</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2265</td><td>2052</td><td>无法提交存储。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2266</td><td>2052</td><td>无法回滚存储。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2267</td><td>2052</td><td>无法删除存储 [2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2268</td><td>2052</td><td>数据库:[2]。Merge:在 [3] 个表中报告存在合并冲突。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2269</td><td>2052</td><td>数据库:[2]。Merge:两个数据库的 '[3]' 表中的列计数不同。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2270</td><td>2052</td><td>数据库:[2]。GenerateTransform/Merge:基表中的列名称与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2271</td><td>2052</td><td>转换的 SummaryInformation 写入失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2272</td><td>2052</td><td>数据库:[2]。MergeDatabase 将不会写入任何更改，因为数据库是以只读方式打开的。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2273</td><td>2052</td><td>数据库:[2]。MergeDatabase:将对基数据库的引用作为引用数据库传递。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2274</td><td>2052</td><td>数据库:[2]。MergeDatabase:无法将错误写入错误表。可能是预定义的错误表中某个不可为空的列造成的。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2275</td><td>2052</td><td>数据库:[2]。对于表联接，指定的修改 [3] 操作无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2276</td><td>2052</td><td>数据库:[2]。系统不支持代码页 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2277</td><td>2052</td><td>数据库:[2]。无法保存表 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2278</td><td>2052</td><td>数据库:[2]。超出 SQL 查询中 WHERE 子句 32 个表达式限制: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2279</td><td>2052</td><td>数据库:[2] 转换:基表 [3] 中列太多。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2280</td><td>2052</td><td>数据库:[2]。无法为表 [4] 创建列 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2281</td><td>2052</td><td>无法重命名流 [2]。系统错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2282</td><td>2052</td><td>流名称无效 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_23</td><td>2052</td><td>无法创建文件 [2]。同名目录已存在。请取消此次安装，然后安装到其他位置。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2302</td><td>2052</td><td>修补程序通知:目前为止修补了 [2] 个字节。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2303</td><td>2052</td><td>获取卷信息时出错。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2304</td><td>2052</td><td>获取可用磁盘空间时出错。GetLastError:[2]。卷: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2305</td><td>2052</td><td>等待修补线程时出错。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2306</td><td>2052</td><td>无法为修补应用程序创建线程。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2307</td><td>2052</td><td>源文件键名为空。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2308</td><td>2052</td><td>目标文件名为空。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2309</td><td>2052</td><td>在修补正在进行的同时，尝试修补文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2310</td><td>2052</td><td>在没有修补程序运行时尝试继续修补。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2315</td><td>2052</td><td>缺少路径分隔符: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2318</td><td>2052</td><td>文件不存在: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2319</td><td>2052</td><td>设置文件属性时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2320</td><td>2052</td><td>文件不可写: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2321</td><td>2052</td><td>创建文件时出错: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2322</td><td>2052</td><td>用户已取消。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2323</td><td>2052</td><td>无效的文件属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2324</td><td>2052</td><td>无法打开文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2325</td><td>2052</td><td>无法获取文件的文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2326</td><td>2052</td><td>FileToDosDateTime 错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2327</td><td>2052</td><td>无法删除目录:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2328</td><td>2052</td><td>获取文件的文件版本信息时出错: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2329</td><td>2052</td><td>删除文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2330</td><td>2052</td><td>获取文件属性时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2331</td><td>2052</td><td>加载库 [2] 或查找入口点 [3] 时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2332</td><td>2052</td><td>获取文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2333</td><td>2052</td><td>设置文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2334</td><td>2052</td><td>将文件的文件时间转换为当地时间时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2335</td><td>2052</td><td>路径:[2] 不是 [3] 的父项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2336</td><td>2052</td><td>在路径上创建临时文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2337</td><td>2052</td><td>无法关闭文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2338</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2339</td><td>2052</td><td>无法为文件设置文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2340</td><td>2052</td><td>无法为文件更新资源:[3]，资源丢失。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2341</td><td>2052</td><td>无法为文件更新资源:[3]，资源太大。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2342</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2343</td><td>2052</td><td>指定的路径为空。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2344</td><td>2052</td><td>无法找到所需的文件 IMAGEHLP.DLL 来验证文件: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2345</td><td>2052</td><td>[2]: 文件未包括有效的校验值。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2347</td><td>2052</td><td>用户忽略。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2348</td><td>2052</td><td>试图从压缩包流读取时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2349</td><td>2052</td><td>使用不同的信息恢复复制。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2350</td><td>2052</td><td>FDI 服务器错误</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2351</td><td>2052</td><td>未在压缩包 '[3]' 中找到文件密钥 '[2]'。安装无法继续。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2352</td><td>2052</td><td>无法初始化 CAB 文件服务器。所需的文件 'CABINET.DLL' 可能找不到。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2353</td><td>2052</td><td>不是压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2354</td><td>2052</td><td>无法处理压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2355</td><td>2052</td><td>损坏压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2356</td><td>2052</td><td>无法定位流中的压缩包: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2357</td><td>2052</td><td>无法设置属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2358</td><td>2052</td><td>确定文件是否正在使用中时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2359</td><td>2052</td><td>无法创建目标文件 - 可能正在使用文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2360</td><td>2052</td><td>进程刻度。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2361</td><td>2052</td><td>需要下一压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2362</td><td>2052</td><td>未找到文件夹: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2363</td><td>2052</td><td>无法枚举文件夹的子文件夹: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2364</td><td>2052</td><td>CreateCopier 调用中的错误枚举常量。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2365</td><td>2052</td><td>无法 BindImage exe 文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2366</td><td>2052</td><td>用户故障。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2367</td><td>2052</td><td>用户终止。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2368</td><td>2052</td><td>未能获取网络资源信息。错误 [2]，网络路径 [3]。扩展错误# :网络提供者 [5]，错误代码 [4]，错误描述 [6]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2370</td><td>2052</td><td>无效的 [2] 文件 CRC 校验值。{其标头表示校验值为 [3]，而其计算出的值为 [4]。}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2371</td><td>2052</td><td>无法将修补程序应用到文件 [2]。GetLastError: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2372</td><td>2052</td><td>修补程序文件 [2] 已损坏或格式无效。尝试修补文件 [3]。GetLastError: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2373</td><td>2052</td><td>文件 [2] 不是有效的修补程序文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2374</td><td>2052</td><td>文件 [2] 不是修补文件 [3] 的有效目标文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2375</td><td>2052</td><td>未知修补错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2376</td><td>2052</td><td>未找到压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2379</td><td>2052</td><td>打开文件进行读取时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2380</td><td>2052</td><td>打开文件进行写入时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2381</td><td>2052</td><td>目录不存在: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2382</td><td>2052</td><td>驱动器未就绪: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_24</td><td>2052</td><td>请插入磁盘: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2401</td><td>2052</td><td>试图为密钥 [2] 在 32 位操作系统上进行 64 位注册表操作。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2402</td><td>2052</td><td>内存不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_25</td><td>2052</td><td>安装程序没有访问目录 [2] 的权限，安装无法继续进行。请以管理员身份登录，或与您的系统管理员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2501</td><td>2052</td><td>无法创建回滚脚本枚举器。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2502</td><td>2052</td><td>在没有正在执行的安装时调用 InstallFinalize。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2503</td><td>2052</td><td>在未标记为正在进行时，调用了 RunScript。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_26</td><td>2052</td><td>写至文件 [2] 时出错。请确认您有访问该目录的权限。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2601</td><td>2052</td><td>属性 [2] 的无效值: '[3]'</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2602</td><td>2052</td><td>[2] 表条目 '[3]' 在媒体表中没有相关的条目。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2603</td><td>2052</td><td>重复表名称 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2604</td><td>2052</td><td>未定义 [2] 属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2605</td><td>2052</td><td>无法在 [3] 或 [4] 中找到服务器 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2606</td><td>2052</td><td>属性 [2] 的值不是有效的完整路径: '[3]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2607</td><td>2052</td><td>找不到媒体表或其为空（安装文件所需）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2608</td><td>2052</td><td>无法为对象创建安全描述符。错误: '[2]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2609</td><td>2052</td><td>尝试在初始化前迁移产品设置。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2611</td><td>2052</td><td>文件 [2] 标记为压缩，但相关媒体条目没有指定压缩包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2612</td><td>2052</td><td>'[2]' 列中找不到流。主键: '[3]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2613</td><td>2052</td><td>RemoveExistingProducts 操作顺序不正确。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2614</td><td>2052</td><td>无法从安装包访问 IStorage 对象。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2615</td><td>2052</td><td>由于源解析错误，跳过模块 [2] 的注销。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2616</td><td>2052</td><td>缺少附带文件 [2] 父项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2617</td><td>2052</td><td>未在组件表中找到共享组件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2618</td><td>2052</td><td>未在组件表中找到独立的应用程序组件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2619</td><td>2052</td><td>独立的组件 [2]、[3] 不是同一功能的组成部分。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2620</td><td>2052</td><td>独立的应用程序组件 [2] 的密钥文件不在文件表中。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2621</td><td>2052</td><td>快捷方式 [2] 的资源 DLL 或资源 ID 信息设置不正确。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2701</td><td>2052</td><td>可接受的树深度为 [2] 级，某功能的深度超出了此限制。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2702</td><td>2052</td><td>功能表记录 ([2]) 引用属性字段中不存在的父项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2703</td><td>2052</td><td>未定义根源路径的属性名称: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2704</td><td>2052</td><td>未定义根目录属性: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2705</td><td>2052</td><td>无效表:[2]；无法链接为树。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2706</td><td>2052</td><td>未创建源路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2707</td><td>2052</td><td>未创建目标路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2708</td><td>2052</td><td>未在文件表中找到条目。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2709</td><td>2052</td><td>未在组件表中找到指定的组件名称 ('[2]')。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2710</td><td>2052</td><td>对于此组件，所请求的 'Select' 状态为非法。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2711</td><td>2052</td><td>未在功能表中找到指定的功能名称 ('[2]')。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2712</td><td>2052</td><td>来自无模式对话框的无效返回:[3]，操作 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2713</td><td>2052</td><td>不可为空的列中存在空值（表 '[4]' 第 '[3]' 列中的 '[2]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2714</td><td>2052</td><td>默认文件夹名称的无效值: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2715</td><td>2052</td><td>未在文件表中找到指定的文件密钥 ('[2]')。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2716</td><td>2052</td><td>无法为组件 '[2]' 创建随机子组件名。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2717</td><td>2052</td><td>无效操作条件或调用自定义操作 '[2]' 时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2718</td><td>2052</td><td>缺少产品代码 '[2]' 的软件包名称。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2719</td><td>2052</td><td>源 '[2]' 中未找到 UNC 或驱动器号路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2720</td><td>2052</td><td>打开源列表键时出错。错误: '[2]'</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2721</td><td>2052</td><td>未在二进制表流中找到自定义操作 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2722</td><td>2052</td><td>未在文件表中找到自定义操作 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2723</td><td>2052</td><td>自定义操作 [2] 指定不支持的类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2724</td><td>2052</td><td>正在运行的来源媒体上的卷标 '[2]' 与媒体表中给定的标签 '[3]' 不匹配。只有当媒体表中仅有一个条目时，才允许出现此类情况。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2725</td><td>2052</td><td>无效的数据库表</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2726</td><td>2052</td><td>未找到操作: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2727</td><td>2052</td><td>目录表中不存在目录条目 '[2]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2728</td><td>2052</td><td>表定义错误: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2729</td><td>2052</td><td>未初始化安装引擎。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2730</td><td>2052</td><td>数据库中的无效值。表:'[2]'；主键:'[3]'；列: '[4]'</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2731</td><td>2052</td><td>未初始化 Selection Manager。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2732</td><td>2052</td><td>未初始化 Directory Manager。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2733</td><td>2052</td><td>'[4]' 表的 '[3]' 列中的无效外键 ('[2]')。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2734</td><td>2052</td><td>无效的重安装模式字符。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2735</td><td>2052</td><td>自定义操作 '[2]' 导致未处理的异常，并已被停止。这可能是自定义操作中的内部错误（如访问冲突）所造成的。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2736</td><td>2052</td><td>生成自定义操作临时文件失败: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2737</td><td>2052</td><td>无法访问自定义操作 [2]，条目 [3]，库 [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2738</td><td>2052</td><td>无法访问自定义操作 [2] 的 VBScript 运行时间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2739</td><td>2052</td><td>无法访问自定义操作 [2] 的 JavaScript 运行时间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2740</td><td>2052</td><td>自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2741</td><td>2052</td><td>产品 [2] 的配置信息已损坏。无效信息: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2742</td><td>2052</td><td>整理至服务器失败: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2743</td><td>2052</td><td>无法执行自定义操作 [2]，位置:[3]，命令: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2744</td><td>2052</td><td>自定义操作 [2] 调用 EXE 失败，位置:[3]，命令: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2745</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的语言 [4]，找到的语言 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2746</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品 [4]，找到的产品 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2747</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2748</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2749</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 == [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2750</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27502</td><td>2052</td><td>无法连接到 [2] '[3]'。 [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27503</td><td>2052</td><td>从 [2] '[3]' 检索版本字符串时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27504</td><td>2052</td><td>SQL 版本要求未达到：[3]。此安装需要 [2] [4] 或更新版本。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27505</td><td>2052</td><td>无法打开 SQL 脚本文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27506</td><td>2052</td><td>执行 SQL 脚本 [2] 时出错。 行 [3]。 [4]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27507</td><td>2052</td><td>浏览或连接数据库服务器要求安装 MDAC。安装程序将立即终止。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27508</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27509</td><td>2052</td><td>卸载 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2751</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27510</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 无法创建 System.EnterpriseServices.RegistrationHelper 对象。 注册 Microsoft(R) .NET 服务组件需要安装 Microsoft(R) .NET Framework。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27511</td><td>2052</td><td>无法执行 SQL 脚本文件 [2]。 未打开连接： [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27512</td><td>2052</td><td>开始 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27513</td><td>2052</td><td>提交 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27514</td><td>2052</td><td>此安装需要 Microsoft SQL Server。指定服务器"[3]"是 Microsoft SQL Server Desktop Engine 或 SQL Server Express。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27515</td><td>2052</td><td>从 [2] '[3]' 检索模式版本时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27516</td><td>2052</td><td>将模式版本写入 [2] '[3]' 时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27517</td><td>2052</td><td>在本次安装中，您须具有管理员特权方能安装 COM+ 应用程序。请以管理员身份登录，然后重新开始安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27518</td><td>2052</td><td>COM+ 应用程序 "[2]" 的配置是作为一项 NT 服务运行；运行时，系统上须有 COM+ 1.5 或更新版。由于所用系统上有 COM+ 1.0，故无法安装该应用程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27519</td><td>2052</td><td>更新 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2752</td><td>2052</td><td>无法打开作为软件包 [4] 的子存储来存储的转换 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27520</td><td>2052</td><td>打开 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27521</td><td>2052</td><td>此安装程序需要 MSXML 3.0 或更高版本才能配置 XML 文件。请确定您有 3.0 或更高版本。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27522</td><td>2052</td><td>创建 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27523</td><td>2052</td><td>加载服务器出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27524</td><td>2052</td><td>加载 NetApi32.DLL 时出错。ISNetApi.dll 要求正确地加载 NetApi32.DLL，同时需要基于 NT的操作系统。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27525</td><td>2052</td><td>找不到服务器。 检查指定的服务器是否存在。 服务器名称不能为空白。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27526</td><td>2052</td><td>从 ISNetApi.dll 返回未指定的错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27527</td><td>2052</td><td>缓冲区太小。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27528</td><td>2052</td><td>访问被拒。 检查管理权限。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27529</td><td>2052</td><td>无效的计算机。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2753</td><td>2052</td><td>未标记文件 '[2]'以进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27530</td><td>2052</td><td>NetAPI 返回一个错误，原因不详。 系统错误﹕ [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27531</td><td>2052</td><td>未处理的异常情况。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27532</td><td>2052</td><td>此服务器或域的用户名无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27533</td><td>2052</td><td>区分大小写的密码不符。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27534</td><td>2052</td><td>列表是空的。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27535</td><td>2052</td><td>访问违规。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27536</td><td>2052</td><td>获取组时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27537</td><td>2052</td><td>添加用户到组时出错。 检查该组是否存在于此域或服务器中。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27538</td><td>2052</td><td>创建用户时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27539</td><td>2052</td><td>已从 NetAPI 返回 ERROR_NETAPI_ERROR_NOT_PRIMARY。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2754</td><td>2052</td><td>文件 '[2]' 不是有效的修补程序文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27540</td><td>2052</td><td>指定的用户已存在。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27541</td><td>2052</td><td>指定的组已存在。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27542</td><td>2052</td><td>无效的密码。 检查密码是否与您的网络密码规则一致。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27543</td><td>2052</td><td>无效的名称。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27544</td><td>2052</td><td>无效的组。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27545</td><td>2052</td><td>用户名不得为空，且其格式必须为“域\用户名”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27546</td><td>2052</td><td>在用户 TEMP 目录中加载或创建 INI 文件时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27547</td><td>2052</td><td>ISNetAPI.dll 未加载或加载 dll 时出错。 这项操作需要加载此 dll。 检查 dll 是否已经在 SUPPORTDIR 目录中。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27548</td><td>2052</td><td>从用户的 TEMP 目录中删除包含新用户信息的 INI 文件时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27549</td><td>2052</td><td>获取主域控制器 (PDC) 时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2755</td><td>2052</td><td>试图安装软件包 [3] 时，服务器返回意外错误 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27550</td><td>2052</td><td>每个字段必须有值才能创建用户。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27551</td><td>2052</td><td>找不到 [2] 的 ODBC 驱动程序。这是与 [2] 数据库服务器连接的必备工具。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27552</td><td>2052</td><td>创建数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27553</td><td>2052</td><td>连接到数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27554</td><td>2052</td><td>试图打开连接 [2] 时出错。没有与此连接相关的有效数据库元数据。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_27555</td><td>2052</td><td>将许可应用于对象 '[2]' 时出错。 系统错误﹕ [3] ([4])</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2756</td><td>2052</td><td>属性 '[2]' 在一个或多个表中用作目录属性，但从未指定过值。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2757</td><td>2052</td><td>无法为转换 [2] 创建摘要信息。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2758</td><td>2052</td><td>转换 [2] 不包含 MSI 版本。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2759</td><td>2052</td><td>转换 [2] 版本 [3] 与引擎不兼容；最低:[4]，最高: [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2760</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的升级代码 [4]，找到 [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2761</td><td>2052</td><td>无法开始事务。未正确初始化全局互斥体。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2762</td><td>2052</td><td>无法写入脚本记录。未启动事务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2763</td><td>2052</td><td>无法运行脚本。未启动事务。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2765</td><td>2052</td><td>AssemblyName 表中缺少程序集名称:组件: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2766</td><td>2052</td><td>文件 [2] 为无效的 MSI 存储文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2767</td><td>2052</td><td>没有更多数据{ 枚举 [2] 时}。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2768</td><td>2052</td><td>修补软件包中的转换无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2769</td><td>2052</td><td>自定义操作 [2] 未关闭 [3] MSIHANDLE。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2770</td><td>2052</td><td>未在内部缓存文件夹表中定义缓存文件夹 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2771</td><td>2052</td><td>功能 [2] 的升级缺少一个组件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2772</td><td>2052</td><td>新升级功能 [2] 必须为分页功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_28</td><td>2052</td><td>另一应用程序已经以独占模式访问了文件 [2]。请关闭所有其他的应用程序，然后再单击“重试”按钮。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2801</td><td>2052</td><td>未知消息 -- 类型 [2]。不执行任何操作。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2802</td><td>2052</td><td>未找到事件 [2] 的发行程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2803</td><td>2052</td><td>Dialog View 未找到对话框 [2] 的记录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2804</td><td>2052</td><td>激活对话框 [2] 上的控件 [3] 时，CmsiDialog 无法评估条件 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2806</td><td>2052</td><td>对话框 [2] 无法评估条件 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2807</td><td>2052</td><td>未识别操作 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2808</td><td>2052</td><td>在对话框 [2] 上错误定义默认按钮。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2809</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 指向 [4] 的指针，但没有其他指针。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2810</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 和 [5] 指向 [4] 的指针。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2811</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 必须取得焦点，但无法实现。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2812</td><td>2052</td><td>未识别事件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2813</td><td>2052</td><td>使用参数 [2] 调用了 EndDialog 事件，但对话框具有父项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2814</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 将一个不存在的控件 [4] 作为下一控件命名。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2815</td><td>2052</td><td>ControlCondition 表有一行没有对话框 [2] 的条件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2816</td><td>2052</td><td>EventMapping 表为事件 [3] 引用对话框 [2] 上的无效控件 [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2817</td><td>2052</td><td>事件 [2] 无法为对话框 [3] 上的控件 [4] 设置属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2818</td><td>2052</td><td>在 ControlEvent 表中，EndDialog 具有无法识别的参数 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2819</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要一个链接到它的属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2820</td><td>2052</td><td>尝试初始化一个已初始化的处理程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2821</td><td>2052</td><td>尝试初始化一个已初始化的对话框: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2822</td><td>2052</td><td>只有添加所有控件后，才能在对话框 [2] 上调用其他方法。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2823</td><td>2052</td><td>尝试初始化一个已初始化的对话框:对话框 [2] 上的 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2824</td><td>2052</td><td>对话框属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2825</td><td>2052</td><td>控件属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2826</td><td>2052</td><td>对话框 [2] 上的控件 [3] 超出了对话框 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2827</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 中的按钮 [4] 超出组 [5] 的边界 [6] 个像素。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2828</td><td>2052</td><td>试图从对话框 [2] 删除控件 [3]，但该控件不是对话框的一部分。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2829</td><td>2052</td><td>尝试使用未初始化的对话框。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2830</td><td>2052</td><td>尝试使用对话框 [2] 上未初始化的控件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2831</td><td>2052</td><td>对话框 [2] 上的控件 [3] 不支持 [5] 属性 [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2832</td><td>2052</td><td>对话框 [2] 不支持属性 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2833</td><td>2052</td><td>对话框 [3] 上的控件 [4] 忽略消息 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2834</td><td>2052</td><td>对话框 [2] 上后面的指针没有形成单循环。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2835</td><td>2052</td><td>未在对话框 [3] 上找到控件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2836</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法取得焦点。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2837</td><td>2052</td><td>对话框 [2] 上的控件 [3] 希望 winproc 返回 [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2838</td><td>2052</td><td>期   选择表中的项目 [2] 将其自身作为父项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2839</td><td>2052</td><td>设置属性 [2] 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2840</td><td>2052</td><td>错误对话框名称不匹配。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2841</td><td>2052</td><td>未在错误对话框上找到确定按钮。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2842</td><td>2052</td><td>未在错误对话框中找到文本字段。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2843</td><td>2052</td><td>标准对话框不支持 ErrorString 属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2844</td><td>2052</td><td>如果未设置 Errorstring，则无法执行错误对话框。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2845</td><td>2052</td><td>按钮的总宽度超过错误对话框的尺寸。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2846</td><td>2052</td><td>SetFocus 未在错误对话框上找到所需的控件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2847</td><td>2052</td><td>对话框 [2] 上的控件 [3] 同时设置了图标和位图样式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2848</td><td>2052</td><td>试图将控件 [3] 设置为对话框 [2] 上的默认按钮，但该控件不存在。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2849</td><td>2052</td><td>对话框 [2] 上的控件 [3] 为一个值不能为整数的类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2850</td><td>2052</td><td>无法识别的卷类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2851</td><td>2052</td><td>图标 [2] 的数据无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2852</td><td>2052</td><td>使用前，必须至少将一个控件添加到对话框 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2853</td><td>2052</td><td>对话框 [2] 为无模式对话框。不应在此对话框上调用此执行方法。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2854</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 被指定为第一活动控件，但不存在此类控件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2855</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 的按钮少于两个。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2856</td><td>2052</td><td>创建对话框 [2] 的第二个副本。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2857</td><td>2052</td><td>在选择表中提及了目录 [2]，但却并未找到。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2858</td><td>2052</td><td>位图 [2] 的数据无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2859</td><td>2052</td><td>测试错误消息。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2860</td><td>2052</td><td>在对话框 [2] 上错误定义取消按钮。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2861</td><td>2052</td><td>对话框 [2] 控件 [3] 上的单选按钮后面的指针没有形成循环。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2862</td><td>2052</td><td>对话框 [2] 上的控件 [3] 的属性没有定义有效的图标大小。将大小设置为 16。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2863</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要尺寸为 [5]x[5] 的图标 [4]，但该尺寸不可用。加载第一个可用的尺寸。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2864</td><td>2052</td><td>对话框 [2] 上的控件 [3] 收到了浏览事件，但没有用于当前选择的可配置目录。可能的原因有:未正确设计浏览按钮。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2865</td><td>2052</td><td>公告板 [2] 上的控件 [3] 超出了公告板 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2866</td><td>2052</td><td>不允许对话框 [2] 返回参数 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2867</td><td>2052</td><td>未设置错误对话框属性。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2868</td><td>2052</td><td>错误对话框 [2] 的样式位设置是正确的。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2869</td><td>2052</td><td>对话框 [2] 样式位设置错误，但它不是错误的对话框。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2870</td><td>2052</td><td>对话框 [2] 上控件 [3] 的帮助字符串 [4] 不包含分隔符。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2871</td><td>2052</td><td>[2] 表已过期: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2872</td><td>2052</td><td>对话框 [2] 上的 CheckPath 控件事件的参数无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2873</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的无效字符串长度限制为: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2874</td><td>2052</td><td>将文本字体更改为 [2] 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2875</td><td>2052</td><td>将文本颜色更改为 [2] 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2876</td><td>2052</td><td>对话框 [2] 上的控件 [3] 必须截断字符串: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2877</td><td>2052</td><td>未找到二进制数据 [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2878</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的可能值为:[4]。 这是一个无效值或重复值。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2879</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法解析掩码字符串: [4]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2880</td><td>2052</td><td>请勿执行剩余的控件事件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2881</td><td>2052</td><td>CmsiHandler 初始化失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2882</td><td>2052</td><td>对话框窗口类注册失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2883</td><td>2052</td><td>为对话框 [2] CreateNewDialog 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2884</td><td>2052</td><td>无法为对话框 [2] 创建窗口。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2885</td><td>2052</td><td>无法在对话框 [2] 上创建控件 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2886</td><td>2052</td><td>创建 [2] 表失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2887</td><td>2052</td><td>创建到 [2] 表的光标失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2888</td><td>2052</td><td>执行 [2] 视图失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2889</td><td>2052</td><td>为对话框 [2] 上的控件 [3] 创建窗口失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2890</td><td>2052</td><td>处理程序无法创建已初始化的对话框。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2891</td><td>2052</td><td>无法销毁对话框 [2] 的窗口。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2892</td><td>2052</td><td>控件 [2] 只能为整型，[3] 不是有效的整数值。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2893</td><td>2052</td><td>对话框 [2] 上的控件 [3] 可接受最多 [5] 个字符长的属性值。值 [4] 超过此限制，因此已被截断。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2894</td><td>2052</td><td>加载 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2895</td><td>2052</td><td>释放 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2896</td><td>2052</td><td>执行操作 [2] 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2897</td><td>2052</td><td>无法在此系统上创建任意 [2] 字体。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2898</td><td>2052</td><td>对于 [2] 文本样式，系统在 [4] 字符集中创建了 '[3]' 字体。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2899</td><td>2052</td><td>无法创建 [2] 文本样式。GetLastError() 返回: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_29</td><td>2052</td><td>没有足够的磁盘空间来安装文件 [2]。请释放一些磁盘空间后单击“重试”，或者单击“取消”退出。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2901</td><td>2052</td><td>操作 [2] 的无效参数:参数 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2902</td><td>2052</td><td>操作 [2] 调用顺序不正确。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2903</td><td>2052</td><td>缺少文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2904</td><td>2052</td><td>无法 BindImage 文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2905</td><td>2052</td><td>无法从脚本文件 [2] 读取记录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2906</td><td>2052</td><td>脚本文件 [2] 中缺少标题。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2907</td><td>2052</td><td>无法创建安全的安全描述符。错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2908</td><td>2052</td><td>无法注册组件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2909</td><td>2052</td><td>无法注销组件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2910</td><td>2052</td><td>无法确定用户的安全 ID。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2911</td><td>2052</td><td>无法删除文件夹 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2912</td><td>2052</td><td>无法计划在重新启动时要删除的文件 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2919</td><td>2052</td><td>没有为压缩文件指定压缩包: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2920</td><td>2052</td><td>未为文件 [2] 指定源目录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2924</td><td>2052</td><td>不支持脚本 [2] 版本。脚本版本:[3]，最低版本:[4]，最高版本: [5]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2927</td><td>2052</td><td>ShellFolder ID [2] 无效。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2928</td><td>2052</td><td>超出源的最大数。跳过源 '[2]'。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2929</td><td>2052</td><td>无法判断发布根目录。错误: [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2932</td><td>2052</td><td>无法从脚本数据创建文件 [2]。错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2933</td><td>2052</td><td>无法初始化回滚脚本 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2934</td><td>2052</td><td>无法保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2935</td><td>2052</td><td>无法取消保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2936</td><td>2052</td><td>无法找到转换 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2937</td><td>2052</td><td>Windows Installer 无法安装系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2938</td><td>2052</td><td>Windows Installer 无法从缓存检索系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2939</td><td>2052</td><td>Windows Installer 无法从缓存删除系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2940</td><td>2052</td><td>未提供 Directory Manager 来实现源解析。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2941</td><td>2052</td><td>无法计算文件 [2] 的 CRC。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2942</td><td>2052</td><td>BindImage 操作尚未在 [2] 文件上执行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2943</td><td>2052</td><td>此版本的 Windows 不支持部署 64 位软件包。脚本 [2] 用于 64 位软件包。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2944</td><td>2052</td><td>GetProductAssignmentType 失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_2945</td><td>2052</td><td>安装 ComPlus App [2] 失败，错误 [3]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_3</td><td>2052</td><td>信息 [1]。 </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_30</td><td>2052</td><td>没有找到源文件 [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_3001</td><td>2052</td><td>此列表中的修补程序包含不正确的顺序信息: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_3002</td><td>2052</td><td>修补程序 [2] 包括无效的顺序信息。 </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_31</td><td>2052</td><td>读取文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_32</td><td>2052</td><td>写至文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认您有权访问该目录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_33</td><td>2052</td><td>没有找到源文件{{(包)}}: [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_34</td><td>2052</td><td>无法创建目录 [2]。同名文件已经存在。请重命名或删除文件，然后单击“重试”按钮，或者单击“取消”按钮退出。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_35</td><td>2052</td><td>目前无法使用卷 [2]，请另选其他卷。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_36</td><td>2052</td><td>无法使用指定的路径 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_37</td><td>2052</td><td>无法写入指定的文件夹 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_38</td><td>2052</td><td>试图读取文件 [2] 时发生网络错误。 </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_39</td><td>2052</td><td>试图创建目录 [2] 时发生错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_4</td><td>2052</td><td>内部错误 [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_40</td><td>2052</td><td>试图创建目录 [2] 时发生网络错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_41</td><td>2052</td><td>试图打开源文件包 [2] 时发生网络错误。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_42</td><td>2052</td><td>指定的路径过长: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_43</td><td>2052</td><td>安装程序没有修改文件 [2] 的权限。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_44</td><td>2052</td><td>文件夹路径 [2] 的一部分无效。或者为空，或者超出了系统允许的长度。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_45</td><td>2052</td><td>文件夹路径 [2] 中含有无效单词。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_46</td><td>2052</td><td>文件夹路径 [2] 中含有无效的字符。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_47</td><td>2052</td><td>[2] 不是一个有效的短文件名。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_48</td><td>2052</td><td>获取文件 [3] 安全权限时发生错误 GetLastError: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_49</td><td>2052</td><td>无效驱动器: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_5</td><td>2052</td><td>{{磁盘已满: }}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_50</td><td>2052</td><td>无法创建键: [2]。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_51</td><td>2052</td><td>无法打开键: [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。 </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_52</td><td>2052</td><td>无法删除值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_53</td><td>2052</td><td>无法删除键 [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_54</td><td>2052</td><td>无法读取值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_55</td><td>2052</td><td>无法将数值 [2] 写入键 [3]。{{ 系统错误 [4]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_56</td><td>2052</td><td>无法获取键 [2] 的数值名称。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_57</td><td>2052</td><td>无法获取键 [2] 的子键。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_58</td><td>2052</td><td>无法读取键 [2] 的安全信息。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_59</td><td>2052</td><td>无法增加可用的注册表空间。安装本应用程序需要 [2] 千字节的空闲注册表空间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_6</td><td>2052</td><td>操作 [Time]: [1]. [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_60</td><td>2052</td><td>另一安装过程正在进行。您必须先完成那次过程，然后才能继续本次过程。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_61</td><td>2052</td><td>访问受保护的数据时出错。请确认 Windows Installer 配置是否正确，然后重新安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_62</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。现在将继续进行您的安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_63</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_64</td><td>2052</td><td>磁盘空间不足 -- 卷: [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。请在释放磁盘空间后再试。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_65</td><td>2052</td><td>是否确认要取消操作？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_66</td><td>2052</td><td>文件 [2][3] 正被使用 {使用者: 名称: [4]，Id: [5]，窗口标题: “[6]”}。请关闭那个应用程序后再重试。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_67</td><td>2052</td><td>产品 [2] 已经安装，现在无法安装本产品。这两种产品不兼容。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_68</td><td>2052</td><td>磁盘空间不足 -- 卷 [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。如果禁用回滚功能，则空间足够。单击“取消”退出，单击“重试”再次检查可用空间，单击“忽略”在禁用回滚功能的情况下继续安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_69</td><td>2052</td><td>无法访问网络位置 [2]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_7</td><td>2052</td><td>[ProductName]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_70</td><td>2052</td><td>在继续安装之前，请关闭以下应用程序: </td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_71</td><td>2052</td><td>无法在计算机上找到安装本产品所需的任何以前安装的相应产品。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_72</td><td>2052</td><td>键 [2] 无效。请确认您输入的键是否正确。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_73</td><td>2052</td><td>安装程序必须先重新启动您的系统，然后才能继续配置 [2]。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_74</td><td>2052</td><td>您必须先重新启动系统，然后才能使对 [2] 做出的配置修改生效。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_75</td><td>2052</td><td>[2] 的一次安装过程正处于暂停状态，您必须先撤消该安装过程做出的修改，然后才能继续操作。是否撤消那些修改？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_76</td><td>2052</td><td>本产品的前一次安装正在进行，您必须先撤消该过程做出的修改，然后才能继续。是否撤消那些修改？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_77</td><td>2052</td><td>无法找到产品 [2] 的安装程序包。请使用安装程序包 [3] 的有效拷贝重新进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_78</td><td>2052</td><td>安装操作已成功完成。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_79</td><td>2052</td><td>安装操作失败。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_8</td><td>2052</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_80</td><td>2052</td><td>产品: [2] -- [3]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_81</td><td>2052</td><td>您可以将计算机还原至其原始状态，也可在以后继续安装。是否要进行还原？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_82</td><td>2052</td><td>向硬盘写入安装信息时发生错误。请确认是否有足够的硬盘空间可供使用，然后单击“重试”按钮，或者单击“取消”按钮结束安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_83</td><td>2052</td><td>无法找到将您的计算机恢复至原始状态所需的一个或多个文件。不能进行恢复操作。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_84</td><td>2052</td><td>路径 [2] 无效，请指定有效路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_85</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_86</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回前面选择的卷。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_87</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回“浏览”对话框并选择其他卷。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_88</td><td>2052</td><td>文件夹 [2] 不存在。请输入某个原有文件夹的路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_89</td><td>2052</td><td>您读取此文件夹的权限不够。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_9</td><td>2052</td><td>消息类型: [1]， 参数: [2]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_90</td><td>2052</td><td>无法确定安装所需的有效路径。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_91</td><td>2052</td><td>试图读取源安装数据库 [2] 时出错。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_92</td><td>2052</td><td>正在安排重新启动操作: 将文件 [2] 重命名为 [3]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_93</td><td>2052</td><td>正在安排重新启动操作: 删除文件 [2]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_94</td><td>2052</td><td>无法注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_95</td><td>2052</td><td>无法撤消注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_96</td><td>2052</td><td>无法缓存包 [2]。错误: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_97</td><td>2052</td><td>无法注册字体 [2]。请检查您是否有足够的权限安装字体，以及系统是否能够支持该字体。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_98</td><td>2052</td><td>无法撤消对字体 [2] 的注册。请检查您是否有足够的权限删除字体。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ERROR_99</td><td>2052</td><td>无法创建快捷方式 [2]。请检查目标文件夹是否存在，以及您是否可以访问该文件夹。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_INSTALLDIR</td><td>2052</td><td>{&amp;Tahoma8}[INSTALLDIR]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>2052</td><td>InstallShield</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>2052</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>2052</td><td>该计算机缺少 InstallScript 引擎。请运行 ISScript.msi（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>2052</td><td>该计算机中的 InstallScript 引擎版本早于此安装程序需要的版本。请安装 ISScript.msi 的最新版本（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_NEXT</td><td>2052</td><td>下一步(&amp;N) &gt;</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>2052</td><td>打开 [ProductName] 原版 [SETUPEXENAME]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>2052</td><td>这一可执行文件好象不是 [ProductName] 原版的可执行文件。 若不用原版的 [SETUPEXENAME] 安装其他相关软件，[ProductName] 可能会出现问题。 是否寻找原版的 [SETUPEXENAME]？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>2052</td><td>本次安装可能需要使用其他相关软件。 若没有这些相关软件，[ProductName] 可能会出现问题。 是否寻找原来的 [SETUPEXENAME]？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>2052</td><td>该应用程序的新版已在这台计算机上安装。如果您想安装这个版本，请先卸载已安装的新版程序。若需退出向导程序，请点击“确定”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>2052</td><td>打印(&amp;P)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>2052</td><td>创建应用程序池 %s</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>2052</td><td>正在创建应用程序池...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>2052</td><td>正在创建 IIS 虚拟目录 %s</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>2052</td><td>正在创建 IIS 虚拟目录...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>2052</td><td>创建 Web 服务扩展</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在创建 Web 服务扩展...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>2052</td><td>正在创建 IIS 网站 %s</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>2052</td><td>正在创建 IIS 网站...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>2052</td><td>正在检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>2052</td><td>已检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>2052</td><td>删除应用程序池</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>2052</td><td>正在删除应用程序池...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>2052</td><td>正在删除端口 %d 的网站</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>2052</td><td>正在删除 IIS 虚拟目录 %s</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>2052</td><td>正在删除 IIS 虚拟目录...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>2052</td><td>删除 Web 服务扩展</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在删除 Web 服务扩展...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>2052</td><td>正在删除 IIS 网站...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>2052</td><td>正在回滚应用程序池...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>2052</td><td>正在回滚虚拟目录和网站更改...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在回滚 Web 服务扩展...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>2052</td><td>替换 %s 中，使用的是﹕%s，位于 %s...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>2052</td><td>正在计算 XML 文件成本...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>2052</td><td>正在创建 XML 文件 %s...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>2052</td><td>正在执行 XML 文件更改...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>2052</td><td>正在删除 XML 文件 %s...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>2052</td><td>正在回滚 XML 文件更改...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>2052</td><td>正在更新 XML 文件 %s...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>2052</td><td>本安装程序的使用期到 %s 结束。安装程序现在将退出。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>2052</td><td>本安装程序内建有 InstallShield 的评估版，只能用 setup.exe 文件启动。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1033</td><td/><td>0</td><td/><td>1109714255</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109671311</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME10</td><td>1033</td><td/><td>0</td><td/><td>1109669392</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME10</td><td>2052</td><td>Launch |Built</td><td>0</td><td/><td>1109669392</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME11</td><td>1033</td><td/><td>0</td><td/><td>1109676273</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME11</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109661969</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME12</td><td>1033</td><td/><td>0</td><td/><td>1109697297</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME12</td><td>2052</td><td>LAUNCH~1.EXE|Launch vcredist_2013_x86.exe</td><td>0</td><td/><td>1109697297</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME13</td><td>1033</td><td/><td>0</td><td/><td>-1272689297</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME13</td><td>2052</td><td>LAUNCH~1.EXE|Launch obs64.exe</td><td>0</td><td/><td>-1272689297</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME14</td><td>1033</td><td/><td>0</td><td/><td>-1272687249</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME14</td><td>2052</td><td>LAUNCH~1.EXE|Launch ffmpeg-mux64.exe</td><td>0</td><td/><td>-1272687249</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME15</td><td>1033</td><td/><td>0</td><td/><td>-1272685201</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME15</td><td>2052</td><td>LAUNCH~1.EXE|Launch get-graphics-offsets64.exe</td><td>0</td><td/><td>-1272685201</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME16</td><td>1033</td><td/><td>0</td><td/><td>-1272685201</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME16</td><td>2052</td><td>LAUNCH~1.EXE|Launch inject-helper64.exe</td><td>0</td><td/><td>-1272685201</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME17</td><td>1033</td><td/><td>0</td><td/><td>-1272703569</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME17</td><td>2052</td><td>LAUNCH~1.EXE|Launch obs64.exe</td><td>0</td><td/><td>-1272703569</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME18</td><td>1033</td><td/><td>0</td><td/><td>-1272701521</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME18</td><td>2052</td><td>LAUNCH~1.EXE|Launch ffmpeg-mux64.exe</td><td>0</td><td/><td>-1272701521</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME19</td><td>1033</td><td/><td>0</td><td/><td>-1272701521</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME19</td><td>2052</td><td>LAUNCH~1.EXE|Launch get-graphics-offsets64.exe</td><td>0</td><td/><td>-1272701521</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1033</td><td/><td>0</td><td/><td>1109715152</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>2052</td><td>LAUNCH~1.EXE|Launch AeroEduClass.exe</td><td>0</td><td/><td>1109715152</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME20</td><td>1033</td><td/><td>0</td><td/><td>-1272699473</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME20</td><td>2052</td><td>LAUNCH~1.EXE|Launch inject-helper64.exe</td><td>0</td><td/><td>-1272699473</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME21</td><td>1033</td><td/><td>0</td><td/><td>-1272654385</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME21</td><td>2052</td><td>LAUNCH~1.EXE|Launch obs64.exe</td><td>0</td><td/><td>-1272654385</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME22</td><td>1033</td><td/><td>0</td><td/><td>-1272654385</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME22</td><td>2052</td><td>LAUNCH~1.EXE|Launch ffmpeg-mux64.exe</td><td>0</td><td/><td>-1272654385</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME23</td><td>1033</td><td/><td>0</td><td/><td>-1272652337</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME23</td><td>2052</td><td>LAUNCH~1.EXE|Launch get-graphics-offsets64.exe</td><td>0</td><td/><td>-1272652337</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME24</td><td>1033</td><td/><td>0</td><td/><td>-1272652337</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME24</td><td>2052</td><td>LAUNCH~1.EXE|Launch inject-helper64.exe</td><td>0</td><td/><td>-1272652337</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME25</td><td>1033</td><td>卸载 航天云课联网</td><td>0</td><td/><td>-1272649552</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME25</td><td>2052</td><td>卸载 航天云课联网</td><td>0</td><td/><td>-1272649552</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1033</td><td/><td>0</td><td/><td>1109715152</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>2052</td><td>LAUNCH~1.EXE|Launch CefSharp.BrowserSubprocess.exe</td><td>0</td><td/><td>1109715152</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1033</td><td/><td>0</td><td/><td>1109704976</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>1109704976</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1033</td><td>卸载</td><td>0</td><td/><td>1109691024</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>2052</td><td>卸载</td><td>0</td><td/><td>1109691024</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1033</td><td/><td>0</td><td/><td>1109674672</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109689008</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>1033</td><td>卸载 航天云课联网</td><td>0</td><td/><td>1109697200</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>2052</td><td>卸载 航天云课联网</td><td>0</td><td/><td>1109697200</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>1033</td><td/><td>0</td><td/><td>1109687536</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>2052</td><td>Aero-eduClass</td><td>0</td><td/><td>1109708016</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>1033</td><td>Uninstall Aero-eduClass</td><td>0</td><td/><td>1109667088</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>2052</td><td>Uninstall Aero-eduClass</td><td>0</td><td/><td>1109667088</td></row>
		<row><td>IDS_SOFTWARE_REQUIREMENT_MESSAGE1</td><td>1033</td><td>CLICK HERE to enter the message to display to your end user when this item does not exist on the target machine.</td><td>0</td><td/><td>1109681137</td></row>
		<row><td>IDS_SOFTWARE_REQUIREMENT_MESSAGE1</td><td>2052</td><td>CLICK HERE to enter the message to display to your end user when this item does not exist on the target machine.</td><td>0</td><td/><td>1109681137</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>2052</td><td>从以下服务器列表中选择要连接的数据库服务器。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>2052</td><td>从以下的编录名称列表中，选择您希望将其作为目标的数据库编录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>2052</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>2052</td><td>浏览(&amp;R)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>2052</td><td>浏览(&amp;O)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>2052</td><td>数据库编录的名称(&amp;N)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>2052</td><td>连接时使用：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>2052</td><td>选择数据库服务器和验证方法。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>2052</td><td>登录 ID(&amp;L)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>2052</td><td>从以下列表中选择要安装的数据库服务器或单击“浏览”查看所有数据库服务器的列表。您还可以指定验证方法，确定使用当前证书或 SQL 登录 ID 和密码来验证您的登录。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>2052</td><td>密码(&amp;P)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>2052</td><td>&amp;数据库服务器：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>2052</td><td>您要安装到的数据库服务器(&amp;D)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>2052</td><td>使用以下登录 ID 和密码进行服务器身份验证(&amp;E)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>2052</td><td>{&amp;MSSansBold8}数据库服务器</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>2052</td><td>当前用户的 Windows 验证证书(&amp;W)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>2052</td><td>正在执行 SQL 安装脚本...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>2052</td><td>正在执行 SQL 卸载脚本...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>2052</td><td>直接启动 MSI 包无法运行此安装程序，必须要运行 setup.exe。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>2052</td><td>{&amp;Tahoma8}将在第一次使用时安装。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将全部安装到本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装提示</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>2052</td><td>{&amp;Tahoma8}“自定义安装”允许有选择地安装程序功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>2052</td><td>{&amp;Tahoma8}紧邻该功能名称的图标显示该功能的安装状态。 单击该图标可下拉每个功能的安装状态菜单。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>2052</td><td>{&amp;Tahoma8}此安装状态意味着该功能...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_Network</td><td>2052</td><td>{&amp;Tahoma8}将安装从网络中运行。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将把一些子功能安装到本地硬盘驱动器上。 （只有在该功能带有子功能时有效）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>2052</td><td>{&amp;Tahoma8}将不安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Available</td><td>2052</td><td>可用</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>2052</td><td>字节</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>2052</td><td>正在编译此功能的代价...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>2052</td><td>差异</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>2052</td><td>磁盘空间</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>2052</td><td>此功能将被全部删除。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>2052</td><td>此功能将继续从网络中运行</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>2052</td><td>此功能及所有子功能安装后将从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>2052</td><td>此功能及所有子功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>2052</td><td>此功能及所有子功能安装后将从网络上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>2052</td><td>此功能将在需要时安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>2052</td><td>此功能将被设置为在需要时安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>2052</td><td>此功能在需要时可进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>2052</td><td>此功能可从网络中运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>2052</td><td>此功能将不可用。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>2052</td><td>此功能可从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>2052</td><td>此功能将保留在本地硬盘驱动器中。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从网络中运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但需要时将进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>2052</td><td>此功能将继续从光盘上运行</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2]。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>2052</td><td>此功能将不安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>2052</td><td>此功能将被全部卸载，您将无法从网络中运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>2052</td><td>此功能可从光盘上运行，但被设置为需要时才进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>2052</td><td>此功能可从光盘上运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>2052</td><td>此功能从网络中运行，但在需要时将进行安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>2052</td><td>此功能从网络中运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>2052</td><td>此功能将全部卸载，您将无法从光盘上运行。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>2052</td><td>文件夹|新文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_GB</td><td>2052</td><td>GB</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_KB</td><td>2052</td><td>KB</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_MB</td><td>2052</td><td>MB</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Required</td><td>2052</td><td>要求</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>2052</td><td>剩余时间：{[1] 分 }{[2] 秒}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>2052</td><td>卷</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>2052</td><td>{&amp;Tahoma8}我不接受该许可证协议中的条款(&amp;D)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>2052</td><td>{&amp;Tahoma8}我接受该许可证协议中的条款(&amp;A)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>2052</td><td>单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>2052</td><td>[DATABASEDIR]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>2052</td><td>{&amp;MSSansBold8}数据库文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>2052</td><td>{&amp;Tahoma8}单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>2052</td><td>{&amp;MSSansBold8}目的地文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}将 [ProductName] 安装到：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>2052</td><td>自定义</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>2052</td><td>最小化安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>2052</td><td>典型</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在指定的网络位置创建 [ProductName] 的服务器映象。 要继续，请单击“下一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}输入网络位置或单击“更改”以浏览网络位置。  单击“安装”在指定的网络位置创建 [ProductName] 的服务器映象，或单击“取消”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}网络位置(&amp;N)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>2052</td><td>{&amp;MSSansBold8}网络位置</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}为产品的服务器映象指定网络位置。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseButton</td><td>2052</td><td>浏览(&amp;B)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>2052</td><td>浏览用户帐号</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>2052</td><td>选择用户列表组</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>2052</td><td>选择用户名</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>2052</td><td>{&amp;Tahoma8}要取消 [ProductName] 安装吗？</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>2052</td><td>确认密码(&amp;F):</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>2052</td><td>新用户信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>2052</td><td>新用户信息(&amp;E)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;A)...</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>2052</td><td>{&amp;Tahoma8}单击下面列表内的图标以更改功能的安装方式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>2052</td><td>{&amp;Tahoma8}功能说明</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>2052</td><td>{&amp;Tahoma8}&lt;selected feature path&gt;</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>2052</td><td>{&amp;Tahoma8}功能大小</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>2052</td><td>{&amp;Tahoma8}帮助(&amp;H)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}安装到：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>2052</td><td>{&amp;Tahoma8}当前选定项目的多行说明</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>2052</td><td>{&amp;Tahoma8}空间(&amp;S)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>2052</td><td>{&amp;Tahoma8}安装所需的磁盘空间超出了可用的磁盘空间。</td><td>0</td><td>	</td><td>1109705807</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间不足</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>2052</td><td>域或服务器(&amp;D):</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>2052</td><td>{&amp;Tahoma8}放弃(&amp;A)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>2052</td><td>{&amp;Tahoma8}&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>2052</td><td>[ProductName] 安装程序信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地安装了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>2052</td><td>启动程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>2052</td><td>显示自述文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地卸载了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>2052</td><td>只要与因特网相连就可以确保得到最新的更新。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>2052</td><td>在您购买 [ProductName] 后，有些程序文件可能已经更新。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>2052</td><td>安装程序已完成对 [ProductName] 的安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>2052</td><td>是(&amp;Y)，安装完成后检查程序更新（建议）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 要再次完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间需求</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>2052</td><td>{&amp;Tahoma8}安装选定功能所需的磁盘空间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>{&amp;Tahoma8}下列应用程序正在使用此安装程序需要更新的文件。 关闭这些应用程序并单击“重试”继续。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>2052</td><td>{&amp;Tahoma8}退出(&amp;E)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>2052</td><td>{&amp;MSSansBold8}正在使用的文件</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>2052</td><td>{&amp;Tahoma8}某些需要更新的文件当前正在使用。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsGroup</td><td>2052</td><td>用户列表组(&amp;U):</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsGroupLabel</td><td>2052</td><td>用户列表组(&amp;O):</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>2052</td><td>{&amp;Tahoma8}安装程序正在准备 InstallShield Wizard，InstallShield Wizard 将引导您完成程序安装过程，请稍候。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>2052</td><td>{&amp;MSSansBold8}许可证协议</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>2052</td><td>{&amp;Tahoma8}请仔细阅读下面的许可证协议。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>2052</td><td>指定此应用程序使用的用户帐号。 用户帐号的格式必须为“域\用户名”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>2052</td><td>{&amp;MSSansBold8}登录信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>2052</td><td>指定用户名和密码</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>2052</td><td>选取以下按钮，指定有关安装过程中要创建的新用户信息。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>2052</td><td>{&amp;Tahoma8}更改要安装的程序功能。 此选项可显示“自定义选择”对话框，在其中您可以更改安装功能的方式。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>2052</td><td>{&amp;Tahoma8}修改、修复或删除程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>2052</td><td>{&amp;TahomaBold10}修改(&amp;M)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>2052</td><td>{&amp;MSSansBold8}程序维护</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>2052</td><td>{&amp;TahomaBold10}删除(&amp;R)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>2052</td><td>{&amp;Tahoma8}从计算机中删除 [ProductName]。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>2052</td><td>{&amp;TahomaBold10}修复(&amp;P)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>2052</td><td>{&amp;Tahoma8}修复程序中的错误。 通过此选项您可修复缺少或损坏的文件、快捷方式和注册表项。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 允许修改、修复或删除 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>下列应用程序正在使用此安装程序需要更新的文件。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>2052</td><td>自动关闭并试图重新启动应用程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>2052</td><td>不要关闭应用程序。（将需要重新启动。）</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>2052</td><td>InstallShield(R) Wizard 将在您的计算机中安装 [ProductName] 的修补程序。  要继续，请单击“更新”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>2052</td><td>更新(&amp;U) &gt;</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] 的修补程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）估计剩余时间：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>2052</td><td>{&amp;MSSansBold8}正在安装 [ProductName]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>2052</td><td>已完成进度</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）秒</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>2052</td><td>{&amp;Tahoma8}状态：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>2052</td><td>{&amp;MSSansBold8}正在卸载 [ProductName]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>2052</td><td>{&amp;Tahoma8}正在卸载您选择的程序功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>2052</td><td>{&amp;Tahoma8}正在安装您选择的程序功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在卸载 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在安装 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>2052</td><td>取消(&amp;C)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>2052</td><td>请仔细阅读下面的自述文件信息。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>2052</td><td>{&amp;MSSansBold8}自述文件信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>2052</td><td>{&amp;Tahoma8}使用本机的任何人(&amp;A)（所有用户）</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>2052</td><td>{&amp;MSSansBold8}用户信息</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>2052</td><td>{&amp;Tahoma8}此应用程序的使用者：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>2052</td><td>{&amp;Tahoma8}仅限本人(&amp;M) ([USERNAME])</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>2052</td><td>{&amp;Tahoma8}单位(&amp;O)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>2052</td><td>{&amp;Tahoma8}请输入您的信息。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>2052</td><td>序列号(&amp;S)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>2052</td><td>{50}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>2052</td><td>{80}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>2052</td><td>{&amp;Tahoma8}用户姓名(&amp;U)：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将完成计算机上挂起的 [ProductName] 安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>2052</td><td>{&amp;TahomaBold10}继续执行 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在计算机上完成 [ProductName] 的安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>2052</td><td>选择域或服务器</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>2052</td><td>使用浏览按钮选择域\服务器和用户名。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>2052</td><td>显示 Windows Installer 日志</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装所有的程序功能。 （需要的磁盘空间最大）。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能和将要安装的位置。 建议高级用户使用。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>2052</td><td>{&amp;Tahoma8}选择最适合自己需要的安装类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>2052</td><td>{&amp;MSSansBold8}完整安装(&amp;O)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>2052</td><td>{&amp;MSSansBold8}自定义(&amp;S)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>2052</td><td>{&amp;MSSansBold8}最小化安装(&amp;M)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装最低要求的功能。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>2052</td><td>{&amp;Tahoma8}请选择一个安装类型。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>2052</td><td>{&amp;MSSansBold8}安装类型</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>2052</td><td>{&amp;MSSansBold8}典型(&amp;T)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 以后要再完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出该向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>2052</td><td>用户名(&amp;U):</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何安装设置，请单击“上一步”。 单击“取消”退出向导。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>2052</td><td>{&amp;Tahoma8}单击“安装”开始安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>2052</td><td>公司： [COMPANYNAME]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>2052</td><td>当前设置：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>2052</td><td>目的地文件夹：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>2052</td><td>[INSTALLDIR]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>2052</td><td>{&amp;MSSansBold8}已做好修改程序的准备</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>2052</td><td>{&amp;MSSansBold8}已做好安装程序的准备</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>2052</td><td>{&amp;MSSansBold8}已做好修复程序的准备</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>2052</td><td>[SelectedSetupType]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>2052</td><td>序列号： [ISX_SERIALNUM]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>2052</td><td>安装类型：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>2052</td><td>用户信息：</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>2052</td><td>姓名： [USERNAME]</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>2052</td><td>{&amp;Tahoma8}向导准备开始安装。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>2052</td><td>{&amp;Tahoma8}您已经选择从系统中删除此程序。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何设置，请单击“上一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>2052</td><td>{&amp;Tahoma8}单击“删除”从计算机中删除 [ProductName] 。 删除后此程序将不能再使用。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>2052</td><td>{&amp;Tahoma8}删除(&amp;R)</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>2052</td><td>{&amp;MSSansBold8}删除程序</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将要在您的计算机中安装 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>2052</td><td>警告：本程序受版权法和国际条约的保护。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>2052</td><td>对于运行 [ProductName] 系统颜色设置不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>2052</td><td>对于运行 [ProductName] 操作系统不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>2052</td><td>对于运行 [ProductName] 处理器不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>2052</td><td>对于运行 [ProductName] 内存量不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>2052</td><td>对于运行 [ProductName] 屏幕分辨率不足。</td><td>0</td><td/><td>1109705807</td></row>
		<row><td>ID_STRING1</td><td>2052</td><td>http://www.北京航天云教育科技有限公司.com</td><td>0</td><td/><td>-727430358</td></row>
		<row><td>ID_STRING2</td><td>2052</td><td>北京航天云教育科技有限公司</td><td>0</td><td/><td>-727430358</td></row>
		<row><td>ID_STRING3</td><td>1033</td><td>Launch |Built</td><td>0</td><td/><td>1109658991</td></row>
		<row><td>ID_STRING3</td><td>2052</td><td>Launch |Built</td><td>0</td><td/><td>1109658991</td></row>
		<row><td>ID_STRING4</td><td>1033</td><td>航天云课联网</td><td>0</td><td/><td>1109699248</td></row>
		<row><td>ID_STRING4</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109699248</td></row>
		<row><td>ID_STRING5</td><td>1033</td><td>航天云课联网</td><td>0</td><td/><td>1109701296</td></row>
		<row><td>ID_STRING5</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109701296</td></row>
		<row><td>ID_STRING6</td><td>1033</td><td>Aero-eduClass</td><td>0</td><td/><td>1109716208</td></row>
		<row><td>ID_STRING6</td><td>2052</td><td>Aero-eduClass</td><td>0</td><td/><td>1109716208</td></row>
		<row><td>ID_STRING7</td><td>1033</td><td>Launch |Built</td><td>0</td><td/><td>1109688561</td></row>
		<row><td>ID_STRING7</td><td>2052</td><td>Launch |Built</td><td>0</td><td/><td>1109688561</td></row>
		<row><td>ID_STRING8</td><td>1033</td><td>航天云课联网</td><td>0</td><td/><td>1109666065</td></row>
		<row><td>ID_STRING8</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1109666065</td></row>
		<row><td>ID_STRING9</td><td>1033</td><td>航天云课联网</td><td>0</td><td/><td>1822725679</td></row>
		<row><td>ID_STRING9</td><td>2052</td><td>航天云课联网</td><td>0</td><td/><td>1822725679</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>2052</td><td>系统将不安装此功能。</td><td>0</td><td/><td>1109705807</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>F2A668DC-02C4-42CE-943C-9D00A9923791</td></row>
	</table>

	<table name="ISTargetImage">
		<col key="yes" def="s13">UpgradedImage_</col>
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="i2">Order</col>
		<col def="I4">Flags</col>
		<col def="i2">IgnoreMissingFiles</col>
	</table>

	<table name="ISUpgradeMsiItem">
		<col key="yes" def="s72">UpgradeItem</col>
		<col def="s0">ObjectSetupPath</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="i2">ISAttributes</col>
	</table>

	<table name="ISUpgradedImage">
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="s8">Family</col>
	</table>

	<table name="ISVirtualDirectory">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualPackage">
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRegistry">
		<col key="yes" def="s72">Registry_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRelease">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualShortcut">
		<col key="yes" def="s72">Shortcut_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISXmlElement">
		<col key="yes" def="s72">ISXmlElement</col>
		<col def="s72">ISXmlFile_</col>
		<col def="S72">ISXmlElement_Parent</col>
		<col def="L0">XPath</col>
		<col def="L0">Content</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlElementAttrib">
		<col key="yes" def="s72">ISXmlElementAttrib</col>
		<col key="yes" def="s72">ISXmlElement_</col>
		<col def="L255">Name</col>
		<col def="L0">Value</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlFile">
		<col key="yes" def="s72">ISXmlFile</col>
		<col def="l255">FileName</col>
		<col def="s72">Component_</col>
		<col def="s72">Directory</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">SelectionNamespaces</col>
		<col def="S255">Encoding</col>
	</table>

	<table name="ISXmlLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col def="S255">Element</col>
		<col def="S255">Attribute</col>
		<col def="I2">ISAttributes</col>
	</table>

	<table name="Icon">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">ISIconIndex</col>
		<row><td>ARPPRODUCTICON.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\setupicon.ico</td><td>0</td></row>
		<row><td>AeroEduClass.exe_2ACC0B69ACB046AFADB00B2204D8CD31.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>Booth_Camera.exe_D374AA9CAA264AD3B7E5E1C86923B3D3.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\Booth Camera\bin\Release\Booth Camera.exe</td><td>0</td></row>
		<row><td>Shortcut_B2B630D9096346E99A543E239F6B9231.exe</td><td/><td>C:\Program Files (x86)\InstallShield\2013LE\Redist\Language Independent\OS Independent\uninstall.ico</td><td>0</td></row>
		<row><td>_1277DA483225495291DAA0C8EB1C5EF8.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_1AB58DC55EE549AE82FA688B2ACA85E4.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_304B3EA72EFC4A918D2817FB3E69C236.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_38A90004F07B429DA99C76BADB48D026.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_592D154D76344FF39A94C9B250884205.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_635372DAC93B43839C9F8A534CF7B034.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_6D278DD9BF944D63A4AEAF52B96E5452.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_7DBF44C2BEF84F77A8D215555DA31074.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_8AAE7A3921AE44BB9AF77687AF279185.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_99329CB7CA504DA49F369981E1EC8342.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_A0B27E4BFC634A92B3B127D66F855217.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_A63F20AE38354853AFE3CFF19BB53FB6.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_AA7A6D76BCAE4886935BBE0CB2DA0FEC.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_C4C2547A38AD4FDB9CE3D019822B12D2.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_C4F48304111345A28CC3B9B5E03ECA18.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_C6ADA9EF36994424B5E8E80D90A0088F.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_EB4677470C214F62A9F1D7393174DD0D.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_EE66295A63A54CBBA31D60F6EB124D4E.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_F07EED5D83754369A5C34555D5BAE0F9.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>_F86A531E457849D9A5DB8A5F1E8C4D3B.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\AeroEduClass\bin\x86\Debug\AeroEduClass.exe</td><td>0</td></row>
		<row><td>ffmpeg_mux64.exe_29BCDE248E9C487A8739ECF5F7B247E7.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>ffmpeg_mux64.exe_E124938CCD654BCDA544521815721D5E.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>get_graphics_offse_50ECBCD07C3544A282F8181F8F181BCD.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>get_graphics_offse_B584C8EBEF3146579C5E131FB42B9FFD.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>inject_helper64.ex_4B4BCF1B8A05401A972424B1CA7CF1C2.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>inject_helper64.ex_6FF789679948431B8A87844026CF685A.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>obs64.exe_4DF824C8AADB48BC8DA31C0DC6E59ACC.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obs64.exe</td><td>0</td></row>
		<row><td>obs64.exe_DF44A7F1E85D4B2EA13B36ABDBF9BA1F.exe</td><td/><td>C:\TFS\航天云教育U3软件\lubo_rtsp预览版-整合平台\obsbin\bin\64bit\obs64.exe</td><td>0</td></row>
	</table>

	<table name="IniFile">
		<col key="yes" def="s72">IniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l255">Section</col>
		<col def="l128">Key</col>
		<col def="s255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="IniLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s255">FileName</col>
		<col def="s96">Section</col>
		<col def="s128">Key</col>
		<col def="I2">Field</col>
		<col def="I2">Type</col>
	</table>

	<table name="InstallExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AllocateRegistrySpace</td><td>NOT Installed</td><td>1550</td><td>AllocateRegistrySpace</td><td/></row>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>BindImage</td><td/><td>4300</td><td>BindImage</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateFolders</td><td/><td>3700</td><td>CreateFolders</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>DeleteServices</td><td>VersionNT</td><td>2000</td><td>DeleteServices</td><td/></row>
		<row><td>DuplicateFiles</td><td/><td>4210</td><td>DuplicateFiles</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td>NOT ISSETUPDRIVEN</td><td>420</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>Not Installed And Not ISRUNSETUPTYPEADDLOCALEVENT</td><td>1050</td><td>ISRunSetupTypeAddLocalEvent</td><td/></row>
		<row><td>ISSelfRegisterCosting</td><td/><td>2201</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td/><td>5601</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td/><td>6601</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td/><td>2202</td><td/><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1501</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallODBC</td><td/><td>5400</td><td>InstallODBC</td><td/></row>
		<row><td>InstallServices</td><td>VersionNT</td><td>5800</td><td>InstallServices</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1010</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>MoveFiles</td><td/><td>3800</td><td>MoveFiles</td><td/></row>
		<row><td>MsiConfigureServices</td><td>VersionMsi &gt;= "5.00"</td><td>5850</td><td>MSI5 MsiConfigureServices</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>MsiUnpublishAssemblies</td><td/><td>1750</td><td>MsiUnpublishAssemblies</td><td/></row>
		<row><td>PatchFiles</td><td/><td>4090</td><td>PatchFiles</td><td/></row>
		<row><td>ProcessComponents</td><td/><td>1600</td><td>ProcessComponents</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterComPlus</td><td/><td>5700</td><td>RegisterComPlus</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterFonts</td><td/><td>5300</td><td>RegisterFonts</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProduct</td><td/><td>6100</td><td>RegisterProduct</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>5500</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>RegisterUser</td><td/><td>6000</td><td>RegisterUser</td><td/></row>
		<row><td>RemoveDuplicateFiles</td><td/><td>3400</td><td>RemoveDuplicateFiles</td><td/></row>
		<row><td>RemoveEnvironmentStrings</td><td/><td>3300</td><td>RemoveEnvironmentStrings</td><td/></row>
		<row><td>RemoveExistingProducts</td><td/><td>1410</td><td>RemoveExistingProducts</td><td/></row>
		<row><td>RemoveFiles</td><td/><td>3500</td><td>RemoveFiles</td><td/></row>
		<row><td>RemoveFolders</td><td/><td>3600</td><td>RemoveFolders</td><td/></row>
		<row><td>RemoveIniValues</td><td/><td>3100</td><td>RemoveIniValues</td><td/></row>
		<row><td>RemoveODBC</td><td/><td>2400</td><td>RemoveODBC</td><td/></row>
		<row><td>RemoveRegistryValues</td><td/><td>2600</td><td>RemoveRegistryValues</td><td/></row>
		<row><td>RemoveShortcuts</td><td/><td>3200</td><td>RemoveShortcuts</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>850</td><td>ResolveSource</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
		<row><td>SelfRegModules</td><td/><td>5600</td><td>SelfRegModules</td><td/></row>
		<row><td>SelfUnregModules</td><td/><td>2200</td><td>SelfUnregModules</td><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td/><td>1100</td><td>SetARPINSTALLLOCATION</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetODBCFolders</td><td/><td>1200</td><td>SetODBCFolders</td><td/></row>
		<row><td>StartServices</td><td>VersionNT</td><td>5900</td><td>StartServices</td><td/></row>
		<row><td>StopServices</td><td>VersionNT</td><td>1900</td><td>StopServices</td><td/></row>
		<row><td>UnpublishComponents</td><td/><td>1700</td><td>UnpublishComponents</td><td/></row>
		<row><td>UnpublishFeatures</td><td/><td>1800</td><td>UnpublishFeatures</td><td/></row>
		<row><td>UnregisterClassInfo</td><td/><td>2700</td><td>UnregisterClassInfo</td><td/></row>
		<row><td>UnregisterComPlus</td><td/><td>2100</td><td>UnregisterComPlus</td><td/></row>
		<row><td>UnregisterExtensionInfo</td><td/><td>2800</td><td>UnregisterExtensionInfo</td><td/></row>
		<row><td>UnregisterFonts</td><td/><td>2500</td><td>UnregisterFonts</td><td/></row>
		<row><td>UnregisterMIMEInfo</td><td/><td>3000</td><td>UnregisterMIMEInfo</td><td/></row>
		<row><td>UnregisterProgIdInfo</td><td/><td>2900</td><td>UnregisterProgIdInfo</td><td/></row>
		<row><td>UnregisterTypeLibraries</td><td/><td>2300</td><td>UnregisterTypeLibraries</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>WriteEnvironmentStrings</td><td/><td>5200</td><td>WriteEnvironmentStrings</td><td/></row>
		<row><td>WriteIniValues</td><td/><td>5100</td><td>WriteIniValues</td><td/></row>
		<row><td>WriteRegistryValues</td><td/><td>5000</td><td>WriteRegistryValues</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="InstallShield">
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
		<row><td>ActiveLanguage</td><td>2052</td></row>
		<row><td>Comments</td><td/></row>
		<row><td>CurrentMedia</td><td dt:dt="bin.base64" md5="de9f554a3bc05c12be9c31b998217995">
UwBpAG4AZwBsAGUASQBtAGEAZwBlAAEARQB4AHAAcgBlAHMAcwA=
			</td></row>
		<row><td>DefaultProductConfiguration</td><td>Express</td></row>
		<row><td>EnableSwidtag</td><td>0</td></row>
		<row><td>ISCompilerOption_CompileBeforeBuild</td><td>1</td></row>
		<row><td>ISCompilerOption_Debug</td><td>0</td></row>
		<row><td>ISCompilerOption_IncludePath</td><td/></row>
		<row><td>ISCompilerOption_LibraryPath</td><td/></row>
		<row><td>ISCompilerOption_MaxErrors</td><td>50</td></row>
		<row><td>ISCompilerOption_MaxWarnings</td><td>50</td></row>
		<row><td>ISCompilerOption_OutputPath</td><td>&lt;ISProjectDataFolder&gt;\Script Files</td></row>
		<row><td>ISCompilerOption_PreProcessor</td><td>_ISSCRIPT_NEW_STYLE_DLG_DEFS</td></row>
		<row><td>ISCompilerOption_WarningLevel</td><td>3</td></row>
		<row><td>ISCompilerOption_WarningsAsErrors</td><td>1</td></row>
		<row><td>ISTheme</td><td>InstallShield Blue.theme</td></row>
		<row><td>ISUSLock</td><td>{5DFA9DD6-E6C6-461F-9DFE-D7782D980012}</td></row>
		<row><td>ISUSSignature</td><td>{EAA10165-8B6C-4DD7-ABA8-573EABD6F68F}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant,viewProject,viewShortcuts,viewUI,viewAppFiles,viewFeatureFiles,viewObjects,viewDependencies,viewRelease,viewRealSetupDesign,viewIniFiles,viewTextFiles,viewXMLConfig,viewSystemSearch,viewTextMessages,viewDesignPatches,viewUpdateService,viewRegistry,viewFileExtensions,viewAppV,viewSetupDesign,viewISToday,viewEnvironmentVariables,viewVRoots,viewSQLServer,viewComponentServices,viewSetupTypes,viewSupportFiles</td></row>
		<row><td>Limited</td><td>1</td></row>
		<row><td>LockPermissionMode</td><td>1</td></row>
		<row><td>MsiExecCmdLineOptions</td><td/></row>
		<row><td>MsiLogFile</td><td/></row>
		<row><td>OnUpgrade</td><td>0</td></row>
		<row><td>Owner</td><td/></row>
		<row><td>PatchFamily</td><td>MyPatchFamily1</td></row>
		<row><td>PatchSequence</td><td>1.0.0</td></row>
		<row><td>SaveAsSchema</td><td/></row>
		<row><td>SccEnabled</td><td>0</td></row>
		<row><td>SccPath</td><td/></row>
		<row><td>SchemaVersion</td><td>774</td></row>
		<row><td>Type</td><td>MSIE</td></row>
		<row><td>VSSccAuxPath</td><td/></row>
		<row><td>VSSccLocalPath</td><td/></row>
		<row><td>VSSccProvider</td><td/></row>
	</table>

	<table name="InstallUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td/><td>430</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>InstallWelcome</td><td>Not Installed</td><td>1210</td><td>InstallWelcome</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>Installed And Not RESUME And Not Preselected And Not PATCH</td><td>1230</td><td>MaintenanceWelcome</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1200</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>PatchWelcome</td><td>Installed And PATCH And Not IS_MAJOR_UPGRADE</td><td>1205</td><td>Patch Panel</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>990</td><td>ResolveSource</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>420</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1240</td><td>SetupProgress</td><td/></row>
		<row><td>SetupResume</td><td>Installed And (RESUME Or Preselected) And Not PATCH</td><td>1220</td><td>SetupResume</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="IsolatedComponent">
		<col key="yes" def="s72">Component_Shared</col>
		<col key="yes" def="s72">Component_Application</col>
	</table>

	<table name="LaunchCondition">
		<col key="yes" def="s255">Condition</col>
		<col def="l255">Description</col>
	</table>

	<table name="ListBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="ListView">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
		<col def="S72">Binary_</col>
	</table>

	<table name="LockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
	</table>

	<table name="MIME">
		<col key="yes" def="s64">ContentType</col>
		<col def="s255">Extension_</col>
		<col def="S38">CLSID</col>
	</table>

	<table name="Media">
		<col key="yes" def="i2">DiskId</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="MoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">SourceName</col>
		<col def="L255">DestName</col>
		<col def="S72">SourceFolder</col>
		<col def="s72">DestFolder</col>
		<col def="i2">Options</col>
	</table>

	<table name="MsiAssembly">
		<col key="yes" def="s72">Component_</col>
		<col def="s38">Feature_</col>
		<col def="S72">File_Manifest</col>
		<col def="S72">File_Application</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="MsiAssemblyName">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="MsiDigitalCertificate">
		<col key="yes" def="s72">DigitalCertificate</col>
		<col def="v0">CertData</col>
	</table>

	<table name="MsiDigitalSignature">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s72">SignObject</col>
		<col def="s72">DigitalCertificate_</col>
		<col def="V0">Hash</col>
	</table>

	<table name="MsiDriverPackages">
		<col key="yes" def="s72">Component</col>
		<col def="i4">Flags</col>
		<col def="I4">Sequence</col>
		<col def="S0">ReferenceComponents</col>
	</table>

	<table name="MsiEmbeddedChainer">
		<col key="yes" def="s72">MsiEmbeddedChainer</col>
		<col def="S255">Condition</col>
		<col def="S255">CommandLine</col>
		<col def="s72">Source</col>
		<col def="I4">Type</col>
	</table>

	<table name="MsiEmbeddedUI">
		<col key="yes" def="s72">MsiEmbeddedUI</col>
		<col def="s255">FileName</col>
		<col def="i2">Attributes</col>
		<col def="I4">MessageFilter</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="MsiFileHash">
		<col key="yes" def="s72">File_</col>
		<col def="i2">Options</col>
		<col def="i4">HashPart1</col>
		<col def="i4">HashPart2</col>
		<col def="i4">HashPart3</col>
		<col def="i4">HashPart4</col>
	</table>

	<table name="MsiLockPermissionsEx">
		<col key="yes" def="s72">MsiLockPermissionsEx</col>
		<col def="s72">LockObject</col>
		<col def="s32">Table</col>
		<col def="s0">SDDLText</col>
		<col def="S255">Condition</col>
	</table>

	<table name="MsiPackageCertificate">
		<col key="yes" def="s72">PackageCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchCertificate">
		<col key="yes" def="s72">PatchCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchMetadata">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="S72">Company</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="MsiPatchOldAssemblyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="S72">Assembly_</col>
	</table>

	<table name="MsiPatchOldAssemblyName">
		<col key="yes" def="s72">Assembly</col>
		<col key="yes" def="s255">Name</col>
		<col def="S255">Value</col>
	</table>

	<table name="MsiPatchSequence">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="s0">PatchFamily</col>
		<col key="yes" def="S0">Target</col>
		<col def="s0">Sequence</col>
		<col def="i2">Supersede</col>
	</table>

	<table name="MsiServiceConfig">
		<col key="yes" def="s72">MsiServiceConfig</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="i4">ConfigType</col>
		<col def="S0">Argument</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiServiceConfigFailureActions">
		<col key="yes" def="s72">MsiServiceConfigFailureActions</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="I4">ResetPeriod</col>
		<col def="L255">RebootMessage</col>
		<col def="L255">Command</col>
		<col def="S0">Actions</col>
		<col def="S0">DelayActions</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiShortcutProperty">
		<col key="yes" def="s72">MsiShortcutProperty</col>
		<col def="s72">Shortcut_</col>
		<col def="s0">PropertyKey</col>
		<col def="s0">PropVariantValue</col>
	</table>

	<table name="ODBCAttribute">
		<col key="yes" def="s72">Driver_</col>
		<col key="yes" def="s40">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCDataSource">
		<col key="yes" def="s72">DataSource</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s255">DriverDescription</col>
		<col def="i2">Registration</col>
	</table>

	<table name="ODBCDriver">
		<col key="yes" def="s72">Driver</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="ODBCSourceAttribute">
		<col key="yes" def="s72">DataSource_</col>
		<col key="yes" def="s32">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCTranslator">
		<col key="yes" def="s72">Translator</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="Patch">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="i2">Sequence</col>
		<col def="i4">PatchSize</col>
		<col def="i2">Attributes</col>
		<col def="V0">Header</col>
		<col def="S38">StreamRef_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="PatchPackage">
		<col key="yes" def="s38">PatchId</col>
		<col def="i2">Media_</col>
	</table>

	<table name="ProgId">
		<col key="yes" def="s255">ProgId</col>
		<col def="S255">ProgId_Parent</col>
		<col def="S38">Class_</col>
		<col def="L255">Description</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Property">
		<col key="yes" def="s72">Property</col>
		<col def="L0">Value</col>
		<col def="S255">ISComments</col>
		<row><td>ALLUSERS</td><td>1</td><td/></row>
		<row><td>ARPINSTALLLOCATION</td><td/><td/></row>
		<row><td>ARPPRODUCTICON</td><td>ARPPRODUCTICON.exe</td><td/></row>
		<row><td>ARPSIZE</td><td/><td/></row>
		<row><td>ARPURLINFOABOUT</td><td>##ID_STRING1##</td><td/></row>
		<row><td>AgreeToLicense</td><td>No</td><td/></row>
		<row><td>ApplicationUsers</td><td>AllUsers</td><td/></row>
		<row><td>DWUSINTERVAL</td><td>30</td><td/></row>
		<row><td>DWUSLINK</td><td>CEABC7FFC93CC0A8FEAC40C899FB978FE9FB808F49CCE758CEBB97CF199BF7582ECBF71F89AC</td><td/></row>
		<row><td>DefaultUIFont</td><td>ExpressDefault</td><td/></row>
		<row><td>DialogCaption</td><td>InstallShield for Windows Installer</td><td/></row>
		<row><td>DiskPrompt</td><td>[1]</td><td/></row>
		<row><td>DiskSerial</td><td>1234-5678</td><td/></row>
		<row><td>DisplayNameCustom</td><td>##IDS__DisplayName_Custom##</td><td/></row>
		<row><td>DisplayNameMinimal</td><td>##IDS__DisplayName_Minimal##</td><td/></row>
		<row><td>DisplayNameTypical</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>Display_IsBitmapDlg</td><td>1</td><td/></row>
		<row><td>ErrorDialog</td><td>SetupError</td><td/></row>
		<row><td>INSTALLLEVEL</td><td>200</td><td/></row>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td><td/></row>
		<row><td>ISSHOWMSILOG</td><td/><td/></row>
		<row><td>ISVROOT_PORT_NO</td><td>0</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_COST</td><td>##IDS_COMPLUS_PROGRESSTEXT_COST##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_INSTALL##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_UNINSTALL##</td><td/></row>
		<row><td>IS_PREVENT_DOWNGRADE_EXIT</td><td>##IDS_PREVENT_DOWNGRADE_EXIT##</td><td/></row>
		<row><td>IS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>##IDS_PROGMSG_TEXTFILECHANGS_REPLACE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_COSTING</td><td>##IDS_PROGMSG_XML_COSTING##</td><td/></row>
		<row><td>IS_PROGMSG_XML_CREATE_FILE</td><td>##IDS_PROGMSG_XML_CREATE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_FILES</td><td>##IDS_PROGMSG_XML_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_REMOVE_FILE</td><td>##IDS_PROGMSG_XML_REMOVE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_ROLLBACK_FILES</td><td>##IDS_PROGMSG_XML_ROLLBACK_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_UPDATE_FILE</td><td>##IDS_PROGMSG_XML_UPDATE_FILE##</td><td/></row>
		<row><td>IS_SQLSERVER_AUTHENTICATION</td><td>0</td><td/></row>
		<row><td>IS_SQLSERVER_DATABASE</td><td/><td/></row>
		<row><td>IS_SQLSERVER_PASSWORD</td><td/><td/></row>
		<row><td>IS_SQLSERVER_SERVER</td><td/><td/></row>
		<row><td>IS_SQLSERVER_USERNAME</td><td>sa</td><td/></row>
		<row><td>InstallChoice</td><td>AR</td><td/></row>
		<row><td>Manufacturer</td><td>##COMPANY_NAME##</td><td/></row>
		<row><td>PIDKEY</td><td/><td/></row>
		<row><td>PIDTemplate</td><td>12345&lt;###-%%%%%%%&gt;@@@@@</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOL</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOT</td><td>##IDS_PROGMSG_IIS_CREATEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOTS</td><td>##IDS_PROGMSG_IIS_CREATEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITE</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITE##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITES</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACT</td><td>##IDS_PROGMSG_IIS_EXTRACT##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONEz</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTzDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOL</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVESITE</td><td>##IDS_PROGMSG_IIS_REMOVESITE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOT</td><td>##IDS_PROGMSG_IIS_REMOVEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOTS</td><td>##IDS_PROGMSG_IIS_REMOVEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSITES</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>##IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKVROOTS</td><td>##IDS_PROGMSG_IIS_ROLLBACKVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>ProductCode</td><td>{624BABE6-9FF5-437A-BD6C-AACFED74A22B}</td><td/></row>
		<row><td>ProductName</td><td>航天云课联网</td><td/></row>
		<row><td>ProductVersion</td><td>1.00.0000</td><td/></row>
		<row><td>ProgressType0</td><td>install</td><td/></row>
		<row><td>ProgressType1</td><td>Installing</td><td/></row>
		<row><td>ProgressType2</td><td>installed</td><td/></row>
		<row><td>ProgressType3</td><td>installs</td><td/></row>
		<row><td>RebootYesNo</td><td>Yes</td><td/></row>
		<row><td>ReinstallFileVersion</td><td>o</td><td/></row>
		<row><td>ReinstallModeText</td><td>omus</td><td/></row>
		<row><td>ReinstallRepair</td><td>r</td><td/></row>
		<row><td>RestartManagerOption</td><td>CloseRestart</td><td/></row>
		<row><td>SERIALNUMBER</td><td/><td/></row>
		<row><td>SERIALNUMVALSUCCESSRETVAL</td><td>1</td><td/></row>
		<row><td>SHOWLAUNCHPROGRAM</td><td>0</td><td/></row>
		<row><td>SHOWLAUNCHREADME</td><td>0</td><td/></row>
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{D8BC9835-9E05-438F-A26B-FD618EA38247}</td><td/></row>
		<row><td>_IsMaintenance</td><td>Change</td><td/></row>
		<row><td>_IsSetupTypeMin</td><td>Typical</td><td/></row>
	</table>

	<table name="PublishComponent">
		<col key="yes" def="s38">ComponentId</col>
		<col key="yes" def="s255">Qualifier</col>
		<col key="yes" def="s72">Component_</col>
		<col def="L0">AppData</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="RadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="L64">Text</col>
		<col def="L50">Help</col>
		<col def="I4">ISControlId</col>
		<row><td>AgreeToLicense</td><td>1</td><td>No</td><td>0</td><td>15</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_0##</td><td/><td/></row>
		<row><td>AgreeToLicense</td><td>2</td><td>Yes</td><td>0</td><td>0</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_1##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>1</td><td>AllUsers</td><td>1</td><td>7</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_Anyone##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>2</td><td>OnlyCurrentUser</td><td>1</td><td>23</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>1</td><td>CloseRestart</td><td>6</td><td>9</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_CloseRestart##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>2</td><td>Reboot</td><td>6</td><td>21</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_RebootAfter##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>1</td><td>Change</td><td>0</td><td>0</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Modify##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>2</td><td>Reinstall</td><td>0</td><td>60</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Repair##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>3</td><td>Remove</td><td>0</td><td>120</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Remove##</td><td/><td/></row>
		<row><td>_IsSetupTypeMin</td><td>1</td><td>Typical</td><td>1</td><td>6</td><td>264</td><td>14</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td/><td/></row>
	</table>

	<table name="RegLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="I2">Type</col>
	</table>

	<table name="Registry">
		<col key="yes" def="s72">Registry</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="S0">Value</col>
		<col def="s72">Component_</col>
		<col def="I4">ISAttributes</col>
		<row><td>Registry1</td><td>2</td><td>SOFTWARE\AeroEduClass</td><td>Ver</td><td>1.00.0000</td><td>ISX_DEFAULTCOMPONENT4</td><td>0</td></row>
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
		<row><td>FileKey1</td><td>Component</td><td/><td>company_name</td><td>2</td></row>
		<row><td>FileKey2</td><td>Component</td><td/><td>setup1</td><td>2</td></row>
		<row><td>FileKey3</td><td>Component</td><td/><td>product_name</td><td>2</td></row>
		<row><td>Shortcut</td><td>NewComponent5</td><td/><td>product_name</td><td>2</td></row>
		<row><td>_Built</td><td>Component</td><td/><td>product_name</td><td>2</td></row>
	</table>

	<table name="RemoveIniFile">
		<col key="yes" def="s72">RemoveIniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l96">Section</col>
		<col def="l128">Key</col>
		<col def="L255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="RemoveRegistry">
		<col key="yes" def="s72">RemoveRegistry</col>
		<col def="i2">Root</col>
		<col def="l255">Key</col>
		<col def="L255">Name</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ReserveCost">
		<col key="yes" def="s72">ReserveKey</col>
		<col def="s72">Component_</col>
		<col def="S72">ReserveFolder</col>
		<col def="i4">ReserveLocal</col>
		<col def="i4">ReserveSource</col>
	</table>

	<table name="SFPCatalog">
		<col key="yes" def="s255">SFPCatalog</col>
		<col def="V0">Catalog</col>
		<col def="S0">Dependency</col>
	</table>

	<table name="SelfReg">
		<col key="yes" def="s72">File_</col>
		<col def="I2">Cost</col>
	</table>

	<table name="ServiceControl">
		<col key="yes" def="s72">ServiceControl</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="S255">Arguments</col>
		<col def="I2">Wait</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ServiceInstall">
		<col key="yes" def="s72">ServiceInstall</col>
		<col def="s255">Name</col>
		<col def="L255">DisplayName</col>
		<col def="i4">ServiceType</col>
		<col def="i4">StartType</col>
		<col def="i4">ErrorControl</col>
		<col def="S255">LoadOrderGroup</col>
		<col def="S255">Dependencies</col>
		<col def="S255">StartName</col>
		<col def="S255">Password</col>
		<col def="S255">Arguments</col>
		<col def="s72">Component_</col>
		<col def="L255">Description</col>
	</table>

	<table name="Shortcut">
		<col key="yes" def="s72">Shortcut</col>
		<col def="s72">Directory_</col>
		<col def="l128">Name</col>
		<col def="s72">Component_</col>
		<col def="s255">Target</col>
		<col def="S255">Arguments</col>
		<col def="L255">Description</col>
		<col def="I2">Hotkey</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I2">ShowCmd</col>
		<col def="S72">WkDir</col>
		<col def="S255">DisplayResourceDLL</col>
		<col def="I2">DisplayResourceId</col>
		<col def="S255">DescriptionResourceDLL</col>
		<col def="I2">DescriptionResourceId</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISShortcutName</col>
		<col def="I4">ISAttributes</col>
		<row><td>Shortcut</td><td>product_name</td><td>##IDS_SHORTCUT_DISPLAY_NAME25##</td><td>NewComponent5</td><td>[SystemFolder]msiexec.exe</td><td>/x {624BABE6-9FF5-437A-BD6C-AACFED74A22B}</td><td/><td/><td>Shortcut_B2B630D9096346E99A543E239F6B9231.exe</td><td>0</td><td>1</td><td/><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>_Built</td><td>product_name</td><td>##IDS_SHORTCUT_DISPLAY_NAME11##</td><td>Component</td><td>AlwaysInstall</td><td/><td/><td/><td/><td/><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>_Built1</td><td>DesktopFolder</td><td>##IDS_SHORTCUT_DISPLAY_NAME11##</td><td>Component</td><td>AlwaysInstall</td><td/><td/><td/><td/><td/><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
	</table>

	<table name="Signature">
		<col key="yes" def="s72">Signature</col>
		<col def="s255">FileName</col>
		<col def="S20">MinVersion</col>
		<col def="S20">MaxVersion</col>
		<col def="I4">MinSize</col>
		<col def="I4">MaxSize</col>
		<col def="I4">MinDate</col>
		<col def="I4">MaxDate</col>
		<col def="S255">Languages</col>
	</table>

	<table name="TextStyle">
		<col key="yes" def="s72">TextStyle</col>
		<col def="s32">FaceName</col>
		<col def="i2">Size</col>
		<col def="I4">Color</col>
		<col def="I2">StyleBits</col>
		<row><td>Arial8</td><td>Arial</td><td>8</td><td/><td/></row>
		<row><td>Arial9</td><td>Arial</td><td>9</td><td/><td/></row>
		<row><td>ArialBlue10</td><td>Arial</td><td>10</td><td>16711680</td><td/></row>
		<row><td>ArialBlueStrike10</td><td>Arial</td><td>10</td><td>16711680</td><td>8</td></row>
		<row><td>CourierNew8</td><td>Courier New</td><td>8</td><td/><td/></row>
		<row><td>CourierNew9</td><td>Courier New</td><td>9</td><td/><td/></row>
		<row><td>ExpressDefault</td><td>微软雅黑</td><td>8</td><td>0</td><td>0</td></row>
		<row><td>MSGothic9</td><td>MS Gothic</td><td>9</td><td/><td/></row>
		<row><td>MSSGreySerif8</td><td>MS Sans Serif</td><td>8</td><td>8421504</td><td/></row>
		<row><td>MSSWhiteSerif8</td><td>Tahoma</td><td>8</td><td>16777215</td><td/></row>
		<row><td>MSSansBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>MSSansSerif8</td><td>MS Sans Serif</td><td>8</td><td/><td/></row>
		<row><td>MSSansSerif9</td><td>MS Sans Serif</td><td>9</td><td/><td/></row>
		<row><td>Tahoma10</td><td>Tahoma</td><td>10</td><td/><td/></row>
		<row><td>Tahoma8</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>Tahoma9</td><td>Tahoma</td><td>9</td><td/><td/></row>
		<row><td>TahomaBold10</td><td>Tahoma</td><td>10</td><td/><td>1</td></row>
		<row><td>TahomaBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>Times8</td><td>Times New Roman</td><td>8</td><td/><td/></row>
		<row><td>Times9</td><td>Times New Roman</td><td>9</td><td/><td/></row>
		<row><td>TimesItalic12</td><td>Times New Roman</td><td>12</td><td/><td>2</td></row>
		<row><td>TimesItalicBlue10</td><td>Times New Roman</td><td>10</td><td>16711680</td><td>2</td></row>
		<row><td>TimesRed16</td><td>Times New Roman</td><td>16</td><td>255</td><td/></row>
		<row><td>VerdanaBold14</td><td>Verdana</td><td>13</td><td/><td>1</td></row>
	</table>

	<table name="TypeLib">
		<col key="yes" def="s38">LibID</col>
		<col key="yes" def="i2">Language</col>
		<col key="yes" def="s72">Component_</col>
		<col def="I4">Version</col>
		<col def="L128">Description</col>
		<col def="S72">Directory_</col>
		<col def="s38">Feature_</col>
		<col def="I4">Cost</col>
	</table>

	<table name="UIText">
		<col key="yes" def="s72">Key</col>
		<col def="L255">Text</col>
		<row><td>AbsentPath</td><td/></row>
		<row><td>GB</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>KB</td><td>##IDS_UITEXT_KB##</td></row>
		<row><td>MB</td><td>##IDS_UITEXT_MB##</td></row>
		<row><td>MenuAbsent</td><td>##IDS_UITEXT_FeatureNotAvailable##</td></row>
		<row><td>MenuAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired2##</td></row>
		<row><td>MenuAllCD</td><td>##IDS_UITEXT_FeatureInstalledCD##</td></row>
		<row><td>MenuAllLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal##</td></row>
		<row><td>MenuAllNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork##</td></row>
		<row><td>MenuCD</td><td>##IDS_UITEXT_FeatureInstalledCD2##</td></row>
		<row><td>MenuLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal2##</td></row>
		<row><td>MenuNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork2##</td></row>
		<row><td>NewFolder</td><td>##IDS_UITEXT_Folder##</td></row>
		<row><td>SelAbsentAbsent</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>SelAbsentAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired##</td></row>
		<row><td>SelAbsentCD</td><td>##IDS_UITEXT_FeatureOnCD##</td></row>
		<row><td>SelAbsentLocal</td><td>##IDS_UITEXT_FeatureLocal##</td></row>
		<row><td>SelAbsentNetwork</td><td>##IDS_UITEXT_FeatureNetwork##</td></row>
		<row><td>SelAdvertiseAbsent</td><td>##IDS_UITEXT_FeatureUnavailable##</td></row>
		<row><td>SelAdvertiseAdvertise</td><td>##IDS_UITEXT_FeatureInstalledRequired##</td></row>
		<row><td>SelAdvertiseCD</td><td>##IDS_UITEXT_FeatureOnCD2##</td></row>
		<row><td>SelAdvertiseLocal</td><td>##IDS_UITEXT_FeatureLocal2##</td></row>
		<row><td>SelAdvertiseNetwork</td><td>##IDS_UITEXT_FeatureNetwork2##</td></row>
		<row><td>SelCDAbsent</td><td>##IDS_UITEXT_FeatureWillBeUninstalled##</td></row>
		<row><td>SelCDAdvertise</td><td>##IDS_UITEXT_FeatureWasCD##</td></row>
		<row><td>SelCDCD</td><td>##IDS_UITEXT_FeatureRunFromCD##</td></row>
		<row><td>SelCDLocal</td><td>##IDS_UITEXT_FeatureWasCDLocal##</td></row>
		<row><td>SelChildCostNeg</td><td>##IDS_UITEXT_FeatureFreeSpace##</td></row>
		<row><td>SelChildCostPos</td><td>##IDS_UITEXT_FeatureRequiredSpace##</td></row>
		<row><td>SelCostPending</td><td>##IDS_UITEXT_CompilingFeaturesCost##</td></row>
		<row><td>SelLocalAbsent</td><td>##IDS_UITEXT_FeatureCompletelyRemoved##</td></row>
		<row><td>SelLocalAdvertise</td><td>##IDS_UITEXT_FeatureRemovedUnlessRequired##</td></row>
		<row><td>SelLocalCD</td><td>##IDS_UITEXT_FeatureRemovedCD##</td></row>
		<row><td>SelLocalLocal</td><td>##IDS_UITEXT_FeatureRemainLocal##</td></row>
		<row><td>SelLocalNetwork</td><td>##IDS_UITEXT_FeatureRemoveNetwork##</td></row>
		<row><td>SelNetworkAbsent</td><td>##IDS_UITEXT_FeatureUninstallNoNetwork##</td></row>
		<row><td>SelNetworkAdvertise</td><td>##IDS_UITEXT_FeatureWasOnNetworkInstalled##</td></row>
		<row><td>SelNetworkLocal</td><td>##IDS_UITEXT_FeatureWasOnNetworkLocal##</td></row>
		<row><td>SelNetworkNetwork</td><td>##IDS_UITEXT_FeatureContinueNetwork##</td></row>
		<row><td>SelParentCostNegNeg</td><td>##IDS_UITEXT_FeatureSpaceFree##</td></row>
		<row><td>SelParentCostNegPos</td><td>##IDS_UITEXT_FeatureSpaceFree2##</td></row>
		<row><td>SelParentCostPosNeg</td><td>##IDS_UITEXT_FeatureSpaceFree3##</td></row>
		<row><td>SelParentCostPosPos</td><td>##IDS_UITEXT_FeatureSpaceFree4##</td></row>
		<row><td>TimeRemaining</td><td>##IDS_UITEXT_TimeRemaining##</td></row>
		<row><td>VolumeCostAvailable</td><td>##IDS_UITEXT_Available##</td></row>
		<row><td>VolumeCostDifference</td><td>##IDS_UITEXT_Differences##</td></row>
		<row><td>VolumeCostRequired</td><td>##IDS_UITEXT_Required##</td></row>
		<row><td>VolumeCostSize</td><td>##IDS_UITEXT_DiskSize##</td></row>
		<row><td>VolumeCostVolume</td><td>##IDS_UITEXT_Volume##</td></row>
		<row><td>bytes</td><td>##IDS_UITEXT_Bytes##</td></row>
	</table>

	<table name="Upgrade">
		<col key="yes" def="s38">UpgradeCode</col>
		<col key="yes" def="S20">VersionMin</col>
		<col key="yes" def="S20">VersionMax</col>
		<col key="yes" def="S255">Language</col>
		<col key="yes" def="i4">Attributes</col>
		<col def="S255">Remove</col>
		<col def="s72">ActionProperty</col>
		<col def="S72">ISDisplayName</col>
		<row><td>{00000000-0000-0000-0000-000000000000}</td><td>***ALL_VERSIONS***</td><td></td><td></td><td>2</td><td/><td>ISFOUNDNEWERPRODUCTVERSION</td><td>ISPreventDowngrade</td></row>
	</table>

	<table name="Verb">
		<col key="yes" def="s255">Extension_</col>
		<col key="yes" def="s32">Verb</col>
		<col def="I2">Sequence</col>
		<col def="L255">Command</col>
		<col def="L255">Argument</col>
	</table>

	<table name="_Validation">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s32">Column</col>
		<col def="s4">Nullable</col>
		<col def="I4">MinValue</col>
		<col def="I4">MaxValue</col>
		<col def="S255">KeyTable</col>
		<col def="I2">KeyColumn</col>
		<col def="S32">Category</col>
		<col def="S255">Set</col>
		<col def="S255">Description</col>
		<row><td>ActionText</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to be described.</td></row>
		<row><td>ActionText</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description displayed in progress dialog and log when action is executing.</td></row>
		<row><td>ActionText</td><td>Template</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Optional localized format template used to format action data records for display during action execution.</td></row>
		<row><td>AdminExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdminUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AppId</td><td>ActivateAtStorage</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>AppId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td/></row>
		<row><td>AppId</td><td>DllSurrogate</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>LocalService</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>RemoteServerName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>AppId</td><td>RunAsInteractiveUser</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>ServiceParameters</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppSearch</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The property associated with a Signature</td></row>
		<row><td>AppSearch</td><td>Signature_</td><td>N</td><td/><td/><td>ISXmlLocator;Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>BBControl</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>BBControl</td><td>BBControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a billboard, but can repeat on different billboard.</td></row>
		<row><td>BBControl</td><td>Billboard_</td><td>N</td><td/><td/><td>Billboard</td><td>1</td><td>Identifier</td><td/><td>External key to the Billboard table, name of the billboard.</td></row>
		<row><td>BBControl</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>BBControl</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>BBControl</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Billboard</td><td>Action</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of an action. The billboard is displayed during the progress messages received from this action.</td></row>
		<row><td>Billboard</td><td>Billboard</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the billboard.</td></row>
		<row><td>Billboard</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>An external key to the Feature Table. The billboard is shown only if this feature is being installed.</td></row>
		<row><td>Billboard</td><td>Ordering</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>A positive integer. If there is more than one billboard corresponding to an action they will be shown in the order defined by this column.</td></row>
		<row><td>Binary</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Binary</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Binary</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the binary data.</td></row>
		<row><td>BindImage</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>The index into the File table. This must be an executable file.</td></row>
		<row><td>BindImage</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Paths</td><td/><td>A list of ;  delimited paths that represent the paths to be searched for the import DLLS. The list is usually a list of properties each enclosed within square brackets [] .</td></row>
		<row><td>CCPSearch</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>CheckBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to the item.</td></row>
		<row><td>CheckBox</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with the item.</td></row>
		<row><td>Class</td><td>AppId_</td><td>Y</td><td/><td/><td>AppId</td><td>1</td><td>Guid</td><td/><td>Optional AppID containing DCOM information for associated application (string GUID).</td></row>
		<row><td>Class</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>optional argument for LocalServers.</td></row>
		<row><td>Class</td><td>Attributes</td><td>Y</td><td/><td>32767</td><td/><td/><td/><td/><td>Class registration attributes.</td></row>
		<row><td>Class</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The CLSID of an OLE factory.</td></row>
		<row><td>Class</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Class</td><td>Context</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The numeric server context for this server. CLSCTX_xxxx</td></row>
		<row><td>Class</td><td>DefInprocHandler</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td>1;2;3</td><td>Optional default inproc handler.  Only optionally provided if Context=CLSCTX_LOCAL_SERVER.  Typically "ole32.dll" or "mapi32.dll"</td></row>
		<row><td>Class</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Class.</td></row>
		<row><td>Class</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Class</td><td>FileTypeMask</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional string containing information for the HKCRthis CLSID) key. If multiple patterns exist, they must be delimited by a semicolon, and numeric subkeys will be generated: 0,1,2...</td></row>
		<row><td>Class</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>Class</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this CLSID. Will be written under the DefaultIcon key.</td></row>
		<row><td>Class</td><td>ProgId_Default</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this CLSID.</td></row>
		<row><td>ComboBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list.	The integers do not have to be consecutive.</td></row>
		<row><td>ComboBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same combobox.</td></row>
		<row><td>ComboBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ComboBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>CompLocator</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>CompLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>CompLocator</td><td>Type</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>A boolean value that determines if the registry value is a filename or a directory location.</td></row>
		<row><td>Complus</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the ComPlus component.</td></row>
		<row><td>Complus</td><td>ExpType</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>ComPlus component attributes.</td></row>
		<row><td>Component</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Remote execution option, one of irsEnum</td></row>
		<row><td>Component</td><td>Component</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>Component</td><td>ComponentId</td><td>Y</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>Component</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this component if the specified condition evaluates to the 'True' state. If a component is disabled, it will not be installed, regardless of the 'Action' state associated with the component.</td></row>
		<row><td>Component</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Required key of a Directory table record. This is actually a property name whose value contains the actual path, set either by the AppSearch action or with the default setting obtained from the Directory table.</td></row>
		<row><td>Component</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component.</td></row>
		<row><td>Component</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsCommit</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsInstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsRollback</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsUninstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISRegFileToMergeAtBuild</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path and File name of a .REG file to merge into the component at build time.</td></row>
		<row><td>Component</td><td>ISScanAtBuildFile</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File used by the Dot Net scanner to populate dependant assemblies' File_Application field.</td></row>
		<row><td>Component</td><td>KeyPath</td><td>Y</td><td/><td/><td>File;ODBCDataSource;Registry</td><td>1</td><td>Identifier</td><td/><td>Either the primary key into the File table, Registry table, or ODBCDataSource table. This extract path is stored when the component is installed, and is used to detect the presence of the component and to return the path to it.</td></row>
		<row><td>Condition</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression evaluated to determine if Level in the Feature table is to change.</td></row>
		<row><td>Condition</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Reference to a Feature entry in Feature table.</td></row>
		<row><td>Condition</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>New selection Level to set in Feature table if Condition evaluates to TRUE.</td></row>
		<row><td>Control</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>Control</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>Control</td><td>Control</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>Control</td><td>Control_Next</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>The name of an other control on the same dialog. This link defines the tab order of the controls. The links have to form one or more cycles!</td></row>
		<row><td>Control</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>Control</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>Control</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>Control</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>Control</td><td>ISWindowStyle</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control.</td></row>
		<row><td>Control</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of a defined property to be linked to this control.</td></row>
		<row><td>Control</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>Control</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>Control</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ControlCondition</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>Default;Disable;Enable;Hide;Show</td><td>The desired action to be taken on the specified control.</td></row>
		<row><td>ControlCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions the action should be triggered.</td></row>
		<row><td>ControlCondition</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>ControlCondition</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Argument</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A value to be used as a modifier when triggering a particular event.</td></row>
		<row><td>ControlEvent</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions an event should be triggered.</td></row>
		<row><td>ControlEvent</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control</td></row>
		<row><td>ControlEvent</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>An identifier that specifies the type of the event that should take place when the user interacts with control specified by the first two entries.</td></row>
		<row><td>ControlEvent</td><td>Ordering</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>An integer used to order several events tied to the same control. Can be left blank.</td></row>
		<row><td>CreateFolder</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>CreateFolder</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Primary key, could be foreign key into the Directory table.</td></row>
		<row><td>CustomAction</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, name of action, normally appears in sequence table unless private use.</td></row>
		<row><td>CustomAction</td><td>ExtendedType</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The numeric custom action type info flags.</td></row>
		<row><td>CustomAction</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this custom action.</td></row>
		<row><td>CustomAction</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>CustomSource</td><td/><td>The table reference of the source of the code.</td></row>
		<row><td>CustomAction</td><td>Target</td><td>Y</td><td/><td/><td>ISDLLWrapper;ISInstallScriptAction</td><td>1</td><td>Formatted</td><td/><td>Excecution parameter, depends on the type of custom action</td></row>
		<row><td>CustomAction</td><td>Type</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>The numeric custom action type, consisting of source location, code type, entry, option flags.</td></row>
		<row><td>Dialog</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>Dialog</td><td>Control_Cancel</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the cancel control. Hitting escape or clicking on the close icon on the dialog is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_Default</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the default control. Hitting return is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_First</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the control that has the focus when the dialog is created.</td></row>
		<row><td>Dialog</td><td>Dialog</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>Dialog</td><td>HCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Horizontal position of the dialog on a 0-100 scale. 0 means left end, 100 means right end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>Dialog</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this dialog.</td></row>
		<row><td>Dialog</td><td>ISResourceId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A Number the Specifies the Dialog ID to be used in Dialog Export</td></row>
		<row><td>Dialog</td><td>ISWindowStyle</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control. This is only used in Script Based Setups.</td></row>
		<row><td>Dialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>Dialog</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A text string specifying the title to be displayed in the title bar of the dialog's window.</td></row>
		<row><td>Dialog</td><td>VCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Vertical position of the dialog on a 0-100 scale. 0 means top end, 100 means bottom end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>Directory</td><td>DefaultDir</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The default sub-path under parent's path.</td></row>
		<row><td>Directory</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for directory entry, primary key. If a property by this name is defined, it contains the full path to the directory.</td></row>
		<row><td>Directory</td><td>Directory_Parent</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Reference to the entry in this table specifying the default parent directory. A record parented to itself or with a Null parent represents a root of the install tree.</td></row>
		<row><td>Directory</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7</td><td>This is used to store Installshield custom properties of a directory.  Currently the only one is Shortcut.</td></row>
		<row><td>Directory</td><td>ISDescription</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of folder</td></row>
		<row><td>Directory</td><td>ISFolderName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is used in Pro projects because the pro identifier used in the tree wasn't necessarily unique.</td></row>
		<row><td>DrLocator</td><td>Depth</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The depth below the path to which the Signature_ is recursively searched. If absent, the depth is assumed to be 0.</td></row>
		<row><td>DrLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table. If null and the Path column does not expand to a full path, then all the fixed drives of the user system are searched using the Path.</td></row>
		<row><td>DrLocator</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>AnyPath</td><td/><td>The path on the user system. This is a either a subpath below the value of the Parent or a full path. The path may contain properties enclosed within [ ] that will be expanded.</td></row>
		<row><td>DrLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>DuplicateFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>DestFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to a destination folder.</td></row>
		<row><td>DuplicateFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename to be given to the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>DuplicateFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing the source file to be duplicated.</td></row>
		<row><td>Environment</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the environmental value.</td></row>
		<row><td>Environment</td><td>Environment</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the environmental variable setting</td></row>
		<row><td>Environment</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the environmental value.</td></row>
		<row><td>Environment</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to set in the environmental settings.</td></row>
		<row><td>Error</td><td>Error</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer error number, obtained from header file IError(...) macros.</td></row>
		<row><td>Error</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Error formatting template, obtained from user ed. or localizers.</td></row>
		<row><td>EventMapping</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of the control attribute, that is set when this event is received.</td></row>
		<row><td>EventMapping</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>EventMapping</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the Dialog.</td></row>
		<row><td>EventMapping</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>An identifier that specifies the type of the event that the control subscribes to.</td></row>
		<row><td>Extension</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Extension</td><td>Extension</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Extension</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Extension</td><td>MIME_</td><td>Y</td><td/><td/><td>MIME</td><td>1</td><td>Text</td><td/><td>Optional Context identifier, typically "type/format" associated with the extension</td></row>
		<row><td>Extension</td><td>ProgId_</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this extension.</td></row>
		<row><td>Feature</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2;4;5;6;8;9;10;16;17;18;20;21;22;24;25;26;32;33;34;36;37;38;48;49;50;52;53;54</td><td>Feature attributes</td></row>
		<row><td>Feature</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>Feature</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>UpperCase</td><td/><td>The name of the Directory that can be configured by the UI. A non-null value will enable the browse button.</td></row>
		<row><td>Feature</td><td>Display</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>Feature</td><td>Feature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>Feature</td><td>Feature_Parent</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Optional key of a parent record in the same table. If the parent is not selected, then the record will not be installed. Null indicates a root item.</td></row>
		<row><td>Feature</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Comments</td></row>
		<row><td>Feature</td><td>ISFeatureCabName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Name of CAB used when compressing CABs by Feature. Used to override build generated name for CAB file.</td></row>
		<row><td>Feature</td><td>ISProFeatureName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the feature used by pro projects.  This doesn't have to be unique.</td></row>
		<row><td>Feature</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this  feature will be built in a particular release.</td></row>
		<row><td>Feature</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The install level at which record will be initially selected. An install level of 0 will disable an item and prevent its display.</td></row>
		<row><td>Feature</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Short text identifying a visible feature item.</td></row>
		<row><td>FeatureComponents</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>FeatureComponents</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>File</td><td>Attributes</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing file attributes (with the decimal value of each bit position in parentheses)</td></row>
		<row><td>File</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>File</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token, must match identifier in cabinet.  For uncompressed files, this field is ignored.</td></row>
		<row><td>File</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>File name used for installation.  This may contain a "short name|long name" pair.  It may be just a long name, hence it cannot be of the Filename data type.</td></row>
		<row><td>File</td><td>FileSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>File</td><td>ISAttributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>This field contains the following attributes: UseSystemSettings(0x1)</td></row>
		<row><td>File</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>File</td><td>ISComponentSubFolder_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key referencing component subfolder containing this file.  Only for Pro.</td></row>
		<row><td>File</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>List of decimal language Ids, comma-separated if more than one.</td></row>
		<row><td>File</td><td>Sequence</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>File</td><td>Version</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Version</td><td/><td>Version string for versioned files;  Blank for unversioned files.</td></row>
		<row><td>FileSFPCatalog</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>File associated with the catalog</td></row>
		<row><td>FileSFPCatalog</td><td>SFPCatalog_</td><td>N</td><td/><td/><td>SFPCatalog</td><td>1</td><td>Text</td><td/><td>Catalog associated with the file</td></row>
		<row><td>Font</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing font file.</td></row>
		<row><td>Font</td><td>FontTitle</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Font name.</td></row>
		<row><td>ISAssistantTag</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISAssistantTag</td><td>Tag</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Color</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Duration</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Effect</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Font</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>ISBillboard</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Origin</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Sequence</td><td>N</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Style</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Target</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the chained package. Used only in the IDE.</td></row>
		<row><td>ISChainPackage</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Options</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Package</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>ProductCode</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>SourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>ISChainPackageData</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>ISChainPackageData</td><td>Options</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Package_</td><td>N</td><td/><td/><td>ISChainPackage</td><td>1</td><td>Identifier</td><td/><td/></row>
		<row><td>ISClrWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISClrWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISClrWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISComCatalogAttribute</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The named attribute for a catalog object.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A value associated with the attribute defined in the ItemName column.</td></row>
		<row><td>ISComCatalogCollection</td><td>CollectionName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A catalog collection name.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogCollection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogCollection_</td><td>N</td><td/><td/><td>ISComCatalogCollection</td><td>1</td><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogObject</td><td>DisplayName</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The display name of a catalog object.</td></row>
		<row><td>ISComCatalogObject</td><td>ISComCatalogObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplication</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>ComputerName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Computer name that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusApplication</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application.</td></row>
		<row><td>ISComPlusApplication</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>AlterDLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Alternate filename of the COM+ application component. Will be used for a .NET serviced component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>CLSID of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>DLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplicationDLL</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ProgId</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ProgId of the COM+ application component.</td></row>
		<row><td>ISComPlusProxy</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusProxy</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application proxy.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusProxy</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusProxy table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusProxyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusServerFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComponentExtended</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>ISComponentExtended</td><td>FTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>FTP Location</td></row>
		<row><td>ISComponentExtended</td><td>FilterProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property to set if you want to filter a component</td></row>
		<row><td>ISComponentExtended</td><td>HTTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HTTP Location</td></row>
		<row><td>ISComponentExtended</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Language</td></row>
		<row><td>ISComponentExtended</td><td>Miscellaneous</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Miscellaneous</td></row>
		<row><td>ISComponentExtended</td><td>OS</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of OSs</td></row>
		<row><td>ISComponentExtended</td><td>Platforms</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of Platforms.</td></row>
		<row><td>ISCustomActionReference</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into theICustomAction table.</td></row>
		<row><td>ISCustomActionReference</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Contents of the file speciifed in ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>FileType</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>file type of the file specified  ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>ISCAReferenceFilePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.  This column only exists in ISM.</td></row>
		<row><td>ISDIMDependency</td><td>ISDIMReference_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMDependency table</td></row>
		<row><td>ISDIMDependency</td><td>RequiredBuildVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the build version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMajorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the major version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMinorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the minor version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredRevisionVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the revision version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredUUID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>the UUID identifying the required DIM</td></row>
		<row><td>ISDIMReference</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISDIMReference</td><td>ISDIMReference</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>This is the primary key to the ISDIMReference table</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMDependency_</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMDependency table.</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMReference_Parent</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMVariable</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMVariable table</td></row>
		<row><td>ISDIMVariable</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of a variable defined in the .dim file</td></row>
		<row><td>ISDIMVariable</td><td>NewValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>New value that you want to override with</td></row>
		<row><td>ISDIMVariable</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type of the variable. 0: Build Variable, 1: Runtime Variable</td></row>
		<row><td>ISDLLWrapper</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISDLLWrapper</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISDLLWrapper</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISDLLWrapper</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISDRMFile</td><td>File_</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table.  A null value will cause a build warning.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for this item.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMLicense_</td><td>Y</td><td/><td/><td>ISDRMLicense</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing License that packages this file.</td></row>
		<row><td>ISDRMFile</td><td>Shell</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text indicating the activation shell used at runtime.</td></row>
		<row><td>ISDRMFileAttribute</td><td>ISDRMFile_</td><td>N</td><td/><td/><td>ISDRMFile</td><td>1</td><td>Identifier</td><td/><td>Primary foreign key into ISDRMFile table.</td></row>
		<row><td>ISDRMFileAttribute</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the attribute</td></row>
		<row><td>ISDRMFileAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the attribute</td></row>
		<row><td>ISDRMLicense</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Bitwise field used to specify binary attributes of this license.</td></row>
		<row><td>ISDRMLicense</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>An internal description of this license.</td></row>
		<row><td>ISDRMLicense</td><td>ISDRMLicense</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the license record.</td></row>
		<row><td>ISDRMLicense</td><td>LicenseNumber</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The license number.</td></row>
		<row><td>ISDRMLicense</td><td>ProjectVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The version of the project that this license is tied to.</td></row>
		<row><td>ISDRMLicense</td><td>RequestCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The request code.</td></row>
		<row><td>ISDRMLicense</td><td>ResponseCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The response code.</td></row>
		<row><td>ISDependency</td><td>Exclude</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDependency</td><td>ISDependency</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDisk1File</td><td>Disk</td><td>Y</td><td/><td/><td/><td/><td/><td>-1;0;1</td><td>Used to differentiate between disk1(1), last disk(-1), and other(0).</td></row>
		<row><td>ISDisk1File</td><td>ISBuildSourcePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of file to be copied to Disk1 folder</td></row>
		<row><td>ISDisk1File</td><td>ISDisk1File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for ISDisk1File table</td></row>
		<row><td>ISDynamicFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>ISDynamicFile</td><td>ExcludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for excluded files.</td></row>
		<row><td>ISDynamicFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15</td><td>This is used to store Installshield custom properties of a dynamic filet.  Currently the only one is SelfRegister.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for included files.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Include flags.</td></row>
		<row><td>ISDynamicFile</td><td>SourceFolder</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Feature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>ModuleID</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>ISSetupPrerequisites_</td><td>N</td><td/><td/><td>ISSetupPrerequisites</td><td>1</td><td/><td/><td/></row>
		<row><td>ISFileManifests</td><td>File_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISFileManifests</td><td>Manifest_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISIISItem</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key to Component table.</td></row>
		<row><td>ISIISItem</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable Item Name.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for each item.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem_Parent</td><td>Y</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>This record's parent record.</td></row>
		<row><td>ISIISItem</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td/><td>IIS resource type.</td></row>
		<row><td>ISIISProperty</td><td>FriendlyName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property name.</td></row>
		<row><td>ISIISProperty</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Flags.</td></row>
		<row><td>ISIISProperty</td><td>ISIISItem_</td><td>N</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>Primary key for table, foreign key into ISIISItem.</td></row>
		<row><td>ISIISProperty</td><td>ISIISProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for table.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property attributes.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataProp</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property ID.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataUserType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property user data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property value.</td></row>
		<row><td>ISIISProperty</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Order sequencing.</td></row>
		<row><td>ISIISProperty</td><td>Schema</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS7 schema information.</td></row>
		<row><td>ISInstallScriptAction</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISInstallScriptAction</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISInstallScriptAction</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISInstallScriptAction</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISLanguage</td><td>ISLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the language ID.</td></row>
		<row><td>ISLanguage</td><td>Included</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1</td><td>Specify whether this language should be included.</td></row>
		<row><td>ISLinkerLibrary</td><td>ISLinkerLibrary</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the link library.</td></row>
		<row><td>ISLinkerLibrary</td><td>Library</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the object library (.obl file).</td></row>
		<row><td>ISLinkerLibrary</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Order of the Library</td></row>
		<row><td>ISLocalControl</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>ISLocalControl</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>ISLocalControl</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>ISLocalControl</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>ISLocalControl</td><td>Height</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>ISLocalControl</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalControl</td><td>Width</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>X</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>Y</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalDialog</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Dialog_</td><td>Y</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>ISLanguage_</td><td>Y</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalDialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>ISLocalDialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalRadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalRadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td>RadioButton</td><td>2</td><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ISLocalRadioButton</td><td>Property</td><td>N</td><td/><td/><td>RadioButton</td><td>1</td><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>ISLocalRadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLocalRadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLockPermissions</td><td>Attributes</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permissions attributes mask, 1==Deny access; 2==No inherit, 4==Ignore apply failures, 8==Target object is 64-bit</td></row>
		<row><td>ISLockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set.</td></row>
		<row><td>ISLockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into CreateFolder, Registry, or File table</td></row>
		<row><td>ISLockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.</td></row>
		<row><td>ISLockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>ISLockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set. This can be a property, hardcoded named, or SID string</td></row>
		<row><td>ISLogicalDisk</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>ISLogicalDisk</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDisk</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDisk</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>ISLogicalDisk</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>ISLogicalDisk</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Feature_</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table,</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties, like Compressed, etc.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISLogicalDisk_</td><td>N</td><td>1</td><td>32767</td><td>ISLogicalDisk</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISLogicalDisk table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the file for this media.</td></row>
		<row><td>ISMergeModule</td><td>Destination</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Destination.</td></row>
		<row><td>ISMergeModule</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a merge module.</td></row>
		<row><td>ISMergeModule</td><td>ISMergeModule</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The GUID identifying the merge module.</td></row>
		<row><td>ISMergeModule</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModule</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the merge module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Attributes (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ContextData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ContextData  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DefaultValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DefaultValue  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DisplayName (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Format</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Format (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpKeyword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpKeyword (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpLocation (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>The module signature, a foreign key into the ISMergeModule table</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ModuleConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Identifier, foreign key into ModuleConfiguration table (ModuleConfiguration.Name)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Type (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for this item.</td></row>
		<row><td>ISObject</td><td>Language</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObject</td><td>ObjectName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>IncludeInBuild</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Boolean, 0 for false non 0 for true</td></row>
		<row><td>ISObjectProperty</td><td>ObjectName</td><td>Y</td><td/><td/><td>ISObject</td><td>1</td><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISPatchConfigImage</td><td>PatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfigurationTable</td></row>
		<row><td>ISPatchConfigImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISUpgradedImageTable</td></row>
		<row><td>ISPatchConfiguration</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>PatchConfiguration attributes</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPCDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether Product Codes may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPVDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether the Major Product Version may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>EnablePatchCache</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Enable Patch cacheing</td></row>
		<row><td>ISPatchConfiguration</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Patching API Flags</td></row>
		<row><td>ISPatchConfiguration</td><td>IncludeWholeFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to build a binary level patch</td></row>
		<row><td>ISPatchConfiguration</td><td>LeaveDecompressed</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to leave intermediate files devcompressed when finished</td></row>
		<row><td>ISPatchConfiguration</td><td>MinMsiVersion</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Minimum Required MSI Version</td></row>
		<row><td>ISPatchConfiguration</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfiguration</td><td>OptimizeForSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Optimize for large files</td></row>
		<row><td>ISPatchConfiguration</td><td>OutputPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Location</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchCacheDir</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to recieve the Patch Cache information</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuid</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Unique Patch Identifier</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuidsToReplace</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of Patch Guids to unregister</td></row>
		<row><td>ISPatchConfiguration</td><td>TargetProductCodes</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of target Product Codes</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>ISPatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration Property value</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the Patch Configuration Property</td></row>
		<row><td>ISPatchExternalFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filekey</td></row>
		<row><td>ISPatchExternalFile</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filepath</td></row>
		<row><td>ISPatchExternalFile</td><td>ISUpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the isupgraded image table</td></row>
		<row><td>ISPatchExternalFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Uniqu name to identify this record.</td></row>
		<row><td>ISPatchWholeFile</td><td>Component</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Component containing file key</td></row>
		<row><td>ISPatchWholeFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key of file to be included as whole</td></row>
		<row><td>ISPatchWholeFile</td><td>UpgradedImage</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to ISUpgradedImage Table</td></row>
		<row><td>ISPathVariable</td><td>ISPathVariable</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The name of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>TestValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The test value of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4;8</td><td>The type of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the path variable.</td></row>
		<row><td>ISPowerShellWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISPowerShellWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISPowerShellWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISProductConfiguration</td><td>GeneratePackageCode</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td>0;1</td><td>Indicates whether or not to generate a package code.</td></row>
		<row><td>ISProductConfiguration</td><td>ISProductConfiguration</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the product configuration.</td></row>
		<row><td>ISProductConfiguration</td><td>ProductConfigurationFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Product configuration (release) flags.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>InstanceId</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Identifies the instance number of this instance. This value is stored in the Property InstanceId.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Property</td><td>N</td><td/><td/><td>Property</td><td>1</td><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property. Never null or empty.</td></row>
		<row><td>ISRelease</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISRelease</td><td>BuildLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build location.</td></row>
		<row><td>ISRelease</td><td>CDBrowser</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Demoshield browser location.</td></row>
		<row><td>ISRelease</td><td>DefaultLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Default language for setup.</td></row>
		<row><td>ISRelease</td><td>DigitalPVK</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing private key (.pvk) file.</td></row>
		<row><td>ISRelease</td><td>DigitalSPC</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing Software Publisher Certificate (.spc) file.</td></row>
		<row><td>ISRelease</td><td>DigitalURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing URL.</td></row>
		<row><td>ISRelease</td><td>DiskClusterSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Disk cluster size.</td></row>
		<row><td>ISRelease</td><td>DiskSize</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk size.</td></row>
		<row><td>ISRelease</td><td>DiskSizeUnit</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk size units (KB or MB).</td></row>
		<row><td>ISRelease</td><td>DiskSpanning</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk spanning (automatic, enforce size, etc.).</td></row>
		<row><td>ISRelease</td><td>DotNetBuildConfiguration</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Configuration for .NET solutions.</td></row>
		<row><td>ISRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISRelease</td><td>ISRelease</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISRelease</td><td>ISSetupPrerequisiteLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3</td><td>Location the Setup Prerequisites will be placed in</td></row>
		<row><td>ISRelease</td><td>MediaLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location on disk.</td></row>
		<row><td>ISRelease</td><td>MsiCommandLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command line passed to the msi package from setup.exe</td></row>
		<row><td>ISRelease</td><td>MsiSourceType</td><td>N</td><td>-1</td><td>4</td><td/><td/><td/><td/><td>MSI media source type.</td></row>
		<row><td>ISRelease</td><td>PackageName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Package name.</td></row>
		<row><td>ISRelease</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password.</td></row>
		<row><td>ISRelease</td><td>Platforms</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Platforms supported (Intel, Alpha, etc.).</td></row>
		<row><td>ISRelease</td><td>ReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Release flags.</td></row>
		<row><td>ISRelease</td><td>ReleaseType</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4</td><td>Release type (single, uncompressed, etc.).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Languages supported (for component filtering).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesUI</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>UI languages supported.</td></row>
		<row><td>ISRelease</td><td>SupportedOSs</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Indicate which operating systmes are supported.</td></row>
		<row><td>ISRelease</td><td>SynchMsi</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>MSI file to synchronize file keys and other data with (patch-like functionality).</td></row>
		<row><td>ISRelease</td><td>Type</td><td>N</td><td>0</td><td>6</td><td/><td/><td/><td/><td>Release type (CDROM, Network, etc.).</td></row>
		<row><td>ISRelease</td><td>URLLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location via URL.</td></row>
		<row><td>ISRelease</td><td>VersionCopyright</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Version stamp information.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property name</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property value</td></row>
		<row><td>ISReleaseExtended</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISReleaseExtended</td><td>CertPassword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital certificate password</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateDBaseNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate database for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateIdNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate ID for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificatePasswordNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetBaseLanguage</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Base Languge of .NET Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetFxCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to DotNetFx.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangPackCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to LangPack.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangaugePacks</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>.NET Redist language packs to include</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of .NET framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .NET framework Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetVersion</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Version of .NET framework Redist (1.0, 1.1)</td></row>
		<row><td>ISReleaseExtended</td><td>EngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of msi engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of ISScript  engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to InstallShield scripting engine</td></row>
		<row><td>ISReleaseExtended</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseExtended</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to vjredist.exe</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of J# framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>MsiEngineVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding selected MSI engine versions included in this release</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickCabName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickHtmlName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated html page</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickTargetBrowser</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Target browser (IE, Netscape, both...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebCabSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of the cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>WebLocalCachePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to cache downloaded package</td></row>
		<row><td>ISReleaseExtended</td><td>WebType</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Type of web install (One Executable, Downloader...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .msi package</td></row>
		<row><td>ISReleaseExtended</td><td>Win9xMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Ansi MSI engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinMsi30Url</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to MSI 3.0 engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinNTMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Unicode MSI engine</td></row>
		<row><td>ISReleaseProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISReleaseProperty</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISReleaseProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISReleaseProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISReleasePublishInfo</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item description</td></row>
		<row><td>ISReleasePublishInfo</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item display name</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding various attributes</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleasePublishInfo</td><td>Publisher</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item publisher</td></row>
		<row><td>ISReleasePublishInfo</td><td>Repository</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository which to  publish the built merge module</td></row>
		<row><td>ISSQLConnection</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>BatchSeparator</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>CmdTimeout</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Database</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ISSQLConnection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnection record.</td></row>
		<row><td>ISSQLConnection</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Password</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Server</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>UserName</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnectionDBServer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnectionDBServer record.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLDBMetaData_</td><td>N</td><td/><td/><td>ISSQLDBMetaData</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLDBMetaData table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnAdditional</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDatabase</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDriver</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnNetLibrary</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPassword</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPort</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnServer</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnUserID</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnWindowsSecurity</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoDriverName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DsnODBCName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISSQLDBMetaData</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLDBMetaData record.</td></row>
		<row><td>ISSQLDBMetaData</td><td>InsertRecordCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>LocalInstanceNames</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>QueryDatabasesCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_ColumnType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SelectTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SwitchDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestDatabaseCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd2</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionBeginToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionEndToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionInfoCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>WinAuthentUserId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnectionDBServer_</td><td>Y</td><td/><td/><td>ISSQLConnectionDBServer</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnectionDBServer table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLRequirement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLRequirement record.</td></row>
		<row><td>ISSQLRequirement</td><td>MajorVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ServicePackLevel</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrNumber</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ISSQLScriptFile_</td><td>Y</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptError</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Custom end-user message. Reserved for future use.</td></row>
		<row><td>ISSQLScriptFile</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comments</td></row>
		<row><td>ISSQLScriptFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the SQL script.</td></row>
		<row><td>ISSQLScriptFile</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this script if the specified condition evaluates to the 'False' state. If a script is disabled, it will not be installed regardless of the 'Action' state associated with the component.</td></row>
		<row><td>ISSQLScriptFile</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the SQL script file.</td></row>
		<row><td>ISSQLScriptFile</td><td>ErrorHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISSQLScriptFile</td><td>ISSQLScriptFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptFile</td><td>InstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at install</td></row>
		<row><td>ISSQLScriptFile</td><td>Scheduling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>UninstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at Uninstall</td></row>
		<row><td>ISSQLScriptFile</td><td>Version</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Schema Version (#####.#####.#####.#####)</td></row>
		<row><td>ISSQLScriptImport</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Database</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ExcludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptImport</td><td>IncludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Server</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>UserName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptReplace</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLScriptReplace record.</td></row>
		<row><td>ISSQLScriptReplace</td><td>Replace</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Search</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISScriptFile</td><td>ISScriptFile</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the full path of the script file. The path portion may be expressed in path variable form.</td></row>
		<row><td>ISSelfReg</td><td>CmdLine</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>Cost</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>FileKey</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key to the file table</td></row>
		<row><td>ISSelfReg</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the file name to use when streaming the file to the support files location</td></row>
		<row><td>ISSetupFile</td><td>ISSetupFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSetupFile table</td></row>
		<row><td>ISSetupFile</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Four digit language identifier.  0 for Language Neutral</td></row>
		<row><td>ISSetupFile</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Link to the source file on the build machine</td></row>
		<row><td>ISSetupFile</td><td>Splash</td><td>Y</td><td/><td/><td/><td/><td>Short</td><td/><td>Boolean value indication whether his setup file entry belongs in the Splasc Screen section</td></row>
		<row><td>ISSetupFile</td><td>Stream</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The bits to stream to the support location</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this prereq  will be included in a particular release.</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupPrerequisites</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupType</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>ISSetupType</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>ISSetupType</td><td>Display</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>ISSetupType</td><td>Display_Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>ISSetupType</td><td>ISSetupType</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>ISSetupType_</td><td>N</td><td/><td/><td>ISSetupType</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSetupType table.</td></row>
		<row><td>ISStorages</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Path to the file to stream into sub-storage</td></row>
		<row><td>ISStorages</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Name of the sub-storage key</td></row>
		<row><td>ISString</td><td>Comment</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comment</td></row>
		<row><td>ISString</td><td>Encoded</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Encoding for multi-byte strings.</td></row>
		<row><td>ISString</td><td>ISLanguage_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISString</td><td>ISString</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String id.</td></row>
		<row><td>ISString</td><td>TimeStamp</td><td>Y</td><td/><td/><td/><td/><td>Time/Date</td><td/><td>Time Stamp. MSI's Time/Date column type is just an int, with bits packed in a certain order.</td></row>
		<row><td>ISString</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>real string value.</td></row>
		<row><td>ISSwidtagProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISSwidtagProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property value</td></row>
		<row><td>ISTargetImage</td><td>Flags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>IgnoreMissingFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>If true, ignore missing source files when creating patch</td></row>
		<row><td>ISTargetImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the target image</td></row>
		<row><td>ISTargetImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the TargetImage</td></row>
		<row><td>ISTargetImage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>foreign key to the upgraded Image table</td></row>
		<row><td>ISUpgradeMsiItem</td><td>ISAttributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1</td><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ObjectSetupPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The path to the setup you want to upgrade.</td></row>
		<row><td>ISUpgradeMsiItem</td><td>UpgradeItem</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the Upgrade Item.</td></row>
		<row><td>ISUpgradedImage</td><td>Family</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the image family</td></row>
		<row><td>ISUpgradedImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the upgraded image</td></row>
		<row><td>ISUpgradedImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the UpgradedImage</td></row>
		<row><td>ISVirtualDirectory</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISVirtualDirectory</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualDirectory</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File  table.</td></row>
		<row><td>ISVirtualFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualPackage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualPackage</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRegistry</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualRegistry</td><td>Registry_</td><td>N</td><td/><td/><td>Registry</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Registry table.</td></row>
		<row><td>ISVirtualRegistry</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISVirtualRelease</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISVirtualRelease</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISVirtualRelease</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualShortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualShortcut</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Shortcut table.</td></row>
		<row><td>ISVirtualShortcut</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISXmlElement</td><td>Content</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Element contents</td></row>
		<row><td>ISXmlElement</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML element attributes</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement_Parent</td><td>Y</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElement</td><td>ISXmlFile_</td><td>N</td><td/><td/><td>ISXmlFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into XmlFile table.</td></row>
		<row><td>ISXmlElement</td><td>XPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XPath fragment including any operators</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML elementattib attributes</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElementAttrib</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element attribute</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElement_</td><td>N</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElementAttrib</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute name</td></row>
		<row><td>ISXmlElementAttrib</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute value</td></row>
		<row><td>ISXmlFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>ISXmlFile</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISXmlFile</td><td>Encoding</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XML File Encoding</td></row>
		<row><td>ISXmlFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized XML file name</td></row>
		<row><td>ISXmlFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML file attributes</td></row>
		<row><td>ISXmlFile</td><td>ISXmlFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized,internal token for Xml file</td></row>
		<row><td>ISXmlFile</td><td>SelectionNamespaces</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Selection namespaces</td></row>
		<row><td>ISXmlLocator</td><td>Attribute</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>The name of an attribute within the XML element.</td></row>
		<row><td>ISXmlLocator</td><td>Element</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>XPath query that will locate an element in an XML file.</td></row>
		<row><td>ISXmlLocator</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISXmlLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table.</td></row>
		<row><td>ISXmlLocator</td><td>Signature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, ISXmlLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>Icon</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Icon</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Icon</td><td>ISIconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index to be extracted.</td></row>
		<row><td>Icon</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key. Name of the icon file.</td></row>
		<row><td>IniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;3</td><td>The type of modification to be made, one of iifEnum</td></row>
		<row><td>IniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the .INI value.</td></row>
		<row><td>IniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>IniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to write the information</td></row>
		<row><td>IniFile</td><td>IniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>IniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>IniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>IniFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be written.</td></row>
		<row><td>IniLocator</td><td>Field</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The field in the .INI line. If Field is null or 0 the entire line is read.</td></row>
		<row><td>IniLocator</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name.</td></row>
		<row><td>IniLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key value (followed by an equals sign in INI file).</td></row>
		<row><td>IniLocator</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Section name within in file (within square brackets in INI file).</td></row>
		<row><td>IniLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>IniLocator</td><td>Type</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>An integer value that determines if the .INI value read is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>InstallExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>InstallShield</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>InstallShield</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>InstallUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>IsolatedComponent</td><td>Component_Application</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item for application</td></row>
		<row><td>IsolatedComponent</td><td>Component_Shared</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item to be isolated</td></row>
		<row><td>LaunchCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression which must evaluate to TRUE in order for install to commence.</td></row>
		<row><td>LaunchCondition</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable text to display when condition fails and install must abort.</td></row>
		<row><td>ListBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listbox.</td></row>
		<row><td>ListBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>ListView</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>The name of the icon to be displayed with the icon. The binary information is looked up from the Binary Table.</td></row>
		<row><td>ListView</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListView</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listview.</td></row>
		<row><td>ListView</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListView</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>LockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set. (usually a property)</td></row>
		<row><td>LockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry or File table</td></row>
		<row><td>LockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.  Full Control = 268435456 (GENERIC_ALL = 0x10000000)</td></row>
		<row><td>LockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>Directory;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>LockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set.  (usually a property)</td></row>
		<row><td>MIME</td><td>CLSID</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>Optional associated CLSID.</td></row>
		<row><td>MIME</td><td>ContentType</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Primary key. Context identifier, typically "type/format".</td></row>
		<row><td>MIME</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>Optional associated extension (without dot)</td></row>
		<row><td>Media</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>Media</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>Media</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>Media</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>Media</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>Media</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>MoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>If this component is not "selected" for installation or removal, no action will be taken on the associated MoveFile entry</td></row>
		<row><td>MoveFile</td><td>DestFolder</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>MoveFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name to be given to the original file after it is moved or copied.  If blank, the destination file will be given the same name as the source file</td></row>
		<row><td>MoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular MoveFile record</td></row>
		<row><td>MoveFile</td><td>Options</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Integer value specifying the MoveFile operating mode, one of imfoEnum</td></row>
		<row><td>MoveFile</td><td>SourceFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the source directory</td></row>
		<row><td>MoveFile</td><td>SourceName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the source file(s) to be moved or copied.  Can contain the '*' or '?' wildcards.</td></row>
		<row><td>MsiAssembly</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Assembly attributes</td></row>
		<row><td>MsiAssembly</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssembly</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>MsiAssembly</td><td>File_Application</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table, denoting the application context for private assemblies. Null for global assemblies.</td></row>
		<row><td>MsiAssembly</td><td>File_Manifest</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the manifest file for the assembly.</td></row>
		<row><td>MsiAssemblyName</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiAssemblyName</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiDigitalCertificate</td><td>CertData</td><td>N</td><td/><td/><td/><td/><td>Binary</td><td/><td>A certificate context blob for a signer certificate</td></row>
		<row><td>MsiDigitalCertificate</td><td>DigitalCertificate</td><td>N</td><td/><td/><td>MsiPackageCertificate</td><td>2</td><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiDigitalSignature</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>Foreign key to MsiDigitalCertificate table identifying the signer certificate</td></row>
		<row><td>MsiDigitalSignature</td><td>Hash</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>The encoded hash blob from the digital signature</td></row>
		<row><td>MsiDigitalSignature</td><td>SignObject</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key to Media table</td></row>
		<row><td>MsiDigitalSignature</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Reference to another table name (only Media table is supported)</td></row>
		<row><td>MsiDriverPackages</td><td>Component</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>MsiDriverPackages</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Driver package flags</td></row>
		<row><td>MsiDriverPackages</td><td>ReferenceComponents</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiDriverPackages</td><td>Sequence</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Installation sequence number</td></row>
		<row><td>MsiEmbeddedChainer</td><td>CommandLine</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>MsiEmbeddedChainer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>CustomSource</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Integer</td><td>2;18;50</td><td/></row>
		<row><td>MsiEmbeddedUI</td><td>Attributes</td><td>N</td><td>0</td><td>3</td><td/><td/><td>Integer</td><td/><td>Information about the data in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>This column contains binary information.</td></row>
		<row><td>MsiEmbeddedUI</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>The name of the file that receives the binary information in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>MsiEmbeddedUI</td><td>MessageFilter</td><td>Y</td><td>0</td><td>234913791</td><td/><td/><td>Integer</td><td/><td>Specifies the types of messages that are sent to the user interface DLL. This column is only relevant for rows with the msidbEmbeddedUI attribute.</td></row>
		<row><td>MsiEmbeddedUI</td><td>MsiEmbeddedUI</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The primary key for the table.</td></row>
		<row><td>MsiFileHash</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing file with this hash</td></row>
		<row><td>MsiFileHash</td><td>HashPart1</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart2</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart3</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart4</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>Options</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Various options and attributes for this hash.</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Expression which must evaluate to TRUE in order for this set of permissions to be applied</td></row>
		<row><td>MsiLockPermissionsEx</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry, File, CreateFolder, or ServiceInstall table</td></row>
		<row><td>MsiLockPermissionsEx</td><td>MsiLockPermissionsEx</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiLockPermissionsEx</td><td>SDDLText</td><td>N</td><td/><td/><td/><td/><td>FormattedSDDLText</td><td/><td>String to indicate permissions to be applied to the LockObject</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry;ServiceInstall</td><td>Reference to another table name</td></row>
		<row><td>MsiPackageCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPackageCertificate</td><td>PackageCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPatchCertificate</td><td>PatchCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchMetadata</td><td>Company</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional company name</td></row>
		<row><td>MsiPatchMetadata</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfiguration table</td></row>
		<row><td>MsiPatchMetadata</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the metadata</td></row>
		<row><td>MsiPatchMetadata</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the metadata</td></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>Assembly_</td><td>Y</td><td/><td/><td>MsiPatchOldAssemblyName</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Assembly</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchSequence</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the patch configuration table</td></row>
		<row><td>MsiPatchSequence</td><td>PatchFamily</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the family to which this patch belongs</td></row>
		<row><td>MsiPatchSequence</td><td>Sequence</td><td>N</td><td/><td/><td/><td/><td>Version</td><td/><td>The version of this patch in this family</td></row>
		<row><td>MsiPatchSequence</td><td>Supersede</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td>Supersede</td></row>
		<row><td>MsiPatchSequence</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Target product codes for this patch family</td></row>
		<row><td>MsiServiceConfig</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Argument(s) for service configuration. Value depends on the content of the ConfigType field</td></row>
		<row><td>MsiServiceConfig</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfig</td><td>ConfigType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Service Configuration Option</td></row>
		<row><td>MsiServiceConfig</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfig</td><td>MsiServiceConfig</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>MsiServiceConfig</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Actions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of integer actions separated by [~] delimiters: 0 = SC_ACTION_NONE, 1 = SC_ACTION_RESTART, 2 = SC_ACTION_REBOOT, 3 = SC_ACTION_RUN_COMMAND. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Command line of the process to CreateProcess function to execute</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>DelayActions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of delays (time in milli-seconds), separated by [~] delmiters, to wait before taking the corresponding Action. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>MsiServiceConfigFailureActions</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>RebootMessage</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Message to be broadcast to server users before rebooting</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>ResetPeriod</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Time in seconds after which to reset the failure count to zero. Leave blank if it should never be reset</td></row>
		<row><td>MsiShortcutProperty</td><td>MsiShortcutProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiShortcutProperty</td><td>PropVariantValue</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>String representation of the value in the property</td></row>
		<row><td>MsiShortcutProperty</td><td>PropertyKey</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Canonical string representation of the Property Key being set</td></row>
		<row><td>MsiShortcutProperty</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Shortcut table</td></row>
		<row><td>ODBCAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC driver attribute</td></row>
		<row><td>ODBCAttribute</td><td>Driver_</td><td>N</td><td/><td/><td>ODBCDriver</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC driver in ODBCDriver table</td></row>
		<row><td>ODBCAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC driver attribute</td></row>
		<row><td>ODBCDataSource</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDataSource</td><td>DataSource</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for data source</td></row>
		<row><td>ODBCDataSource</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for data source</td></row>
		<row><td>ODBCDataSource</td><td>DriverDescription</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Reference to driver description, may be existing driver</td></row>
		<row><td>ODBCDataSource</td><td>Registration</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Registration option: 0=machine, 1=user, others t.b.d.</td></row>
		<row><td>ODBCDriver</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDriver</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for driver, non-localized</td></row>
		<row><td>ODBCDriver</td><td>Driver</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for driver</td></row>
		<row><td>ODBCDriver</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key driver file</td></row>
		<row><td>ODBCDriver</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key driver setup DLL</td></row>
		<row><td>ODBCSourceAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC data source attribute</td></row>
		<row><td>ODBCSourceAttribute</td><td>DataSource_</td><td>N</td><td/><td/><td>ODBCDataSource</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC data source in ODBCDataSource table</td></row>
		<row><td>ODBCSourceAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC data source attribute</td></row>
		<row><td>ODBCTranslator</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCTranslator</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for translator</td></row>
		<row><td>ODBCTranslator</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key translator file</td></row>
		<row><td>ODBCTranslator</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key translator setup DLL</td></row>
		<row><td>ODBCTranslator</td><td>Translator</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for translator</td></row>
		<row><td>Patch</td><td>Attributes</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing patch attributes</td></row>
		<row><td>Patch</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, non-localized token, foreign key to File table, must match identifier in cabinet.</td></row>
		<row><td>Patch</td><td>Header</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The patch header, used for patch validation.</td></row>
		<row><td>Patch</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to patch header.</td></row>
		<row><td>Patch</td><td>PatchSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of patch in bytes (long integer).</td></row>
		<row><td>Patch</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Primary key, sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>Patch</td><td>StreamRef_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>External key into the MsiPatchHeaders table specifying the row that contains the patch header stream.</td></row>
		<row><td>PatchPackage</td><td>Media_</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Foreign key to DiskId column of Media table. Indicates the disk containing the patch package.</td></row>
		<row><td>PatchPackage</td><td>PatchId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A unique string GUID representing this patch.</td></row>
		<row><td>ProgId</td><td>Class_</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>The CLSID of an OLE factory corresponding to the ProgId.</td></row>
		<row><td>ProgId</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Program identifier.</td></row>
		<row><td>ProgId</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component, like ExtractIcon, etc.</td></row>
		<row><td>ProgId</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>ProgId</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this ProgId. Will be written under the DefaultIcon key.</td></row>
		<row><td>ProgId</td><td>ProgId</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The Program Identifier. Primary key.</td></row>
		<row><td>ProgId</td><td>ProgId_Parent</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>The Parent Program Identifier. If specified, the ProgId column becomes a version independent prog id.</td></row>
		<row><td>Property</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Property</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>Property</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>PublishComponent</td><td>AppData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is localisable Application specific data that can be associated with a Qualified Component.</td></row>
		<row><td>PublishComponent</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID that represents the component id that will be requested by the alien product.</td></row>
		<row><td>PublishComponent</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>PublishComponent</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Feature table.</td></row>
		<row><td>PublishComponent</td><td>Qualifier</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is defined only when the ComponentId column is an Qualified Component Id. This is the Qualifier for ProvideComponentIndirect.</td></row>
		<row><td>RadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>RadioButton</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>RadioButton</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>RadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>RadioButton</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>RadioButton</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible title to be assigned to the radio button.</td></row>
		<row><td>RadioButton</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this button. Selecting the button will set the associated property to this value.</td></row>
		<row><td>RadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>RadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RegLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RegLocator</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RegLocator</td><td>Root</td><td>N</td><td>0</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>RegLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table. If the type is 0, the registry values refers a directory, and _Signature is not a foreign key.</td></row>
		<row><td>RegLocator</td><td>Type</td><td>Y</td><td>0</td><td>18</td><td/><td/><td/><td/><td>An integer value that determines if the registry value is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>Registry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the registry value.</td></row>
		<row><td>Registry</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a registry item.  Currently the only one is Automatic.</td></row>
		<row><td>Registry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>Registry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>Registry</td><td>Registry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Registry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>Registry</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The registry value.</td></row>
		<row><td>RemoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>DirProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to the folder of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>RemoveFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>InstallMode</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;3</td><td>Installation option, one of iimEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>2;4</td><td>The type of modification to be made, one of iifEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the .INI value.</td></row>
		<row><td>RemoveIniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>RemoveIniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to delete the information</td></row>
		<row><td>RemoveIniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>RemoveIniFile</td><td>RemoveIniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveIniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>RemoveIniFile</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be deleted. The value is required when Action is iifIniRemoveTag</td></row>
		<row><td>RemoveRegistry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RemoveRegistry</td><td>RemoveRegistry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveRegistry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum</td></row>
		<row><td>ReserveCost</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reserve a specified amount of space if this component is to be installed.</td></row>
		<row><td>ReserveCost</td><td>ReserveFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>ReserveCost</td><td>ReserveKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular ReserveCost record</td></row>
		<row><td>ReserveCost</td><td>ReserveLocal</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed locally.</td></row>
		<row><td>ReserveCost</td><td>ReserveSource</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed to run from the source location.</td></row>
		<row><td>SFPCatalog</td><td>Catalog</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>SFP Catalog</td></row>
		<row><td>SFPCatalog</td><td>Dependency</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Parent catalog - only used by SFP</td></row>
		<row><td>SFPCatalog</td><td>SFPCatalog</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>File name for the catalog.</td></row>
		<row><td>SelfReg</td><td>Cost</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The cost of registering the module.</td></row>
		<row><td>SelfReg</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the module that needs to be registered.</td></row>
		<row><td>ServiceControl</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments for the service.  Separate by [~].</td></row>
		<row><td>ServiceControl</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceControl</td><td>Event</td><td>N</td><td>0</td><td>187</td><td/><td/><td/><td/><td>Bit field:  Install:  0x1 = Start, 0x2 = Stop, 0x8 = Delete, Uninstall: 0x10 = Start, 0x20 = Stop, 0x80 = Delete</td></row>
		<row><td>ServiceControl</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>ServiceControl</td><td>ServiceControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceControl</td><td>Wait</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Boolean for whether to wait for the service to fully start</td></row>
		<row><td>ServiceInstall</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments to include in every start of the service, passed to WinMain</td></row>
		<row><td>ServiceInstall</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceInstall</td><td>Dependencies</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Other services this depends on to start.  Separate by [~], and end with [~][~]</td></row>
		<row><td>ServiceInstall</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of service.</td></row>
		<row><td>ServiceInstall</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>External Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>ErrorControl</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Severity of error if service fails to start</td></row>
		<row><td>ServiceInstall</td><td>LoadOrderGroup</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>LoadOrderGroup</td></row>
		<row><td>ServiceInstall</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Internal Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>password to run service with.  (with StartName)</td></row>
		<row><td>ServiceInstall</td><td>ServiceInstall</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceInstall</td><td>ServiceType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>ServiceInstall</td><td>StartName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>User or object name to run service as</td></row>
		<row><td>ServiceInstall</td><td>StartType</td><td>N</td><td>0</td><td>4</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>Shortcut</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command-line arguments for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table denoting the component whose selection gates the the shortcut creation/deletion.</td></row>
		<row><td>Shortcut</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The description for the shortcut.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The description name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the shortcut file is created.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The display name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Hotkey</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The hotkey for the shortcut. It has the virtual-key code for the key in the low-order byte, and the modifier flags in the high-order byte.</td></row>
		<row><td>Shortcut</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a shortcut.  Mainly used in pro project types.</td></row>
		<row><td>Shortcut</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Shortcut.</td></row>
		<row><td>Shortcut</td><td>ISShortcutName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A non-unique name for the shortcut.  Mainly used by pro pro project types.</td></row>
		<row><td>Shortcut</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>The icon index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the external icon file for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the shortcut to be created.</td></row>
		<row><td>Shortcut</td><td>Shortcut</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Shortcut</td><td>ShowCmd</td><td>Y</td><td/><td/><td/><td/><td/><td>1;3;7</td><td>The show command for the application window.The following values may be used.</td></row>
		<row><td>Shortcut</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Shortcut</td><td/><td>The shortcut target. This is usually a property that is expanded to a file or a folder that the shortcut points to.</td></row>
		<row><td>Shortcut</td><td>WkDir</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property defining location of working directory.</td></row>
		<row><td>Signature</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the file. This may contain a "short name|long name" pair.</td></row>
		<row><td>Signature</td><td>Languages</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>The languages supported by the file.</td></row>
		<row><td>Signature</td><td>MaxDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum creation date of the file.</td></row>
		<row><td>Signature</td><td>MaxSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum size of the file.</td></row>
		<row><td>Signature</td><td>MaxVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum version of the file.</td></row>
		<row><td>Signature</td><td>MinDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum creation date of the file.</td></row>
		<row><td>Signature</td><td>MinSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum size of the file.</td></row>
		<row><td>Signature</td><td>MinVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum version of the file.</td></row>
		<row><td>Signature</td><td>Signature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The table key. The Signature represents a unique file signature.</td></row>
		<row><td>TextStyle</td><td>Color</td><td>Y</td><td>0</td><td>16777215</td><td/><td/><td/><td/><td>A long integer indicating the color of the string in the RGB format (Red, Green, Blue each 0-255, RGB = R + 256*G + 256^2*B).</td></row>
		<row><td>TextStyle</td><td>FaceName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A string indicating the name of the font used. Required. The string must be at most 31 characters long.</td></row>
		<row><td>TextStyle</td><td>Size</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The size of the font used. This size is given in our units (1/12 of the system font height). Assuming that the system font is set to 12 point size, this is equivalent to the point size.</td></row>
		<row><td>TextStyle</td><td>StyleBits</td><td>Y</td><td>0</td><td>15</td><td/><td/><td/><td/><td>A combination of style bits.</td></row>
		<row><td>TextStyle</td><td>TextStyle</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the style. The primary key of this table. This name is embedded in the texts to indicate a style change.</td></row>
		<row><td>TypeLib</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>TypeLib</td><td>Cost</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The cost associated with the registration of the typelib. This column is currently optional.</td></row>
		<row><td>TypeLib</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>TypeLib</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Optional. The foreign key into the Directory table denoting the path to the help file for the type library.</td></row>
		<row><td>TypeLib</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the type library to be operational.</td></row>
		<row><td>TypeLib</td><td>Language</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The language of the library.</td></row>
		<row><td>TypeLib</td><td>LibID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The GUID that represents the library.</td></row>
		<row><td>TypeLib</td><td>Version</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The version of the library. The major version is in the upper 8 bits of the short integer. The minor version is in the lower 8 bits.</td></row>
		<row><td>UIText</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key that identifies the particular string.</td></row>
		<row><td>UIText</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The localized version of the string.</td></row>
		<row><td>Upgrade</td><td>ActionProperty</td><td>N</td><td/><td/><td/><td/><td>UpperCase</td><td/><td>The property to set when a product in this set is found.</td></row>
		<row><td>Upgrade</td><td>Attributes</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The attributes of this product set.</td></row>
		<row><td>Upgrade</td><td>ISDisplayName</td><td>Y</td><td/><td/><td>ISUpgradeMsiItem</td><td>1</td><td/><td/><td/></row>
		<row><td>Upgrade</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>A comma-separated list of languages for either products in this set or products not in this set.</td></row>
		<row><td>Upgrade</td><td>Remove</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The list of features to remove when uninstalling a product from this set.  The default is "ALL".</td></row>
		<row><td>Upgrade</td><td>UpgradeCode</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The UpgradeCode GUID belonging to the products in this set.</td></row>
		<row><td>Upgrade</td><td>VersionMax</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Upgrade</td><td>VersionMin</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Verb</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Optional value for the command arguments.</td></row>
		<row><td>Verb</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command text.</td></row>
		<row><td>Verb</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Verb</td><td>Sequence</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Order within the verbs for a particular extension. Also used simply to specify the default verb.</td></row>
		<row><td>Verb</td><td>Verb</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The verb for the command.</td></row>
		<row><td>_Validation</td><td>Category</td><td>Y</td><td/><td/><td/><td/><td/><td>"Text";"Formatted";"Template";"Condition";"Guid";"Path";"Version";"Language";"Identifier";"Binary";"UpperCase";"LowerCase";"Filename";"Paths";"AnyPath";"WildCardFilename";"RegPath";"KeyFormatted";"CustomSource";"Property";"Cabinet";"Shortcut";"URL";"DefaultDir"</td><td>String category</td></row>
		<row><td>_Validation</td><td>Column</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of column</td></row>
		<row><td>_Validation</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of column</td></row>
		<row><td>_Validation</td><td>KeyColumn</td><td>Y</td><td>1</td><td>32</td><td/><td/><td/><td/><td>Column to which foreign key connects</td></row>
		<row><td>_Validation</td><td>KeyTable</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>For foreign key, Name of table to which data must link</td></row>
		<row><td>_Validation</td><td>MaxValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Maximum value allowed</td></row>
		<row><td>_Validation</td><td>MinValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Minimum value allowed</td></row>
		<row><td>_Validation</td><td>Nullable</td><td>N</td><td/><td/><td/><td/><td/><td>Y;N;@</td><td>Whether the column is nullable</td></row>
		<row><td>_Validation</td><td>Set</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Set of values that are permitted</td></row>
		<row><td>_Validation</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of table</td></row>
	</table>
</msi>
