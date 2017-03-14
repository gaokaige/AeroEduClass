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
		<subject>##ID_STRING4##</subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{7777AA12-4AE8-44D3-AC48-89C2098FF4AD}</revnumber>
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
		<row><td>ACPlayer.exe</td><td>{BB87BD56-D40B-4965-98FB-5FD4E0874109}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>acplayer.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ActiveAuto.exe</td><td>{2C659C5D-4258-446C-B21D-22FAEF38DC55}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>activeauto.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ActiveLoader.exe</td><td>{329A2ACF-1021-4EC6-8EE6-B25143CDAEA2}</td><td>IACTIVE</td><td>2</td><td/><td>activeloader.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ActiveLoader.exe1</td><td>{F6F84C2D-E7C7-4C7E-A3AC-214BE8E108B4}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>activeloader.exe1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ActiveMeeting.exe</td><td>{9FB9785F-7BE0-4C7D-B2A4-8F5B57D53DCA}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>activemeeting.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduClass.exe</td><td>{6223D25C-0F33-4C87-99C5-DA0F6798B45A}</td><td>INSTALLDIR</td><td>2</td><td/><td>aeroeduclass.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduLib.dll</td><td>{F2B666A7-0BB6-4D25-9D86-EC45E579B4A5}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>aeroedulib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduLib.dll1</td><td>{374BA7E9-FEA1-485B-A829-7D858D3B4161}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>aeroedulib.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AeroEduLib.dll2</td><td>{2059549E-29AC-498B-8923-7F875CFDD8E0}</td><td>INSTALLDIR</td><td>2</td><td/><td>aeroedulib.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>BWClientDll.dll</td><td>{12DFCF82-81B3-4733-AD18-E486775FC78E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>bwclientdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Booth_Camera.exe</td><td>{D480CF75-896B-46AF-96F4-CFE00CD67568}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>booth_camera.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>BugReport.exe</td><td>{278A159D-2BD1-40CF-9373-7888C457D7AF}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>bugreport.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CEXTH.dll</td><td>{5EC991AC-0125-4D4C-9CD2-5314452D060F}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>cexth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CPTH.dll</td><td>{7F2FA617-0204-4FF9-888D-5B3DD096D29D}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>cpth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CWTH.dll</td><td>{95344C69-831A-4C17-BA36-1BA63660299E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>cwth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.BrowserSubprocess.Core.dll</td><td>{55D73A72-75FE-40F4-AAB3-EA03A18182D9}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.browsersubprocess.c</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.BrowserSubprocess.exe</td><td>{E6F06D67-E2EB-4666-A9E1-7E35F99234EA}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.browsersubprocess.e</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.Core.dll</td><td>{0F913A2A-94D3-44F1-A2B2-7E6CAC39AB21}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.WinForms.dll</td><td>{9E7E4FC4-AAD3-4699-B5C2-12C50A9E0500}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.winforms.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CefSharp.dll</td><td>{FC8A37C2-3F74-4443-A65C-AA95FCF6CC0C}</td><td>INSTALLDIR</td><td>2</td><td/><td>cefsharp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ColorSpace.dll</td><td>{601811E2-96F1-4146-A48E-69E2FC304EB5}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>colorspace.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Copier.exe</td><td>{EFDCEFEA-1C82-4D13-A76C-4D4D28CD702C}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>copier.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CourseManager.exe</td><td>{59A23002-4AE8-4AE1-B7DC-32B6AAD6E85B}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>coursemanager.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>D3Dcompiler_47.dll1</td><td>{06DBF729-7080-4416-B665-123219DA0D79}</td><td>_4BIT2</td><td>2</td><td/><td>d3dcompiler_47.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DBSClient.exe</td><td>{9E8D5472-F773-4E20-9ED9-783512C98F50}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>dbsclient.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DMSkin.dll</td><td>{BACCA887-1B48-4382-B118-999DC08BD5FB}</td><td>INSTALLDIR</td><td>2</td><td/><td>dmskin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.DotNetBar2.dll</td><td>{087978C0-EB07-4A58-A48B-DA5E2F48785E}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>devcomponents.dotnetbar2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.DotNetBar2.dll1</td><td>{B3CB600C-574F-42BD-9BF5-FB135662FA93}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>devcomponents.dotnetbar2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DevComponents.Instrumentation.dll</td><td>{462DA214-75D8-4349-8A20-BBA71FC0A9B6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>devcomponents.instrumentatio</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DirectShowSource.dll</td><td>{6D9F7574-6CF8-4EAE-A8DC-3353B430A3E6}</td><td>AVISYNTH_PLUGIN</td><td>2</td><td/><td>directshowsource.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DirectShowSource.dll1</td><td>{CA503977-8D16-4AA2-BB02-C7468B84B221}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>directshowsource.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll</td><td>{5F8369E1-A902-45FC-AB0B-8A847EF8F18E}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>dlldeinterlace.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll1</td><td>{F340B863-DD83-4897-B6D0-0D12842909CF}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>dlldeinterlace.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>FileCom.dll</td><td>{E6178526-FFAB-4B47-8F10-641850072E4E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>filecom.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>G7xDll.dll</td><td>{33114678-B26C-4D95-A23B-17C1F63C8FDC}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>g7xdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>H264Play.dll</td><td>{82253C22-F71C-4F36-BA1C-00DDD5698154}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>h264play.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>H264Play.dll1</td><td>{A8F4F0A3-CE08-46F6-A392-E6AE1C43B480}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>h264play.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HookSys.dll</td><td>{11215643-360D-4982-9BB5-CBA09EE990D4}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>hooksys.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAAudioLib.dll</td><td>{7CFDEA6D-18D2-4E77-AA41-8BB35C641861}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaaudiolib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IACSmy.dll</td><td>{B83CDC2A-E80E-4BBB-B150-7461AA5723BB}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iacsmy.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IACUsage.dll</td><td>{F61BD494-ED68-449E-8757-FC9B38170DC7}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iacusage.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IACap.dll</td><td>{5E6BFAD3-DBF1-4032-82F8-1057CEA47B79}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iacap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAExpat.dll</td><td>{0F987A85-FD52-4D04-8517-4037AC3C5BEF}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaexpat.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAEysp.dll</td><td>{AAA8B623-40BD-4795-B2AB-49E25888DA90}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaeysp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAJ2K.dll</td><td>{F76C6D87-6967-4E93-BF55-ED0B65DE1569}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaj2k.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAJCmp.dll</td><td>{C960B535-B295-4F11-920C-55BAC5D97F6C}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iajcmp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IALA.dll</td><td>{9FE07A58-BA73-42F7-8B66-A699CAB14CF9}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iala.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IALCmp.dll</td><td>{7914FBED-C00C-41D2-B594-FBBB3844922B}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ialcmp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IALmn.dll</td><td>{47052805-95B5-4949-B5B9-CC2B0C7B4A8B}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ialmn.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAMediaAVS.dll</td><td>{42FB0526-3CC3-430E-9395-722AACAEFC28}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iamediaavs.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAMiscEx.dll</td><td>{94BBCB88-C4BA-4B55-A85C-5D1FA10DCA83}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iamiscex.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IANet.dll</td><td>{C386D1E5-DAD9-45AD-97E1-A546F7AC23E7}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ianet.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IANet3.dll</td><td>{AEF1A500-A4E8-480D-B20F-E09B9E48C77A}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ianet3.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAPOL.dll</td><td>{F62E1922-407E-4A84-A1ED-B8E91A0FF595}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iapol.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IARGB256.dll</td><td>{1367D9F3-0DEC-446B-A96E-02C7F24EEDA4}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iargb256.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAUNIDRV.DLL</td><td>{A9EA0330-7605-487B-B72D-A65D31932E94}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>iaunidrv.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAUNIDRVUI.DLL</td><td>{297C1218-4588-4649-994A-1FB0F859A314}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>iaunidrvui.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAUNIDRV_64.DLL</td><td>{2EAE3EBA-C08C-4E3F-9F17-40DEB1E21BAB}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>iaunidrv_64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IAunidrvui_64.dll</td><td>{01773AC6-25A8-439C-80E8-8C60244BA5C4}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>iaunidrvui_64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IDE_ID.vxd</td><td>{245ACDAD-8CBF-4740-9A50-9F2FB1ADFB2E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ide_id.vxd</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{2A18135D-32E2-4E7B-93AF-9096FD36526F}</td><td>COMMON_FILES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{F7CB4356-DA5A-45DD-8E6C-4782B77B8323}</td><td>IACTIVE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{AC099B60-D7F4-475A-8C16-984FC3665932}</td><td>MTSKIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td>{18B56922-8E8F-420D-BD17-2277A78850D2}</td><td>BIN1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td>{272AF152-A5E3-4AC5-B5D0-C5F95B3C67DB}</td><td>_4BIT2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td>{9783D687-FD0A-4924-8AA8-B3A3320C08D9}</td><td>ICONENGINES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td>{98784D7A-19FD-4CE8-9CD5-FA84C037D872}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td>{1796F6F8-3B96-4427-993D-0348E5F970DC}</td><td>PLATFORMS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td>{1E6F83B7-416A-4B54-A1D3-8DD46FDCFA2C}</td><td>SQLDRIVERS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td>{01B339C4-21D1-4358-8AD8-C054F6250FCD}</td><td>TRANSLATIONS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td>{3867489F-1CB4-4466-B579-AAE473B0B649}</td><td>DATA1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td>{972AA66A-D2BA-42F0-BFE2-5F59C9FB1D29}</td><td>LIBOBS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td>{B1EF8375-74DD-4E32-AA14-55F2FEEF3DCF}</td><td>OBS_PLUGINS2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{7D70EC63-44EA-4E32-AD49-2666CACC8DD5}</td><td>MTNORMAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td>{8A101794-7693-48E4-A0EF-4426D1C6F62F}</td><td>COREAUDIO_ENCODER1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td>{4977F28F-6139-4B2C-8984-AE7CE1DE49FC}</td><td>LOCALE16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td>{136E59FB-6203-4526-AF5F-B8E5B0319FE1}</td><td>IMAGE_SOURCE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td>{61695C8D-B7CE-43B8-A92A-CFC1D3CA4ECD}</td><td>LOCALE17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td>{85D1AFBE-A654-47C5-89BA-F9E11EBF3F7A}</td><td>OBS_FFMPEG1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td>{32911F49-C2D4-40FE-A170-1986CEFAC5C5}</td><td>LOCALE18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td>{27C85AFB-D4E1-4E6A-A33B-386C128B99AB}</td><td>OBS_FILTERS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td>{38C5CA52-629B-4D27-8799-66BE5ECC9794}</td><td>LOCALE19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td>{35BA2320-DE9C-491D-AE0F-46B6CFE85D79}</td><td>OBS_OUTPUTS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td>{4027F8A1-5095-4DDE-9165-153C88F30CC5}</td><td>LOCALE20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{00F136E9-BE22-478B-B5BC-6DE9E1D71EB5}</td><td>SCROLLSKIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td>{D2D0C305-28ED-469B-BC3A-3B25E9A52329}</td><td>OBS_QSV111</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td>{99E5AABB-4F36-4CEE-80B1-D3F3B4791C05}</td><td>LOCALE21</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td>{7FEEE4F5-9695-463A-B2BF-72AB9D92270A}</td><td>OBS_TRANSITIONS1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td>{9D62902A-1755-4A91-8BC8-FE4A2518597C}</td><td>LOCALE22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td>{DA520834-1F19-49FB-904F-8CE420E921CE}</td><td>OBS_X2641</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td>{DCE29E86-9766-4CC0-BC67-2F34BB23A35E}</td><td>LOCALE23</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td>{7C5AA4E3-44A8-427C-A1FB-6D8706C8A9A3}</td><td>RTMP_SERVICES2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td>{31F76783-D40B-4824-BA6B-08D3F879941D}</td><td>LOCALE24</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td>{71F2C619-146A-4824-9EAC-6884F2AE2CE4}</td><td>TEXT_FREETYPE22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td>{94539FC1-3448-42FA-93D6-A0D055CF953C}</td><td>LOCALE25</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{E67B0729-CC1C-47C4-896A-A8FDBAACB034}</td><td>SKIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td>{8911F6CB-A128-41CE-B8AD-D0F84EF67D02}</td><td>WIN_CAPTURE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td>{13C9819C-9DC0-4F05-9C19-922434B0452C}</td><td>LOCALE26</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td>{399E78A2-A64A-440C-8EE6-D6D91BE8A9A1}</td><td>WIN_DECKLINK1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td>{E1C6D0C9-DEBC-4D6F-A5AE-3735D130461F}</td><td>LOCALE27</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td>{993D52E3-5039-4DA2-A90C-B00674F82BF9}</td><td>WIN_DSHOW1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td>{17D22FF4-16C8-4996-B6FB-89FC437D3648}</td><td>LOCALE28</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td>{A8B01833-466A-40C6-B859-AEAB2590D484}</td><td>WIN_MF1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td>{B181DDA3-7390-473D-9CCD-C3E16B7E78A1}</td><td>LOCALE29</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td>{0FCD1923-B784-442C-8E39-62E866E25406}</td><td>WIN_WASAPI1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td>{43C3A954-53CF-42DC-AD73-C89D74A402CA}</td><td>LOCALE30</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{BFC05C51-94F0-4EE7-B8C7-F9C93BCB1F44}</td><td>NORMAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td>{B73EBA74-458B-490A-9E31-1286031F47B9}</td><td>OBS_STUDIO2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td>{BAAE6541-B497-485F-8FA0-9B7C4C31E080}</td><td>LICENSE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td>{8240752D-C324-47CA-A79D-55727FFA49CD}</td><td>LOCALE31</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td>{3B5EEF2E-B176-4360-B11B-A076C2386DDB}</td><td>THEMES1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td>{4C74A858-D3AD-4C9F-9470-18DF5CB4A693}</td><td>DARK1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td>{45596438-9890-4EE4-9E57-6A7FFEB3A7AF}</td><td>OBS_PLUGINS3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td>{E399285C-5075-4B3E-8FF4-902845B5C9B0}</td><td>_4BIT3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{37410B94-FE96-4D47-BBBE-225B21AD30F5}</td><td>SCROLLSKIN1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{E1CBCC0F-803A-44B9-9053-F48A6BAA6EB9}</td><td>SKIN1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{AAAF68A3-3917-4ECE-AC3F-A1803D863EB3}</td><td>PANCONFIG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{BD03991A-C558-4C29-8F33-7C9CB79011E8}</td><td>PLAYSKIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{53A1F9B2-F728-41B5-BA0C-38951E1F855B}</td><td>NORMAL1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{78860D92-493A-4248-9798-4D498A1D5A78}</td><td>IACTIVE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{68FBE2F0-FE52-43DC-9D76-E3625604B472}</td><td>RCVFILE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{516C1746-95B5-4296-9CD0-FFB1AE32887B}</td><td>SOUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{CDEA36FB-DD22-441C-A19E-1B916E056B31}</td><td>TEMPDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{A30BEE2D-D7E2-432A-A779-CC1824795D5B}</td><td>_</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{67D52D78-1F63-4500-A302-4705D31A9FB0}</td><td>TEMP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{D7A2F5D6-1731-4717-967D-C9C4A0B2D7D0}</td><td>_7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td>{BA777715-5977-4298-9E69-B825F5C49500}</td><td>TEMP1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td>{F9A71D88-AE46-4CB0-9AC3-305337A302E4}</td><td>_3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td>{08ABEF1F-9EC5-4EFF-8824-490A77FEA55E}</td><td>TEMP2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td>{0C6A4204-4D81-430C-9FC3-D895D54CA608}</td><td>_6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{799DC15B-2B87-42C7-A3F5-1A4C89516687}</td><td>ACTIVECENTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td>{6BCE77CB-3515-4036-81F5-0718A68C3339}</td><td>TEMP3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td>{39562F9C-B6A7-49FB-B188-5942654AD91B}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td>{9864BDBE-310B-4B4A-A690-946101AD2E04}</td><td>XPSKINRES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td>{17736082-B45A-4901-91E7-C997AAED3DC7}</td><td>XPSTYLE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td>{271A52EA-EC22-4E1F-9219-323F9C4F1DDE}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td>{D1D30C77-8129-4602-9E45-DEBB30D3449C}</td><td>RECORD_PLAYER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td>{080E7665-37CD-406F-BC53-2FAA0A44634B}</td><td>OBS_STUDIO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td>{528E7A42-DCD0-40D4-9A50-4FA09BC793F0}</td><td>BASIC</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td>{D72F2536-99A7-4CCE-AF75-6BC365359E28}</td><td>PROFILES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td>{8E9F2796-4BB4-42B0-B032-9489BCCC65A9}</td><td>CHARACTERS_ONLY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{59BE8D64-2573-45BB-AD2B-E3EA0846A8CC}</td><td>ACTIVEMEETING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td>{CC0CEE1B-9A2B-4362-8C56-54DDBF0CA853}</td><td>DIRECTORY2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td>{E3665D9B-B4E6-4857-8CC8-B1199B86F7D3}</td><td>SCENES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td>{3BAFE7AD-BED2-4761-93B8-53CAABB744DA}</td><td>CRASHES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td>{041D08BD-71B7-45F9-8885-1C2D26C4964D}</td><td>LOGS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td>{215ED079-3472-422D-A2E2-2A31A27D82E0}</td><td>PLUGIN_CONFIG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td>{5EF8BE91-4ADE-4107-8A56-AEBBD9AEB279}</td><td>OBS_BROWSER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td>{99FE0F5B-8417-4123-A59A-5C6643DFF903}</td><td>RTMP_SERVICES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td>{6D7CB994-B7B4-4488-AE70-7A4E2FA35F4D}</td><td>TEXT_FREETYPE2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td>{FFA9C759-D1CA-44CF-8B58-12B101F652FE}</td><td>WIN_CAPTURE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td>{1667AFB9-7E26-4458-94A5-E216B5746454}</td><td>PROFILER_DATA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{A92F2110-1DFB-40D8-A02E-DF9F3B61DA08}</td><td>AVISYNTH_PLUGIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{CB79C9DC-DE6F-4218-8ABE-CDC34CB2858E}</td><td>CONIFIGDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{BB0DAE87-A1B2-49D3-8A00-0C9BEFDBDE1A}</td><td>COURSEWARE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{AE6AE846-283D-4612-BFCC-3D0CB40DF371}</td><td>LANGUAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{9FE09A70-47E4-4E79-966B-9378B63685C6}</td><td>LOG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td>{2A0A6890-1500-45FE-9C12-7F3BEF941973}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td>{BDA4D774-B184-499D-B7EB-D32796DB690D}</td><td>OBSBIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>InstallVPrinter.exe</td><td>{F6F859C6-C6BD-40DB-82C7-471BB1D587D1}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>installvprinter.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Mono.Security.dll</td><td>{E132DE7A-3C29-47D9-AD29-E50FCCA3E04B}</td><td>INSTALLDIR</td><td>2</td><td/><td>mono.security.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetSdk.dll</td><td>{F685E15B-4D65-4AC3-9591-86B8DC4433B1}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>netsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetSdk.dll1</td><td>{E5FED158-10D8-417D-B1F4-14C6DE7C2E5B}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>netsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetSdk.dll2</td><td>{171C8CC7-83DB-4B48-8C1C-D2740C970758}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>netsdk.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent1</td><td>{19C2BF57-2713-40A1-9DEC-E67BBE33E695}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NewComponent2</td><td>{EE4889E4-22BC-4A96-A781-BC9404C6D0FC}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll</td><td>{B5670E5C-698D-4CBD-A7B1-49EA059BBE38}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>newtonsoft.json.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll1</td><td>{D3065A51-FA78-465F-8395-FC738D073ED9}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>newtonsoft.json.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll2</td><td>{0D33E0CA-AAF1-4079-BA9A-42DB23F03B75}</td><td>INSTALLDIR</td><td>2</td><td/><td>newtonsoft.json.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Npgsql.dll</td><td>{ED7F366C-9E8A-4DEA-9B3A-4B6C2BE213D3}</td><td>INSTALLDIR</td><td>2</td><td/><td>npgsql.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Core.dll1</td><td>{88B4B1CA-E5CD-452C-86D2-23B953B9FFD0}</td><td>_4BIT2</td><td>2</td><td/><td>qt5core.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Gui.dll1</td><td>{EA0D0300-26BD-4689-9821-840DAF3FEFFF}</td><td>_4BIT2</td><td>2</td><td/><td>qt5gui.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Sql.dll1</td><td>{B8EAA2D3-6F5B-4116-B06E-3369DAB0FFD6}</td><td>_4BIT2</td><td>2</td><td/><td>qt5sql.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Svg.dll1</td><td>{DCD324B1-2F82-434A-9AC9-DFA4A74A3CD3}</td><td>_4BIT2</td><td>2</td><td/><td>qt5svg.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Widgets.dll1</td><td>{86353D83-43B0-4DF1-829D-60285337A17B}</td><td>_4BIT2</td><td>2</td><td/><td>qt5widgets.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Record_Player.exe</td><td>{DFFDFA85-3129-4F3F-B631-61DE2E3D22DB}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>record_player.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Rockey.dll</td><td>{936AF0AC-7957-4781-B362-ECEB813D6B6F}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>rockey.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>RockeyVisaP.dll</td><td>{7245004A-96AB-4544-80C0-63EFDD87F27A}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>rockeyvisap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SDL2.dll</td><td>{58A37683-77AE-4DE9-8ADB-EAEB6A4AABC6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>sdl2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll</td><td>{A3E6051F-6AE7-4B6E-A83D-31A1421ABA45}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>streamreader.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll1</td><td>{AD17CBFB-1DF3-4E74-BEB7-E4F06AD26E8C}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>streamreader.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll2</td><td>{DACBD1E5-F04A-47B3-840C-6C6676CA9736}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>streamreader.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Sysset.exe</td><td>{C300DF3F-0D47-4951-985A-31DEEECE439F}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>sysset.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>UNIDRV.HLP</td><td>{3A4FC437-4D82-406E-A3A7-4BCF1905DA6A}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>unidrv.hlp</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>UNIDRV_64.HLP</td><td>{B577A2C4-F182-4B03-B65C-E80DA6262F6A}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>unidrv_64.hlp</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>UNIRES.DLL</td><td>{90430B68-8BDE-457C-93E3-428495C26370}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>unires.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>UNIRES_64.DLL</td><td>{C9449E16-C926-4455-8FFC-547353657019}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>unires_64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Z264Core.dll</td><td>{AD65830A-3D80-4481-8E4F-F943D43CA3CC}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>z264core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Z264Dec.dll</td><td>{F7196AB7-E8B1-41BD-9D88-2B5B1DB3DFF7}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>z264dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>_64dec.dll</td><td>{D5079C35-79BE-4733-9FE5-DE546C67CE9B}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>_64dec.dll</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>_64dec16.ax</td><td>{76C402EB-52DE-4A2A-A565-855ADE36B251}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>_64dec16.ax</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll</td><td>{CB2C559F-0A73-4207-9C98-0A2523997BA6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avcodec_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll2</td><td>{13A898DB-C004-40FB-B400-A0A2E0A32F34}</td><td>_4BIT2</td><td>2</td><td/><td>avcodec_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avdevice_57.dll</td><td>{0BFFE9B1-038D-42C6-ACC8-B3150FCC3477}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avdevice_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avdevice_57.dll2</td><td>{6AA4D971-35F5-473B-8273-3A022D46AC1C}</td><td>_4BIT2</td><td>2</td><td/><td>avdevice_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avfilter_6.dll</td><td>{6FC30C5F-9ED5-438B-B2D0-3210E9E5A5D6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avfilter_6.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avfilter_6.dll2</td><td>{5248DD49-1355-4142-AAE2-08D9C94AD8DA}</td><td>_4BIT2</td><td>2</td><td/><td>avfilter_6.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll</td><td>{FAE73B4D-B308-47EC-947E-8BC87CC050BC}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avformat_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll2</td><td>{3EBF15BA-201C-477C-8A5E-32305660D0D4}</td><td>_4BIT2</td><td>2</td><td/><td>avformat_57.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avisynth.dll</td><td>{DDC91FDC-3978-4DFE-8544-4A74C2F738FE}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>avisynth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll</td><td>{914B5F4E-0955-41CB-A270-3E47EF21E9A8}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>avutil_55.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll2</td><td>{4319FBB9-0C43-49C2-B624-0A0272F677B9}</td><td>_4BIT2</td><td>2</td><td/><td>avutil_55.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>booth.dll</td><td>{9100BD20-FC7F-4BD7-B0C1-97E66CA938E0}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>booth.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>coreaudio_encoder.dll1</td><td>{9B9A8249-BFF5-4CDF-96FC-3E5F140DB699}</td><td>_4BIT3</td><td>2</td><td/><td>coreaudio_encoder.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_framework.dll</td><td>{1EB96220-643E-41D3-A412-E5193D222498}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_framework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_logic.dll</td><td>{82D1B06F-2A37-4646-AFCA-619616AC0DE4}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_logic.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cs_xc.dll</td><td>{4A36BB76-C3BC-400C-91D7-DF03107379A6}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>cs_xc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d3dcompiler_43.dll</td><td>{A12AA977-C9FD-45A9-83EA-3591F427E266}</td><td>INSTALLDIR</td><td>2</td><td/><td>d3dcompiler_43.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d3dcompiler_47.dll</td><td>{0274B43C-38B4-4D26-8E8E-3F463A7B8AFF}</td><td>INSTALLDIR</td><td>2</td><td/><td>d3dcompiler_47.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>d_framework.dll</td><td>{6904FB62-22F5-4718-9953-9AF101D8C3E8}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>d_framework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>devil.dll</td><td>{9E6CBE52-46D8-4C9E-BF88-0376B526B4E9}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>devil.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ffmpeg_mux64.exe1</td><td>{7F029528-8AC4-4DB3-A192-B0C0B772B630}</td><td>OBS_FFMPEG1</td><td>2</td><td/><td>ffmpeg_mux64.exe1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>get_graphics_offsets64.exe1</td><td>{1C07162C-A4DB-4EF8-B8D1-4DD83828FCC3}</td><td>WIN_CAPTURE2</td><td>2</td><td/><td>get_graphics_offsets64.exe1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>graphics_hook64.dll1</td><td>{7CEE8DF4-21D4-4349-BF40-90ACE5BC5D71}</td><td>WIN_CAPTURE2</td><td>2</td><td/><td>graphics_hook64.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec_v.dll</td><td>{295A2BDF-F6CD-4D92-B00C-B21F1747D668}</td><td>BOOTH_CAMERA</td><td>2</td><td/><td>hi_h264dec_v.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec_v.dll1</td><td>{4A8A333B-7989-48E9-8FFD-D5DC44FDD0F4}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>hi_h264dec_v.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iA264Dec.dll</td><td>{252DAF7F-F283-43B7-BC13-8C8DB9B9AAD6}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>ia264dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iAAVSEnv.dll</td><td>{3A4EC91A-A1A0-4A67-B153-D991FC2D60CF}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaavsenv.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iAAudioAgent.exe</td><td>{107FC30A-BC5F-4C02-A392-622A9AA50A17}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaaudioagent.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iAAudioDMOCap.dll</td><td>{B263F6C6-89DA-48E6-A8A6-C1A63A3E601E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iaaudiodmocap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iADxCap.dll</td><td>{D412E332-C03C-4525-9219-65333F207A45}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iadxcap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iADxSnd.dll</td><td>{28F90047-4DE7-4C01-AC98-AB9E4B2FABFE}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iadxsnd.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iAVideoLib.dll</td><td>{023F569C-7D2A-4DF6-9282-3717D27D1211}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iavideolib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iAYUVEff.dll</td><td>{7EA0FF1B-334A-4CF9-9FE1-0264FF7A0DCA}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iayuveff.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iacodec.dll</td><td>{EF78C89E-261C-40EE-A0B5-BF249EA0A1DC}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>iacodec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icudt54.dll1</td><td>{3A24ECC0-9EF0-4AA7-8946-DBA6157D7DB2}</td><td>_4BIT2</td><td>2</td><td/><td>icudt54.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuin54.dll1</td><td>{39376906-E126-4BD0-BD71-E604DA284EC4}</td><td>_4BIT2</td><td>2</td><td/><td>icuin54.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuuc54.dll1</td><td>{1E4E5A37-ED71-4458-AD90-BAD5A8200767}</td><td>_4BIT2</td><td>2</td><td/><td>icuuc54.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>image_source.dll1</td><td>{EC565938-7160-4DED-AD05-C8FE3119AA20}</td><td>_4BIT3</td><td>2</td><td/><td>image_source.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>inject_helper64.exe1</td><td>{3C277F3A-F820-407D-8CD6-25C863659D6A}</td><td>WIN_CAPTURE2</td><td>2</td><td/><td>inject_helper64.exe1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>lame_enc.dll</td><td>{4DC26B56-B77F-4242-9643-59C67B980424}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>lame_enc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libEGL.dll1</td><td>{DF3BFC4E-4A0F-4385-B507-E6FEE08E8F22}</td><td>INSTALLDIR</td><td>2</td><td/><td>libegl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libEGL.dll2</td><td>{5AD42CF8-6EF6-4431-AD43-6E1328CD2AC3}</td><td>_4BIT2</td><td>2</td><td/><td>libegl.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libGLESv2.dll1</td><td>{590C8D40-D1E6-4949-BEF7-AE364ED15472}</td><td>INSTALLDIR</td><td>2</td><td/><td>libglesv2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libGLESv2.dll2</td><td>{11585F3B-6AE8-40F7-9EED-08B8B925CB4C}</td><td>_4BIT2</td><td>2</td><td/><td>libglesv2.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libavcodec.dll</td><td>{5C3CE54A-2B26-4F2C-80F5-C0A179C0848E}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>libavcodec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcef.dll</td><td>{6271F443-4D43-4A1A-B241-9317C4F490BE}</td><td>INSTALLDIR</td><td>2</td><td/><td>libcef.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcurl.dll1</td><td>{2B0E8460-6214-4CBB-AF45-5BEFCD216BD7}</td><td>_4BIT2</td><td>2</td><td/><td>libcurl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll</td><td>{10989D25-E991-45E2-95F5-F3F0E65B5C73}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libeay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libgcc_s_dw2_1.dll</td><td>{EF3D08C5-97F9-477D-8010-621185EE1AA8}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libgcc_s_dw2_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libiconv_2.dll</td><td>{5A8490F9-4882-4C93-B449-4689B589ADE2}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libiconv_2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libobs_d3d11.dll1</td><td>{F0F2F8A1-CB60-43B7-9C84-0053CBBC12DD}</td><td>_4BIT2</td><td>2</td><td/><td>libobs_d3d11.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libobs_opengl.dll1</td><td>{1E28298C-B532-48D4-B732-BF300EB100D5}</td><td>_4BIT2</td><td>2</td><td/><td>libobs_opengl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libogg_0.dll1</td><td>{8D37A934-386A-40EF-AFDC-C7E7AAB31C2B}</td><td>_4BIT2</td><td>2</td><td/><td>libogg_0.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libopus_0.dll1</td><td>{70E9BF4C-7B6F-4114-AC75-47A1E1330245}</td><td>_4BIT2</td><td>2</td><td/><td>libopus_0.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libportaudio_2.dll.dll</td><td>{94EC8836-4866-452E-976D-148E547CCF54}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libportaudio_2.dll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbis_0.dll1</td><td>{E5925FDB-32BB-4596-B70B-C71DF521B615}</td><td>_4BIT2</td><td>2</td><td/><td>libvorbis_0.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbisenc_2.dll1</td><td>{CA003970-CE7B-4E6A-83BF-0434D5866A84}</td><td>_4BIT2</td><td>2</td><td/><td>libvorbisenc_2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libvorbisfile_3.dll1</td><td>{BB222E8B-A347-48A8-8CED-BD5767A7814D}</td><td>_4BIT2</td><td>2</td><td/><td>libvorbisfile_3.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_146.dll</td><td>{96BFF678-7E49-45FF-8E89-628312DBE009}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libx264_146.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_148.dll</td><td>{EDF8D4DB-0951-4229-B7BF-9A2D4F51442E}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>libx264_148.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libx264_148.dll2</td><td>{A833E715-2DAB-4EE4-9A63-9259B17E30DA}</td><td>_4BIT2</td><td>2</td><td/><td>libx264_148.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureAudioDevice.dll</td><td>{4D37D452-2DF9-4B42-8C64-DD6CA123F26A}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_captureaudiodevice.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_captureDesk.dll</td><td>{CBA17F6C-651B-4A7E-BF34-02B9B235B124}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_capturedesk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_recorder.dll</td><td>{39E0A875-D5FB-4758-9016-61E786E1D94F}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_recorder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_rtsp.dll</td><td>{5D7E7C73-8D75-41C9-A3E8-7864AAD04817}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_rtsp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>m_transferDesk.dll</td><td>{FF43556A-CE4C-4B80-9845-7AC15907BB37}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>m_transferdesk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs.dll1</td><td>{BB8BEB5D-3221-44F2-A87A-0F3D146C48DA}</td><td>_4BIT2</td><td>2</td><td/><td>obs.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs64.exe1</td><td>{15B6B7FD-3571-4CF9-96AE-72C8D5CC51D4}</td><td>_4BIT2</td><td>2</td><td/><td>obs64.exe1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_ffmpeg.dll1</td><td>{325E9B22-3969-430D-A09C-D311316AD1BB}</td><td>_4BIT3</td><td>2</td><td/><td>obs_ffmpeg.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_filters.dll1</td><td>{EDE533A2-89E2-4313-BB33-2D071C100648}</td><td>_4BIT3</td><td>2</td><td/><td>obs_filters.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_outputs.dll1</td><td>{1379EF39-BA36-4D4A-BA52-AD94B0950162}</td><td>_4BIT3</td><td>2</td><td/><td>obs_outputs.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_qsv11.dll1</td><td>{E785F1EB-FAE7-4627-A92C-84BE0A8C6203}</td><td>_4BIT3</td><td>2</td><td/><td>obs_qsv11.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_transitions.dll1</td><td>{79E67F9B-E9B8-4E3D-B5D7-C7276C5F9402}</td><td>_4BIT3</td><td>2</td><td/><td>obs_transitions.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obs_x264.dll1</td><td>{8810BEEB-AF5B-4956-941B-CD81D1605922}</td><td>_4BIT3</td><td>2</td><td/><td>obs_x264.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>obsglad.dll1</td><td>{6973A48C-D9D4-4BFE-A841-553292435B9E}</td><td>_4BIT2</td><td>2</td><td/><td>obsglad.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>oemuni.dll</td><td>{100717E1-B17C-4BF7-9D0F-A54BF48EE3D3}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>oemuni.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>oemuni_64.dll</td><td>{48506EF1-3329-45A4-AE22-0E670ED45295}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>oemuni_64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>opengl32sw.dll1</td><td>{E465D18D-3A40-4013-87EC-59B2FF05D7F2}</td><td>_4BIT2</td><td>2</td><td/><td>opengl32sw.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>postproc_54.dll</td><td>{1221CFB8-88DB-4344-B088-290FC3F71788}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>postproc_54.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>pptt.dll</td><td>{5DDF3CFB-A2DF-483C-82E6-F42569B2B041}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>pptt.dll</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qdds.dll1</td><td>{72389B11-C97D-4ED1-9AB9-835ACFE4380E}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qdds.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qgif.dll1</td><td>{5A2B6784-1009-4DC6-91CE-EAF6C23E2352}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qgif.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qicns.dll1</td><td>{3512AD8B-6894-4077-819E-17A70E2C0BD6}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qicns.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qico.dll1</td><td>{17DCCC75-CECC-4AFE-870E-09089301D1FE}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qico.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qjp2.dll1</td><td>{DCDD60A1-8FB8-43FD-98D6-6A9E87D1C1D3}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qjp2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qjpeg.dll1</td><td>{0EAD5A73-DE15-443D-89E2-5E9B2FDD82A7}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qjpeg.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qmng.dll1</td><td>{EA693E14-D65C-49B3-B485-90DCD2BE44EB}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qmng.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlite.dll1</td><td>{B116B675-45D3-49A9-8C5F-37387DA4A206}</td><td>SQLDRIVERS1</td><td>2</td><td/><td>qsqlite.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlmysql.dll1</td><td>{E1AD2FA5-BC9F-41A5-BF01-16003D04560C}</td><td>SQLDRIVERS1</td><td>2</td><td/><td>qsqlmysql.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlodbc.dll1</td><td>{83546D7A-8490-4D86-A617-F2F49D2E8047}</td><td>SQLDRIVERS1</td><td>2</td><td/><td>qsqlodbc.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsqlpsql.dll1</td><td>{2609F9B2-EDCA-4CD2-9390-7C839AB3031D}</td><td>SQLDRIVERS1</td><td>2</td><td/><td>qsqlpsql.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsvg.dll1</td><td>{10D39884-A4B5-44BF-9892-844986816274}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qsvg.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qsvgicon.dll1</td><td>{75229A50-0484-40F3-ABB1-6D4D98FEF0A9}</td><td>ICONENGINES1</td><td>2</td><td/><td>qsvgicon.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qtga.dll1</td><td>{F33358AD-B29A-4B86-852C-FEAE5E4F819D}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qtga.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qtiff.dll1</td><td>{9415ADFA-06E4-4140-8DB8-9E14261B6B5C}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qtiff.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwbmp.dll1</td><td>{52961ACE-478C-4D51-BFCD-A62693554503}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qwbmp.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwebp.dll1</td><td>{9A811714-C195-4956-9560-3ACF31D2278E}</td><td>IMAGEFORMATS1</td><td>2</td><td/><td>qwebp.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwindows.dll1</td><td>{CA2B8EA4-B86E-40A8-AED5-ADC8408021F7}</td><td>PLATFORMS1</td><td>2</td><td/><td>qwindows.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>rtmp_services.dll1</td><td>{F9FAFC8C-FD79-4626-ACCB-89C916C16D99}</td><td>_4BIT3</td><td>2</td><td/><td>rtmp_services.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll</td><td>{7979FB91-CA2E-4607-A729-F127FB48502E}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>ssleay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll</td><td>{C0DA26A7-670D-4CC0-A621-57DB84101B18}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>swresample_2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll2</td><td>{3E4FFA40-AD92-4996-95B5-EA2DCDDA4194}</td><td>_4BIT2</td><td>2</td><td/><td>swresample_2.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll</td><td>{E7D223A5-61DB-447B-9600-CF04B42B42F0}</td><td>RECORD_PLAYER</td><td>2</td><td/><td>swscale_4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll2</td><td>{0F19CA30-FCA1-49EC-8A6C-43C28DC69709}</td><td>_4BIT2</td><td>2</td><td/><td>swscale_4.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>taskkill.exe</td><td>{19E07676-F4F5-4C5D-A055-18B788785A3D}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>taskkill.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>text_freetype2.dll1</td><td>{644AAD90-A7A7-402F-94D2-DF7F66E3BD67}</td><td>_4BIT3</td><td>2</td><td/><td>text_freetype2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>unins000.exe</td><td>{2BE46173-A90A-45F2-ADA2-56B204EDFF32}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>unins000.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vprproc.dll</td><td>{EAF8ABBE-33A2-4BB3-B7CC-2165FFC9B3F1}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>vprproc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vprproc_64.dll</td><td>{8930F501-315D-45F9-9758-CE9927D4B186}</td><td>VIRTUALPRINTER</td><td>2</td><td/><td>vprproc_64.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>w32_pthreads.dll1</td><td>{6C3CC4EA-F560-4EF6-A702-43E46448A2AD}</td><td>_4BIT2</td><td>2</td><td/><td>w32_pthreads.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>widevinecdmadapter.dll</td><td>{319A3041-3385-4676-B8AA-0EB7312BE5A2}</td><td>INSTALLDIR</td><td>2</td><td/><td>widevinecdmadapter.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_capture.dll1</td><td>{54CB6399-A1D7-465F-9A09-F6EBE9A7CE86}</td><td>_4BIT3</td><td>2</td><td/><td>win_capture.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_decklink.dll1</td><td>{18FEEC11-EE80-48C4-BA0C-A3944E3FF363}</td><td>_4BIT3</td><td>2</td><td/><td>win_decklink.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_dshow.dll1</td><td>{1B1E1E81-B2DE-4817-B17D-60BABEF1F4DE}</td><td>_4BIT3</td><td>2</td><td/><td>win_dshow.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_mf.dll1</td><td>{2D5A1793-CF1F-450E-88E8-288D8705F3B3}</td><td>_4BIT3</td><td>2</td><td/><td>win_mf.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>win_wasapi.dll1</td><td>{4CE824AC-EC7A-4386-9E14-959E36F0644C}</td><td>_4BIT3</td><td>2</td><td/><td>win_wasapi.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>wordtt.dll</td><td>{98D6705B-303B-4C12-BE8A-BEC62F84CAB4}</td><td>ACTIVEMEETING</td><td>2</td><td/><td>wordtt.dll</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>zlib.dll1</td><td>{3EDCC4FA-5CA5-4AC0-9D0F-777B00F81393}</td><td>_4BIT2</td><td>2</td><td/><td>zlib.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
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
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
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
		<row><td>InstallWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfDiskSpace &lt;&gt; 1</td><td>1</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>LicenseAgreement</td><td>0</td><td>3</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>0</td><td>2</td></row>
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
		<row><td>ACTIVECENTER</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>AVISYNTH_PLUGIN</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>BASIC</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>BIN1</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>COMMON_FILES</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>CONIFIGDIR</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>COREAUDIO_ENCODER1</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>COURSEWARE</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>CRASHES</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>IACTIVE1</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>ICONENGINES1</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>IMAGEFORMATS1</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>IMAGE_SOURCE1</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent1</td></row>
		<row><td>INSTALLDIR</td><td>NewComponent2</td></row>
		<row><td>OBS_FFMPEG1</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>OBS_OUTPUTS1</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>OBS_PLUGINS2</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>OBS_PLUGINS3</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>OBS_QSV111</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>OBS_X2641</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>PLATFORMS1</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>PLAYSKIN</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>PLUGIN_CONFIG</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>PROFILES</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>RCVFILE</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>RECORD_PLAYER</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>SQLDRIVERS1</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>TEMP</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>TEMP1</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>TEMP2</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>TEMP3</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>WIN_CAPTURE2</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>WIN_DECKLINK1</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>WIN_DSHOW1</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>WIN_MF1</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>WIN_WASAPI1</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>XPSKINRES</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>_</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>_3</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>_4BIT3</td><td>ISX_DEFAULTCOMPONENT146</td></row>
		<row><td>_6</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>_7</td><td>ISX_DEFAULTCOMPONENT25</td></row>
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
		<row><td>ACTIVECENTER</td><td>IACTIVE1</td><td>ACTIVE~1|ActiveCenter</td><td/><td>0</td><td/></row>
		<row><td>ACTIVEMEETING</td><td>ACTIVECENTER</td><td>ACTIVE~1|ActiveMeeting</td><td/><td>0</td><td/></row>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>AVISYNTH_PLUGIN</td><td>ACTIVEMEETING</td><td>AVISYN~1|avisynth-plugin</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>BASIC</td><td>OBS_STUDIO</td><td>basic</td><td/><td>0</td><td/></row>
		<row><td>BIN1</td><td>OBSBIN</td><td>bin</td><td/><td>0</td><td/></row>
		<row><td>BOOTH_CAMERA</td><td>INSTALLDIR</td><td>BOOTHC~1|Booth Camera</td><td/><td>0</td><td/></row>
		<row><td>CHARACTERS_ONLY</td><td>PROFILES</td><td>CHARAC~1|characters_only</td><td/><td>0</td><td/></row>
		<row><td>COMMON_FILES</td><td>ProgramFilesFolder</td><td>COMMON~1|Common Files</td><td/><td>0</td><td/></row>
		<row><td>CONIFIGDIR</td><td>ACTIVEMEETING</td><td>CONIFI~1|ConifigDir</td><td/><td>0</td><td/></row>
		<row><td>COREAUDIO_ENCODER1</td><td>OBS_PLUGINS2</td><td>COREAU~1|coreaudio-encoder</td><td/><td>0</td><td/></row>
		<row><td>COURSEWARE</td><td>ACTIVEMEETING</td><td>COURSE~1|Courseware</td><td/><td>0</td><td/></row>
		<row><td>CRASHES</td><td>OBS_STUDIO</td><td>crashes</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DARK1</td><td>THEMES1</td><td>Dark</td><td/><td>0</td><td/></row>
		<row><td>DATA1</td><td>OBSBIN</td><td>data</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY</td><td>ProgramFilesFolder</td><td>北京航天云教~1|北京航天云教育科技有限公司</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY1</td><td>DIRECTORY</td><td>航天云课联网~1|航天云课联网(U4)</td><td/><td>0</td><td/></row>
		<row><td>DIRECTORY2</td><td>PROFILES</td><td>未命名</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>IACTIVE</td><td>COMMON_FILES</td><td>iActive</td><td/><td>0</td><td/></row>
		<row><td>IACTIVE1</td><td>ProgramFilesFolder</td><td>iActive</td><td/><td>0</td><td/></row>
		<row><td>ICONENGINES1</td><td>_4BIT2</td><td>ICONEN~1|iconengines</td><td/><td>0</td><td/></row>
		<row><td>IMAGEFORMATS1</td><td>_4BIT2</td><td>IMAGEF~1|imageformats</td><td/><td>0</td><td/></row>
		<row><td>IMAGE_SOURCE1</td><td>OBS_PLUGINS2</td><td>IMAGE-~1|image-source</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>DIRECTORY1</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>LANGUAGE</td><td>ACTIVEMEETING</td><td>Language</td><td/><td>0</td><td/></row>
		<row><td>LIBOBS1</td><td>DATA1</td><td>libobs</td><td/><td>0</td><td/></row>
		<row><td>LICENSE1</td><td>OBS_STUDIO2</td><td>license</td><td/><td>0</td><td/></row>
		<row><td>LOCALE16</td><td>COREAUDIO_ENCODER1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE17</td><td>IMAGE_SOURCE1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE18</td><td>OBS_FFMPEG1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE19</td><td>OBS_FILTERS1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE20</td><td>OBS_OUTPUTS1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE21</td><td>OBS_QSV111</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE22</td><td>OBS_TRANSITIONS1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE23</td><td>OBS_X2641</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE24</td><td>RTMP_SERVICES2</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE25</td><td>TEXT_FREETYPE22</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE26</td><td>WIN_CAPTURE2</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE27</td><td>WIN_DECKLINK1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE28</td><td>WIN_DSHOW1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE29</td><td>WIN_MF1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE30</td><td>WIN_WASAPI1</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOCALE31</td><td>OBS_STUDIO2</td><td>locale</td><td/><td>0</td><td/></row>
		<row><td>LOG</td><td>ACTIVEMEETING</td><td>Log</td><td/><td>0</td><td/></row>
		<row><td>LOGS</td><td>OBS_STUDIO</td><td>logs</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MTNORMAL</td><td>MTSKIN</td><td>MtNormal</td><td/><td>0</td><td/></row>
		<row><td>MTSKIN</td><td>ACTIVEMEETING</td><td>Mtskin</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>DIRECTORY</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NORMAL</td><td>MTSKIN</td><td>Normal</td><td/><td>0</td><td/></row>
		<row><td>NORMAL1</td><td>PLAYSKIN</td><td>Normal</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>OBSBIN</td><td>INSTALLDIR</td><td>obsbin</td><td/><td>0</td><td/></row>
		<row><td>OBS_BROWSER</td><td>PLUGIN_CONFIG</td><td>OBS-BR~1|obs-browser</td><td/><td>0</td><td/></row>
		<row><td>OBS_FFMPEG1</td><td>OBS_PLUGINS2</td><td>OBS-FF~1|obs-ffmpeg</td><td/><td>0</td><td/></row>
		<row><td>OBS_FILTERS1</td><td>OBS_PLUGINS2</td><td>OBS-FI~1|obs-filters</td><td/><td>0</td><td/></row>
		<row><td>OBS_OUTPUTS1</td><td>OBS_PLUGINS2</td><td>OBS-OU~1|obs-outputs</td><td/><td>0</td><td/></row>
		<row><td>OBS_PLUGINS2</td><td>DATA1</td><td>OBS-PL~1|obs-plugins</td><td/><td>0</td><td/></row>
		<row><td>OBS_PLUGINS3</td><td>OBSBIN</td><td>OBS-PL~1|obs-plugins</td><td/><td>0</td><td/></row>
		<row><td>OBS_QSV111</td><td>OBS_PLUGINS2</td><td>OBS-QS~1|obs-qsv11</td><td/><td>0</td><td/></row>
		<row><td>OBS_STUDIO</td><td>AppDataFolder</td><td>OBS-ST~1|obs-studio</td><td/><td>0</td><td/></row>
		<row><td>OBS_STUDIO2</td><td>DATA1</td><td>OBS-ST~1|obs-studio</td><td/><td>0</td><td/></row>
		<row><td>OBS_TRANSITIONS1</td><td>OBS_PLUGINS2</td><td>OBS-TR~1|obs-transitions</td><td/><td>0</td><td/></row>
		<row><td>OBS_X2641</td><td>OBS_PLUGINS2</td><td>obs-x264</td><td/><td>0</td><td/></row>
		<row><td>PANCONFIG</td><td>ACTIVEMEETING</td><td>PANCON~1|PanConfig</td><td/><td>0</td><td/></row>
		<row><td>PLATFORMS1</td><td>_4BIT2</td><td>PLATFO~1|platforms</td><td/><td>0</td><td/></row>
		<row><td>PLAYSKIN</td><td>ACTIVEMEETING</td><td>PlaySkin</td><td/><td>0</td><td/></row>
		<row><td>PLUGIN_CONFIG</td><td>OBS_STUDIO</td><td>PLUGIN~1|plugin_config</td><td/><td>0</td><td/></row>
		<row><td>PROFILER_DATA</td><td>OBS_STUDIO</td><td>PROFIL~1|profiler_data</td><td/><td>0</td><td/></row>
		<row><td>PROFILES</td><td>BASIC</td><td>profiles</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>RCVFILE</td><td>ACTIVEMEETING</td><td>RcvFile</td><td/><td>0</td><td/></row>
		<row><td>RECORD_PLAYER</td><td>INSTALLDIR</td><td>RECORD~1|Record Player</td><td/><td>0</td><td/></row>
		<row><td>RTMP_SERVICES</td><td>PLUGIN_CONFIG</td><td>RTMP-S~1|rtmp-services</td><td/><td>0</td><td/></row>
		<row><td>RTMP_SERVICES2</td><td>OBS_PLUGINS2</td><td>RTMP-S~1|rtmp-services</td><td/><td>0</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SCENES</td><td>BASIC</td><td>scenes</td><td/><td>0</td><td/></row>
		<row><td>SCROLLSKIN</td><td>MTNORMAL</td><td>SCROLL~1|scrollskin</td><td/><td>0</td><td/></row>
		<row><td>SCROLLSKIN1</td><td>NORMAL</td><td>SCROLL~1|scrollskin</td><td/><td>0</td><td/></row>
		<row><td>SKIN</td><td>MTNORMAL</td><td>Skin</td><td/><td>0</td><td/></row>
		<row><td>SKIN1</td><td>NORMAL</td><td>Skin</td><td/><td>0</td><td/></row>
		<row><td>SOUND</td><td>ACTIVEMEETING</td><td>sound</td><td/><td>0</td><td/></row>
		<row><td>SQLDRIVERS1</td><td>_4BIT2</td><td>SQLDRI~1|sqldrivers</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TEMP</td><td>_</td><td>temp</td><td/><td>0</td><td/></row>
		<row><td>TEMP1</td><td>_7</td><td>temp</td><td/><td>0</td><td/></row>
		<row><td>TEMP2</td><td>_3</td><td>temp</td><td/><td>0</td><td/></row>
		<row><td>TEMP3</td><td>_6</td><td>temp</td><td/><td>0</td><td/></row>
		<row><td>TEMPDIR</td><td>ACTIVEMEETING</td><td>TempDir</td><td/><td>0</td><td/></row>
		<row><td>TEXT_FREETYPE2</td><td>PLUGIN_CONFIG</td><td>TEXT-F~1|text-freetype2</td><td/><td>0</td><td/></row>
		<row><td>TEXT_FREETYPE22</td><td>OBS_PLUGINS2</td><td>TEXT-F~1|text-freetype2</td><td/><td>0</td><td/></row>
		<row><td>THEMES1</td><td>OBS_STUDIO2</td><td>themes</td><td/><td>0</td><td/></row>
		<row><td>TRANSLATIONS1</td><td>_4BIT2</td><td>TRANSL~1|translations</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>VIRTUALPRINTER</td><td>ACTIVEMEETING</td><td>VIRTUA~1|VirtualPrinter</td><td/><td>0</td><td/></row>
		<row><td>WIN_CAPTURE</td><td>PLUGIN_CONFIG</td><td>WIN-CA~1|win-capture</td><td/><td>0</td><td/></row>
		<row><td>WIN_CAPTURE2</td><td>OBS_PLUGINS2</td><td>WIN-CA~1|win-capture</td><td/><td>0</td><td/></row>
		<row><td>WIN_DECKLINK1</td><td>OBS_PLUGINS2</td><td>WIN-DE~1|win-decklink</td><td/><td>0</td><td/></row>
		<row><td>WIN_DSHOW1</td><td>OBS_PLUGINS2</td><td>WIN-DS~1|win-dshow</td><td/><td>0</td><td/></row>
		<row><td>WIN_MF1</td><td>OBS_PLUGINS2</td><td>win-mf</td><td/><td>0</td><td/></row>
		<row><td>WIN_WASAPI1</td><td>OBS_PLUGINS2</td><td>WIN-WA~1|win-wasapi</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>XPSKINRES</td><td>ACTIVEMEETING</td><td>XPSKIN~1|XPSkinRes</td><td/><td>0</td><td/></row>
		<row><td>XPSTYLE</td><td>XPSKINRES</td><td>xpstyle</td><td/><td>0</td><td/></row>
		<row><td>_</td><td>TEMPDIR</td><td>0</td><td/><td>0</td><td/></row>
		<row><td>_3</td><td>TEMPDIR</td><td>53</td><td/><td>0</td><td/></row>
		<row><td>_4BIT2</td><td>BIN1</td><td>64bit</td><td/><td>0</td><td/></row>
		<row><td>_4BIT3</td><td>OBS_PLUGINS3</td><td>64bit</td><td/><td>0</td><td/></row>
		<row><td>_6</td><td>TEMPDIR</td><td>76</td><td/><td>0</td><td/></row>
		<row><td>_7</td><td>TEMPDIR</td><td>37</td><td/><td>0</td><td/></row>
		<row><td>company_name</td><td>ProgramMenuFolder</td><td>北京航~1|北京航天云教育科技有限公司</td><td/><td>1</td><td/></row>
		<row><td>product_name</td><td>company_name</td><td>航天云~1|航天云课联网(U4)</td><td/><td>1</td><td/></row>
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
		<row><td>AlwaysInstall</td><td>ACPlayer.exe</td></row>
		<row><td>AlwaysInstall</td><td>ActiveAuto.exe</td></row>
		<row><td>AlwaysInstall</td><td>ActiveLoader.exe</td></row>
		<row><td>AlwaysInstall</td><td>ActiveLoader.exe1</td></row>
		<row><td>AlwaysInstall</td><td>ActiveMeeting.exe</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduClass.exe</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AeroEduLib.dll2</td></row>
		<row><td>AlwaysInstall</td><td>BWClientDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>Booth_Camera.exe</td></row>
		<row><td>AlwaysInstall</td><td>BugReport.exe</td></row>
		<row><td>AlwaysInstall</td><td>CEXTH.dll</td></row>
		<row><td>AlwaysInstall</td><td>CPTH.dll</td></row>
		<row><td>AlwaysInstall</td><td>CWTH.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.BrowserSubprocess.Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.BrowserSubprocess.exe</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.WinForms.dll</td></row>
		<row><td>AlwaysInstall</td><td>CefSharp.dll</td></row>
		<row><td>AlwaysInstall</td><td>ColorSpace.dll</td></row>
		<row><td>AlwaysInstall</td><td>Copier.exe</td></row>
		<row><td>AlwaysInstall</td><td>CourseManager.exe</td></row>
		<row><td>AlwaysInstall</td><td>D3Dcompiler_47.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DBSClient.exe</td></row>
		<row><td>AlwaysInstall</td><td>DMSkin.dll</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.DotNetBar2.dll</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.DotNetBar2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DevComponents.Instrumentation.dll</td></row>
		<row><td>AlwaysInstall</td><td>DirectShowSource.dll</td></row>
		<row><td>AlwaysInstall</td><td>DirectShowSource.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll1</td></row>
		<row><td>AlwaysInstall</td><td>FileCom.dll</td></row>
		<row><td>AlwaysInstall</td><td>G7xDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>H264Play.dll</td></row>
		<row><td>AlwaysInstall</td><td>H264Play.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HookSys.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAAudioLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>IACSmy.dll</td></row>
		<row><td>AlwaysInstall</td><td>IACUsage.dll</td></row>
		<row><td>AlwaysInstall</td><td>IACap.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAExpat.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAEysp.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAJ2K.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAJCmp.dll</td></row>
		<row><td>AlwaysInstall</td><td>IALA.dll</td></row>
		<row><td>AlwaysInstall</td><td>IALCmp.dll</td></row>
		<row><td>AlwaysInstall</td><td>IALmn.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAMediaAVS.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAMiscEx.dll</td></row>
		<row><td>AlwaysInstall</td><td>IANet.dll</td></row>
		<row><td>AlwaysInstall</td><td>IANet3.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAPOL.dll</td></row>
		<row><td>AlwaysInstall</td><td>IARGB256.dll</td></row>
		<row><td>AlwaysInstall</td><td>IAUNIDRV.DLL</td></row>
		<row><td>AlwaysInstall</td><td>IAUNIDRVUI.DLL</td></row>
		<row><td>AlwaysInstall</td><td>IAUNIDRV_64.DLL</td></row>
		<row><td>AlwaysInstall</td><td>IAunidrvui_64.dll</td></row>
		<row><td>AlwaysInstall</td><td>IDE_ID.vxd</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT101</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT106</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT107</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT108</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT111</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT113</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT115</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT116</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT117</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT119</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT121</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT122</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT123</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT125</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT126</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT127</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT128</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT129</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT131</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT133</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT135</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT137</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT139</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT140</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT141</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT142</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT143</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT144</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT146</td></row>
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
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT98</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT99</td></row>
		<row><td>AlwaysInstall</td><td>InstallVPrinter.exe</td></row>
		<row><td>AlwaysInstall</td><td>Mono.Security.dll</td></row>
		<row><td>AlwaysInstall</td><td>NetSdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>NetSdk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>NetSdk.dll2</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent1</td></row>
		<row><td>AlwaysInstall</td><td>NewComponent2</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Npgsql.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Core.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Gui.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Sql.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Svg.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Widgets.dll1</td></row>
		<row><td>AlwaysInstall</td><td>Record_Player.exe</td></row>
		<row><td>AlwaysInstall</td><td>Rockey.dll</td></row>
		<row><td>AlwaysInstall</td><td>RockeyVisaP.dll</td></row>
		<row><td>AlwaysInstall</td><td>SDL2.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll2</td></row>
		<row><td>AlwaysInstall</td><td>Sysset.exe</td></row>
		<row><td>AlwaysInstall</td><td>UNIDRV.HLP</td></row>
		<row><td>AlwaysInstall</td><td>UNIDRV_64.HLP</td></row>
		<row><td>AlwaysInstall</td><td>UNIRES.DLL</td></row>
		<row><td>AlwaysInstall</td><td>UNIRES_64.DLL</td></row>
		<row><td>AlwaysInstall</td><td>Z264Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>Z264Dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>_64dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>_64dec16.ax</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avdevice_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avdevice_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avfilter_6.dll</td></row>
		<row><td>AlwaysInstall</td><td>avfilter_6.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll2</td></row>
		<row><td>AlwaysInstall</td><td>avisynth.dll</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll2</td></row>
		<row><td>AlwaysInstall</td><td>booth.dll</td></row>
		<row><td>AlwaysInstall</td><td>coreaudio_encoder.dll1</td></row>
		<row><td>AlwaysInstall</td><td>cs_framework.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_logic.dll</td></row>
		<row><td>AlwaysInstall</td><td>cs_xc.dll</td></row>
		<row><td>AlwaysInstall</td><td>d3dcompiler_43.dll</td></row>
		<row><td>AlwaysInstall</td><td>d3dcompiler_47.dll</td></row>
		<row><td>AlwaysInstall</td><td>d_framework.dll</td></row>
		<row><td>AlwaysInstall</td><td>devil.dll</td></row>
		<row><td>AlwaysInstall</td><td>ffmpeg_mux64.exe1</td></row>
		<row><td>AlwaysInstall</td><td>get_graphics_offsets64.exe1</td></row>
		<row><td>AlwaysInstall</td><td>graphics_hook64.dll1</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec_v.dll</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec_v.dll1</td></row>
		<row><td>AlwaysInstall</td><td>iA264Dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>iAAVSEnv.dll</td></row>
		<row><td>AlwaysInstall</td><td>iAAudioAgent.exe</td></row>
		<row><td>AlwaysInstall</td><td>iAAudioDMOCap.dll</td></row>
		<row><td>AlwaysInstall</td><td>iADxCap.dll</td></row>
		<row><td>AlwaysInstall</td><td>iADxSnd.dll</td></row>
		<row><td>AlwaysInstall</td><td>iAVideoLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>iAYUVEff.dll</td></row>
		<row><td>AlwaysInstall</td><td>iacodec.dll</td></row>
		<row><td>AlwaysInstall</td><td>icudt54.dll1</td></row>
		<row><td>AlwaysInstall</td><td>icuin54.dll1</td></row>
		<row><td>AlwaysInstall</td><td>icuuc54.dll1</td></row>
		<row><td>AlwaysInstall</td><td>image_source.dll1</td></row>
		<row><td>AlwaysInstall</td><td>inject_helper64.exe1</td></row>
		<row><td>AlwaysInstall</td><td>lame_enc.dll</td></row>
		<row><td>AlwaysInstall</td><td>libEGL.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libEGL.dll2</td></row>
		<row><td>AlwaysInstall</td><td>libGLESv2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libGLESv2.dll2</td></row>
		<row><td>AlwaysInstall</td><td>libavcodec.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcef.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcurl.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>libgcc_s_dw2_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libiconv_2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libobs_d3d11.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libobs_opengl.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libogg_0.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libopus_0.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libportaudio_2.dll.dll</td></row>
		<row><td>AlwaysInstall</td><td>libvorbis_0.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libvorbisenc_2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libvorbisfile_3.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libx264_146.dll</td></row>
		<row><td>AlwaysInstall</td><td>libx264_148.dll</td></row>
		<row><td>AlwaysInstall</td><td>libx264_148.dll2</td></row>
		<row><td>AlwaysInstall</td><td>m_captureAudioDevice.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_captureDesk.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_recorder.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_rtsp.dll</td></row>
		<row><td>AlwaysInstall</td><td>m_transferDesk.dll</td></row>
		<row><td>AlwaysInstall</td><td>obs.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs64.exe1</td></row>
		<row><td>AlwaysInstall</td><td>obs_ffmpeg.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs_filters.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs_outputs.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs_qsv11.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs_transitions.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obs_x264.dll1</td></row>
		<row><td>AlwaysInstall</td><td>obsglad.dll1</td></row>
		<row><td>AlwaysInstall</td><td>oemuni.dll</td></row>
		<row><td>AlwaysInstall</td><td>oemuni_64.dll</td></row>
		<row><td>AlwaysInstall</td><td>opengl32sw.dll1</td></row>
		<row><td>AlwaysInstall</td><td>postproc_54.dll</td></row>
		<row><td>AlwaysInstall</td><td>pptt.dll</td></row>
		<row><td>AlwaysInstall</td><td>qdds.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qgif.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qicns.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qico.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qjp2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qjpeg.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qmng.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsqlite.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsqlmysql.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsqlodbc.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsqlpsql.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsvg.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qsvgicon.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qtga.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qtiff.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qwbmp.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qwebp.dll1</td></row>
		<row><td>AlwaysInstall</td><td>qwindows.dll1</td></row>
		<row><td>AlwaysInstall</td><td>rtmp_services.dll1</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll2</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll2</td></row>
		<row><td>AlwaysInstall</td><td>taskkill.exe</td></row>
		<row><td>AlwaysInstall</td><td>text_freetype2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>unins000.exe</td></row>
		<row><td>AlwaysInstall</td><td>vprproc.dll</td></row>
		<row><td>AlwaysInstall</td><td>vprproc_64.dll</td></row>
		<row><td>AlwaysInstall</td><td>w32_pthreads.dll1</td></row>
		<row><td>AlwaysInstall</td><td>widevinecdmadapter.dll</td></row>
		<row><td>AlwaysInstall</td><td>win_capture.dll1</td></row>
		<row><td>AlwaysInstall</td><td>win_decklink.dll1</td></row>
		<row><td>AlwaysInstall</td><td>win_dshow.dll1</td></row>
		<row><td>AlwaysInstall</td><td>win_mf.dll1</td></row>
		<row><td>AlwaysInstall</td><td>win_wasapi.dll1</td></row>
		<row><td>AlwaysInstall</td><td>wordtt.dll</td></row>
		<row><td>AlwaysInstall</td><td>zlib.dll1</td></row>
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
		<row><td>File.bak</td><td>ISX_DEFAULTCOMPONENT41</td><td>场3JSO~1.BAK|场3.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\场3.json.bak</td><td>1</td><td/></row>
		<row><td>File.bak1</td><td>ISX_DEFAULTCOMPONENT41</td><td>场场2J~1.BAK|场场2.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\场场2.json.bak</td><td>1</td><td/></row>
		<row><td>File.bak2</td><td>ISX_DEFAULTCOMPONENT41</td><td>未命名~1.BAK|未命名.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\未命名.json.bak</td><td>1</td><td/></row>
		<row><td>File.bak3</td><td>ISX_DEFAULTCOMPONENT41</td><td>远程观~1.BAK|远程观课.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\远程观课.json.bak</td><td>1</td><td/></row>
		<row><td>File.json</td><td>ISX_DEFAULTCOMPONENT41</td><td>场3~1.JSO|场3.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\场3.json</td><td>1</td><td/></row>
		<row><td>File.json1</td><td>ISX_DEFAULTCOMPONENT41</td><td>场场2~1.JSO|场场2.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\场场2.json</td><td>1</td><td/></row>
		<row><td>File.json2</td><td>ISX_DEFAULTCOMPONENT41</td><td>未命名~1.JSO|未命名.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\未命名.json</td><td>1</td><td/></row>
		<row><td>File.json3</td><td>ISX_DEFAULTCOMPONENT41</td><td>远程观~1.JSO|远程观课.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\scenes\远程观课.json</td><td>1</td><td/></row>
		<row><td>_016_08_10_16_14_28.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-10 16-14-28.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-10 16-14-28.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_32_33.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-12 17-32-33.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-12 17-32-33.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_34_24.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-12 17-34-24.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-12 17-34-24.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_37_48.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-12 17-37-48.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-12 17-37-48.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_37_48.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-12 17-37-48.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-12 17-37-48.txt</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_38_26.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-12 17-38-26.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-12 17-38-26.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_12_17_38_26.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-12 17-38-26.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-12 17-38-26.txt</td><td>1</td><td/></row>
		<row><td>_016_08_12_18_02_13.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-12 18-02-13.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-12 18-02-13.txt</td><td>1</td><td/></row>
		<row><td>_016_08_15_14_09_03.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-15 14-09-03.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-15 14-09-03.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_15_14_09_03.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-15 14-09-03.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-15 14-09-03.txt</td><td>1</td><td/></row>
		<row><td>_016_08_15_14_45_59.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-15 14-45-59.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-15 14-45-59.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_15_14_45_59.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-15 14-45-59.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-15 14-45-59.txt</td><td>1</td><td/></row>
		<row><td>_016_08_16_11_03_10.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-16 11-03-10.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-16 11-03-10.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_16_11_03_10.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-16 11-03-10.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-16 11-03-10.txt</td><td>1</td><td/></row>
		<row><td>_016_08_25_13_20_37.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-25 13-20-37.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-25 13-20-37.txt</td><td>1</td><td/></row>
		<row><td>_016_08_25_13_33_52.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-25 13-33-52.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-25 13-33-52.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_25_13_33_52.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-25 13-33-52.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-25 13-33-52.txt</td><td>1</td><td/></row>
		<row><td>_016_08_25_13_34_18.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-25 13-34-18.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-25 13-34-18.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_25_13_34_18.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-25 13-34-18.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-25 13-34-18.txt</td><td>1</td><td/></row>
		<row><td>_016_08_25_14_16_48.csv.gz</td><td>ISX_DEFAULTCOMPONENT49</td><td>2016-0~1.GZ|2016-08-25 14-16-48.csv.gz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\profiler_data\2016-08-25 14-16-48.csv.gz</td><td>1</td><td/></row>
		<row><td>_016_08_25_14_16_48.txt</td><td>ISX_DEFAULTCOMPONENT43</td><td>2016-0~1.TXT|2016-08-25 14-16-48.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\logs\2016-08-25 14-16-48.txt</td><td>1</td><td/></row>
		<row><td>_024.ini</td><td>ISX_DEFAULTCOMPONENT11</td><td>1024.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\1024.ini</td><td>1</td><td/></row>
		<row><td>_024.ini1</td><td>ISX_DEFAULTCOMPONENT14</td><td>1024.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\1024.ini</td><td>1</td><td/></row>
		<row><td>_024t.ini</td><td>ISX_DEFAULTCOMPONENT11</td><td>1024T.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\1024T.ini</td><td>1</td><td/></row>
		<row><td>_024t.ini1</td><td>ISX_DEFAULTCOMPONENT14</td><td>1024T.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\1024T.ini</td><td>1</td><td/></row>
		<row><td>_1.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>01.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\01.bmp</td><td>1</td><td/></row>
		<row><td>_2.ini</td><td>ISX_DEFAULTCOMPONENT48</td><td>32.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\win-capture\32.ini</td><td>1</td><td/></row>
		<row><td>_280.ini</td><td>ISX_DEFAULTCOMPONENT11</td><td>1280.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\1280.ini</td><td>1</td><td/></row>
		<row><td>_280t.ini</td><td>ISX_DEFAULTCOMPONENT11</td><td>1280T.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\1280T.ini</td><td>1</td><td/></row>
		<row><td>_4.ini</td><td>ISX_DEFAULTCOMPONENT48</td><td>64.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\win-capture\64.ini</td><td>1</td><td/></row>
		<row><td>_64dec.dll</td><td>_64dec.dll</td><td>264dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\264dec.dll</td><td>1</td><td/></row>
		<row><td>_64dec16.ax</td><td>_64dec16.ax</td><td>264dec16.ax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\264dec16.ax</td><td>1</td><td/></row>
		<row><td>_gitignore3</td><td>ISX_DEFAULTCOMPONENT99</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\.gitignore</td><td>1</td><td/></row>
		<row><td>_gitignore4</td><td>ISX_DEFAULTCOMPONENT101</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\.gitignore</td><td>1</td><td/></row>
		<row><td>_gitignore5</td><td>ISX_DEFAULTCOMPONENT107</td><td>GITIGN~1|.gitignore</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\.gitignore</td><td>1</td><td/></row>
		<row><td>acmtclt.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>ACMtClt.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ACMtClt.dat</td><td>1</td><td/></row>
		<row><td>acplayer.exe</td><td>ACPlayer.exe</td><td>ACPlayer.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ACPlayer.exe</td><td>1</td><td/></row>
		<row><td>acplayer_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>ACPLAY~1.INI|ACPlayer_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\ACPlayer_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>activeauto.exe</td><td>ActiveAuto.exe</td><td>ACTIVE~1.EXE|ActiveAuto.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ActiveAuto.exe</td><td>1</td><td/></row>
		<row><td>activeloader.exe</td><td>ActiveLoader.exe</td><td>ACTIVE~1.EXE|ActiveLoader.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Common Files\iActive\ActiveLoader.exe</td><td>1</td><td/></row>
		<row><td>activeloader.exe1</td><td>ActiveLoader.exe1</td><td>ACTIVE~1.EXE|ActiveLoader.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ActiveLoader.exe</td><td>1</td><td/></row>
		<row><td>activeloader.ini</td><td>ISX_DEFAULTCOMPONENT1</td><td>ACTIVE~1.INI|ActiveLoader.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Common Files\iActive\ActiveLoader.ini</td><td>1</td><td/></row>
		<row><td>activemeeting.exe</td><td>ActiveMeeting.exe</td><td>ACTIVE~1.EXE|ActiveMeeting.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ActiveMeeting.exe</td><td>1</td><td/></row>
		<row><td>activeplayerc.jpg</td><td>ISX_DEFAULTCOMPONENT19</td><td>ACTIVE~1.JPG|Activeplayerc.JPG</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\Activeplayerc.JPG</td><td>1</td><td/></row>
		<row><td>activeplayerh.jpg</td><td>ISX_DEFAULTCOMPONENT19</td><td>ACTIVE~1.JPG|ActiveplayerH.JPG</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\ActiveplayerH.JPG</td><td>1</td><td/></row>
		<row><td>activeplaythumb1.bmp</td><td>ISX_DEFAULTCOMPONENT19</td><td>ACTIVE~1.BMP|ActivePlayThumb1.BMP</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\ActivePlayThumb1.BMP</td><td>1</td><td/></row>
		<row><td>activeplaythumb2.bmp</td><td>ISX_DEFAULTCOMPONENT19</td><td>ACTIVE~1.BMP|ActivePlayThumb2.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\ActivePlayThumb2.bmp</td><td>1</td><td/></row>
		<row><td>aeroedu.db1</td><td>ISX_DEFAULTCOMPONENT101</td><td>aeroedu.db</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\aeroedu.db</td><td>1</td><td/></row>
		<row><td>aeroeduclass.exe</td><td>AeroEduClass.exe</td><td>AEROED~1.EXE|AeroEduClass.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>1</td><td/></row>
		<row><td>aeroeduclass.exe.config</td><td>ISX_DEFAULTCOMPONENT98</td><td>AEROED~1.CON|AeroEduClass.exe.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe.config</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll</td><td>AeroEduLib.dll</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll1</td><td>AeroEduLib.dll1</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>aeroedulib.dll2</td><td>AeroEduLib.dll2</td><td>AEROED~1.DLL|AeroEduLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduLib.dll</td><td>1</td><td/></row>
		<row><td>ar_sa.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>ar_sa.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ar-SA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ar-SA.ini</td><td>1</td><td/></row>
		<row><td>arrayback.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>ARRAYB~1.IAP|ArrayBack.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\ArrayBack.iap</td><td>1</td><td/></row>
		<row><td>auto.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>Auto.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Auto.ini</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll</td><td>avcodec_57.dll</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll2</td><td>avcodec_57.dll2</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avdevice_57.dll</td><td>avdevice_57.dll</td><td>AVDEVI~1.DLL|avdevice-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\avdevice-57.dll</td><td>1</td><td/></row>
		<row><td>avdevice_57.dll2</td><td>avdevice_57.dll2</td><td>AVDEVI~1.DLL|avdevice-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\avdevice-57.dll</td><td>1</td><td/></row>
		<row><td>avfilter_6.dll</td><td>avfilter_6.dll</td><td>AVFILT~1.DLL|avfilter-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\avfilter-6.dll</td><td>1</td><td/></row>
		<row><td>avfilter_6.dll2</td><td>avfilter_6.dll2</td><td>AVFILT~1.DLL|avfilter-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\avfilter-6.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll</td><td>avformat_57.dll</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll2</td><td>avformat_57.dll2</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avisynth.dll</td><td>avisynth.dll</td><td>avisynth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\avisynth.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll</td><td>avutil_55.dll</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll2</td><td>avutil_55.dll2</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>basic.ini</td><td>ISX_DEFAULTCOMPONENT39</td><td>basic.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\characters_only\basic.ini</td><td>1</td><td/></row>
		<row><td>basic.ini1</td><td>ISX_DEFAULTCOMPONENT40</td><td>basic.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\未命名\basic.ini</td><td>1</td><td/></row>
		<row><td>bg1.jpg</td><td>ISX_DEFAULTCOMPONENT4</td><td>bg1.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\bg1.jpg</td><td>1</td><td/></row>
		<row><td>bg_bg.ini10</td><td>ISX_DEFAULTCOMPONENT115</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini11</td><td>ISX_DEFAULTCOMPONENT125</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini12</td><td>ISX_DEFAULTCOMPONENT133</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini13</td><td>ISX_DEFAULTCOMPONENT135</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini14</td><td>ISX_DEFAULTCOMPONENT139</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini15</td><td>ISX_DEFAULTCOMPONENT142</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini8</td><td>ISX_DEFAULTCOMPONENT111</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bg_bg.ini9</td><td>ISX_DEFAULTCOMPONENT113</td><td>bg-BG.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\bg-BG.ini</td><td>1</td><td/></row>
		<row><td>bicubic_scale.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>BICUBI~1.EFF|bicubic_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\bicubic_scale.effect</td><td>1</td><td/></row>
		<row><td>bilinear_lowres_scale.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>BILINE~1.EFF|bilinear_lowres_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\bilinear_lowres_scale.effect</td><td>1</td><td/></row>
		<row><td>blend_add_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>BLEND_~1.EFF|blend_add_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\blend_add_filter.effect</td><td>1</td><td/></row>
		<row><td>blend_mul_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>BLEND_~1.EFF|blend_mul_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\blend_mul_filter.effect</td><td>1</td><td/></row>
		<row><td>blend_sub_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>BLEND_~1.EFF|blend_sub_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\blend_sub_filter.effect</td><td>1</td><td/></row>
		<row><td>booth.dll</td><td>booth.dll</td><td>booth.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\booth.dll</td><td>1</td><td/></row>
		<row><td>booth_camera.exe</td><td>Booth_Camera.exe</td><td>BOOTHC~1.EXE|Booth Camera.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\Booth Camera.exe</td><td>1</td><td/></row>
		<row><td>bottom.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>bottom.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\bottom.bmp</td><td>1</td><td/></row>
		<row><td>bugreport.exe</td><td>BugReport.exe</td><td>BUGREP~1.EXE|BugReport.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\BugReport.exe</td><td>1</td><td/></row>
		<row><td>bugreport.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>BUGREP~1.INI|BugReport.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\BugReport.ini</td><td>1</td><td/></row>
		<row><td>bugreport_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>BUGREP~1.INI|BugReport_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\BugReport_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>bwclientdll.dll</td><td>BWClientDll.dll</td><td>BWCLIE~1.DLL|BWClientDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\BWClientDll.dll</td><td>1</td><td/></row>
		<row><td>ca_es.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>ca_es.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ca-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ca-ES.ini</td><td>1</td><td/></row>
		<row><td>cef.pak</td><td>ISX_DEFAULTCOMPONENT98</td><td>cef.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\cef.pak</td><td>1</td><td/></row>
		<row><td>cef_100_percent.pak</td><td>ISX_DEFAULTCOMPONENT98</td><td>CEF_10~1.PAK|cef_100_percent.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\cef_100_percent.pak</td><td>1</td><td/></row>
		<row><td>cef_200_percent.pak</td><td>ISX_DEFAULTCOMPONENT98</td><td>CEF_20~1.PAK|cef_200_percent.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\cef_200_percent.pak</td><td>1</td><td/></row>
		<row><td>cef_extensions.pak</td><td>ISX_DEFAULTCOMPONENT98</td><td>CEF_EX~1.PAK|cef_extensions.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\cef_extensions.pak</td><td>1</td><td/></row>
		<row><td>cefsharp.browsersubprocess.c</td><td>CefSharp.BrowserSubprocess.Core.dll</td><td>CEFSHA~1.DLL|CefSharp.BrowserSubprocess.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.BrowserSubprocess.Core.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.browsersubprocess.e</td><td>CefSharp.BrowserSubprocess.exe</td><td>CEFSHA~1.EXE|CefSharp.BrowserSubprocess.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.BrowserSubprocess.exe</td><td>1</td><td/></row>
		<row><td>cefsharp.core.dll</td><td>CefSharp.Core.dll</td><td>CEFSHA~1.DLL|CefSharp.Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.Core.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.core.xml</td><td>ISX_DEFAULTCOMPONENT98</td><td>CEFSHA~1.XML|CefSharp.Core.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.Core.xml</td><td>1</td><td/></row>
		<row><td>cefsharp.dll</td><td>CefSharp.dll</td><td>CefSharp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.winforms.dll</td><td>CefSharp.WinForms.dll</td><td>CEFSHA~1.DLL|CefSharp.WinForms.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.WinForms.dll</td><td>1</td><td/></row>
		<row><td>cefsharp.winforms.xml</td><td>ISX_DEFAULTCOMPONENT98</td><td>CEFSHA~1.XML|CefSharp.WinForms.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.WinForms.xml</td><td>1</td><td/></row>
		<row><td>cefsharp.xml</td><td>ISX_DEFAULTCOMPONENT98</td><td>CefSharp.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\CefSharp.xml</td><td>1</td><td/></row>
		<row><td>centerclient.vdi</td><td>ISX_DEFAULTCOMPONENT4</td><td>CENTER~1.VDI|CenterClient.vdi</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CenterClient.vdi</td><td>1</td><td/></row>
		<row><td>cexth.dll</td><td>CEXTH.dll</td><td>CEXTH.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CEXTH.dll</td><td>1</td><td/></row>
		<row><td>chroma_key_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>CHROMA~1.EFF|chroma_key_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\chroma_key_filter.effect</td><td>1</td><td/></row>
		<row><td>class_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>CLASS_~1.INI|Class_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\Class_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>close.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>close.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\close.bmp</td><td>1</td><td/></row>
		<row><td>cogwheel.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>cogwheel.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\cogwheel.png</td><td>1</td><td/></row>
		<row><td>color_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>COLOR_~1.EFF|color_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\color_filter.effect</td><td>1</td><td/></row>
		<row><td>color_key_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>COLOR_~1.EFF|color_key_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\color_key_filter.effect</td><td>1</td><td/></row>
		<row><td>colorspace.dll</td><td>ColorSpace.dll</td><td>COLORS~1.DLL|ColorSpace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\ColorSpace.dll</td><td>1</td><td/></row>
		<row><td>config.xml</td><td>ISX_DEFAULTCOMPONENT98</td><td>Config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\Config.xml</td><td>1</td><td/></row>
		<row><td>copier.exe</td><td>Copier.exe</td><td>Copier.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\Copier.exe</td><td>1</td><td/></row>
		<row><td>copier.ini</td><td>ISX_DEFAULTCOMPONENT31</td><td>Copier.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\Copier.ini</td><td>1</td><td/></row>
		<row><td>coreaudio_encoder.dll1</td><td>coreaudio_encoder.dll1</td><td>COREAU~1.DLL|coreaudio-encoder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\coreaudio-encoder.dll</td><td>1</td><td/></row>
		<row><td>coursemanage.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>COURSE~1.INI|CourseManage.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\CourseManage.ini</td><td>1</td><td/></row>
		<row><td>coursemanager.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>COURSE~1.DAT|CourseManager.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CourseManager.dat</td><td>1</td><td/></row>
		<row><td>coursemanager.exe</td><td>CourseManager.exe</td><td>COURSE~1.EXE|CourseManager.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CourseManager.exe</td><td>1</td><td/></row>
		<row><td>coursetreeicon.bmp</td><td>ISX_DEFAULTCOMPONENT11</td><td>COURSE~1.BMP|CourseTreeIcon.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\CourseTreeIcon.bmp</td><td>1</td><td/></row>
		<row><td>cpf.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>cpf.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\cpf.dat</td><td>1</td><td/></row>
		<row><td>cpth.dll</td><td>CPTH.dll</td><td>CPTH.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CPTH.dll</td><td>1</td><td/></row>
		<row><td>crop_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>CROP_F~1.EFF|crop_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\crop_filter.effect</td><td>1</td><td/></row>
		<row><td>cs_cz.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_cz.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>cs-CZ.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\cs-CZ.ini</td><td>1</td><td/></row>
		<row><td>cs_framework.dll</td><td>cs_framework.dll</td><td>CS_FRA~1.DLL|cs_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\cs_framework.dll</td><td>1</td><td/></row>
		<row><td>cs_logic.dll</td><td>cs_logic.dll</td><td>cs_logic.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\cs_logic.dll</td><td>1</td><td/></row>
		<row><td>cs_xc.dll</td><td>cs_xc.dll</td><td>cs_xc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\cs_xc.dll</td><td>1</td><td/></row>
		<row><td>cwth.dll</td><td>CWTH.dll</td><td>CWTH.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\CWTH.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_43.dll</td><td>d3dcompiler_43.dll</td><td>D3DCOM~1.DLL|d3dcompiler_43.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\d3dcompiler_43.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_47.dll1</td><td>d3dcompiler_47.dll</td><td>D3DCOM~1.DLL|d3dcompiler_47.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\d3dcompiler_47.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_47.dll2</td><td>D3Dcompiler_47.dll1</td><td>D3DCOM~1.DLL|D3Dcompiler_47.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\D3Dcompiler_47.dll</td><td>1</td><td/></row>
		<row><td>d_framework.dll</td><td>d_framework.dll</td><td>D_FRAM~1.DLL|d_framework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\d_framework.dll</td><td>1</td><td/></row>
		<row><td>da_dk.ini15</td><td>ISX_DEFAULTCOMPONENT111</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini16</td><td>ISX_DEFAULTCOMPONENT113</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini17</td><td>ISX_DEFAULTCOMPONENT115</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini18</td><td>ISX_DEFAULTCOMPONENT117</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini19</td><td>ISX_DEFAULTCOMPONENT119</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini20</td><td>ISX_DEFAULTCOMPONENT123</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini21</td><td>ISX_DEFAULTCOMPONENT125</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini22</td><td>ISX_DEFAULTCOMPONENT127</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini23</td><td>ISX_DEFAULTCOMPONENT129</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini24</td><td>ISX_DEFAULTCOMPONENT131</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini25</td><td>ISX_DEFAULTCOMPONENT133</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini26</td><td>ISX_DEFAULTCOMPONENT135</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini27</td><td>ISX_DEFAULTCOMPONENT137</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini28</td><td>ISX_DEFAULTCOMPONENT139</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>da_dk.ini29</td><td>ISX_DEFAULTCOMPONENT142</td><td>da-DK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\da-DK.ini</td><td>1</td><td/></row>
		<row><td>dark.qss1</td><td>ISX_DEFAULTCOMPONENT143</td><td>Dark.qss</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark.qss</td><td>1</td><td/></row>
		<row><td>dbsclient.exe</td><td>DBSClient.exe</td><td>DBSCLI~1.EXE|DBSClient.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\DBSClient.exe</td><td>1</td><td/></row>
		<row><td>dbsclientupate.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>DBSCLI~1.INI|DBSClientUpate.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\DBSClientUpate.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>de_de.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>de-DE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\de-DE.ini</td><td>1</td><td/></row>
		<row><td>default.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEFAUL~1.EFF|default.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\default.effect</td><td>1</td><td/></row>
		<row><td>default.qss1</td><td>ISX_DEFAULTCOMPONENT143</td><td>Default.qss</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Default.qss</td><td>1</td><td/></row>
		<row><td>default_rect.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEFAUL~1.EFF|default_rect.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\default_rect.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_base.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_base.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_base.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_blend.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_blend.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_blend.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_blend_2x.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_blend_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_blend_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_discard.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_discard.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_discard.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_discard_2x.effec1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_discard_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_discard_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_linear.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_linear.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_linear.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_linear_2x.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_linear_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_linear_2x.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_yadif.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_yadif.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_yadif.effect</td><td>1</td><td/></row>
		<row><td>deinterlace_yadif_2x.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>DEINTE~1.EFF|deinterlace_yadif_2x.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\deinterlace_yadif_2x.effect</td><td>1</td><td/></row>
		<row><td>designer.dgr</td><td>ISX_DEFAULTCOMPONENT11</td><td>Designer.dgr</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Designer.dgr</td><td>1</td><td/></row>
		<row><td>designer.dgr1</td><td>ISX_DEFAULTCOMPONENT14</td><td>Designer.dgr</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Designer.dgr</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.dll</td><td>DevComponents.DotNetBar2.dll</td><td>DEVCOM~1.DLL|DevComponents.DotNetBar2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\DevComponents.DotNetBar2.dll</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.dll1</td><td>DevComponents.DotNetBar2.dll1</td><td>DEVCOM~1.DLL|DevComponents.DotNetBar2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\DevComponents.DotNetBar2.dll</td><td>1</td><td/></row>
		<row><td>devcomponents.dotnetbar2.xml</td><td>ISX_DEFAULTCOMPONENT34</td><td>DEVCOM~1.XML|DevComponents.DotNetBar2.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\DevComponents.DotNetBar2.xml</td><td>1</td><td/></row>
		<row><td>devcomponents.instrumentatio</td><td>DevComponents.Instrumentation.dll</td><td>DEVCOM~1.DLL|DevComponents.Instrumentation.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\DevComponents.Instrumentation.dll</td><td>1</td><td/></row>
		<row><td>devil.dll</td><td>devil.dll</td><td>devil.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\devil.dll</td><td>1</td><td/></row>
		<row><td>devtools_resources.pak</td><td>ISX_DEFAULTCOMPONENT98</td><td>DEVTOO~1.PAK|devtools_resources.pak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\devtools_resources.pak</td><td>1</td><td/></row>
		<row><td>directshowsource.dll</td><td>DirectShowSource.dll</td><td>DIRECT~1.DLL|DirectShowSource.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\avisynth-plugin\DirectShowSource.dll</td><td>1</td><td/></row>
		<row><td>directshowsource.dll1</td><td>DirectShowSource.dll1</td><td>DIRECT~1.DLL|DirectShowSource.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\DirectShowSource.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll</td><td>DllDeinterlace.dll</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll1</td><td>DllDeinterlace.dll1</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dmskin.dll</td><td>DMSkin.dll</td><td>DMSkin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\DMSkin.dll</td><td>1</td><td/></row>
		<row><td>down_arrow.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>DOWN_A~1.PNG|down_arrow.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\down_arrow.png</td><td>1</td><td/></row>
		<row><td>downback.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>downback.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\downback.dat</td><td>1</td><td/></row>
		<row><td>drag.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>Drag.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\Drag.iap</td><td>1</td><td/></row>
		<row><td>drag.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>Drag.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\Drag.iap</td><td>1</td><td/></row>
		<row><td>drag3.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>Drag3.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\Drag3.iap</td><td>1</td><td/></row>
		<row><td>el_gr.ini15</td><td>ISX_DEFAULTCOMPONENT111</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini16</td><td>ISX_DEFAULTCOMPONENT113</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini17</td><td>ISX_DEFAULTCOMPONENT115</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini18</td><td>ISX_DEFAULTCOMPONENT117</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini19</td><td>ISX_DEFAULTCOMPONENT119</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini20</td><td>ISX_DEFAULTCOMPONENT123</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini21</td><td>ISX_DEFAULTCOMPONENT125</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini22</td><td>ISX_DEFAULTCOMPONENT127</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini23</td><td>ISX_DEFAULTCOMPONENT129</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini24</td><td>ISX_DEFAULTCOMPONENT131</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini25</td><td>ISX_DEFAULTCOMPONENT133</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini26</td><td>ISX_DEFAULTCOMPONENT135</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini27</td><td>ISX_DEFAULTCOMPONENT137</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini28</td><td>ISX_DEFAULTCOMPONENT139</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>el_gr.ini29</td><td>ISX_DEFAULTCOMPONENT142</td><td>el-GR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\el-GR.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>en_us.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>en-US.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\en-US.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>es_es.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>es-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\es-ES.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini3</td><td>ISX_DEFAULTCOMPONENT125</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini4</td><td>ISX_DEFAULTCOMPONENT139</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>et_ee.ini5</td><td>ISX_DEFAULTCOMPONENT142</td><td>et-EE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\et-EE.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>eu_es.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>eu-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\eu-ES.ini</td><td>1</td><td/></row>
		<row><td>fade_to_color_transition.eff1</td><td>ISX_DEFAULTCOMPONENT122</td><td>FADE_T~1.EFF|fade_to_color_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\fade_to_color_transition.effect</td><td>1</td><td/></row>
		<row><td>fade_transition.effect1</td><td>ISX_DEFAULTCOMPONENT122</td><td>FADE_T~1.EFF|fade_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\fade_transition.effect</td><td>1</td><td/></row>
		<row><td>ffmpeg_mux64.exe1</td><td>ffmpeg_mux64.exe1</td><td>FFMPEG~1.EXE|ffmpeg-mux64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\ffmpeg-mux64.exe</td><td>1</td><td/></row>
		<row><td>fi_fi.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>fi_fi.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>fi-FI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\fi-FI.ini</td><td>1</td><td/></row>
		<row><td>filecom.dll</td><td>FileCom.dll</td><td>FileCom.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\FileCom.dll</td><td>1</td><td/></row>
		<row><td>font_data.bin</td><td>ISX_DEFAULTCOMPONENT47</td><td>FONT_D~1.BIN|font_data.bin</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\text-freetype2\font_data.bin</td><td>1</td><td/></row>
		<row><td>format_conversion.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>FORMAT~1.EFF|format_conversion.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\format_conversion.effect</td><td>1</td><td/></row>
		<row><td>fr_fr.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>fr_fr.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>fr-FR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\fr-FR.ini</td><td>1</td><td/></row>
		<row><td>g7xdll.dll</td><td>G7xDll.dll</td><td>G7xDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\G7xDll.dll</td><td>1</td><td/></row>
		<row><td>get_graphics_offsets64.exe1</td><td>get_graphics_offsets64.exe1</td><td>GET-GR~1.EXE|get-graphics-offsets64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\get-graphics-offsets64.exe</td><td>1</td><td/></row>
		<row><td>gl_es.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>gl_es.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>gl-ES.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\gl-ES.ini</td><td>1</td><td/></row>
		<row><td>global.ini</td><td>ISX_DEFAULTCOMPONENT36</td><td>global.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\global.ini</td><td>1</td><td/></row>
		<row><td>gplv2.txt1</td><td>ISX_DEFAULTCOMPONENT141</td><td>gplv2.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\license\gplv2.txt</td><td>1</td><td/></row>
		<row><td>graphics_hook64.dll1</td><td>graphics_hook64.dll1</td><td>GRAPHI~1.DLL|graphics-hook64.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\graphics-hook64.dll</td><td>1</td><td/></row>
		<row><td>h264play.dll</td><td>H264Play.dll</td><td>H264Play.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\H264Play.dll</td><td>1</td><td/></row>
		<row><td>h264play.dll1</td><td>H264Play.dll1</td><td>H264Play.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\H264Play.dll</td><td>1</td><td/></row>
		<row><td>hangup.wav</td><td>ISX_DEFAULTCOMPONENT21</td><td>HANGUP.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\sound\HANGUP.wav</td><td>1</td><td/></row>
		<row><td>he_il.ini10</td><td>ISX_DEFAULTCOMPONENT113</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini11</td><td>ISX_DEFAULTCOMPONENT115</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini12</td><td>ISX_DEFAULTCOMPONENT117</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini13</td><td>ISX_DEFAULTCOMPONENT119</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini14</td><td>ISX_DEFAULTCOMPONENT123</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini15</td><td>ISX_DEFAULTCOMPONENT125</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini16</td><td>ISX_DEFAULTCOMPONENT127</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini17</td><td>ISX_DEFAULTCOMPONENT129</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini18</td><td>ISX_DEFAULTCOMPONENT133</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>he_il.ini19</td><td>ISX_DEFAULTCOMPONENT142</td><td>he-IL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\he-IL.ini</td><td>1</td><td/></row>
		<row><td>hi_h264dec_v.dll</td><td>hi_h264dec_v.dll</td><td>HI_H26~1.DLL|hi_h264dec_v.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\hi_h264dec_v.dll</td><td>1</td><td/></row>
		<row><td>hi_h264dec_v.dll1</td><td>hi_h264dec_v.dll1</td><td>HI_H26~1.DLL|hi_h264dec_v.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\hi_h264dec_v.dll</td><td>1</td><td/></row>
		<row><td>hooksys.dll</td><td>HookSys.dll</td><td>HookSys.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\HookSys.dll</td><td>1</td><td/></row>
		<row><td>hr_hr.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hr_hr.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>hr-HR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\hr-HR.ini</td><td>1</td><td/></row>
		<row><td>hsbchannel.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBCHA~1.BMP|HSBChannel.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBChannel.bmp</td><td>1</td><td/></row>
		<row><td>hsbchannel.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBCHA~1.BMP|HSBChannel.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBChannel.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBLAR~1.BMP|HSBLArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBLArrowC.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBLAR~1.BMP|HSBLArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBLArrowC.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBLAR~1.BMP|HSBLArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBLArrowD.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBLAR~1.BMP|HSBLArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBLArrowD.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBLAR~1.BMP|HSBLArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBLArrowH.bmp</td><td>1</td><td/></row>
		<row><td>hsblarrowh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBLAR~1.BMP|HSBLArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBLArrowH.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBRAR~1.BMP|HSBRArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBRArrowC.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBRAR~1.BMP|HSBRArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBRArrowC.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBRAR~1.BMP|HSBRArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBRArrowD.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBRAR~1.BMP|HSBRArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBRArrowD.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowd1.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBRAR~1.BMP|HSBRArrowD1.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBRArrowD1.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBRAR~1.BMP|HSBRArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBRArrowH.bmp</td><td>1</td><td/></row>
		<row><td>hsbrarrowh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBRAR~1.BMP|HSBRArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBRArrowH.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBTHU~1.BMP|HSBThumbC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBThumbC.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBTHU~1.BMP|HSBThumbC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBThumbC.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBTHU~1.BMP|HSBThumbD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBThumbD.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBTHU~1.BMP|HSBThumbD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBThumbD.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>HSBTHU~1.BMP|HSBThumbH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\HSBThumbH.bmp</td><td>1</td><td/></row>
		<row><td>hsbthumbh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>HSBTHU~1.BMP|HSBThumbH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\HSBThumbH.bmp</td><td>1</td><td/></row>
		<row><td>htf.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>htf.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\htf.dat</td><td>1</td><td/></row>
		<row><td>hty40.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>hty40.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\hty40.dat</td><td>1</td><td/></row>
		<row><td>hty40_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>HTY40_~1.DAT|hty40_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\hty40_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>hty41.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>hty41.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\hty41.dat</td><td>1</td><td/></row>
		<row><td>hty41_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>HTY41_~1.DAT|hty41_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\hty41_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>hty42.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>hty42.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\hty42.dat</td><td>1</td><td/></row>
		<row><td>hty42_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>HTY42_~1.DAT|hty42_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\hty42_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>hu_hu.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>hu_hu.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>hu-HU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\hu-HU.ini</td><td>1</td><td/></row>
		<row><td>ia264dec.dll</td><td>iA264Dec.dll</td><td>iA264Dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iA264Dec.dll</td><td>1</td><td/></row>
		<row><td>iaagent.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>iAAgent.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAAgent.ini</td><td>1</td><td/></row>
		<row><td>iaaudioagent.exe</td><td>iAAudioAgent.exe</td><td>IAAUDI~1.EXE|iAAudioAgent.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAAudioAgent.exe</td><td>1</td><td/></row>
		<row><td>iaaudiodmocap.dll</td><td>iAAudioDMOCap.dll</td><td>IAAUDI~1.DLL|iAAudioDMOCap.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAAudioDMOCap.dll</td><td>1</td><td/></row>
		<row><td>iaaudiolib.dll</td><td>IAAudioLib.dll</td><td>IAAUDI~1.DLL|IAAudioLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAAudioLib.dll</td><td>1</td><td/></row>
		<row><td>iaavsenv.dll</td><td>iAAVSEnv.dll</td><td>iAAVSEnv.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAAVSEnv.dll</td><td>1</td><td/></row>
		<row><td>iacap.dll</td><td>IACap.dll</td><td>IACap.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IACap.dll</td><td>1</td><td/></row>
		<row><td>iacodec.dll</td><td>iacodec.dll</td><td>iacodec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iacodec.dll</td><td>1</td><td/></row>
		<row><td>iacsmy.dll</td><td>IACSmy.dll</td><td>IACSmy.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IACSmy.dll</td><td>1</td><td/></row>
		<row><td>iacusage.dll</td><td>IACUsage.dll</td><td>IACUsage.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IACUsage.dll</td><td>1</td><td/></row>
		<row><td>iadxcap.dll</td><td>iADxCap.dll</td><td>iADxCap.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iADxCap.dll</td><td>1</td><td/></row>
		<row><td>iadxsnd.dll</td><td>iADxSnd.dll</td><td>iADxSnd.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iADxSnd.dll</td><td>1</td><td/></row>
		<row><td>iaexpat.dll</td><td>IAExpat.dll</td><td>IAExpat.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAExpat.dll</td><td>1</td><td/></row>
		<row><td>iaeysp.dll</td><td>IAEysp.dll</td><td>IAEysp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAEysp.dll</td><td>1</td><td/></row>
		<row><td>iaipcamconfig.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>IAIPCA~1.DAT|IAIPCamConfig.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAIPCamConfig.dat</td><td>1</td><td/></row>
		<row><td>iaj2k.dll</td><td>IAJ2K.dll</td><td>IAJ2K.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAJ2K.dll</td><td>1</td><td/></row>
		<row><td>iajcmp.dll</td><td>IAJCmp.dll</td><td>IAJCmp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAJCmp.dll</td><td>1</td><td/></row>
		<row><td>iala.dll</td><td>IALA.dll</td><td>IALA.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IALA.dll</td><td>1</td><td/></row>
		<row><td>ialcmp.dll</td><td>IALCmp.dll</td><td>IALCmp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IALCmp.dll</td><td>1</td><td/></row>
		<row><td>ialmn.dll</td><td>IALmn.dll</td><td>IALmn.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IALmn.dll</td><td>1</td><td/></row>
		<row><td>iamediaavs.dll</td><td>IAMediaAVS.dll</td><td>IAMEDI~1.DLL|IAMediaAVS.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAMediaAVS.dll</td><td>1</td><td/></row>
		<row><td>iameeting20160901171515.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160901171515.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160901171515.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160901171539.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160901171539.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160901171539.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160914103301.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160914103301.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160914103301.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160914103521.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160914103521.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160914103521.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160914103534.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160914103534.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160914103534.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160914103543.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160914103543.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160914103543.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160914103559.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160914103559.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160914103559.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917182616.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917182616.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917182616.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917183816.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917183816.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917183816.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917183857.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917183857.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917183857.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184042.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184042.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184042.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184052.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184052.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184052.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184252.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184252.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184252.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184318.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184318.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184318.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184329.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184329.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184329.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184538.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184538.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184538.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184550.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184550.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184550.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917184817.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917184817.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917184817.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917185029.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917185029.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917185029.acz</td><td>1</td><td/></row>
		<row><td>iameeting20160917190000.acz</td><td>ISX_DEFAULTCOMPONENT9</td><td>IAMEET~1.ACZ|IAMeeting20160917190000.acz</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Log\IAMeeting20160917190000.acz</td><td>1</td><td/></row>
		<row><td>iamiscex.dll</td><td>IAMiscEx.dll</td><td>IAMiscEx.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAMiscEx.dll</td><td>1</td><td/></row>
		<row><td>ianet.dll</td><td>IANet.dll</td><td>IANet.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IANet.dll</td><td>1</td><td/></row>
		<row><td>ianet3.dll</td><td>IANet3.dll</td><td>IANet3.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IANet3.dll</td><td>1</td><td/></row>
		<row><td>iaoem.gpd</td><td>ISX_DEFAULTCOMPONENT31</td><td>IAOEM.gpd</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAOEM.gpd</td><td>1</td><td/></row>
		<row><td>iaoem_64.gpd</td><td>ISX_DEFAULTCOMPONENT31</td><td>IAOEM_64.gpd</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAOEM_64.gpd</td><td>1</td><td/></row>
		<row><td>iapol.dll</td><td>IAPOL.dll</td><td>IAPOL.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IAPOL.dll</td><td>1</td><td/></row>
		<row><td>iargb256.dll</td><td>IARGB256.dll</td><td>IARGB256.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IARGB256.dll</td><td>1</td><td/></row>
		<row><td>iasipconfig.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>IASIPC~1.INI|IASipConfig.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IASipConfig.ini</td><td>1</td><td/></row>
		<row><td>iaunidrv.dll</td><td>IAUNIDRV.DLL</td><td>IAUNIDRV.DLL</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAUNIDRV.DLL</td><td>1</td><td/></row>
		<row><td>iaunidrv_64.dll</td><td>IAUNIDRV_64.DLL</td><td>IAUNID~1.DLL|IAUNIDRV_64.DLL</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAUNIDRV_64.DLL</td><td>1</td><td/></row>
		<row><td>iaunidrvui.dll</td><td>IAUNIDRVUI.DLL</td><td>IAUNID~1.DLL|IAUNIDRVUI.DLL</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAUNIDRVUI.DLL</td><td>1</td><td/></row>
		<row><td>iaunidrvui_64.dll</td><td>IAunidrvui_64.dll</td><td>IAUNID~1.DLL|IAunidrvui_64.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\IAunidrvui_64.dll</td><td>1</td><td/></row>
		<row><td>iavideolib.dll</td><td>iAVideoLib.dll</td><td>IAVIDE~1.DLL|iAVideoLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAVideoLib.dll</td><td>1</td><td/></row>
		<row><td>iayuveff.dll</td><td>iAYUVEff.dll</td><td>iAYUVEff.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\iAYUVEff.dll</td><td>1</td><td/></row>
		<row><td>icudt54.dll1</td><td>icudt54.dll1</td><td>icudt54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\icudt54.dll</td><td>1</td><td/></row>
		<row><td>icudtl.dat</td><td>ISX_DEFAULTCOMPONENT98</td><td>icudtl.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\icudtl.dat</td><td>1</td><td/></row>
		<row><td>icuin54.dll1</td><td>icuin54.dll1</td><td>icuin54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\icuin54.dll</td><td>1</td><td/></row>
		<row><td>icuuc54.dll1</td><td>icuuc54.dll1</td><td>icuuc54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\icuuc54.dll</td><td>1</td><td/></row>
		<row><td>ide_id.vxd</td><td>IDE_ID.vxd</td><td>IDE_ID.vxd</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\IDE_ID.vxd</td><td>1</td><td/></row>
		<row><td>image3.jpg</td><td>ISX_DEFAULTCOMPONENT4</td><td>image3.jpg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\image3.jpg</td><td>1</td><td/></row>
		<row><td>image_source.dll1</td><td>image_source.dll1</td><td>IMAGE-~1.DLL|image-source.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\image-source.dll</td><td>1</td><td/></row>
		<row><td>inject_helper64.exe1</td><td>inject_helper64.exe1</td><td>INJECT~1.EXE|inject-helper64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\inject-helper64.exe</td><td>1</td><td/></row>
		<row><td>installvprinter.exe</td><td>InstallVPrinter.exe</td><td>INSTAL~1.EXE|InstallVPrinter.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\InstallVPrinter.exe</td><td>1</td><td/></row>
		<row><td>installvprinter.ini</td><td>ISX_DEFAULTCOMPONENT31</td><td>INSTAL~1.INI|InstallVPrinter.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\InstallVPrinter.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>it_it.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>it-IT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\it-IT.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>ja_jp.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ja-JP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ja-JP.ini</td><td>1</td><td/></row>
		<row><td>jj.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>jj.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\jj.dat</td><td>1</td><td/></row>
		<row><td>jj_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>JJ_RCV~1.DAT|jj_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\jj_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>ko_kr.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>ko_kr.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ko-KR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ko-KR.ini</td><td>1</td><td/></row>
		<row><td>lame_enc.dll</td><td>lame_enc.dll</td><td>lame_enc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\lame_enc.dll</td><td>1</td><td/></row>
		<row><td>lanczos_scale.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>LANCZO~1.EFF|lanczos_scale.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\lanczos_scale.effect</td><td>1</td><td/></row>
		<row><td>language.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>Language.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language.dat</td><td>1</td><td/></row>
		<row><td>left.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>left.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\left.bmp</td><td>1</td><td/></row>
		<row><td>lf.bmp</td><td>ISX_DEFAULTCOMPONENT10</td><td>lf.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\lf.bmp</td><td>1</td><td/></row>
		<row><td>libavcodec.dll</td><td>libavcodec.dll</td><td>LIBAVC~1.DLL|libavcodec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\libavcodec.dll</td><td>1</td><td/></row>
		<row><td>libcef.dll</td><td>libcef.dll</td><td>libcef.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\libcef.dll</td><td>1</td><td/></row>
		<row><td>libcurl.dll1</td><td>libcurl.dll1</td><td>libcurl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libcurl.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll</td><td>libeay32.dll</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libegl.dll1</td><td>libEGL.dll1</td><td>libEGL.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\libEGL.dll</td><td>1</td><td/></row>
		<row><td>libegl.dll2</td><td>libEGL.dll2</td><td>libEGL.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libEGL.dll</td><td>1</td><td/></row>
		<row><td>libgcc_s_dw2_1.dll</td><td>libgcc_s_dw2_1.dll</td><td>LIBGCC~1.DLL|libgcc_s_dw2-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libgcc_s_dw2-1.dll</td><td>1</td><td/></row>
		<row><td>libglesv2.dll1</td><td>libGLESv2.dll1</td><td>LIBGLE~1.DLL|libGLESv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\libGLESv2.dll</td><td>1</td><td/></row>
		<row><td>libglesv2.dll2</td><td>libGLESv2.dll2</td><td>LIBGLE~1.DLL|libGLESv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libGLESv2.dll</td><td>1</td><td/></row>
		<row><td>libiconv_2.dll</td><td>libiconv_2.dll</td><td>LIBICO~1.DLL|libiconv-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libiconv-2.dll</td><td>1</td><td/></row>
		<row><td>libobs_d3d11.dll1</td><td>libobs_d3d11.dll1</td><td>LIBOBS~1.DLL|libobs-d3d11.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libobs-d3d11.dll</td><td>1</td><td/></row>
		<row><td>libobs_opengl.dll1</td><td>libobs_opengl.dll1</td><td>LIBOBS~1.DLL|libobs-opengl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libobs-opengl.dll</td><td>1</td><td/></row>
		<row><td>libogg_0.dll1</td><td>libogg_0.dll1</td><td>libogg-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libogg-0.dll</td><td>1</td><td/></row>
		<row><td>libopus_0.dll1</td><td>libopus_0.dll1</td><td>LIBOPU~1.DLL|libopus-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libopus-0.dll</td><td>1</td><td/></row>
		<row><td>libportaudio_2.dll.dll</td><td>libportaudio_2.dll.dll</td><td>LIBPOR~1.DLL|libportaudio-2.dll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libportaudio-2.dll.dll</td><td>1</td><td/></row>
		<row><td>libvorbis_0.dll1</td><td>libvorbis_0.dll1</td><td>LIBVOR~1.DLL|libvorbis-0.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libvorbis-0.dll</td><td>1</td><td/></row>
		<row><td>libvorbisenc_2.dll1</td><td>libvorbisenc_2.dll1</td><td>LIBVOR~1.DLL|libvorbisenc-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libvorbisenc-2.dll</td><td>1</td><td/></row>
		<row><td>libvorbisfile_3.dll1</td><td>libvorbisfile_3.dll1</td><td>LIBVOR~1.DLL|libvorbisfile-3.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libvorbisfile-3.dll</td><td>1</td><td/></row>
		<row><td>libx264_146.dll</td><td>libx264_146.dll</td><td>LIBX26~1.DLL|libx264-146.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libx264-146.dll</td><td>1</td><td/></row>
		<row><td>libx264_148.dll</td><td>libx264_148.dll</td><td>LIBX26~1.DLL|libx264-148.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\libx264-148.dll</td><td>1</td><td/></row>
		<row><td>libx264_148.dll2</td><td>libx264_148.dll2</td><td>LIBX26~1.DLL|libx264-148.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\libx264-148.dll</td><td>1</td><td/></row>
		<row><td>license.xml</td><td>ISX_DEFAULTCOMPONENT98</td><td>License.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\License.xml</td><td>1</td><td/></row>
		<row><td>liveupdate_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>LIVEUP~1.INI|LiveUpdate_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\LiveUpdate_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>ln.bmp</td><td>ISX_DEFAULTCOMPONENT10</td><td>Ln.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Ln.bmp</td><td>1</td><td/></row>
		<row><td>lo.bmp</td><td>ISX_DEFAULTCOMPONENT10</td><td>lo.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\lo.bmp</td><td>1</td><td/></row>
		<row><td>locale.ini1</td><td>ISX_DEFAULTCOMPONENT140</td><td>locale.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale.ini</td><td>1</td><td/></row>
		<row><td>logo.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>LOGO.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\LOGO.iap</td><td>1</td><td/></row>
		<row><td>logo.png1</td><td>ISX_DEFAULTCOMPONENT107</td><td>logo.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\logo.png</td><td>1</td><td/></row>
		<row><td>lt_lt.ini1</td><td>ISX_DEFAULTCOMPONENT142</td><td>lt-LT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\lt-LT.ini</td><td>1</td><td/></row>
		<row><td>m_captureaudiodevice.dll</td><td>m_captureAudioDevice.dll</td><td>M_CAPT~1.DLL|m_captureAudioDevice.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\m_captureAudioDevice.dll</td><td>1</td><td/></row>
		<row><td>m_capturedesk.dll</td><td>m_captureDesk.dll</td><td>M_CAPT~1.DLL|m_captureDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\m_captureDesk.dll</td><td>1</td><td/></row>
		<row><td>m_recorder.dll</td><td>m_recorder.dll</td><td>M_RECO~1.DLL|m_recorder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\m_recorder.dll</td><td>1</td><td/></row>
		<row><td>m_rtsp.dll</td><td>m_rtsp.dll</td><td>m_rtsp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\m_rtsp.dll</td><td>1</td><td/></row>
		<row><td>m_transferdesk.dll</td><td>m_transferDesk.dll</td><td>M_TRAN~1.DLL|m_transferDesk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\m_transferDesk.dll</td><td>1</td><td/></row>
		<row><td>mains_checkc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINS_~1.IAP|MainS_CheckC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainS_CheckC.iap</td><td>1</td><td/></row>
		<row><td>mains_disable.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINS_~1.IAP|MainS_Disable.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainS_Disable.iap</td><td>1</td><td/></row>
		<row><td>mains_normalc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINS_~1.IAP|MainS_NormalC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainS_NormalC.iap</td><td>1</td><td/></row>
		<row><td>mains_normalh.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINS_~1.IAP|MainS_NormalH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainS_NormalH.iap</td><td>1</td><td/></row>
		<row><td>mainsc.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainSC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainSC.iap</td><td>1</td><td/></row>
		<row><td>mainsc_c.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainSC-C.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainSC-C.iap</td><td>1</td><td/></row>
		<row><td>mainsc_h.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainSC-H.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainSC-H.iap</td><td>1</td><td/></row>
		<row><td>mainsd.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainSD.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainSD.iap</td><td>1</td><td/></row>
		<row><td>mainsh.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainSH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainSH.iap</td><td>1</td><td/></row>
		<row><td>maint_checkc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINT_~1.IAP|MainT_CheckC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainT_CheckC.iap</td><td>1</td><td/></row>
		<row><td>maint_disable.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINT_~1.IAP|MainT_Disable.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainT_Disable.iap</td><td>1</td><td/></row>
		<row><td>maint_normalc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINT_~1.IAP|MainT_NormalC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainT_NormalC.iap</td><td>1</td><td/></row>
		<row><td>maint_normalh.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>MAINT_~1.IAP|MainT_NormalH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\MainT_NormalH.iap</td><td>1</td><td/></row>
		<row><td>maintc.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainTC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainTC.iap</td><td>1</td><td/></row>
		<row><td>maintc_c.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainTC-C.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainTC-C.iap</td><td>1</td><td/></row>
		<row><td>maintd.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainTD.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainTD.iap</td><td>1</td><td/></row>
		<row><td>mainth.iap</td><td>ISX_DEFAULTCOMPONENT16</td><td>MainTH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\MainTH.iap</td><td>1</td><td/></row>
		<row><td>manager.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>Manager.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Manager.ini</td><td>1</td><td/></row>
		<row><td>mask_alpha_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>MASK_A~1.EFF|mask_alpha_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\mask_alpha_filter.effect</td><td>1</td><td/></row>
		<row><td>mask_color_filter.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>MASK_C~1.EFF|mask_color_filter.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\mask_color_filter.effect</td><td>1</td><td/></row>
		<row><td>max.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>max.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\max.bmp</td><td>1</td><td/></row>
		<row><td>message.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>message.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\message.iap</td><td>1</td><td/></row>
		<row><td>message.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>message.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\message.iap</td><td>1</td><td/></row>
		<row><td>meta.json</td><td>ISX_DEFAULTCOMPONENT46</td><td>META~1.JSO|meta.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\rtmp-services\meta.json</td><td>1</td><td/></row>
		<row><td>min.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>min.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\min.bmp</td><td>1</td><td/></row>
		<row><td>minus.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>minus.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\minus.png</td><td>1</td><td/></row>
		<row><td>mono.security.dll</td><td>Mono.Security.dll</td><td>MONOSE~1.DLL|Mono.Security.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\Mono.Security.dll</td><td>1</td><td/></row>
		<row><td>mpg4head.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>mpg4head.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\mpg4head.dat</td><td>1</td><td/></row>
		<row><td>ms_my.ini1</td><td>ISX_DEFAULTCOMPONENT142</td><td>ms-MY.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ms-MY.ini</td><td>1</td><td/></row>
		<row><td>mt_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>MT_CHI~1.INI|MT_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\MT_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>mute.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>mute.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\mute.png</td><td>1</td><td/></row>
		<row><td>natives_blob.bin</td><td>ISX_DEFAULTCOMPONENT98</td><td>NATIVE~1.BIN|natives_blob.bin</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\natives_blob.bin</td><td>1</td><td/></row>
		<row><td>nb_no.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>nb_no.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>nb-NO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\nb-NO.ini</td><td>1</td><td/></row>
		<row><td>netcfg.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>NetCfg.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\NetCfg.dat</td><td>1</td><td/></row>
		<row><td>netsdk.dll</td><td>NetSdk.dll</td><td>NetSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\NetSdk.dll</td><td>1</td><td/></row>
		<row><td>netsdk.dll1</td><td>NetSdk.dll1</td><td>NetSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\NetSdk.dll</td><td>1</td><td/></row>
		<row><td>netsdk.dll2</td><td>NetSdk.dll2</td><td>NetSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\NetSdk.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll</td><td>Newtonsoft.Json.dll</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll1</td><td>Newtonsoft.Json.dll1</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll2</td><td>Newtonsoft.Json.dll2</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>nl_nl.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>nl_nl.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>nl-NL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\nl-NL.ini</td><td>1</td><td/></row>
		<row><td>npgsql.dll</td><td>Npgsql.dll</td><td>Npgsql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\Npgsql.dll</td><td>1</td><td/></row>
		<row><td>obs.dll1</td><td>obs.dll1</td><td>obs.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\obs.dll</td><td>1</td><td/></row>
		<row><td>obs64.exe1</td><td>obs64.exe1</td><td>obs64.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\obs64.exe</td><td>1</td><td/></row>
		<row><td>obs64.lnk1</td><td>ISX_DEFAULTCOMPONENT101</td><td>obs64.lnk</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\obs64.lnk</td><td>1</td><td/></row>
		<row><td>obs_ffmpeg.dll1</td><td>obs_ffmpeg.dll1</td><td>OBS-FF~1.DLL|obs-ffmpeg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-ffmpeg.dll</td><td>1</td><td/></row>
		<row><td>obs_filters.dll1</td><td>obs_filters.dll1</td><td>OBS-FI~1.DLL|obs-filters.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-filters.dll</td><td>1</td><td/></row>
		<row><td>obs_outputs.dll1</td><td>obs_outputs.dll1</td><td>OBS-OU~1.DLL|obs-outputs.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-outputs.dll</td><td>1</td><td/></row>
		<row><td>obs_qsv11.dll1</td><td>obs_qsv11.dll1</td><td>OBS-QS~1.DLL|obs-qsv11.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-qsv11.dll</td><td>1</td><td/></row>
		<row><td>obs_transitions.dll1</td><td>obs_transitions.dll1</td><td>OBS-TR~1.DLL|obs-transitions.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-transitions.dll</td><td>1</td><td/></row>
		<row><td>obs_x264.dll1</td><td>obs_x264.dll1</td><td>obs-x264.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\obs-x264.dll</td><td>1</td><td/></row>
		<row><td>obsglad.dll1</td><td>obsglad.dll1</td><td>obsglad.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\obsglad.dll</td><td>1</td><td/></row>
		<row><td>oem.bud</td><td>ISX_DEFAULTCOMPONENT31</td><td>oem.BUD</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oem.BUD</td><td>1</td><td/></row>
		<row><td>oem_64.bud</td><td>ISX_DEFAULTCOMPONENT31</td><td>oem_64.BUD</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oem_64.BUD</td><td>1</td><td/></row>
		<row><td>oemuni.dll</td><td>oemuni.dll</td><td>oemuni.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oemuni.dll</td><td>1</td><td/></row>
		<row><td>oemuni.ini</td><td>ISX_DEFAULTCOMPONENT31</td><td>oemuni.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oemuni.ini</td><td>1</td><td/></row>
		<row><td>oemuni_64.dll</td><td>oemuni_64.dll</td><td>OEMUNI~1.DLL|oemuni_64.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oemuni_64.dll</td><td>1</td><td/></row>
		<row><td>oemuni_64.ini</td><td>ISX_DEFAULTCOMPONENT31</td><td>OEMUNI~1.INI|oemuni_64.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\oemuni_64.ini</td><td>1</td><td/></row>
		<row><td>opaque.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>OPAQUE~1.EFF|opaque.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\opaque.effect</td><td>1</td><td/></row>
		<row><td>opengl32sw.dll1</td><td>opengl32sw.dll1</td><td>OPENGL~1.DLL|opengl32sw.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\opengl32sw.dll</td><td>1</td><td/></row>
		<row><td>package.json</td><td>ISX_DEFAULTCOMPONENT46</td><td>PACKAG~1.JSO|package.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\rtmp-services\package.json</td><td>1</td><td/></row>
		<row><td>package.json2</td><td>ISX_DEFAULTCOMPONENT126</td><td>PACKAG~1.JSO|package.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\package.json</td><td>1</td><td/></row>
		<row><td>panc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>panC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\panC.iap</td><td>1</td><td/></row>
		<row><td>panc.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>panC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\panC.iap</td><td>1</td><td/></row>
		<row><td>pancontrol.ini</td><td>ISX_DEFAULTCOMPONENT11</td><td>PANCON~1.INI|PanControl.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\PanControl.ini</td><td>1</td><td/></row>
		<row><td>pancontrol.ini1</td><td>ISX_DEFAULTCOMPONENT14</td><td>PANCON~1.INI|PanControl.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\PanControl.ini</td><td>1</td><td/></row>
		<row><td>panh.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>panH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\panH.iap</td><td>1</td><td/></row>
		<row><td>panh.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>panH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\panH.iap</td><td>1</td><td/></row>
		<row><td>pelco_d.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>PELCO-d.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\PELCO-d.ini</td><td>1</td><td/></row>
		<row><td>pelco_d_1_.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>PELCO-~1.INI|PELCO-d(1).ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\PELCO-d(1).ini</td><td>1</td><td/></row>
		<row><td>pelco_p_1_.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>PELCO-~1.INI|Pelco-P(1).ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\Pelco-P(1).ini</td><td>1</td><td/></row>
		<row><td>pelco_p_2_.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>PELCO-~1.INI|Pelco-P(2).ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\Pelco-P(2).ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>pl_pl.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>pl-PL.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\pl-PL.ini</td><td>1</td><td/></row>
		<row><td>player.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>Player.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Player.ini</td><td>1</td><td/></row>
		<row><td>playerdefault.anc</td><td>ISX_DEFAULTCOMPONENT4</td><td>PLAYER~1.ANC|PlayerDefault.anc</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlayerDefault.anc</td><td>1</td><td/></row>
		<row><td>playlist.amu</td><td>ISX_DEFAULTCOMPONENT4</td><td>PlayList.amu</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlayList.amu</td><td>1</td><td/></row>
		<row><td>plus.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>plus.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\plus.png</td><td>1</td><td/></row>
		<row><td>postproc_54.dll</td><td>postproc_54.dll</td><td>POSTPR~1.DLL|postproc-54.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\postproc-54.dll</td><td>1</td><td/></row>
		<row><td>pptt.dll</td><td>pptt.dll</td><td>pptt.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\pptt.dll</td><td>1</td><td/></row>
		<row><td>premultiplied_alpha.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>PREMUL~1.EFF|premultiplied_alpha.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\premultiplied_alpha.effect</td><td>1</td><td/></row>
		<row><td>pt_br.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_br.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>pt-BR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\pt-BR.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>pt_pt.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>pt-PT.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\pt-PT.ini</td><td>1</td><td/></row>
		<row><td>qdds.dll1</td><td>qdds.dll1</td><td>qdds.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qdds.dll</td><td>1</td><td/></row>
		<row><td>qgif.dll1</td><td>qgif.dll1</td><td>qgif.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qgif.dll</td><td>1</td><td/></row>
		<row><td>qicns.dll1</td><td>qicns.dll1</td><td>qicns.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qicns.dll</td><td>1</td><td/></row>
		<row><td>qico.dll1</td><td>qico.dll1</td><td>qico.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qico.dll</td><td>1</td><td/></row>
		<row><td>qjp2.dll1</td><td>qjp2.dll1</td><td>qjp2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qjp2.dll</td><td>1</td><td/></row>
		<row><td>qjpeg.dll1</td><td>qjpeg.dll1</td><td>qjpeg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qjpeg.dll</td><td>1</td><td/></row>
		<row><td>qmng.dll1</td><td>qmng.dll1</td><td>qmng.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qmng.dll</td><td>1</td><td/></row>
		<row><td>qsqlite.dll1</td><td>qsqlite.dll1</td><td>qsqlite.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\sqldrivers\qsqlite.dll</td><td>1</td><td/></row>
		<row><td>qsqlmysql.dll1</td><td>qsqlmysql.dll1</td><td>QSQLMY~1.DLL|qsqlmysql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\sqldrivers\qsqlmysql.dll</td><td>1</td><td/></row>
		<row><td>qsqlodbc.dll1</td><td>qsqlodbc.dll1</td><td>qsqlodbc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\sqldrivers\qsqlodbc.dll</td><td>1</td><td/></row>
		<row><td>qsqlpsql.dll1</td><td>qsqlpsql.dll1</td><td>qsqlpsql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\sqldrivers\qsqlpsql.dll</td><td>1</td><td/></row>
		<row><td>qsvg.dll1</td><td>qsvg.dll1</td><td>qsvg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qsvg.dll</td><td>1</td><td/></row>
		<row><td>qsvgicon.dll1</td><td>qsvgicon.dll1</td><td>qsvgicon.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\iconengines\qsvgicon.dll</td><td>1</td><td/></row>
		<row><td>qt5core.dll1</td><td>Qt5Core.dll1</td><td>Qt5Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\Qt5Core.dll</td><td>1</td><td/></row>
		<row><td>qt5gui.dll1</td><td>Qt5Gui.dll1</td><td>Qt5Gui.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\Qt5Gui.dll</td><td>1</td><td/></row>
		<row><td>qt5sql.dll1</td><td>Qt5Sql.dll1</td><td>Qt5Sql.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\Qt5Sql.dll</td><td>1</td><td/></row>
		<row><td>qt5svg.dll1</td><td>Qt5Svg.dll1</td><td>Qt5Svg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\Qt5Svg.dll</td><td>1</td><td/></row>
		<row><td>qt5widgets.dll1</td><td>Qt5Widgets.dll1</td><td>QT5WID~1.DLL|Qt5Widgets.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\Qt5Widgets.dll</td><td>1</td><td/></row>
		<row><td>qt_ca.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_ca.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_ca.qm</td><td>1</td><td/></row>
		<row><td>qt_cs.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_cs.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_cs.qm</td><td>1</td><td/></row>
		<row><td>qt_de.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_de.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_de.qm</td><td>1</td><td/></row>
		<row><td>qt_en.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_en.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_en.qm</td><td>1</td><td/></row>
		<row><td>qt_fi.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_fi.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_fi.qm</td><td>1</td><td/></row>
		<row><td>qt_fr.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_fr.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_fr.qm</td><td>1</td><td/></row>
		<row><td>qt_he.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_he.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_he.qm</td><td>1</td><td/></row>
		<row><td>qt_hu.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_hu.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_hu.qm</td><td>1</td><td/></row>
		<row><td>qt_it.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_it.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_it.qm</td><td>1</td><td/></row>
		<row><td>qt_ja.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_ja.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_ja.qm</td><td>1</td><td/></row>
		<row><td>qt_ko.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_ko.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_ko.qm</td><td>1</td><td/></row>
		<row><td>qt_lv.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_lv.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_lv.qm</td><td>1</td><td/></row>
		<row><td>qt_ru.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_ru.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_ru.qm</td><td>1</td><td/></row>
		<row><td>qt_sk.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_sk.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_sk.qm</td><td>1</td><td/></row>
		<row><td>qt_uk.qm1</td><td>ISX_DEFAULTCOMPONENT106</td><td>qt_uk.qm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\translations\qt_uk.qm</td><td>1</td><td/></row>
		<row><td>qtga.dll1</td><td>qtga.dll1</td><td>qtga.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qtga.dll</td><td>1</td><td/></row>
		<row><td>qtiff.dll1</td><td>qtiff.dll1</td><td>qtiff.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qtiff.dll</td><td>1</td><td/></row>
		<row><td>qwbmp.dll1</td><td>qwbmp.dll1</td><td>qwbmp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qwbmp.dll</td><td>1</td><td/></row>
		<row><td>qwebp.dll1</td><td>qwebp.dll1</td><td>qwebp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\imageformats\qwebp.dll</td><td>1</td><td/></row>
		<row><td>qwindows.dll1</td><td>qwindows.dll1</td><td>qwindows.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\platforms\qwindows.dll</td><td>1</td><td/></row>
		<row><td>read.txt</td><td>ISX_DEFAULTCOMPONENT4</td><td>read.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\read.txt</td><td>1</td><td/></row>
		<row><td>record_player.exe</td><td>Record_Player.exe</td><td>RECORD~1.EXE|Record Player.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\Record Player.exe</td><td>1</td><td/></row>
		<row><td>rer.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>rer.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\rer.dat</td><td>1</td><td/></row>
		<row><td>rer_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>RER_RC~1.DAT|rer_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\rer_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>restore.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>restore.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\restore.bmp</td><td>1</td><td/></row>
		<row><td>right.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>right.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\right.bmp</td><td>1</td><td/></row>
		<row><td>ro_ro.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>ro_ro.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ro-RO.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ro-RO.ini</td><td>1</td><td/></row>
		<row><td>rockey.dll</td><td>Rockey.dll</td><td>Rockey.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Rockey.dll</td><td>1</td><td/></row>
		<row><td>rockeyvisap.dll</td><td>RockeyVisaP.dll</td><td>ROCKEY~1.DLL|RockeyVisaP.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\RockeyVisaP.dll</td><td>1</td><td/></row>
		<row><td>rtmp_services.dll1</td><td>rtmp_services.dll1</td><td>RTMP-S~1.DLL|rtmp-services.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\rtmp-services.dll</td><td>1</td><td/></row>
		<row><td>ru_ru.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>ru_ru.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>ru-RU.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ru-RU.ini</td><td>1</td><td/></row>
		<row><td>rwer.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>rwer.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\rwer.dat</td><td>1</td><td/></row>
		<row><td>rwer_rcvfile.dat</td><td>ISX_DEFAULTCOMPONENT22</td><td>RWER_R~1.DAT|rwer_RcvFile.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\TempDir\rwer_RcvFile.dat</td><td>1</td><td/></row>
		<row><td>samplevoc.rec</td><td>ISX_DEFAULTCOMPONENT4</td><td>SAMPLE~1.REC|sampleVoc.rec</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\sampleVoc.rec</td><td>1</td><td/></row>
		<row><td>sbbottom.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>SBBottom.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\SBBottom.bmp</td><td>1</td><td/></row>
		<row><td>sbbottom.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>SBBottom.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\SBBottom.bmp</td><td>1</td><td/></row>
		<row><td>screensplash.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>SCREEN~1.IAP|ScreenSplash.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\ScreenSplash.iap</td><td>1</td><td/></row>
		<row><td>sdl2.dll</td><td>SDL2.dll</td><td>SDL2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\SDL2.dll</td><td>1</td><td/></row>
		<row><td>service.json</td><td>ISX_DEFAULTCOMPONENT39</td><td>SERVIC~1.JSO|service.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\characters_only\service.json</td><td>1</td><td/></row>
		<row><td>service.json.bak</td><td>ISX_DEFAULTCOMPONENT39</td><td>SERVIC~1.BAK|service.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\characters_only\service.json.bak</td><td>1</td><td/></row>
		<row><td>service.json.bak1</td><td>ISX_DEFAULTCOMPONENT40</td><td>SERVIC~1.BAK|service.json.bak</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\未命名\service.json.bak</td><td>1</td><td/></row>
		<row><td>service.json1</td><td>ISX_DEFAULTCOMPONENT40</td><td>SERVIC~1.JSO|service.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\basic\profiles\未命名\service.json</td><td>1</td><td/></row>
		<row><td>services.json</td><td>ISX_DEFAULTCOMPONENT46</td><td>SERVIC~1.JSO|services.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\rtmp-services\services.json</td><td>1</td><td/></row>
		<row><td>services.json2</td><td>ISX_DEFAULTCOMPONENT126</td><td>SERVIC~1.JSO|services.json</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\services.json</td><td>1</td><td/></row>
		<row><td>sharpness.effect1</td><td>ISX_DEFAULTCOMPONENT116</td><td>SHARPN~1.EFF|sharpness.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\sharpness.effect</td><td>1</td><td/></row>
		<row><td>sk_sk.ini14</td><td>ISX_DEFAULTCOMPONENT111</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini15</td><td>ISX_DEFAULTCOMPONENT113</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini16</td><td>ISX_DEFAULTCOMPONENT115</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini17</td><td>ISX_DEFAULTCOMPONENT117</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini18</td><td>ISX_DEFAULTCOMPONENT119</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini19</td><td>ISX_DEFAULTCOMPONENT125</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini20</td><td>ISX_DEFAULTCOMPONENT127</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini21</td><td>ISX_DEFAULTCOMPONENT129</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini22</td><td>ISX_DEFAULTCOMPONENT131</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini23</td><td>ISX_DEFAULTCOMPONENT133</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini24</td><td>ISX_DEFAULTCOMPONENT135</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini25</td><td>ISX_DEFAULTCOMPONENT137</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini26</td><td>ISX_DEFAULTCOMPONENT139</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>sk_sk.ini27</td><td>ISX_DEFAULTCOMPONENT142</td><td>sk-SK.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\sk-SK.ini</td><td>1</td><td/></row>
		<row><td>skin.dat</td><td>ISX_DEFAULTCOMPONENT19</td><td>skin.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\skin.dat</td><td>1</td><td/></row>
		<row><td>sl_si.ini12</td><td>ISX_DEFAULTCOMPONENT113</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini13</td><td>ISX_DEFAULTCOMPONENT115</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini14</td><td>ISX_DEFAULTCOMPONENT117</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini15</td><td>ISX_DEFAULTCOMPONENT119</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini16</td><td>ISX_DEFAULTCOMPONENT125</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini17</td><td>ISX_DEFAULTCOMPONENT127</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini18</td><td>ISX_DEFAULTCOMPONENT129</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini19</td><td>ISX_DEFAULTCOMPONENT131</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini20</td><td>ISX_DEFAULTCOMPONENT133</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini21</td><td>ISX_DEFAULTCOMPONENT135</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini22</td><td>ISX_DEFAULTCOMPONENT139</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>sl_si.ini23</td><td>ISX_DEFAULTCOMPONENT142</td><td>sl-SI.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\sl-SI.ini</td><td>1</td><td/></row>
		<row><td>slide_transition.effect1</td><td>ISX_DEFAULTCOMPONENT122</td><td>SLIDE_~1.EFF|slide_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\slide_transition.effect</td><td>1</td><td/></row>
		<row><td>smallicon.bmp</td><td>ISX_DEFAULTCOMPONENT11</td><td>SMALLI~1.BMP|SmallIcon.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\SmallIcon.bmp</td><td>1</td><td/></row>
		<row><td>smallicon.bmp1</td><td>ISX_DEFAULTCOMPONENT14</td><td>SMALLI~1.BMP|SmallIcon.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\SmallIcon.bmp</td><td>1</td><td/></row>
		<row><td>snapshot_blob.bin</td><td>ISX_DEFAULTCOMPONENT98</td><td>SNAPSH~1.BIN|snapshot_blob.bin</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\snapshot_blob.bin</td><td>1</td><td/></row>
		<row><td>solid.effect1</td><td>ISX_DEFAULTCOMPONENT108</td><td>SOLID~1.EFF|solid.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\libobs\solid.effect</td><td>1</td><td/></row>
		<row><td>sonyd100.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>SonyD100.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\SonyD100.ini</td><td>1</td><td/></row>
		<row><td>splash.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>splash.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\splash.iap</td><td>1</td><td/></row>
		<row><td>splash.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>splash.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\splash.iap</td><td>1</td><td/></row>
		<row><td>splash.jpg</td><td>ISX_DEFAULTCOMPONENT19</td><td>Splash.JPG</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\Splash.JPG</td><td>1</td><td/></row>
		<row><td>sr_cs.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_cs.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>sr-CS.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\sr-CS.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>sr_sp.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>sr-SP.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\sr-SP.ini</td><td>1</td><td/></row>
		<row><td>ssleay32.dll</td><td>ssleay32.dll</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>startclass.wav</td><td>ISX_DEFAULTCOMPONENT21</td><td>STARTC~1.WAV|StartClass.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\sound\StartClass.wav</td><td>1</td><td/></row>
		<row><td>startpage1.htm</td><td>ISX_DEFAULTCOMPONENT4</td><td>STARTP~1.HTM|StartPage1.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\StartPage1.htm</td><td>1</td><td/></row>
		<row><td>startvoice.wav</td><td>ISX_DEFAULTCOMPONENT21</td><td>STARTV~1.WAV|StartVoice.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\sound\StartVoice.wav</td><td>1</td><td/></row>
		<row><td>statusicon.bmp</td><td>ISX_DEFAULTCOMPONENT11</td><td>STATUS~1.BMP|StatusIcon.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\StatusIcon.bmp</td><td>1</td><td/></row>
		<row><td>statusicon.bmp1</td><td>ISX_DEFAULTCOMPONENT14</td><td>STATUS~1.BMP|StatusIcon.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\StatusIcon.bmp</td><td>1</td><td/></row>
		<row><td>stdnames.gpd</td><td>ISX_DEFAULTCOMPONENT31</td><td>stdnames.gpd</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\stdnames.gpd</td><td>1</td><td/></row>
		<row><td>stdnames_64.gpd</td><td>ISX_DEFAULTCOMPONENT31</td><td>STDNAM~1.GPD|STDNAMES_64.GPD</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\STDNAMES_64.GPD</td><td>1</td><td/></row>
		<row><td>streamreader.dll</td><td>StreamReader.dll</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>streamreader.dll1</td><td>StreamReader.dll1</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>streamreader.dll2</td><td>StreamReader.dll2</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>sv_se.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>sv_se.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>sv-SE.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\sv-SE.ini</td><td>1</td><td/></row>
		<row><td>swipe_transition.effect1</td><td>ISX_DEFAULTCOMPONENT122</td><td>SWIPE_~1.EFF|swipe_transition.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\swipe_transition.effect</td><td>1</td><td/></row>
		<row><td>swresample_2.dll</td><td>swresample_2.dll</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swresample_2.dll2</td><td>swresample_2.dll2</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll</td><td>swscale_4.dll</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Record Player U4\bin\Release\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll2</td><td>swscale_4.dll2</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>sysdetect_chinesegb.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>SYSDET~1.INI|SysDetect_ChineseGB.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Language\SysDetect_ChineseGB.ini</td><td>1</td><td/></row>
		<row><td>sysset.exe</td><td>Sysset.exe</td><td>Sysset.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Sysset.exe</td><td>1</td><td/></row>
		<row><td>ta_in.ini4</td><td>ISX_DEFAULTCOMPONENT111</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini5</td><td>ISX_DEFAULTCOMPONENT137</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini6</td><td>ISX_DEFAULTCOMPONENT139</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>ta_in.ini7</td><td>ISX_DEFAULTCOMPONENT142</td><td>ta-IN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\ta-IN.ini</td><td>1</td><td/></row>
		<row><td>tac20p.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>TAC20P.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\TAC20P.ini</td><td>1</td><td/></row>
		<row><td>taskkill.exe</td><td>taskkill.exe</td><td>taskkill.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\taskkill.exe</td><td>1</td><td/></row>
		<row><td>text_default.effect1</td><td>ISX_DEFAULTCOMPONENT128</td><td>TEXT_D~1.EFF|text_default.effect</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\text_default.effect</td><td>1</td><td/></row>
		<row><td>text_freetype2.dll1</td><td>text_freetype2.dll1</td><td>TEXT-F~1.DLL|text-freetype2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\text-freetype2.dll</td><td>1</td><td/></row>
		<row><td>th_th.ini10</td><td>ISX_DEFAULTCOMPONENT113</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini11</td><td>ISX_DEFAULTCOMPONENT115</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini12</td><td>ISX_DEFAULTCOMPONENT119</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini13</td><td>ISX_DEFAULTCOMPONENT125</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini14</td><td>ISX_DEFAULTCOMPONENT127</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini15</td><td>ISX_DEFAULTCOMPONENT129</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini16</td><td>ISX_DEFAULTCOMPONENT131</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini17</td><td>ISX_DEFAULTCOMPONENT135</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini18</td><td>ISX_DEFAULTCOMPONENT139</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>th_th.ini19</td><td>ISX_DEFAULTCOMPONENT142</td><td>th-TH.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\th-TH.ini</td><td>1</td><td/></row>
		<row><td>theme.ini</td><td>ISX_DEFAULTCOMPONENT33</td><td>theme.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\theme.ini</td><td>1</td><td/></row>
		<row><td>top.bmp</td><td>ISX_DEFAULTCOMPONENT33</td><td>top.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\XPSkinRes\xpstyle\top.bmp</td><td>1</td><td/></row>
		<row><td>tr_tr.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>tr_tr.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>tr-TR.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\tr-TR.ini</td><td>1</td><td/></row>
		<row><td>ui.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>ui.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\ui.iap</td><td>1</td><td/></row>
		<row><td>ui.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>ui.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\ui.iap</td><td>1</td><td/></row>
		<row><td>uk_ua.ini5</td><td>ISX_DEFAULTCOMPONENT119</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini6</td><td>ISX_DEFAULTCOMPONENT125</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini7</td><td>ISX_DEFAULTCOMPONENT127</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini8</td><td>ISX_DEFAULTCOMPONENT131</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>uk_ua.ini9</td><td>ISX_DEFAULTCOMPONENT142</td><td>uk-UA.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\uk-UA.ini</td><td>1</td><td/></row>
		<row><td>unidrv.hlp</td><td>UNIDRV.HLP</td><td>UNIDRV.HLP</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\UNIDRV.HLP</td><td>1</td><td/></row>
		<row><td>unidrv_64.hlp</td><td>UNIDRV_64.HLP</td><td>UNIDRV~1.HLP|UNIDRV_64.HLP</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\UNIDRV_64.HLP</td><td>1</td><td/></row>
		<row><td>unins000.dat</td><td>ISX_DEFAULTCOMPONENT4</td><td>unins000.dat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\unins000.dat</td><td>1</td><td/></row>
		<row><td>unins000.exe</td><td>unins000.exe</td><td>unins000.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\unins000.exe</td><td>1</td><td/></row>
		<row><td>unires.dll</td><td>UNIRES.DLL</td><td>UNIRES.DLL</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\UNIRES.DLL</td><td>1</td><td/></row>
		<row><td>unires_64.dll</td><td>UNIRES_64.DLL</td><td>UNIRES~1.DLL|UNIRES_64.DLL</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\UNIRES_64.DLL</td><td>1</td><td/></row>
		<row><td>unmute.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>unmute.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\unmute.png</td><td>1</td><td/></row>
		<row><td>up_arrow.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>up_arrow.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\up_arrow.png</td><td>1</td><td/></row>
		<row><td>update.ini</td><td>ISX_DEFAULTCOMPONENT4</td><td>Update.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Update.ini</td><td>1</td><td/></row>
		<row><td>updown.png1</td><td>ISX_DEFAULTCOMPONENT144</td><td>updown.png</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\themes\Dark\updown.png</td><td>1</td><td/></row>
		<row><td>userinfo.xml</td><td>ISX_DEFAULTCOMPONENT34</td><td>UserInfo.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\Booth Camera U4\bin\Release\UserInfo.xml</td><td>1</td><td/></row>
		<row><td>vi_vn.ini1</td><td>ISX_DEFAULTCOMPONENT142</td><td>vi-VN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\vi-VN.ini</td><td>1</td><td/></row>
		<row><td>video.bmp</td><td>ISX_DEFAULTCOMPONENT19</td><td>video.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\video.bmp</td><td>1</td><td/></row>
		<row><td>video.bmp1</td><td>ISX_DEFAULTCOMPONENT4</td><td>video.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\video.bmp</td><td>1</td><td/></row>
		<row><td>video.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>video.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\video.iap</td><td>1</td><td/></row>
		<row><td>videobarc.jpg</td><td>ISX_DEFAULTCOMPONENT19</td><td>VIDEOB~1.JPG|VideobarC.JPG</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\VideobarC.JPG</td><td>1</td><td/></row>
		<row><td>videobarh.jpg</td><td>ISX_DEFAULTCOMPONENT19</td><td>VIDEOB~1.JPG|VideobarH.JPG</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PlaySkin\Normal\VideobarH.JPG</td><td>1</td><td/></row>
		<row><td>videobmp.bmp</td><td>ISX_DEFAULTCOMPONENT4</td><td>VideoBmp.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VideoBmp.bmp</td><td>1</td><td/></row>
		<row><td>videoc.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>VideoC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\VideoC.iap</td><td>1</td><td/></row>
		<row><td>videoc.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>VideoC.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\VideoC.iap</td><td>1</td><td/></row>
		<row><td>videoh.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>VideoH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\VideoH.iap</td><td>1</td><td/></row>
		<row><td>videoh.iap1</td><td>ISX_DEFAULTCOMPONENT16</td><td>VideoH.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\Skin\VideoH.iap</td><td>1</td><td/></row>
		<row><td>videosplash.iap</td><td>ISX_DEFAULTCOMPONENT13</td><td>VIDEOS~1.IAP|VideoSplash.iap</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\Skin\VideoSplash.iap</td><td>1</td><td/></row>
		<row><td>visited_links</td><td>ISX_DEFAULTCOMPONENT45</td><td>VISITE~1|Visited Links</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obs-studio\plugin_config\obs-browser\Visited Links</td><td>1</td><td/></row>
		<row><td>vprproc.dll</td><td>vprproc.dll</td><td>vprproc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\vprproc.dll</td><td>1</td><td/></row>
		<row><td>vprproc_64.dll</td><td>vprproc_64.dll</td><td>VPRPRO~1.DLL|vprproc_64.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\VirtualPrinter\vprproc_64.dll</td><td>1</td><td/></row>
		<row><td>vsbbottom.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBBOT~1.BMP|VSBBottom.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBBottom.bmp</td><td>1</td><td/></row>
		<row><td>vsbbottom.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBBOT~1.BMP|VSBBottom.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBBottom.bmp</td><td>1</td><td/></row>
		<row><td>vsbchannel.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBCHA~1.BMP|VSBChannel.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBChannel.bmp</td><td>1</td><td/></row>
		<row><td>vsbchannel.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBCHA~1.BMP|VSBChannel.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBChannel.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBDAR~1.BMP|VSBDArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBDArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBDAR~1.BMP|VSBDArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBDArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBDAR~1.BMP|VSBDArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBDArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBDAR~1.BMP|VSBDArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBDArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBDAR~1.BMP|VSBDArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBDArrowH.bmp</td><td>1</td><td/></row>
		<row><td>vsbdarrowh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBDAR~1.BMP|VSBDArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBDArrowH.bmp</td><td>1</td><td/></row>
		<row><td>vsblarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBLAR~1.BMP|vSBLArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\vSBLArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsblarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBLAR~1.BMP|VSBLArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBLArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsblarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBLAR~1.BMP|VSBLArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBLArrowH.bmp</td><td>1</td><td/></row>
		<row><td>vsbrarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBRAR~1.BMP|VSBRArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBRArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsbrarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBRAR~1.BMP|VSBRArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBRArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsbrarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBRAR~1.BMP|VSBRArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBRArrowH.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBTHU~1.BMP|VSBThumbC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBThumbC.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBTHU~1.BMP|VSBThumbC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBThumbC.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBTHU~1.BMP|VSBThumbD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBThumbD.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBTHU~1.BMP|VSBThumbD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBThumbD.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBTHU~1.BMP|VSBThumbH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBThumbH.bmp</td><td>1</td><td/></row>
		<row><td>vsbthumbh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBTHU~1.BMP|VSBThumbH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBThumbH.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowc.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBUAR~1.BMP|VSBUArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBUArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowc.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBUAR~1.BMP|VSBUArrowC.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBUArrowC.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowd.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBUAR~1.BMP|VSBUArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBUArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowd.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBUAR~1.BMP|VSBUArrowD.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBUArrowD.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowh.bmp</td><td>ISX_DEFAULTCOMPONENT12</td><td>VSBUAR~1.BMP|VSBUArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\MtNormal\scrollskin\VSBUArrowH.bmp</td><td>1</td><td/></row>
		<row><td>vsbuarrowh.bmp1</td><td>ISX_DEFAULTCOMPONENT15</td><td>VSBUAR~1.BMP|VSBUArrowH.bmp</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Mtskin\Normal\scrollskin\VSBUArrowH.bmp</td><td>1</td><td/></row>
		<row><td>w32_pthreads.dll1</td><td>w32_pthreads.dll1</td><td>W32-PT~1.DLL|w32-pthreads.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\w32-pthreads.dll</td><td>1</td><td/></row>
		<row><td>widevinecdmadapter.dll</td><td>widevinecdmadapter.dll</td><td>WIDEVI~1.DLL|widevinecdmadapter.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\widevinecdmadapter.dll</td><td>1</td><td/></row>
		<row><td>win_capture.dll1</td><td>win_capture.dll1</td><td>WIN-CA~1.DLL|win-capture.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\win-capture.dll</td><td>1</td><td/></row>
		<row><td>win_decklink.dll1</td><td>win_decklink.dll1</td><td>WIN-DE~1.DLL|win-decklink.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\win-decklink.dll</td><td>1</td><td/></row>
		<row><td>win_dshow.dll1</td><td>win_dshow.dll1</td><td>WIN-DS~1.DLL|win-dshow.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\win-dshow.dll</td><td>1</td><td/></row>
		<row><td>win_mf.dll1</td><td>win_mf.dll1</td><td>win-mf.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\win-mf.dll</td><td>1</td><td/></row>
		<row><td>win_wasapi.dll1</td><td>win_wasapi.dll1</td><td>WIN-WA~1.DLL|win-wasapi.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\obs-plugins\64bit\win-wasapi.dll</td><td>1</td><td/></row>
		<row><td>wordtt.dll</td><td>wordtt.dll</td><td>wordtt.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\wordtt.dll</td><td>1</td><td/></row>
		<row><td>yaan.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>yaan.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\yaan.ini</td><td>1</td><td/></row>
		<row><td>yaan_12.ini</td><td>ISX_DEFAULTCOMPONENT17</td><td>yaan_12.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\PanConfig\yaan_12.ini</td><td>1</td><td/></row>
		<row><td>z264core.dll</td><td>Z264Core.dll</td><td>Z264Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Z264Core.dll</td><td>1</td><td/></row>
		<row><td>z264dec.dll</td><td>Z264Dec.dll</td><td>Z264Dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\iActive\ActiveCenter\ActiveMeeting\Z264Dec.dll</td><td>1</td><td/></row>
		<row><td>zh_cn.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_cn.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>zh-CN.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\zh-CN.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini16</td><td>ISX_DEFAULTCOMPONENT111</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\coreaudio-encoder\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini17</td><td>ISX_DEFAULTCOMPONENT113</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\image-source\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini18</td><td>ISX_DEFAULTCOMPONENT115</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-ffmpeg\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini19</td><td>ISX_DEFAULTCOMPONENT117</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-filters\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini20</td><td>ISX_DEFAULTCOMPONENT119</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-outputs\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini21</td><td>ISX_DEFAULTCOMPONENT121</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-qsv11\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini22</td><td>ISX_DEFAULTCOMPONENT123</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-transitions\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini23</td><td>ISX_DEFAULTCOMPONENT125</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\obs-x264\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini24</td><td>ISX_DEFAULTCOMPONENT127</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\rtmp-services\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini25</td><td>ISX_DEFAULTCOMPONENT129</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\text-freetype2\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini26</td><td>ISX_DEFAULTCOMPONENT131</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-capture\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini27</td><td>ISX_DEFAULTCOMPONENT133</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-decklink\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini28</td><td>ISX_DEFAULTCOMPONENT135</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-dshow\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini29</td><td>ISX_DEFAULTCOMPONENT137</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-mf\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini30</td><td>ISX_DEFAULTCOMPONENT139</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-plugins\win-wasapi\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zh_tw.ini31</td><td>ISX_DEFAULTCOMPONENT142</td><td>zh-TW.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\data\obs-studio\locale\zh-TW.ini</td><td>1</td><td/></row>
		<row><td>zlib.dll1</td><td>zlib.dll1</td><td>zlib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Code\AeroEduClass\obsbin_u4\bin\64bit\zlib.dll</td><td>1</td><td/></row>
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
		<row><td>ACPlayer.exe</td><td/><td/><td>_AB9C772A_8FE7_4F31_9F4B_5031F14E0278_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ActiveAuto.exe</td><td/><td/><td>_58C2E406_39C5_4E58_80A2_04A6982DA5C5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ActiveLoader.exe</td><td/><td/><td>_C3098F90_68DD_4B27_B8F6_4109BA180EBE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ActiveLoader.exe1</td><td/><td/><td>_84BC0DFB_9B4D_4599_A92B_5432F1B162FC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ActiveMeeting.exe</td><td/><td/><td>_51EB6DD9_9790_4B25_B87C_715580A973AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduClass.exe</td><td/><td/><td>_1981D43F_7D65_442F_BE78_2CA6846F2CCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduLib.dll</td><td/><td/><td>_D4694313_636F_4BA8_AA7A_215B167B90F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduLib.dll1</td><td/><td/><td>_9036FA6B_5CED_4012_BE7A_0AD0742EC1B4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AeroEduLib.dll2</td><td/><td/><td>_4D029D50_E47C_4A25_9767_3DA7D56A5EAC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>BWClientDll.dll</td><td/><td/><td>_6C8A7025_894E_42E0_ACB1_F6F32669FCE2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Booth_Camera.exe</td><td/><td/><td>_09944F5A_18C1_4763_BCA1_A92DB38C18DD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>BugReport.exe</td><td/><td/><td>_1284892B_757F_4BC3_ACD9_BC800370D8CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CEXTH.dll</td><td/><td/><td>_23D1F128_1770_45C0_97A9_523181B9A3A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CPTH.dll</td><td/><td/><td>_CDB81606_A042_41CE_9970_E5ED3BD4FB96_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CWTH.dll</td><td/><td/><td>_7A99C772_2DA4_40CB_9A5D_1527B3D994D9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.BrowserSubprocess.Core.dll</td><td/><td/><td>_ED114375_683E_4FC9_AF25_FED39A51DC2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.BrowserSubprocess.exe</td><td/><td/><td>_EC4ECF46_7E67_4C94_80C8_2FDCDE35663E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.Core.dll</td><td/><td/><td>_BE34ED9F_6670_4B83_A5A0_2CB42D9B7ACB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.WinForms.dll</td><td/><td/><td>_F2EBB1CC_4618_48CE_890D_3C65630B7B7D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CefSharp.dll</td><td/><td/><td>_C20F60F5_7C0C_4598_810B_057E7D557915_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ColorSpace.dll</td><td/><td/><td>_6A6453A0_531C_44C7_886B_CF1EEF3EA8BA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Copier.exe</td><td/><td/><td>_D46BC2BD_5825_4A9E_B2FA_69FAE162406F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CourseManager.exe</td><td/><td/><td>_278E9B4E_EBF1_44A0_919B_4D669EF9F297_FILTER</td><td/><td/><td/><td/></row>
		<row><td>D3Dcompiler_47.dll1</td><td/><td/><td>_4238F4C6_1AC6_4067_8E1A_16AA0FBDFACC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DBSClient.exe</td><td/><td/><td>_307CCD0B_BD3C_494A_90C4_A0A5753AFE19_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DMSkin.dll</td><td/><td/><td>_97C4FA21_B367_4966_BF7C_8B0A990D7ADF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.DotNetBar2.dll</td><td/><td/><td>_4848E816_D7D8_4004_828B_FB39708A35AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.DotNetBar2.dll1</td><td/><td/><td>_2E468D1C_3D29_4E42_A83A_2A65FFA6D669_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DevComponents.Instrumentation.dll</td><td/><td/><td>_A9F4F736_0FA4_4AFE_BEB0_2C172F84E5ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DirectShowSource.dll</td><td/><td/><td>_A0829EDC_628A_45EC_8BF7_1B32F2452A34_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DirectShowSource.dll1</td><td/><td/><td>_468C70D0_924F_4368_9D86_7DFBA99EE159_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll</td><td/><td/><td>_3579C276_BE5B_4D99_9361_CB5EC7003A84_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll1</td><td/><td/><td>_DFAD1259_B3D2_4A2C_BF5C_8D5608BF330F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>FileCom.dll</td><td/><td/><td>_CE52D516_C124_43CE_A0EF_9908C56A8A13_FILTER</td><td/><td/><td/><td/></row>
		<row><td>G7xDll.dll</td><td/><td/><td>_EFD30520_756A_4A22_9614_BF629506F9E1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>H264Play.dll</td><td/><td/><td>_A1D240E0_8BFB_4DA6_AC8E_B4A4F08DE57E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>H264Play.dll1</td><td/><td/><td>_824F45AF_BB8E_4200_8ED2_DB19C0E9996B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HookSys.dll</td><td/><td/><td>_885D8AD1_714A_4269_B2FB_0D7C6E4552CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAAudioLib.dll</td><td/><td/><td>_39A76075_1086_43D0_9968_60B9C07E61EF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IACSmy.dll</td><td/><td/><td>_4E708633_9F1B_497A_9336_4CED3BE6C6D9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IACUsage.dll</td><td/><td/><td>_A3819125_24A7_416A_AAA0_5EA768109872_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IACap.dll</td><td/><td/><td>_1E5B15C8_5CF9_44D6_9737_7C3FFF6FFFCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAExpat.dll</td><td/><td/><td>_DC8B9F0A_6E53_43B2_9288_E9561B196548_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAEysp.dll</td><td/><td/><td>_0EA9B1DC_D4B7_4D4B_BE70_8B16AAF88722_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAJ2K.dll</td><td/><td/><td>_D5CD5C40_64BD_460D_896E_5F6A69FE6072_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAJCmp.dll</td><td/><td/><td>_1BC2A29B_6CC1_4DAF_B21E_093ED0BA727A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IALA.dll</td><td/><td/><td>_671742A6_FCA0_42B1_B687_1E5854DDB9B0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IALCmp.dll</td><td/><td/><td>_B385A0C1_FD4F_4EF9_800B_46B684B20306_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IALmn.dll</td><td/><td/><td>_C8B513FB_724C_4DA2_8BDE_F1D7D8A0D3F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAMediaAVS.dll</td><td/><td/><td>_004BBAF9_D6E1_4BD9_89A5_4B83AAEAABF7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAMiscEx.dll</td><td/><td/><td>_CD624A83_0A90_481C_978A_9B298A48528D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IANet.dll</td><td/><td/><td>_8840B833_9992_4552_9CA7_F6526B3C4370_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IANet3.dll</td><td/><td/><td>_210E7A6D_11E6_4373_906C_7F5284F1C437_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAPOL.dll</td><td/><td/><td>_58698EA7_869A_448A_AC10_A4DFD4E722C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IARGB256.dll</td><td/><td/><td>_06438D5E_274D_479E_8925_810983840EAB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAUNIDRV.DLL</td><td/><td/><td>_8B92F322_FC63_44B8_90A3_BA2739B6313C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAUNIDRVUI.DLL</td><td/><td/><td>_BDCDCB5B_C22E_46E1_84A7_603A4F869131_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAUNIDRV_64.DLL</td><td/><td/><td>_C42FB5FF_BAF2_498B_B747_0E5800322802_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IAunidrvui_64.dll</td><td/><td/><td>_D5618B2D_9A77_4436_8BBC_75D50783B7E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IDE_ID.vxd</td><td/><td/><td>_555CE1CB_12BC_40E2_8101_9C72386EAC47_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_EACFF0BE_EC19_4651_A4ED_82455667FF84_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_1BE9D8CF_0148_4801_8F69_4245FBE67181_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_BD6AF582_1390_4914_B957_08EF97D3A1BE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td/><td/><td>_0C420711_6289_49BE_B3B1_528B35AA09FB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td/><td/><td>_AB260CAA_9032_4DBF_9C9D_C035F5C13C5C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td/><td/><td>_19581D2A_F7EF_4CA2_BAA4_7A4D183852EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td/><td/><td>_317FDC6C_8C93_4A0B_BF91_9A0EB859A892_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td/><td/><td>_3ED0CFF4_99D3_4702_A6F2_8098A09063DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td/><td/><td>_049840ED_B6D9_43E1_A7C6_364AB88E9998_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td/><td/><td>_6EDC80C6_47CB_41F5_A12E_71A853B396DA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td/><td/><td>_79BBCD2C_2813_469D_9729_14B656AE428D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td/><td/><td>_52A71492_B683_41A8_8990_5572541B9244_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td/><td/><td>_9488E3C5_1F9E_4B74_B16B_7D4DDB9E83C2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_FB519FA9_60CC_4F9C_AEE0_7950A39C4FB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td/><td/><td>_10877CD9_1E52_4DF2_9383_D6AA97946D5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td/><td/><td>_51A77F07_3B16_4704_A1EE_340E9AD424F7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td/><td/><td>_E45F10D8_1B6E_4F2E_AAFF_912C3F6F97CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td/><td/><td>_86BE2A9C_8FA9_4236_9E1D_DD355EEB1221_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td/><td/><td>_17E1282F_5380_4B25_8C84_78113F0CD5D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td/><td/><td>_EF7D152B_855C_4165_ABA7_73BB1E4363A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td/><td/><td>_B70B75A0_BA35_4A51_8CAD_56FA7CF9110A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td/><td/><td>_461736BE_B581_40AA_B2D2_78FFD4120BED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td/><td/><td>_CB390D71_C6F0_45DB_9A1C_5BE2253648B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td/><td/><td>_EA5CB780_CCCC_4139_86A6_FDCB39B26AE0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_87C95609_F99F_49A2_A141_6B9577A6AC35_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td/><td/><td>_BAD29E20_EA2C_4266_A2A6_C4773F0588AC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td/><td/><td>_FB5BF08C_66BF_4722_AA2E_15126D885E71_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td/><td/><td>_2D9FB6A7_83A4_423D_86D3_241AD6C1E843_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td/><td/><td>_DE9023E5_97E5_4AED_A550_8068E11C800C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td/><td/><td>_156FD753_D9A1_45CD_B50C_687D2151DBE5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td/><td/><td>_8224F366_9759_4F48_BCB8_B30C869EBFC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td/><td/><td>_71789856_8936_4A4D_ACCE_7DFA791187AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td/><td/><td>_3CAA1873_1860_47B9_A1CA_0D16DB715DA3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td/><td/><td>_A752E6EA_0C9A_46CB_8F88_A5534EA5995C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td/><td/><td>_545FE175_9D29_4C7E_99C7_02CB29E39D4F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_816374B6_38E6_4DC0_8E0C_9B26456611B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td/><td/><td>_ADD3F3BF_18D6_45CD_BAC3_BECE10DAD489_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td/><td/><td>_C29EA849_9898_4E9F_804F_2A1C9D54E95A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td/><td/><td>_126B46B5_6720_49A3_ABC1_8E703148DAE7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td/><td/><td>_239F57C3_79F0_475D_BE2C_1F54699DF0C2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td/><td/><td>_A7D89A16_6B45_42C9_AC90_6B1CBCCF3072_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td/><td/><td>_15F51DAF_54AF_449B_8ABD_802777C186E2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td/><td/><td>_CD67564E_9548_42C5_BF80_B696193E244F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td/><td/><td>_7287E3A1_4EC6_4E9D_A1B5_C124787C2D7A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td/><td/><td>_D87BF4AB_D9B6_4889_8FE1_7123E8B9AE6E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td/><td/><td>_A042BDEC_4077_4616_9FAC_2B440376EA23_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_7B5CF5C9_35EF_4CD9_BD16_57367E000176_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td/><td/><td>_BA725370_348C_43EE_877C_FA6D74ACC08A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td/><td/><td>_73C35089_801C_4891_8222_2F226F3A6D38_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td/><td/><td>_4308DCB0_04CF_4A81_8833_F3A8EE95E62D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td/><td/><td>_DEC8052E_DE9C_46BF_9204_41F840A579CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td/><td/><td>_9758F070_4049_46A6_A7B5_CAA80C00A73A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td/><td/><td>_5337C5BE_41E9_4CD0_9EF7_A76277A065F4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td/><td/><td>_4BDFFE62_21DD_4A33_A3CC_9636E319F391_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_EE1EA830_EF73_4DFB_86ED_D10EFEE4FFBD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_46936C41_2A2F_40E8_9FA3_62BD74384E33_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_7C819C3A_5529_45AA_A28D_5397B2005C60_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_A293699C_85CE_46A7_98EB_215C990F1D7B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_B0DB6275_C53A_4287_A845_AEA37EDD7FAC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_1AAC3E6C_31E5_4961_A76F_3F532D2B9069_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_D9040447_79D5_47A5_AB63_33E7728D22EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_965B237E_E873_44CA_9173_845318470E34_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_033EE4D6_4E7F_46D9_AD8D_3B0B62EBD395_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_CE2DB11C_977E_4554_83C9_986258E197D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_B0A87A34_A990_4DE5_A41E_BDA6A08461E2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_80C00ACD_FE7D_4BE7_9190_1D635E2C7DAA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td/><td/><td>_96AAD551_9890_4D78_9D56_25B51D83C44A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td/><td/><td>_9C66435B_2C00_48C1_909C_9AEBC0904869_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td/><td/><td>_4779132D_48AF_4DB6_9F3E_ADB709E31AE2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td/><td/><td>_6C04D3A2_71CF_4CE3_B39D_5245F76D7022_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_4E71FDB8_8151_4E8B_BC54_2AB4DDB4769F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td/><td/><td>_36BC733E_D31F_4676_9921_5858844F7E39_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td/><td/><td>_05FFDB28_A0D1_4300_A150_9EFE49F277A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td/><td/><td>_C5F37293_B90A_4C4D_BAF8_E56A04B3798F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td/><td/><td>_EBA8A954_664D_4A3D_9887_CAF3072118D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td/><td/><td>_C22D7EA9_7CAE_407E_98C1_EB410F8BE582_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td/><td/><td>_D086D2FC_90F1_4092_87D5_2E7906ADA6A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td/><td/><td>_313FA231_9784_4BE3_A347_4842B8BEC707_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td/><td/><td>_25290C14_1248_4256_ADAE_6798647828D6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td/><td/><td>_BB904825_F2AE_4A9F_8667_8B47446BBCDF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td/><td/><td>_FE5DB406_771A_44CC_B4BE_FBE8F1735F04_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_F94E4864_BFFF_4CCF_9031_ADFA8F58FAB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td/><td/><td>_419DFE33_3F60_43EB_AD98_CF70BAB86710_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td/><td/><td>_98BF03D0_5806_4006_A7B6_40DAAA12472F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td/><td/><td>_7EB87635_C097_434B_BE9C_F4B6200268E1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td/><td/><td>_5716F124_39B9_422E_A06A_ABBE969B813D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td/><td/><td>_6CD11FD6_AD45_479F_8B6A_4AC5EE1B36C8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td/><td/><td>_3AFD09E2_EA61_4B3A_B135_0BCB6E9F7307_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td/><td/><td>_359E79C9_F748_4CD0_B389_3B203D412920_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td/><td/><td>_2B655814_A02C_4AE0_BB73_BBC534F4D97A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td/><td/><td>_DD4109F2_0C15_4233_832D_991FAB379EB2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td/><td/><td>_225D4561_BFE4_45D6_8EB2_D8280EC8FEF1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_EBA23200_ED64_4C37_AE8C_E2F7483FA60B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_6E8E347D_9E0D_4347_8C81_EE575369AD26_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_B3458F34_B56D_493B_AEFD_09D6641FF67A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_986442A6_9552_4D1A_A67E_1CA3ED1EA2E4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_2BE7DABA_406F_4587_999B_9BA36FDB1F36_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td/><td/><td>_694BCDC0_0B0E_4B73_B044_3EC454DF857E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td/><td/><td>_A19B379B_3B17_4AF5_9502_0A82A4F2FA43_FILTER</td><td/><td/><td/><td/></row>
		<row><td>InstallVPrinter.exe</td><td/><td/><td>_50C18F2D_C11E_41D1_A663_B5847C8B4CE3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Mono.Security.dll</td><td/><td/><td>_908F1186_8F20_45E0_9D75_A3BCB2AB03F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetSdk.dll</td><td/><td/><td>_6DA258DD_FED9_4E6D_82A2_81BCAA0376AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetSdk.dll1</td><td/><td/><td>_DF417948_9AB3_46A6_A1E4_1BDBD601D6C3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetSdk.dll2</td><td/><td/><td>_074D41FA_B7AA_4A68_9DF2_068CD804123E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent1</td><td/><td/><td>_81575D5D_BF54_4F7E_89B1_A35B55F7A2D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NewComponent2</td><td/><td/><td>_84738CE9_E713_47D2_8DCE_3E3B2814039E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll</td><td/><td/><td>_20226D82_58D4_4806_B86C_F60368F4C477_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll1</td><td/><td/><td>_13CAA3E2_B006_4167_B628_A8C88E813CB7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll2</td><td/><td/><td>_D6C7165C_82BA_4B8A_A4AE_2931E50E9623_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Npgsql.dll</td><td/><td/><td>_FE1CEC85_5D54_48A3_9CD4_5FF51E47CE16_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Core.dll1</td><td/><td/><td>_D3B3C677_0221_4BB0_9265_9CD8BD0C30AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Gui.dll1</td><td/><td/><td>_0356424F_58F3_4D20_9220_7A5D672837E7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Sql.dll1</td><td/><td/><td>_377BADC3_68EE_4BBD_8123_5EDCCF213A3A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Svg.dll1</td><td/><td/><td>_D41D9C3E_6C45_40F1_BA84_041446CF7FC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Widgets.dll1</td><td/><td/><td>_AAE9E5CA_FAA9_4693_83EE_60C6083E356A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Record_Player.exe</td><td/><td/><td>_8285A388_0AE0_44F7_B82E_78F17DC520E6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Rockey.dll</td><td/><td/><td>_6EAD0CFA_FCC6_4ACC_8AA4_1DF97AF80A25_FILTER</td><td/><td/><td/><td/></row>
		<row><td>RockeyVisaP.dll</td><td/><td/><td>_3C8BBF03_97E4_4744_89F9_A3C5CAD95BDA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SDL2.dll</td><td/><td/><td>_15DE2A04_8CCA_4AF7_9530_0B2057B0EAC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll</td><td/><td/><td>_AC685F2F_FF4A_47B1_B836_239230C8D2D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll1</td><td/><td/><td>_54548071_C636_48A7_ADA8_DFD3D78271CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll2</td><td/><td/><td>_9638AB2D_AA79_4543_BE47_B8E64B53C638_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Sysset.exe</td><td/><td/><td>_7C116E51_2131_4B5F_A03D_2AE7DDA9B7E1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>UNIDRV.HLP</td><td/><td/><td>_6677A79A_CD93_40ED_BA84_AE00C230C339_FILTER</td><td/><td/><td/><td/></row>
		<row><td>UNIDRV_64.HLP</td><td/><td/><td>_F6A652D9_1C6F_4708_AFA1_8B69944BA3A2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>UNIRES.DLL</td><td/><td/><td>_07018370_CD34_4F77_9C41_B0D41D386998_FILTER</td><td/><td/><td/><td/></row>
		<row><td>UNIRES_64.DLL</td><td/><td/><td>_5AD6C7A7_6830_448F_B552_3D0C7C421856_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Z264Core.dll</td><td/><td/><td>_72337CEC_0C98_4A94_9EF6_BD8A113B841A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Z264Dec.dll</td><td/><td/><td>_E11C9BE5_84A1_4F7D_A8D0_747E45B96754_FILTER</td><td/><td/><td/><td/></row>
		<row><td>_64dec.dll</td><td/><td/><td>_BA2DA408_44FC_48EB_A44F_CD31530DB4A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>_64dec16.ax</td><td/><td/><td>_84910465_037B_410B_BCCB_196EB56F26E6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll</td><td/><td/><td>_E35B3F65_C891_45D1_99B9_A2AB7FFFD4A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll2</td><td/><td/><td>_5063D85B_14BF_49CC_B0BD_ABB8F76FC11E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avdevice_57.dll</td><td/><td/><td>_2BF5A99A_8100_4148_BB05_FB58DB5ED56B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avdevice_57.dll2</td><td/><td/><td>_B9A0C945_2B65_4B63_93CE_18285B711349_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avfilter_6.dll</td><td/><td/><td>_3D843E2A_0B0E_4F96_85E1_833BD677D705_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avfilter_6.dll2</td><td/><td/><td>_97AE58DA_DBEF_4984_9B6F_7F4F264A9150_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll</td><td/><td/><td>_3C9CF8AC_3A2F_4C5D_8B4B_0DF2E7152137_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll2</td><td/><td/><td>_AF147DC0_2646_4F13_A660_1CA50D9B8E3E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avisynth.dll</td><td/><td/><td>_2BEE8154_A320_48B1_B052_33709CC48701_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll</td><td/><td/><td>_3862FDD2_F9F4_40A0_BFFB_31835647B933_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll2</td><td/><td/><td>_79D8E17D_1B84_4A86_9C35_0EB9560A6196_FILTER</td><td/><td/><td/><td/></row>
		<row><td>booth.dll</td><td/><td/><td>_0B6A1D27_5AD9_48E6_BAFD_CAD3E5806DB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>coreaudio_encoder.dll1</td><td/><td/><td>_F4332230_2D1B_4686_B0B2_6187DDD55D91_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_framework.dll</td><td/><td/><td>_D2FB92C9_8AD3_46EC_A3D1_9770515F028C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_logic.dll</td><td/><td/><td>_D12ED6C2_4911_4EBC_A69C_BCCE169BCE3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cs_xc.dll</td><td/><td/><td>_E0E12C55_64F1_468C_B832_D6C8E5BF3344_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d3dcompiler_43.dll</td><td/><td/><td>_CCD057BE_3617_471D_BF6B_1D80B2A1CEEC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d3dcompiler_47.dll</td><td/><td/><td>_210249A7_EC37_4F0C_9815_F1278DE6FE19_FILTER</td><td/><td/><td/><td/></row>
		<row><td>d_framework.dll</td><td/><td/><td>_E9584BE9_51BD_4B8F_BD58_DB063A093F52_FILTER</td><td/><td/><td/><td/></row>
		<row><td>devil.dll</td><td/><td/><td>_41215057_2ADA_4588_A1CB_9E34D6FB1EC0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ffmpeg_mux64.exe1</td><td/><td/><td>_620902FF_D08C_4AB4_B0F4_40DFE39240E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>get_graphics_offsets64.exe1</td><td/><td/><td>_72ABC55C_CAA1_450E_AC42_FE422A572918_FILTER</td><td/><td/><td/><td/></row>
		<row><td>graphics_hook64.dll1</td><td/><td/><td>_710DD00A_5735_4DEF_998B_821989DE72F2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec_v.dll</td><td/><td/><td>_5DF9071A_B25B_4449_BA9A_667E907B206D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec_v.dll1</td><td/><td/><td>_1EE6C783_AD32_41B5_8D60_8D9E0B1FA4CA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iA264Dec.dll</td><td/><td/><td>_4C2D09DD_04C5_47C2_AF03_69DA4C366572_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iAAVSEnv.dll</td><td/><td/><td>_2CA498DE_611B_4F0B_9C89_75A5F5E00E36_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iAAudioAgent.exe</td><td/><td/><td>_D9D1BFA1_2571_4982_9DFF_6C0BD94C9167_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iAAudioDMOCap.dll</td><td/><td/><td>_CF5578EB_9E8F_4C7E_90D9_0E46AF4C68C2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iADxCap.dll</td><td/><td/><td>_AEB08AA3_932D_4AF6_8564_F6EB020EAE01_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iADxSnd.dll</td><td/><td/><td>_A5B0E7E3_20AA_4B0F_9D42_C39691C03D6C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iAVideoLib.dll</td><td/><td/><td>_C35A5BBC_DA13_4D69_AA45_D3A323811CD4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iAYUVEff.dll</td><td/><td/><td>_018EFBBE_9659_4CCB_995F_6FB014106FD2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iacodec.dll</td><td/><td/><td>_3FE9F07C_948D_4E32_905B_5D9434C61566_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icudt54.dll1</td><td/><td/><td>_90B2840B_397D_42E7_8792_F0ACA101468A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuin54.dll1</td><td/><td/><td>_26C57DB1_F8DA_4B51_B9CB_A2F53BAA077A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuuc54.dll1</td><td/><td/><td>_FA1ED56B_6C2E_440B_BE5B_3354537ECEBB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>image_source.dll1</td><td/><td/><td>_0C77F501_27C2_40A4_9153_98EA0B04F99B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>inject_helper64.exe1</td><td/><td/><td>_F6339A4D_63F5_4755_9DD8_CC6841CB66EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>lame_enc.dll</td><td/><td/><td>_152D5427_C6D2_4C64_ABB4_60D351B4F53B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libEGL.dll1</td><td/><td/><td>_204DD41F_022D_474E_A59A_AFC36741715C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libEGL.dll2</td><td/><td/><td>_C2B44FE2_DD6A_4538_B5AA_7DE6206D8591_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libGLESv2.dll1</td><td/><td/><td>_016BB07A_6F26_4EC5_8866_BC69D5103FF7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libGLESv2.dll2</td><td/><td/><td>_54BFB5DA_7469_448E_8F28_A83877B4E044_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libavcodec.dll</td><td/><td/><td>_4BB08866_F2B6_48C4_A073_DCAA70625D09_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcef.dll</td><td/><td/><td>_5D94165F_56A4_482D_A3EA_393A9B44F421_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcurl.dll1</td><td/><td/><td>_94F707FE_F658_491C_A43B_527035D3C57B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll</td><td/><td/><td>_C5F203B7_F250_49D0_9122_5DD1D6F35575_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libgcc_s_dw2_1.dll</td><td/><td/><td>_9349259D_3BF3_4744_81C0_DEB02CD94E03_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libiconv_2.dll</td><td/><td/><td>_12C39B76_258C_4809_968F_CF581B2FB7D9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libobs_d3d11.dll1</td><td/><td/><td>_593BAE5C_B518_4EE8_97F4_F1108FF39C4B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libobs_opengl.dll1</td><td/><td/><td>_DF7CF15D_49DD_454D_8AE6_A00C5F2925E0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libogg_0.dll1</td><td/><td/><td>_ED50F23C_4F02_4940_A58C_93B07E66805F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libopus_0.dll1</td><td/><td/><td>_8084A7B6_B3D1_434A_B856_D9D87F300D9B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libportaudio_2.dll.dll</td><td/><td/><td>_7727980D_CF8A_4C03_8CE0_5B3761BE2767_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbis_0.dll1</td><td/><td/><td>_65B2D467_538B_4AF3_AC1B_332E1F268BF4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbisenc_2.dll1</td><td/><td/><td>_EDB6D824_519D_4F51_ACCF_2BAF6AC94AF7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libvorbisfile_3.dll1</td><td/><td/><td>_3597F245_A7E6_4E5B_9AFE_6E9433A65C2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_146.dll</td><td/><td/><td>_58FAA05E_8359_4D26_8C0F_2217BC653D4A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_148.dll</td><td/><td/><td>_490B7B4E_8034_4E0A_814C_28D5B56A9529_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libx264_148.dll2</td><td/><td/><td>_0E809CC1_4AB3_4D39_8512_C31E5552831F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureAudioDevice.dll</td><td/><td/><td>_16009F85_C335_4347_A88D_766C85512BC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_captureDesk.dll</td><td/><td/><td>_5B75B5E3_A81A_403C_8A0F_902A1DF4BAF1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_recorder.dll</td><td/><td/><td>_EA95711E_4A2E_4E57_B246_BCAB096D3FA8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_rtsp.dll</td><td/><td/><td>_FE4ED0C9_9B15_4B10_8145_CDB253A45F36_FILTER</td><td/><td/><td/><td/></row>
		<row><td>m_transferDesk.dll</td><td/><td/><td>_ECA8006B_D815_415A_B70A_7AC86F4DBA71_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs.dll1</td><td/><td/><td>_B5D2CF19_809E_4228_9063_21DAB4A5A191_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs64.exe1</td><td/><td/><td>_3D60E8AD_A57F_47E2_8D9F_18AFBFCAA99E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_ffmpeg.dll1</td><td/><td/><td>_AB0BC922_C27B_4EAE_A6F9_7C92F36072EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_filters.dll1</td><td/><td/><td>_355F680A_49C2_4852_9ADF_21D1F4D37DE0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_outputs.dll1</td><td/><td/><td>_58ACDB22_5A90_47D7_8C1E_13F63ECF39C3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_qsv11.dll1</td><td/><td/><td>_3F972872_A989_4A70_9F93_6E7BB50997A6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_transitions.dll1</td><td/><td/><td>_80754612_6B6D_494C_958E_03FDDE03B3C0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obs_x264.dll1</td><td/><td/><td>_12CAD93B_86DE_47E4_BD0D_487D8BF24132_FILTER</td><td/><td/><td/><td/></row>
		<row><td>obsglad.dll1</td><td/><td/><td>_59A580C5_DC8C_43D8_9746_BB2FCF687C90_FILTER</td><td/><td/><td/><td/></row>
		<row><td>oemuni.dll</td><td/><td/><td>_A3259A16_8B34_4B0F_BC8D_3D32D8F45DE8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>oemuni_64.dll</td><td/><td/><td>_D2E0AE08_617F_4789_B924_291A7371D924_FILTER</td><td/><td/><td/><td/></row>
		<row><td>opengl32sw.dll1</td><td/><td/><td>_E49169C4_0192_40FC_98E6_A250CEA60D31_FILTER</td><td/><td/><td/><td/></row>
		<row><td>postproc_54.dll</td><td/><td/><td>_5406C4E2_ADE1_4A2A_9A2A_5A57766AF285_FILTER</td><td/><td/><td/><td/></row>
		<row><td>pptt.dll</td><td/><td/><td>_BF9F4F5B_69DC_44AC_9FD2_DD11E9F99E68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qdds.dll1</td><td/><td/><td>_CA6C0F4E_AAA1_47A4_AFAD_EF1299F018B5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qgif.dll1</td><td/><td/><td>_9B0ED855_7074_408E_B95C_41551928145D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qicns.dll1</td><td/><td/><td>_492624BD_CEA8_42BF_93FD_849F8E890C29_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qico.dll1</td><td/><td/><td>_7FA95FD6_C5FB_417D_B56D_DC144E798E61_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qjp2.dll1</td><td/><td/><td>_A42EFDDC_BAAA_486E_ACAF_F4F14E07245B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qjpeg.dll1</td><td/><td/><td>_3A7EE738_D784_4FE8_B5BC_9DDE22224632_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qmng.dll1</td><td/><td/><td>_DE8376AB_7D28_45CC_BE36_8E36FAC850C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlite.dll1</td><td/><td/><td>_6BA3B836_39C5_447D_9D08_E8A04492D59D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlmysql.dll1</td><td/><td/><td>_51301F12_9000_4721_A935_C1B690424B8A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlodbc.dll1</td><td/><td/><td>_FC4463D5_FF39_47CE_8D36_FA4DA34F146E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsqlpsql.dll1</td><td/><td/><td>_2033AD53_59CF_4E4E_9985_61CEE7E9D88D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsvg.dll1</td><td/><td/><td>_66D27ADD_F6E8_46EA_8299_BFB70989B0DF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qsvgicon.dll1</td><td/><td/><td>_4BD5FCDA_6D02_4FC1_B7EE_0CD4A282E17B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qtga.dll1</td><td/><td/><td>_7F7734B4_1F66_4FDC_A121_4A1EB80510B4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qtiff.dll1</td><td/><td/><td>_AF6C4C64_4A6F_4D7D_8155_8A8F0A2EEDF3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwbmp.dll1</td><td/><td/><td>_7CD06F98_3AD4_4408_B505_9A9A4F56CA22_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwebp.dll1</td><td/><td/><td>_BAAF15C6_E414_4957_981A_5030FD649E4F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwindows.dll1</td><td/><td/><td>_999CA3B2_82B6_410B_9264_7DAB2915DD79_FILTER</td><td/><td/><td/><td/></row>
		<row><td>rtmp_services.dll1</td><td/><td/><td>_C44A5B14_B748_418C_A1C4_AEBF5515C195_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll</td><td/><td/><td>_C6E47BBB_5727_4625_9E4C_ABC8061C5CB7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll</td><td/><td/><td>_867F46D0_97EF_4066_A480_D3A5198EF514_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll2</td><td/><td/><td>_A82BC606_EE61_46CB_8BE8_D99B54F2511A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll</td><td/><td/><td>_0A3A391B_A736_49AE_AEF7_5579DB36B9F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll2</td><td/><td/><td>_25393144_4154_4A20_B201_2C2B4C573BFF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>taskkill.exe</td><td/><td/><td>_D3E9F0C5_AECF_4295_8D22_4BC63EA16D61_FILTER</td><td/><td/><td/><td/></row>
		<row><td>text_freetype2.dll1</td><td/><td/><td>_810F0160_8C8E_44B3_89C7_97A86209A95D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>unins000.exe</td><td/><td/><td>_8B976641_EDBD_43E9_B037_2B4DC3EA4148_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vprproc.dll</td><td/><td/><td>_32752C6B_CD61_450F_8329_71AA6C12F7AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vprproc_64.dll</td><td/><td/><td>_527E7763_FAC1_4240_89C8_BD73357DF047_FILTER</td><td/><td/><td/><td/></row>
		<row><td>w32_pthreads.dll1</td><td/><td/><td>_CD12A75C_CACA_4C9C_838E_D9B37FD88EAE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>widevinecdmadapter.dll</td><td/><td/><td>_8C970D91_AE90_43EE_A1FF_0F4B6E409724_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_capture.dll1</td><td/><td/><td>_50169E22_A391_4E5C_9C6E_1F1492DC9552_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_decklink.dll1</td><td/><td/><td>_B39BCC70_E6A6_4861_91B0_ADA417023785_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_dshow.dll1</td><td/><td/><td>_53C0DCEC_D93F_449E_813F_9C6027A67C09_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_mf.dll1</td><td/><td/><td>_436B6C71_2290_4550_9004_730E83505D73_FILTER</td><td/><td/><td/><td/></row>
		<row><td>win_wasapi.dll1</td><td/><td/><td>_763D3695_7A21_48E9_AA7B_C58288BD1697_FILTER</td><td/><td/><td/><td/></row>
		<row><td>wordtt.dll</td><td/><td/><td>_DCAA173C_1043_460F_9C1C_4757FE76BFA9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>zlib.dll1</td><td/><td/><td>_1BE2A2F9_455F_4559_840B_A87C7130F096_FILTER</td><td/><td/><td/><td/></row>
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
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
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
		<row><td>COMPANY_NAME</td><td>2052</td><td>北京航天云教育科技有限公司</td><td>0</td><td/><td>1906668014</td></row>
		<row><td>DN_AlwaysInstall</td><td>2052</td><td>始终安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>2052</td><td>系统颜色设置不足以运行 [ProductName]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>2052</td><td>操作系统不足以运行 [ProductName]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>2052</td><td>处理器不足以运行 [ProductName]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>2052</td><td>RAM 量不足以运行 [ProductName]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>2052</td><td>屏幕分辨率不足以运行 [ProductName] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>2052</td><td>压缩</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>2052</td><td>压缩说明</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>2052</td><td>自定义说明</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>2052</td><td>典型</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>2052</td><td>典型说明</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>2052</td><td>通知应用程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>2052</td><td>正在分配注册表空间</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>2052</td><td>应用程序: [1]，命令行: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>2052</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>2052</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>2052</td><td>应用程序: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>2052</td><td>绑定可执行文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>2052</td><td>正在复制网络安装文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>2052</td><td>正在复制新文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>2052</td><td>正在创建重复文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>2052</td><td>正在创建文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>2052</td><td>正在创建 IIS 虚拟根目录...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>2052</td><td>正在创建快捷方式</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>2052</td><td>正在删除服务</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>2052</td><td>正在评估启动条件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>2052</td><td>文件：[1],  依存： [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>2052</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>2052</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>2052</td><td>文件: [1]，目录: [2]，大小: [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>2052</td><td>找到应用程序: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>2052</td><td>自由空间: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>2052</td><td>正在生成脚本操作，用于：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>2052</td><td>正在搜集对象的许可信息...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>2052</td><td>正在应用对象的许可信息...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>2052</td><td>正在初始化 ODBC 目录</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>2052</td><td>正在安装 ODBC 组件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>2052</td><td>正在安装新服务</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>2052</td><td>安装系统目录</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>2052</td><td>键值: [1]，名称: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>2052</td><td>键: [1]，名称: [2]，数值: [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>2052</td><td>正在从相关应用程序迁移功能</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>2052</td><td>正在移动文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>2052</td><td>正在修补文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>2052</td><td>属性: [1]，签名: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>2052</td><td>正在发布产品功能</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>2052</td><td>正在发布产品信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>2052</td><td>正在发布合格的组件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>2052</td><td>正在注册用户</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>2052</td><td>正在注册类服务器</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>2052</td><td>正在注册扩展服务器</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>2052</td><td>正在注册字体</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>2052</td><td>正在注册 MIME 信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>2052</td><td>正在注册类型库</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>2052</td><td>正在注册 COM+ 应用程序和组件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>2052</td><td>正在注册模块</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>2052</td><td>正在注册产品</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>2052</td><td>正在删除应用程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>2052</td><td>正在删除备份文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>2052</td><td>正在删除重复的文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>2052</td><td>正在删除文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>2052</td><td>正在删除文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>2052</td><td>正在删除 IIS 虚拟根目录...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>2052</td><td>正在删除 INI 文件条目</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>2052</td><td>正在删除移动过的文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>2052</td><td>正在删除 ODBC 组件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>2052</td><td>正在删除系统注册表值</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>2052</td><td>正在删除快捷方式</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>2052</td><td>回滚操作: </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>2052</td><td>正在搜索相关产品</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>2052</td><td>正在搜索已安装的应用程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>2052</td><td>服务: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>2052</td><td>正在启动服务</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>2052</td><td>正在停止服务</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>2052</td><td>正在取消产品功能的发布</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>2052</td><td>正在取消合格组件的发布</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>2052</td><td>正在取消产品信息的发布</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>2052</td><td>正在撤消类型库的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>2052</td><td>正在撤消类服务器的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>2052</td><td>正在撤消扩展服务器的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>2052</td><td>正在撤消模块的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>2052</td><td>正在撤消 COM+ 应用程序和组件的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>2052</td><td>正在撤消字体的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>2052</td><td>正在撤消 MIME 信息的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>2052</td><td>正在更新组件注册表</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>2052</td><td>正在验证安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>2052</td><td>正在写入 INI 文件数值</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>2052</td><td>正在写入系统注册表值</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_BACK</td><td>2052</td><td>&lt; 上一步(&amp;B)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_CANCEL</td><td>2052</td><td>取消</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_CANCEL2</td><td>2052</td><td>{&amp;Tahoma8}取消(&amp;C)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_CHANGE</td><td>2052</td><td>更改(&amp;C)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>2052</td><td>正在计算 COM+ 应用程序成本： [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>2052</td><td>正在安装 COM+ 应用程序： [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>2052</td><td>正在卸载 COM+ 应用程序： [1]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>2052</td><td>对话框一般描述</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>2052</td><td>{&amp;TahomaBold10}对话框粗体标题</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>2052</td><td>{&amp;MSSansBold8}对话框粗体标题</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>2052</td><td>[ProductName] 需要 X64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIFX_IA64</td><td>2052</td><td>[ProductName] 需要 IA64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DIFX_X86</td><td>2052</td><td>[ProductName] 需要 X86 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>2052</td><td>将 [ProductName] 数据库安装到：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_0</td><td>2052</td><td>{{致命错误: }}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1</td><td>2052</td><td>{{错误 [1]。 }}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_10</td><td>2052</td><td>=== 记录开始: [Date]  [Time] ===</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_100</td><td>2052</td><td>无法删除快捷方式 [2]。请确认该快捷方式文件存在，并且您可以访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_101</td><td>2052</td><td>无法将文件 [2] 注册到类型库中。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_102</td><td>2052</td><td>无法撤消文件 [2] 在类型库中的注册。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_103</td><td>2052</td><td>无法更新 INI 文件 [2][3]。请确认该文件存在并且您可以访问它。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_104</td><td>2052</td><td>无法安排在重新启动时用文件 [2] 替换文件 [3]。请确认您拥有对文件 [3] 的写权限。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_105</td><td>2052</td><td>删除 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_106</td><td>2052</td><td>安装 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_107</td><td>2052</td><td>删除 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认您有足够的权限删除 ODBC 驱动程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_108</td><td>2052</td><td>安装 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_109</td><td>2052</td><td>配置 ODBC 数据源 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_11</td><td>2052</td><td>=== 记录停止: [Date]  [Time] ===</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_110</td><td>2052</td><td>服务 [2]（[3]）的启动失败。请确认您有足够的权限启动系统服务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_111</td><td>2052</td><td>无法终止服务 [2]（[3]）。请确认您有足够的权限终止系统服务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_112</td><td>2052</td><td>无法删除服务 [2]（[3]）。请确认您有足够的权限删除系统服务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_113</td><td>2052</td><td>无法安装服务 [2]（[3]）。请确认您有足够的权限安装系统服务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_114</td><td>2052</td><td>无法更新环境变量 [2]。请确认您有足够的权限修改环境变量。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_115</td><td>2052</td><td>您没有足够的权限为该计算机所有用户完成此安装。请以管理员的身份登录，然后重新尝试进行此安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_116</td><td>2052</td><td>无法对文件 [3] 的安全权限进行设置。错误: [2]。请确认您有足够的权限修改此文件的安全权限。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_117</td><td>2052</td><td>此计算机上未安装 Component Services (COM+ 1.0)。要成功完成安装需要 Component Services。Component Services 在 Windows 2000 上有效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_118</td><td>2052</td><td>注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_119</td><td>2052</td><td>撤消注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_12</td><td>2052</td><td>操作开始 [Time]: [1]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_120</td><td>2052</td><td>正在删除此应用程序旧的版本...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_121</td><td>2052</td><td>正在准备删除此应用程序旧的版本...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_122</td><td>2052</td><td>对文件 [2] 应用修补程序时出错。该文件可能被更新过，所以本修补程序不能修改它。详细信息，请与您的修补程序供应商联系。 {{系统错误: [3]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_123</td><td>2052</td><td>[2] 不能安装某一所需产品。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_124</td><td>2052</td><td>不能删除旧版本的 [2]。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_125</td><td>2052</td><td>服务 [2] ([3]) 的描述不能更改。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_126</td><td>2052</td><td>Windows Installer 服务不能更新系统文件 [2]，因为该文件被 Windows 保护。为使该程序正确工作，您可能需要更新操作系统。{{程序包版本: [3]，操作系统保护版本: [4]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_127</td><td>2052</td><td>Windows Installer 服务不能更新被保护的 Windows 文件 [2]。{{程序包版本: [3]，操作系统保护版本: [4]，SFP 错误: [5]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_128</td><td>2052</td><td>Windows Installer 服务无法更新一个或多个受保护的 Windows 文件。SFP 错误：[2]. 受保护文件列表：[3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_129</td><td>2052</td><td>计算机上的策略禁止用户安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_13</td><td>2052</td><td>操作结束 [Time]: [1]。返回值 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_130</td><td>2052</td><td>此安装程序要求 Internet Information Server 4.0 或更高版本，才能配置 IIS 虚拟根目录。请确保您有 IIS 4.0 或更高版本。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_131</td><td>2052</td><td>此安装程序要求管理员权限，才能配置 IIS 虚拟根目录。IDS_ERROR_13</td><td>0</td><td>操作结束 [Time]: [1]。返回值 [2]。	</td><td>-433820150</td></row>
		<row><td>IDS_ERROR_1329</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 未经过数字签名。可能表明 CAB 文件已损坏。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1330</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 的数字签名无效。可能表明 CAB 文件已损坏。{WinVerifyTrust 返回了错误 [3]。}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1331</td><td>2052</td><td>无法正确地复制 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1332</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1333</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1334</td><td>2052</td><td>无法安装文件 '[2]'，因为无法在 CAB 文件 '[3]' 中找到此文件。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1335</td><td>2052</td><td>此安装所需的 CAB 文件 '[2]' 已损坏，且无法使用。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1336</td><td>2052</td><td>创建完成此安装所需的临时文件时出错。文件夹:[3]。系统错误代码: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_14</td><td>2052</td><td>剩余时间: {[1] 分 }{[2] 秒}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_15</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_16</td><td>2052</td><td>安装程序已不再反应。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1609</td><td>2052</td><td>应用安全设置时出错。[2] 不是有效的用户或组。可能是软件包存在问题，或者连接到网络上的域控制器时出现问题。检查网络连接，然后单击重试或取消以结束安装。无法定位用户的 SID，系统错误 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1651</td><td>2052</td><td>管理用户无法对每用户管理的或每机器的处于广告状态的应用程序应用修补程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_17</td><td>2052</td><td>安装程序过早停止。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1715</td><td>2052</td><td>已安装 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1716</td><td>2052</td><td>已配置 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1717</td><td>2052</td><td>删除 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1718</td><td>2052</td><td>文件 [2] 被数字签名策略拒绝。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1719</td><td>2052</td><td>无法访问 Windows Installer 服务。请与支持人员联系，验证该服务是否已正确注册并启用。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1720</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的脚本。请与您的支持人员或软件包供应商联系。自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1721</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的程序。请与您的支持人员或软件包供应商联系。操作:[2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1722</td><td>2052</td><td>Windows Installer 软件包存在问题。作为安装一部分的程序没有按预期完成。请与您的支持人员或软件包供应商联系。操作 [2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1723</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的 DLL。请与您的支持人员或软件包供应商联系。操作 [2]，条目:[3]，库: [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1724</td><td>2052</td><td>成功地完成了删除。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1725</td><td>2052</td><td>删除失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1726</td><td>2052</td><td>成功地完成了广告。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1727</td><td>2052</td><td>广告失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1728</td><td>2052</td><td>成功地完成了配置。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1729</td><td>2052</td><td>配置失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1730</td><td>2052</td><td>只有管理员才可以删除该应用程序。要删除此应用程序，您可用管理员身份登录，或与您的技术支持小组联系以获得帮助。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1731</td><td>2052</td><td>产品 [2] 的源安装包与客户包不同步。使用安装包 '[3]' 的有效副本尝试重新安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1732</td><td>2052</td><td>为完成 [2] 的安装，必须重新启动计算机。当前有其他用户已登录到该计算机，因此重新启动可能使他们失去其工作。是否立即重新启动？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_18</td><td>2052</td><td>Windows 正在配置 [ProductName]，请稍等。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_19</td><td>2052</td><td>正在收集所需信息...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1935</td><td>2052</td><td>安装程序集组件 [2] 时出错。HRESULT:[3]。{{程序集界面:[4], 函数:[5]。{{程序集名称: [6]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1936</td><td>2052</td><td>安装程序集 '[6]' 时出错。此程序集没有命名不够安全或密钥长度未达到最低限制。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1937</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法验证签名或编录，或签名或编录无效。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_1938</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法找到程序集的一个或多个模块。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2</td><td>2052</td><td>警告 [1]。 </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_20</td><td>2052</td><td>{[ProductName] }的安装已成功完成。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_21</td><td>2052</td><td>{[ProductName] }安装失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2101</td><td>2052</td><td>操作系统不支持快捷方式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2102</td><td>2052</td><td>无效的 .ini 操作: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2103</td><td>2052</td><td>无法解析 shell 文件夹 [2] 的路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2104</td><td>2052</td><td>写入 ini 文件:[3]: 系统错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2105</td><td>2052</td><td>创建快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2106</td><td>2052</td><td>删除快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2107</td><td>2052</td><td>错误 [3] 注册类型库 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2108</td><td>2052</td><td>错误 [3] 未注册类型库 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2109</td><td>2052</td><td>.ini 操作缺少区段。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2110</td><td>2052</td><td>.ini 操作缺少关键字。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2111</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能数据。返回注册操作: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2112</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能指数。返回注册操作: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2113</td><td>2052</td><td>检测运行的应用程序失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_22</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}  请确认该文件的确存在并且您可以对其进行访问。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2200</td><td>2052</td><td>数据库:[2]。创建数据库对象失败，模式 = [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2201</td><td>2052</td><td>数据库:[2]。初始化失败，内存不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2202</td><td>2052</td><td>数据库:[2]。数据访问失败，内存不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2203</td><td>2052</td><td>数据库:[2]。无法打开数据库文件。系统错误 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2204</td><td>2052</td><td>数据库:[2]。表已存在: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2205</td><td>2052</td><td>数据库:[2]。表不存在: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2206</td><td>2052</td><td>数据库:[2]。不能丢弃表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2207</td><td>2052</td><td>数据库:[2]。意向冲突。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2208</td><td>2052</td><td>数据库:[2]。执行所需参数不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2209</td><td>2052</td><td>数据库:[2]。光标处于无效状态。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2210</td><td>2052</td><td>数据库:[2]。列 [3] 中的无效更新数据类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2211</td><td>2052</td><td>数据库:[2]。无法创建数据库表 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2212</td><td>2052</td><td>数据库:[2]。数据库不在可写入状态。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2213</td><td>2052</td><td>数据库:[2]。保存数据库表时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2214</td><td>2052</td><td>数据库:[2]。写入导出文件时出错: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2215</td><td>2052</td><td>数据库:[2]。无法打开导入文件: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2216</td><td>2052</td><td>数据库:[2]。导入文件格式错误:[3]，第 [4] 行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2217</td><td>2052</td><td>数据库:[2]。到 CreateOutputDatabase [3] 的错误状态。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2218</td><td>2052</td><td>数据库:[2]。未提供表名称。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2219</td><td>2052</td><td>数据库:[2]。无效的 Installer 数据库格式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2220</td><td>2052</td><td>数据库:[2]。无效行/字段数据。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2221</td><td>2052</td><td>数据库:[2]。导入文件中的代码页冲突: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2222</td><td>2052</td><td>数据库:[2]。转换或合并代码页 [3] 与数据库代码页 [4] 不同。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2223</td><td>2052</td><td>数据库:[2]。数据库均相同。未生成转换。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2224</td><td>2052</td><td>数据库:[2]。GenerateTransform:数据库已损坏。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2225</td><td>2052</td><td>数据库:[2]。转换:无法转换临时表。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2226</td><td>2052</td><td>数据库:[2]。转换失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2227</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效标识符 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2228</td><td>2052</td><td>数据库:[2]。SQL 查询中的未知表 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2229</td><td>2052</td><td>数据库:[2]。无法在 SQL 查询中加载表 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2230</td><td>2052</td><td>数据库:[2]。SQL 查询中的重复表 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2231</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 ')': [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2232</td><td>2052</td><td>数据库:[2]。SQL 查询中的意外标记 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2233</td><td>2052</td><td>数据库:[2]。SQL 查询的 SELECT 子句中没有列: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2234</td><td>2052</td><td>数据库:[2]。SQL 查询的 ORDER BY 子句中没有列: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2235</td><td>2052</td><td>数据库:[2]。SQL 查询中列 '[3]' 不存在或不明确: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2236</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效操作符 '[3]': [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2237</td><td>2052</td><td>数据库:[2]。无效或缺少查询字符串: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2238</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 FROM 子句: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2239</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中值不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2240</td><td>2052</td><td>数据库:[2]。UPDATE SQL 语句中缺少更新列。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2241</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中缺少插入列。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2242</td><td>2052</td><td>数据库:[2]。列 '[3]' 重复。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2243</td><td>2052</td><td>数据库:[2]。未定义主列以创建表。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2244</td><td>2052</td><td>数据库:[2]。SQL 查询 [4] 中的无效类型说明符 '[3]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2245</td><td>2052</td><td>IStorage::Stat 失败，错误 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2246</td><td>2052</td><td>数据库:[2]。无效的 Installer 转换格式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2247</td><td>2052</td><td>数据库:[2] 变换流读取/写入失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2248</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的列类型与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2249</td><td>2052</td><td>数据库:[2] GenerateTransform:基表中的列比引用表中的列多。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2250</td><td>2052</td><td>数据库:[2] 转换:无法添加现有行。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2251</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的行。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2252</td><td>2052</td><td>数据库:[2] 转换:无法添加现有表。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2253</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的表。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2254</td><td>2052</td><td>数据库:[2] 转换:无法更新不存在的行。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2255</td><td>2052</td><td>数据库:[2] 转换:已存在具有该名称的列。表:[3] 列: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2256</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的主键数与引用表不匹配。表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2257</td><td>2052</td><td>数据库:[2]。试图修改只读表: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2258</td><td>2052</td><td>数据库:[2]。参数类型不匹配: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2259</td><td>2052</td><td>数据库:[2] 表更新失败</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2260</td><td>2052</td><td>存储 CopyTo 失败。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2261</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2262</td><td>2052</td><td>流不存在:[2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2263</td><td>2052</td><td>无法打开流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2264</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2265</td><td>2052</td><td>无法提交存储。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2266</td><td>2052</td><td>无法回滚存储。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2267</td><td>2052</td><td>无法删除存储 [2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2268</td><td>2052</td><td>数据库:[2]。Merge:在 [3] 个表中报告存在合并冲突。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2269</td><td>2052</td><td>数据库:[2]。Merge:两个数据库的 '[3]' 表中的列计数不同。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2270</td><td>2052</td><td>数据库:[2]。GenerateTransform/Merge:基表中的列名称与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2271</td><td>2052</td><td>转换的 SummaryInformation 写入失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2272</td><td>2052</td><td>数据库:[2]。MergeDatabase 将不会写入任何更改，因为数据库是以只读方式打开的。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2273</td><td>2052</td><td>数据库:[2]。MergeDatabase:将对基数据库的引用作为引用数据库传递。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2274</td><td>2052</td><td>数据库:[2]。MergeDatabase:无法将错误写入错误表。可能是预定义的错误表中某个不可为空的列造成的。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2275</td><td>2052</td><td>数据库:[2]。对于表联接，指定的修改 [3] 操作无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2276</td><td>2052</td><td>数据库:[2]。系统不支持代码页 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2277</td><td>2052</td><td>数据库:[2]。无法保存表 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2278</td><td>2052</td><td>数据库:[2]。超出 SQL 查询中 WHERE 子句 32 个表达式限制: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2279</td><td>2052</td><td>数据库:[2] 转换:基表 [3] 中列太多。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2280</td><td>2052</td><td>数据库:[2]。无法为表 [4] 创建列 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2281</td><td>2052</td><td>无法重命名流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2282</td><td>2052</td><td>流名称无效 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_23</td><td>2052</td><td>无法创建文件 [2]。同名目录已存在。请取消此次安装，然后安装到其他位置。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2302</td><td>2052</td><td>修补程序通知:目前为止修补了 [2] 个字节。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2303</td><td>2052</td><td>获取卷信息时出错。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2304</td><td>2052</td><td>获取可用磁盘空间时出错。GetLastError:[2]。卷: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2305</td><td>2052</td><td>等待修补线程时出错。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2306</td><td>2052</td><td>无法为修补应用程序创建线程。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2307</td><td>2052</td><td>源文件键名为空。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2308</td><td>2052</td><td>目标文件名为空。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2309</td><td>2052</td><td>在修补正在进行的同时，尝试修补文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2310</td><td>2052</td><td>在没有修补程序运行时尝试继续修补。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2315</td><td>2052</td><td>缺少路径分隔符: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2318</td><td>2052</td><td>文件不存在: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2319</td><td>2052</td><td>设置文件属性时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2320</td><td>2052</td><td>文件不可写: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2321</td><td>2052</td><td>创建文件时出错: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2322</td><td>2052</td><td>用户已取消。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2323</td><td>2052</td><td>无效的文件属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2324</td><td>2052</td><td>无法打开文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2325</td><td>2052</td><td>无法获取文件的文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2326</td><td>2052</td><td>FileToDosDateTime 错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2327</td><td>2052</td><td>无法删除目录:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2328</td><td>2052</td><td>获取文件的文件版本信息时出错: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2329</td><td>2052</td><td>删除文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2330</td><td>2052</td><td>获取文件属性时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2331</td><td>2052</td><td>加载库 [2] 或查找入口点 [3] 时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2332</td><td>2052</td><td>获取文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2333</td><td>2052</td><td>设置文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2334</td><td>2052</td><td>将文件的文件时间转换为当地时间时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2335</td><td>2052</td><td>路径:[2] 不是 [3] 的父项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2336</td><td>2052</td><td>在路径上创建临时文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2337</td><td>2052</td><td>无法关闭文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2338</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2339</td><td>2052</td><td>无法为文件设置文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2340</td><td>2052</td><td>无法为文件更新资源:[3]，资源丢失。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2341</td><td>2052</td><td>无法为文件更新资源:[3]，资源太大。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2342</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2343</td><td>2052</td><td>指定的路径为空。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2344</td><td>2052</td><td>无法找到所需的文件 IMAGEHLP.DLL 来验证文件: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2345</td><td>2052</td><td>[2]: 文件未包括有效的校验值。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2347</td><td>2052</td><td>用户忽略。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2348</td><td>2052</td><td>试图从压缩包流读取时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2349</td><td>2052</td><td>使用不同的信息恢复复制。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2350</td><td>2052</td><td>FDI 服务器错误</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2351</td><td>2052</td><td>未在压缩包 '[3]' 中找到文件密钥 '[2]'。安装无法继续。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2352</td><td>2052</td><td>无法初始化 CAB 文件服务器。所需的文件 'CABINET.DLL' 可能找不到。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2353</td><td>2052</td><td>不是压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2354</td><td>2052</td><td>无法处理压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2355</td><td>2052</td><td>损坏压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2356</td><td>2052</td><td>无法定位流中的压缩包: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2357</td><td>2052</td><td>无法设置属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2358</td><td>2052</td><td>确定文件是否正在使用中时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2359</td><td>2052</td><td>无法创建目标文件 - 可能正在使用文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2360</td><td>2052</td><td>进程刻度。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2361</td><td>2052</td><td>需要下一压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2362</td><td>2052</td><td>未找到文件夹: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2363</td><td>2052</td><td>无法枚举文件夹的子文件夹: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2364</td><td>2052</td><td>CreateCopier 调用中的错误枚举常量。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2365</td><td>2052</td><td>无法 BindImage exe 文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2366</td><td>2052</td><td>用户故障。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2367</td><td>2052</td><td>用户终止。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2368</td><td>2052</td><td>未能获取网络资源信息。错误 [2]，网络路径 [3]。扩展错误# :网络提供者 [5]，错误代码 [4]，错误描述 [6]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2370</td><td>2052</td><td>无效的 [2] 文件 CRC 校验值。{其标头表示校验值为 [3]，而其计算出的值为 [4]。}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2371</td><td>2052</td><td>无法将修补程序应用到文件 [2]。GetLastError: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2372</td><td>2052</td><td>修补程序文件 [2] 已损坏或格式无效。尝试修补文件 [3]。GetLastError: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2373</td><td>2052</td><td>文件 [2] 不是有效的修补程序文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2374</td><td>2052</td><td>文件 [2] 不是修补文件 [3] 的有效目标文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2375</td><td>2052</td><td>未知修补错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2376</td><td>2052</td><td>未找到压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2379</td><td>2052</td><td>打开文件进行读取时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2380</td><td>2052</td><td>打开文件进行写入时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2381</td><td>2052</td><td>目录不存在: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2382</td><td>2052</td><td>驱动器未就绪: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_24</td><td>2052</td><td>请插入磁盘: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2401</td><td>2052</td><td>试图为密钥 [2] 在 32 位操作系统上进行 64 位注册表操作。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2402</td><td>2052</td><td>内存不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_25</td><td>2052</td><td>安装程序没有访问目录 [2] 的权限，安装无法继续进行。请以管理员身份登录，或与您的系统管理员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2501</td><td>2052</td><td>无法创建回滚脚本枚举器。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2502</td><td>2052</td><td>在没有正在执行的安装时调用 InstallFinalize。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2503</td><td>2052</td><td>在未标记为正在进行时，调用了 RunScript。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_26</td><td>2052</td><td>写至文件 [2] 时出错。请确认您有访问该目录的权限。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2601</td><td>2052</td><td>属性 [2] 的无效值: '[3]'</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2602</td><td>2052</td><td>[2] 表条目 '[3]' 在媒体表中没有相关的条目。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2603</td><td>2052</td><td>重复表名称 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2604</td><td>2052</td><td>未定义 [2] 属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2605</td><td>2052</td><td>无法在 [3] 或 [4] 中找到服务器 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2606</td><td>2052</td><td>属性 [2] 的值不是有效的完整路径: '[3]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2607</td><td>2052</td><td>找不到媒体表或其为空（安装文件所需）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2608</td><td>2052</td><td>无法为对象创建安全描述符。错误: '[2]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2609</td><td>2052</td><td>尝试在初始化前迁移产品设置。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2611</td><td>2052</td><td>文件 [2] 标记为压缩，但相关媒体条目没有指定压缩包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2612</td><td>2052</td><td>'[2]' 列中找不到流。主键: '[3]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2613</td><td>2052</td><td>RemoveExistingProducts 操作顺序不正确。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2614</td><td>2052</td><td>无法从安装包访问 IStorage 对象。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2615</td><td>2052</td><td>由于源解析错误，跳过模块 [2] 的注销。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2616</td><td>2052</td><td>缺少附带文件 [2] 父项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2617</td><td>2052</td><td>未在组件表中找到共享组件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2618</td><td>2052</td><td>未在组件表中找到独立的应用程序组件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2619</td><td>2052</td><td>独立的组件 [2]、[3] 不是同一功能的组成部分。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2620</td><td>2052</td><td>独立的应用程序组件 [2] 的密钥文件不在文件表中。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2621</td><td>2052</td><td>快捷方式 [2] 的资源 DLL 或资源 ID 信息设置不正确。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2701</td><td>2052</td><td>可接受的树深度为 [2] 级，某功能的深度超出了此限制。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2702</td><td>2052</td><td>功能表记录 ([2]) 引用属性字段中不存在的父项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2703</td><td>2052</td><td>未定义根源路径的属性名称: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2704</td><td>2052</td><td>未定义根目录属性: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2705</td><td>2052</td><td>无效表:[2]；无法链接为树。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2706</td><td>2052</td><td>未创建源路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2707</td><td>2052</td><td>未创建目标路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2708</td><td>2052</td><td>未在文件表中找到条目。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2709</td><td>2052</td><td>未在组件表中找到指定的组件名称 ('[2]')。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2710</td><td>2052</td><td>对于此组件，所请求的 'Select' 状态为非法。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2711</td><td>2052</td><td>未在功能表中找到指定的功能名称 ('[2]')。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2712</td><td>2052</td><td>来自无模式对话框的无效返回:[3]，操作 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2713</td><td>2052</td><td>不可为空的列中存在空值（表 '[4]' 第 '[3]' 列中的 '[2]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2714</td><td>2052</td><td>默认文件夹名称的无效值: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2715</td><td>2052</td><td>未在文件表中找到指定的文件密钥 ('[2]')。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2716</td><td>2052</td><td>无法为组件 '[2]' 创建随机子组件名。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2717</td><td>2052</td><td>无效操作条件或调用自定义操作 '[2]' 时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2718</td><td>2052</td><td>缺少产品代码 '[2]' 的软件包名称。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2719</td><td>2052</td><td>源 '[2]' 中未找到 UNC 或驱动器号路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2720</td><td>2052</td><td>打开源列表键时出错。错误: '[2]'</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2721</td><td>2052</td><td>未在二进制表流中找到自定义操作 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2722</td><td>2052</td><td>未在文件表中找到自定义操作 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2723</td><td>2052</td><td>自定义操作 [2] 指定不支持的类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2724</td><td>2052</td><td>正在运行的来源媒体上的卷标 '[2]' 与媒体表中给定的标签 '[3]' 不匹配。只有当媒体表中仅有一个条目时，才允许出现此类情况。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2725</td><td>2052</td><td>无效的数据库表</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2726</td><td>2052</td><td>未找到操作: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2727</td><td>2052</td><td>目录表中不存在目录条目 '[2]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2728</td><td>2052</td><td>表定义错误: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2729</td><td>2052</td><td>未初始化安装引擎。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2730</td><td>2052</td><td>数据库中的无效值。表:'[2]'；主键:'[3]'；列: '[4]'</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2731</td><td>2052</td><td>未初始化 Selection Manager。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2732</td><td>2052</td><td>未初始化 Directory Manager。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2733</td><td>2052</td><td>'[4]' 表的 '[3]' 列中的无效外键 ('[2]')。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2734</td><td>2052</td><td>无效的重安装模式字符。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2735</td><td>2052</td><td>自定义操作 '[2]' 导致未处理的异常，并已被停止。这可能是自定义操作中的内部错误（如访问冲突）所造成的。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2736</td><td>2052</td><td>生成自定义操作临时文件失败: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2737</td><td>2052</td><td>无法访问自定义操作 [2]，条目 [3]，库 [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2738</td><td>2052</td><td>无法访问自定义操作 [2] 的 VBScript 运行时间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2739</td><td>2052</td><td>无法访问自定义操作 [2] 的 JavaScript 运行时间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2740</td><td>2052</td><td>自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2741</td><td>2052</td><td>产品 [2] 的配置信息已损坏。无效信息: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2742</td><td>2052</td><td>整理至服务器失败: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2743</td><td>2052</td><td>无法执行自定义操作 [2]，位置:[3]，命令: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2744</td><td>2052</td><td>自定义操作 [2] 调用 EXE 失败，位置:[3]，命令: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2745</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的语言 [4]，找到的语言 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2746</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品 [4]，找到的产品 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2747</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2748</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2749</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 == [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2750</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27502</td><td>2052</td><td>无法连接到 [2] '[3]'。 [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27503</td><td>2052</td><td>从 [2] '[3]' 检索版本字符串时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27504</td><td>2052</td><td>SQL 版本要求未达到：[3]。此安装需要 [2] [4] 或更新版本。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27505</td><td>2052</td><td>无法打开 SQL 脚本文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27506</td><td>2052</td><td>执行 SQL 脚本 [2] 时出错。 行 [3]。 [4]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27507</td><td>2052</td><td>浏览或连接数据库服务器要求安装 MDAC。安装程序将立即终止。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27508</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27509</td><td>2052</td><td>卸载 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2751</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27510</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 无法创建 System.EnterpriseServices.RegistrationHelper 对象。 注册 Microsoft(R) .NET 服务组件需要安装 Microsoft(R) .NET Framework。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27511</td><td>2052</td><td>无法执行 SQL 脚本文件 [2]。 未打开连接： [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27512</td><td>2052</td><td>开始 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27513</td><td>2052</td><td>提交 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27514</td><td>2052</td><td>此安装需要 Microsoft SQL Server。指定服务器"[3]"是 Microsoft SQL Server Desktop Engine 或 SQL Server Express。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27515</td><td>2052</td><td>从 [2] '[3]' 检索模式版本时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27516</td><td>2052</td><td>将模式版本写入 [2] '[3]' 时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27517</td><td>2052</td><td>在本次安装中，您须具有管理员特权方能安装 COM+ 应用程序。请以管理员身份登录，然后重新开始安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27518</td><td>2052</td><td>COM+ 应用程序 "[2]" 的配置是作为一项 NT 服务运行；运行时，系统上须有 COM+ 1.5 或更新版。由于所用系统上有 COM+ 1.0，故无法安装该应用程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27519</td><td>2052</td><td>更新 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2752</td><td>2052</td><td>无法打开作为软件包 [4] 的子存储来存储的转换 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27520</td><td>2052</td><td>打开 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27521</td><td>2052</td><td>此安装程序需要 MSXML 3.0 或更高版本才能配置 XML 文件。请确定您有 3.0 或更高版本。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27522</td><td>2052</td><td>创建 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27523</td><td>2052</td><td>加载服务器出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27524</td><td>2052</td><td>加载 NetApi32.DLL 时出错。ISNetApi.dll 要求正确地加载 NetApi32.DLL，同时需要基于 NT的操作系统。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27525</td><td>2052</td><td>找不到服务器。 检查指定的服务器是否存在。 服务器名称不能为空白。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27526</td><td>2052</td><td>从 ISNetApi.dll 返回未指定的错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27527</td><td>2052</td><td>缓冲区太小。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27528</td><td>2052</td><td>访问被拒。 检查管理权限。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27529</td><td>2052</td><td>无效的计算机。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2753</td><td>2052</td><td>未标记文件 '[2]'以进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27530</td><td>2052</td><td>NetAPI 返回一个错误，原因不详。 系统错误﹕ [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27531</td><td>2052</td><td>未处理的异常情况。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27532</td><td>2052</td><td>此服务器或域的用户名无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27533</td><td>2052</td><td>区分大小写的密码不符。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27534</td><td>2052</td><td>列表是空的。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27535</td><td>2052</td><td>访问违规。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27536</td><td>2052</td><td>获取组时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27537</td><td>2052</td><td>添加用户到组时出错。 检查该组是否存在于此域或服务器中。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27538</td><td>2052</td><td>创建用户时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27539</td><td>2052</td><td>已从 NetAPI 返回 ERROR_NETAPI_ERROR_NOT_PRIMARY。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2754</td><td>2052</td><td>文件 '[2]' 不是有效的修补程序文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27540</td><td>2052</td><td>指定的用户已存在。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27541</td><td>2052</td><td>指定的组已存在。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27542</td><td>2052</td><td>无效的密码。 检查密码是否与您的网络密码规则一致。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27543</td><td>2052</td><td>无效的名称。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27544</td><td>2052</td><td>无效的组。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27545</td><td>2052</td><td>用户名不得为空，且其格式必须为“域\用户名”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27546</td><td>2052</td><td>在用户 TEMP 目录中加载或创建 INI 文件时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27547</td><td>2052</td><td>ISNetAPI.dll 未加载或加载 dll 时出错。 这项操作需要加载此 dll。 检查 dll 是否已经在 SUPPORTDIR 目录中。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27548</td><td>2052</td><td>从用户的 TEMP 目录中删除包含新用户信息的 INI 文件时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27549</td><td>2052</td><td>获取主域控制器 (PDC) 时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2755</td><td>2052</td><td>试图安装软件包 [3] 时，服务器返回意外错误 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27550</td><td>2052</td><td>每个字段必须有值才能创建用户。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27551</td><td>2052</td><td>找不到 [2] 的 ODBC 驱动程序。这是与 [2] 数据库服务器连接的必备工具。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27552</td><td>2052</td><td>创建数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27553</td><td>2052</td><td>连接到数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27554</td><td>2052</td><td>试图打开连接 [2] 时出错。没有与此连接相关的有效数据库元数据。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_27555</td><td>2052</td><td>将许可应用于对象 '[2]' 时出错。 系统错误﹕ [3] ([4])</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2756</td><td>2052</td><td>属性 '[2]' 在一个或多个表中用作目录属性，但从未指定过值。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2757</td><td>2052</td><td>无法为转换 [2] 创建摘要信息。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2758</td><td>2052</td><td>转换 [2] 不包含 MSI 版本。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2759</td><td>2052</td><td>转换 [2] 版本 [3] 与引擎不兼容；最低:[4]，最高: [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2760</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的升级代码 [4]，找到 [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2761</td><td>2052</td><td>无法开始事务。未正确初始化全局互斥体。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2762</td><td>2052</td><td>无法写入脚本记录。未启动事务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2763</td><td>2052</td><td>无法运行脚本。未启动事务。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2765</td><td>2052</td><td>AssemblyName 表中缺少程序集名称:组件: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2766</td><td>2052</td><td>文件 [2] 为无效的 MSI 存储文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2767</td><td>2052</td><td>没有更多数据{ 枚举 [2] 时}。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2768</td><td>2052</td><td>修补软件包中的转换无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2769</td><td>2052</td><td>自定义操作 [2] 未关闭 [3] MSIHANDLE。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2770</td><td>2052</td><td>未在内部缓存文件夹表中定义缓存文件夹 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2771</td><td>2052</td><td>功能 [2] 的升级缺少一个组件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2772</td><td>2052</td><td>新升级功能 [2] 必须为分页功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_28</td><td>2052</td><td>另一应用程序已经以独占模式访问了文件 [2]。请关闭所有其他的应用程序，然后再单击“重试”按钮。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2801</td><td>2052</td><td>未知消息 -- 类型 [2]。不执行任何操作。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2802</td><td>2052</td><td>未找到事件 [2] 的发行程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2803</td><td>2052</td><td>Dialog View 未找到对话框 [2] 的记录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2804</td><td>2052</td><td>激活对话框 [2] 上的控件 [3] 时，CmsiDialog 无法评估条件 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2806</td><td>2052</td><td>对话框 [2] 无法评估条件 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2807</td><td>2052</td><td>未识别操作 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2808</td><td>2052</td><td>在对话框 [2] 上错误定义默认按钮。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2809</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 指向 [4] 的指针，但没有其他指针。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2810</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 和 [5] 指向 [4] 的指针。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2811</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 必须取得焦点，但无法实现。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2812</td><td>2052</td><td>未识别事件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2813</td><td>2052</td><td>使用参数 [2] 调用了 EndDialog 事件，但对话框具有父项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2814</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 将一个不存在的控件 [4] 作为下一控件命名。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2815</td><td>2052</td><td>ControlCondition 表有一行没有对话框 [2] 的条件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2816</td><td>2052</td><td>EventMapping 表为事件 [3] 引用对话框 [2] 上的无效控件 [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2817</td><td>2052</td><td>事件 [2] 无法为对话框 [3] 上的控件 [4] 设置属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2818</td><td>2052</td><td>在 ControlEvent 表中，EndDialog 具有无法识别的参数 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2819</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要一个链接到它的属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2820</td><td>2052</td><td>尝试初始化一个已初始化的处理程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2821</td><td>2052</td><td>尝试初始化一个已初始化的对话框: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2822</td><td>2052</td><td>只有添加所有控件后，才能在对话框 [2] 上调用其他方法。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2823</td><td>2052</td><td>尝试初始化一个已初始化的对话框:对话框 [2] 上的 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2824</td><td>2052</td><td>对话框属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2825</td><td>2052</td><td>控件属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2826</td><td>2052</td><td>对话框 [2] 上的控件 [3] 超出了对话框 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2827</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 中的按钮 [4] 超出组 [5] 的边界 [6] 个像素。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2828</td><td>2052</td><td>试图从对话框 [2] 删除控件 [3]，但该控件不是对话框的一部分。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2829</td><td>2052</td><td>尝试使用未初始化的对话框。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2830</td><td>2052</td><td>尝试使用对话框 [2] 上未初始化的控件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2831</td><td>2052</td><td>对话框 [2] 上的控件 [3] 不支持 [5] 属性 [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2832</td><td>2052</td><td>对话框 [2] 不支持属性 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2833</td><td>2052</td><td>对话框 [3] 上的控件 [4] 忽略消息 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2834</td><td>2052</td><td>对话框 [2] 上后面的指针没有形成单循环。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2835</td><td>2052</td><td>未在对话框 [3] 上找到控件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2836</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法取得焦点。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2837</td><td>2052</td><td>对话框 [2] 上的控件 [3] 希望 winproc 返回 [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2838</td><td>2052</td><td>期   选择表中的项目 [2] 将其自身作为父项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2839</td><td>2052</td><td>设置属性 [2] 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2840</td><td>2052</td><td>错误对话框名称不匹配。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2841</td><td>2052</td><td>未在错误对话框上找到确定按钮。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2842</td><td>2052</td><td>未在错误对话框中找到文本字段。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2843</td><td>2052</td><td>标准对话框不支持 ErrorString 属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2844</td><td>2052</td><td>如果未设置 Errorstring，则无法执行错误对话框。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2845</td><td>2052</td><td>按钮的总宽度超过错误对话框的尺寸。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2846</td><td>2052</td><td>SetFocus 未在错误对话框上找到所需的控件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2847</td><td>2052</td><td>对话框 [2] 上的控件 [3] 同时设置了图标和位图样式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2848</td><td>2052</td><td>试图将控件 [3] 设置为对话框 [2] 上的默认按钮，但该控件不存在。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2849</td><td>2052</td><td>对话框 [2] 上的控件 [3] 为一个值不能为整数的类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2850</td><td>2052</td><td>无法识别的卷类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2851</td><td>2052</td><td>图标 [2] 的数据无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2852</td><td>2052</td><td>使用前，必须至少将一个控件添加到对话框 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2853</td><td>2052</td><td>对话框 [2] 为无模式对话框。不应在此对话框上调用此执行方法。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2854</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 被指定为第一活动控件，但不存在此类控件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2855</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 的按钮少于两个。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2856</td><td>2052</td><td>创建对话框 [2] 的第二个副本。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2857</td><td>2052</td><td>在选择表中提及了目录 [2]，但却并未找到。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2858</td><td>2052</td><td>位图 [2] 的数据无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2859</td><td>2052</td><td>测试错误消息。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2860</td><td>2052</td><td>在对话框 [2] 上错误定义取消按钮。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2861</td><td>2052</td><td>对话框 [2] 控件 [3] 上的单选按钮后面的指针没有形成循环。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2862</td><td>2052</td><td>对话框 [2] 上的控件 [3] 的属性没有定义有效的图标大小。将大小设置为 16。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2863</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要尺寸为 [5]x[5] 的图标 [4]，但该尺寸不可用。加载第一个可用的尺寸。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2864</td><td>2052</td><td>对话框 [2] 上的控件 [3] 收到了浏览事件，但没有用于当前选择的可配置目录。可能的原因有:未正确设计浏览按钮。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2865</td><td>2052</td><td>公告板 [2] 上的控件 [3] 超出了公告板 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2866</td><td>2052</td><td>不允许对话框 [2] 返回参数 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2867</td><td>2052</td><td>未设置错误对话框属性。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2868</td><td>2052</td><td>错误对话框 [2] 的样式位设置是正确的。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2869</td><td>2052</td><td>对话框 [2] 样式位设置错误，但它不是错误的对话框。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2870</td><td>2052</td><td>对话框 [2] 上控件 [3] 的帮助字符串 [4] 不包含分隔符。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2871</td><td>2052</td><td>[2] 表已过期: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2872</td><td>2052</td><td>对话框 [2] 上的 CheckPath 控件事件的参数无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2873</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的无效字符串长度限制为: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2874</td><td>2052</td><td>将文本字体更改为 [2] 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2875</td><td>2052</td><td>将文本颜色更改为 [2] 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2876</td><td>2052</td><td>对话框 [2] 上的控件 [3] 必须截断字符串: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2877</td><td>2052</td><td>未找到二进制数据 [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2878</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的可能值为:[4]。 这是一个无效值或重复值。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2879</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法解析掩码字符串: [4]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2880</td><td>2052</td><td>请勿执行剩余的控件事件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2881</td><td>2052</td><td>CmsiHandler 初始化失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2882</td><td>2052</td><td>对话框窗口类注册失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2883</td><td>2052</td><td>为对话框 [2] CreateNewDialog 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2884</td><td>2052</td><td>无法为对话框 [2] 创建窗口。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2885</td><td>2052</td><td>无法在对话框 [2] 上创建控件 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2886</td><td>2052</td><td>创建 [2] 表失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2887</td><td>2052</td><td>创建到 [2] 表的光标失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2888</td><td>2052</td><td>执行 [2] 视图失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2889</td><td>2052</td><td>为对话框 [2] 上的控件 [3] 创建窗口失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2890</td><td>2052</td><td>处理程序无法创建已初始化的对话框。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2891</td><td>2052</td><td>无法销毁对话框 [2] 的窗口。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2892</td><td>2052</td><td>控件 [2] 只能为整型，[3] 不是有效的整数值。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2893</td><td>2052</td><td>对话框 [2] 上的控件 [3] 可接受最多 [5] 个字符长的属性值。值 [4] 超过此限制，因此已被截断。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2894</td><td>2052</td><td>加载 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2895</td><td>2052</td><td>释放 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2896</td><td>2052</td><td>执行操作 [2] 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2897</td><td>2052</td><td>无法在此系统上创建任意 [2] 字体。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2898</td><td>2052</td><td>对于 [2] 文本样式，系统在 [4] 字符集中创建了 '[3]' 字体。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2899</td><td>2052</td><td>无法创建 [2] 文本样式。GetLastError() 返回: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_29</td><td>2052</td><td>没有足够的磁盘空间来安装文件 [2]。请释放一些磁盘空间后单击“重试”，或者单击“取消”退出。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2901</td><td>2052</td><td>操作 [2] 的无效参数:参数 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2902</td><td>2052</td><td>操作 [2] 调用顺序不正确。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2903</td><td>2052</td><td>缺少文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2904</td><td>2052</td><td>无法 BindImage 文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2905</td><td>2052</td><td>无法从脚本文件 [2] 读取记录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2906</td><td>2052</td><td>脚本文件 [2] 中缺少标题。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2907</td><td>2052</td><td>无法创建安全的安全描述符。错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2908</td><td>2052</td><td>无法注册组件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2909</td><td>2052</td><td>无法注销组件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2910</td><td>2052</td><td>无法确定用户的安全 ID。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2911</td><td>2052</td><td>无法删除文件夹 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2912</td><td>2052</td><td>无法计划在重新启动时要删除的文件 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2919</td><td>2052</td><td>没有为压缩文件指定压缩包: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2920</td><td>2052</td><td>未为文件 [2] 指定源目录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2924</td><td>2052</td><td>不支持脚本 [2] 版本。脚本版本:[3]，最低版本:[4]，最高版本: [5]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2927</td><td>2052</td><td>ShellFolder ID [2] 无效。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2928</td><td>2052</td><td>超出源的最大数。跳过源 '[2]'。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2929</td><td>2052</td><td>无法判断发布根目录。错误: [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2932</td><td>2052</td><td>无法从脚本数据创建文件 [2]。错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2933</td><td>2052</td><td>无法初始化回滚脚本 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2934</td><td>2052</td><td>无法保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2935</td><td>2052</td><td>无法取消保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2936</td><td>2052</td><td>无法找到转换 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2937</td><td>2052</td><td>Windows Installer 无法安装系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2938</td><td>2052</td><td>Windows Installer 无法从缓存检索系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2939</td><td>2052</td><td>Windows Installer 无法从缓存删除系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2940</td><td>2052</td><td>未提供 Directory Manager 来实现源解析。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2941</td><td>2052</td><td>无法计算文件 [2] 的 CRC。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2942</td><td>2052</td><td>BindImage 操作尚未在 [2] 文件上执行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2943</td><td>2052</td><td>此版本的 Windows 不支持部署 64 位软件包。脚本 [2] 用于 64 位软件包。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2944</td><td>2052</td><td>GetProductAssignmentType 失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_2945</td><td>2052</td><td>安装 ComPlus App [2] 失败，错误 [3]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_3</td><td>2052</td><td>信息 [1]。 </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_30</td><td>2052</td><td>没有找到源文件 [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_3001</td><td>2052</td><td>此列表中的修补程序包含不正确的顺序信息: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_3002</td><td>2052</td><td>修补程序 [2] 包括无效的顺序信息。 </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_31</td><td>2052</td><td>读取文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_32</td><td>2052</td><td>写至文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认您有权访问该目录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_33</td><td>2052</td><td>没有找到源文件{{(包)}}: [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_34</td><td>2052</td><td>无法创建目录 [2]。同名文件已经存在。请重命名或删除文件，然后单击“重试”按钮，或者单击“取消”按钮退出。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_35</td><td>2052</td><td>目前无法使用卷 [2]，请另选其他卷。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_36</td><td>2052</td><td>无法使用指定的路径 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_37</td><td>2052</td><td>无法写入指定的文件夹 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_38</td><td>2052</td><td>试图读取文件 [2] 时发生网络错误。 </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_39</td><td>2052</td><td>试图创建目录 [2] 时发生错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_4</td><td>2052</td><td>内部错误 [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_40</td><td>2052</td><td>试图创建目录 [2] 时发生网络错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_41</td><td>2052</td><td>试图打开源文件包 [2] 时发生网络错误。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_42</td><td>2052</td><td>指定的路径过长: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_43</td><td>2052</td><td>安装程序没有修改文件 [2] 的权限。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_44</td><td>2052</td><td>文件夹路径 [2] 的一部分无效。或者为空，或者超出了系统允许的长度。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_45</td><td>2052</td><td>文件夹路径 [2] 中含有无效单词。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_46</td><td>2052</td><td>文件夹路径 [2] 中含有无效的字符。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_47</td><td>2052</td><td>[2] 不是一个有效的短文件名。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_48</td><td>2052</td><td>获取文件 [3] 安全权限时发生错误 GetLastError: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_49</td><td>2052</td><td>无效驱动器: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_5</td><td>2052</td><td>{{磁盘已满: }}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_50</td><td>2052</td><td>无法创建键: [2]。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_51</td><td>2052</td><td>无法打开键: [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。 </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_52</td><td>2052</td><td>无法删除值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_53</td><td>2052</td><td>无法删除键 [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_54</td><td>2052</td><td>无法读取值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_55</td><td>2052</td><td>无法将数值 [2] 写入键 [3]。{{ 系统错误 [4]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_56</td><td>2052</td><td>无法获取键 [2] 的数值名称。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_57</td><td>2052</td><td>无法获取键 [2] 的子键。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_58</td><td>2052</td><td>无法读取键 [2] 的安全信息。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_59</td><td>2052</td><td>无法增加可用的注册表空间。安装本应用程序需要 [2] 千字节的空闲注册表空间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_6</td><td>2052</td><td>操作 [Time]: [1]. [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_60</td><td>2052</td><td>另一安装过程正在进行。您必须先完成那次过程，然后才能继续本次过程。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_61</td><td>2052</td><td>访问受保护的数据时出错。请确认 Windows Installer 配置是否正确，然后重新安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_62</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。现在将继续进行您的安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_63</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_64</td><td>2052</td><td>磁盘空间不足 -- 卷: [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。请在释放磁盘空间后再试。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_65</td><td>2052</td><td>是否确认要取消操作？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_66</td><td>2052</td><td>文件 [2][3] 正被使用 {使用者: 名称: [4]，Id: [5]，窗口标题: “[6]”}。请关闭那个应用程序后再重试。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_67</td><td>2052</td><td>产品 [2] 已经安装，现在无法安装本产品。这两种产品不兼容。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_68</td><td>2052</td><td>磁盘空间不足 -- 卷 [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。如果禁用回滚功能，则空间足够。单击“取消”退出，单击“重试”再次检查可用空间，单击“忽略”在禁用回滚功能的情况下继续安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_69</td><td>2052</td><td>无法访问网络位置 [2]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_7</td><td>2052</td><td>[ProductName]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_70</td><td>2052</td><td>在继续安装之前，请关闭以下应用程序: </td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_71</td><td>2052</td><td>无法在计算机上找到安装本产品所需的任何以前安装的相应产品。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_72</td><td>2052</td><td>键 [2] 无效。请确认您输入的键是否正确。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_73</td><td>2052</td><td>安装程序必须先重新启动您的系统，然后才能继续配置 [2]。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_74</td><td>2052</td><td>您必须先重新启动系统，然后才能使对 [2] 做出的配置修改生效。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_75</td><td>2052</td><td>[2] 的一次安装过程正处于暂停状态，您必须先撤消该安装过程做出的修改，然后才能继续操作。是否撤消那些修改？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_76</td><td>2052</td><td>本产品的前一次安装正在进行，您必须先撤消该过程做出的修改，然后才能继续。是否撤消那些修改？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_77</td><td>2052</td><td>无法找到产品 [2] 的安装程序包。请使用安装程序包 [3] 的有效拷贝重新进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_78</td><td>2052</td><td>安装操作已成功完成。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_79</td><td>2052</td><td>安装操作失败。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_8</td><td>2052</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_80</td><td>2052</td><td>产品: [2] -- [3]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_81</td><td>2052</td><td>您可以将计算机还原至其原始状态，也可在以后继续安装。是否要进行还原？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_82</td><td>2052</td><td>向硬盘写入安装信息时发生错误。请确认是否有足够的硬盘空间可供使用，然后单击“重试”按钮，或者单击“取消”按钮结束安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_83</td><td>2052</td><td>无法找到将您的计算机恢复至原始状态所需的一个或多个文件。不能进行恢复操作。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_84</td><td>2052</td><td>路径 [2] 无效，请指定有效路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_85</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_86</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回前面选择的卷。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_87</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回“浏览”对话框并选择其他卷。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_88</td><td>2052</td><td>文件夹 [2] 不存在。请输入某个原有文件夹的路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_89</td><td>2052</td><td>您读取此文件夹的权限不够。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_9</td><td>2052</td><td>消息类型: [1]， 参数: [2]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_90</td><td>2052</td><td>无法确定安装所需的有效路径。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_91</td><td>2052</td><td>试图读取源安装数据库 [2] 时出错。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_92</td><td>2052</td><td>正在安排重新启动操作: 将文件 [2] 重命名为 [3]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_93</td><td>2052</td><td>正在安排重新启动操作: 删除文件 [2]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_94</td><td>2052</td><td>无法注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_95</td><td>2052</td><td>无法撤消注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_96</td><td>2052</td><td>无法缓存包 [2]。错误: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_97</td><td>2052</td><td>无法注册字体 [2]。请检查您是否有足够的权限安装字体，以及系统是否能够支持该字体。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_98</td><td>2052</td><td>无法撤消对字体 [2] 的注册。请检查您是否有足够的权限删除字体。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ERROR_99</td><td>2052</td><td>无法创建快捷方式 [2]。请检查目标文件夹是否存在，以及您是否可以访问该文件夹。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_INSTALLDIR</td><td>2052</td><td>{&amp;Tahoma8}[INSTALLDIR]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>2052</td><td>InstallShield</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>2052</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>2052</td><td>该计算机缺少 InstallScript 引擎。请运行 ISScript.msi（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>2052</td><td>该计算机中的 InstallScript 引擎版本早于此安装程序需要的版本。请安装 ISScript.msi 的最新版本（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_NEXT</td><td>2052</td><td>下一步(&amp;N) &gt;</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>2052</td><td>打开 [ProductName] 原版 [SETUPEXENAME]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>2052</td><td>这一可执行文件好象不是 [ProductName] 原版的可执行文件。 若不用原版的 [SETUPEXENAME] 安装其他相关软件，[ProductName] 可能会出现问题。 是否寻找原版的 [SETUPEXENAME]？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>2052</td><td>本次安装可能需要使用其他相关软件。 若没有这些相关软件，[ProductName] 可能会出现问题。 是否寻找原来的 [SETUPEXENAME]？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>2052</td><td>该应用程序的新版已在这台计算机上安装。如果您想安装这个版本，请先卸载已安装的新版程序。若需退出向导程序，请点击“确定”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>2052</td><td>打印(&amp;P)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>2052</td><td>创建应用程序池 %s</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>2052</td><td>正在创建应用程序池...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>2052</td><td>正在创建 IIS 虚拟目录 %s</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>2052</td><td>正在创建 IIS 虚拟目录...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>2052</td><td>创建 Web 服务扩展</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在创建 Web 服务扩展...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>2052</td><td>正在创建 IIS 网站 %s</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>2052</td><td>正在创建 IIS 网站...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>2052</td><td>正在检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>2052</td><td>已检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>2052</td><td>删除应用程序池</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>2052</td><td>正在删除应用程序池...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>2052</td><td>正在删除端口 %d 的网站</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>2052</td><td>正在删除 IIS 虚拟目录 %s</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>2052</td><td>正在删除 IIS 虚拟目录...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>2052</td><td>删除 Web 服务扩展</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在删除 Web 服务扩展...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>2052</td><td>正在删除 IIS 网站...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>2052</td><td>正在回滚应用程序池...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>2052</td><td>正在回滚虚拟目录和网站更改...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在回滚 Web 服务扩展...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>2052</td><td>替换 %s 中，使用的是﹕%s，位于 %s...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>2052</td><td>正在计算 XML 文件成本...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>2052</td><td>正在创建 XML 文件 %s...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>2052</td><td>正在执行 XML 文件更改...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>2052</td><td>正在删除 XML 文件 %s...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>2052</td><td>正在回滚 XML 文件更改...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>2052</td><td>正在更新 XML 文件 %s...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>2052</td><td>本安装程序的使用期到 %s 结束。安装程序现在将退出。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>2052</td><td>本安装程序内建有 InstallShield 的评估版，只能用 setup.exe 文件启动。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1033</td><td/><td>0</td><td/><td>-433832278</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveLoader.exe</td><td>0</td><td/><td>-433832278</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME10</td><td>1033</td><td/><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME10</td><td>2052</td><td>LAUNCH~1.EXE|Launch Sysset.exe</td><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME11</td><td>1033</td><td/><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME11</td><td>2052</td><td>LAUNCH~1.EXE|Launch taskkill.exe</td><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME12</td><td>1033</td><td/><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME12</td><td>2052</td><td>LAUNCH~1.EXE|Launch unins000.exe</td><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME13</td><td>1033</td><td/><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME13</td><td>2052</td><td>LAUNCH~1.EXE|Launch Copier.exe</td><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME14</td><td>1033</td><td/><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME14</td><td>2052</td><td>LAUNCH~1.EXE|Launch InstallVPrinter.exe</td><td>0</td><td/><td>-433799510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME15</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME15</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME16</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME16</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.vshost.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME17</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME17</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME18</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME18</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.vshost.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME19</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME19</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>2052</td><td>LAUNCH~1.EXE|Launch ACPlayer.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME20</td><td>1033</td><td/><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME20</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-433822006</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME21</td><td>1033</td><td/><td>0</td><td/><td>-433832182</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME21</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-433832182</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME22</td><td>1033</td><td/><td>0</td><td/><td>-433832182</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME22</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.vshost.exe</td><td>0</td><td/><td>-433832182</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME23</td><td>1033</td><td/><td>0</td><td/><td>-433819862</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME23</td><td>2052</td><td>LAUNCH~1.EXE|Launch Record Player.exe</td><td>0</td><td/><td>-433819862</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME24</td><td>1033</td><td/><td>0</td><td/><td>-433809558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME24</td><td>2052</td><td>LAUNCH~1.EXE|Launch obs64.exe</td><td>0</td><td/><td>-433809558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME25</td><td>1033</td><td/><td>0</td><td/><td>-433807510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME25</td><td>2052</td><td>LAUNCH~1.EXE|Launch ffmpeg-mux64.exe</td><td>0</td><td/><td>-433807510</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME26</td><td>1033</td><td/><td>0</td><td/><td>-433805462</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME26</td><td>2052</td><td>LAUNCH~1.EXE|Launch get-graphics-offsets64.exe</td><td>0</td><td/><td>-433805462</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME27</td><td>1033</td><td/><td>0</td><td/><td>-433805462</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME27</td><td>2052</td><td>LAUNCH~1.EXE|Launch inject-helper64.exe</td><td>0</td><td/><td>-433805462</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME28</td><td>1033</td><td/><td>0</td><td/><td>-433837909</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME28</td><td>2052</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-433805077</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME29</td><td>1033</td><td/><td>0</td><td/><td>-433837909</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME29</td><td>2052</td><td>LAUNCH~1.EXE|Launch CefSharp.BrowserSubprocess.exe</td><td>0</td><td/><td>-433837909</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveAuto.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME30</td><td>1033</td><td>卸载 航天云课联网(U4)</td><td>0</td><td/><td>-433848053</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME30</td><td>2052</td><td>卸载 航天云课联网(U4)</td><td>0</td><td/><td>-433848053</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME31</td><td>1033</td><td/><td>0</td><td/><td>-2136641010</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME31</td><td>2052</td><td>LAUNCH~1.EXE|Launch Record Player.exe</td><td>0</td><td/><td>-2136641010</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME32</td><td>1033</td><td/><td>0</td><td/><td>-2136653266</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME32</td><td>2052</td><td>LAUNCH~1.EXE|Launch Booth Camera.exe</td><td>0</td><td/><td>-2136653266</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME33</td><td>1033</td><td/><td>0</td><td/><td>-2136651186</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME33</td><td>2052</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-2136644882</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME34</td><td>1033</td><td/><td>0</td><td/><td>-2136651186</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME34</td><td>2052</td><td>LAUNCH~1.EXE|Launch CefSharp.BrowserSubprocess.exe</td><td>0</td><td/><td>-2136651186</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME35</td><td>1033</td><td/><td>0</td><td/><td>-2136655218</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME35</td><td>2052</td><td>LAUNCH~1.EXE|Launch obs64.exe</td><td>0</td><td/><td>-2136655218</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME36</td><td>1033</td><td/><td>0</td><td/><td>-2136653170</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME36</td><td>2052</td><td>LAUNCH~1.EXE|Launch ffmpeg-mux64.exe</td><td>0</td><td/><td>-2136653170</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME37</td><td>1033</td><td/><td>0</td><td/><td>-2136649074</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME37</td><td>2052</td><td>LAUNCH~1.EXE|Launch get-graphics-offsets64.exe</td><td>0</td><td/><td>-2136649074</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME38</td><td>1033</td><td/><td>0</td><td/><td>-2136649074</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME38</td><td>2052</td><td>LAUNCH~1.EXE|Launch inject-helper64.exe</td><td>0</td><td/><td>-2136649074</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME39</td><td>1033</td><td/><td>0</td><td/><td>-2136659282</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME39</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveLoader.exe</td><td>0</td><td/><td>-2136659282</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveLoader.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME40</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME40</td><td>2052</td><td>LAUNCH~1.EXE|Launch ACPlayer.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME41</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME41</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveAuto.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME42</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME42</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveLoader.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME43</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME43</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveMeeting.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME44</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME44</td><td>2052</td><td>LAUNCH~1.EXE|Launch BugReport.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME45</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME45</td><td>2052</td><td>LAUNCH~1.EXE|Launch CourseManager.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME46</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME46</td><td>2052</td><td>LAUNCH~1.EXE|Launch DBSClient.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME47</td><td>1033</td><td/><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME47</td><td>2052</td><td>LAUNCH~1.EXE|Launch iAAudioAgent.exe</td><td>0</td><td/><td>-2136632658</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME48</td><td>1033</td><td/><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME48</td><td>2052</td><td>LAUNCH~1.EXE|Launch Sysset.exe</td><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME49</td><td>1033</td><td/><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME49</td><td>2052</td><td>LAUNCH~1.EXE|Launch taskkill.exe</td><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>2052</td><td>LAUNCH~1.EXE|Launch ActiveMeeting.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME50</td><td>1033</td><td/><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME50</td><td>2052</td><td>LAUNCH~1.EXE|Launch unins000.exe</td><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME51</td><td>1033</td><td/><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME51</td><td>2052</td><td>LAUNCH~1.EXE|Launch Copier.exe</td><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME52</td><td>1033</td><td/><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME52</td><td>2052</td><td>LAUNCH~1.EXE|Launch InstallVPrinter.exe</td><td>0</td><td/><td>-2136630610</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME53</td><td>1033</td><td>卸载 航天云课联网(U4)</td><td>0</td><td/><td>-2136638738</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME53</td><td>2052</td><td>卸载 航天云课联网(U4)</td><td>0</td><td/><td>-2136638738</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>2052</td><td>LAUNCH~1.EXE|Launch BugReport.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME7</td><td>2052</td><td>LAUNCH~1.EXE|Launch CourseManager.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME8</td><td>2052</td><td>LAUNCH~1.EXE|Launch DBSClient.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>1033</td><td/><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME9</td><td>2052</td><td>LAUNCH~1.EXE|Launch iAAudioAgent.exe</td><td>0</td><td/><td>-433801558</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>2052</td><td>从以下服务器列表中选择要连接的数据库服务器。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>2052</td><td>从以下的编录名称列表中，选择您希望将其作为目标的数据库编录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>2052</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>2052</td><td>浏览(&amp;R)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>2052</td><td>浏览(&amp;O)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>2052</td><td>数据库编录的名称(&amp;N)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>2052</td><td>连接时使用：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>2052</td><td>选择数据库服务器和验证方法。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>2052</td><td>登录 ID(&amp;L)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>2052</td><td>从以下列表中选择要安装的数据库服务器或单击“浏览”查看所有数据库服务器的列表。您还可以指定验证方法，确定使用当前证书或 SQL 登录 ID 和密码来验证您的登录。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>2052</td><td>密码(&amp;P)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>2052</td><td>&amp;数据库服务器：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>2052</td><td>您要安装到的数据库服务器(&amp;D)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>2052</td><td>使用以下登录 ID 和密码进行服务器身份验证(&amp;E)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>2052</td><td>{&amp;MSSansBold8}数据库服务器</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>2052</td><td>当前用户的 Windows 验证证书(&amp;W)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>2052</td><td>正在执行 SQL 安装脚本...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>2052</td><td>正在执行 SQL 卸载脚本...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>2052</td><td>直接启动 MSI 包无法运行此安装程序，必须要运行 setup.exe。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>2052</td><td>{&amp;Tahoma8}将在第一次使用时安装。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将全部安装到本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装提示</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>2052</td><td>{&amp;Tahoma8}“自定义安装”允许有选择地安装程序功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>2052</td><td>{&amp;Tahoma8}紧邻该功能名称的图标显示该功能的安装状态。 单击该图标可下拉每个功能的安装状态菜单。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>2052</td><td>{&amp;Tahoma8}此安装状态意味着该功能...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_Network</td><td>2052</td><td>{&amp;Tahoma8}将安装从网络中运行。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将把一些子功能安装到本地硬盘驱动器上。 （只有在该功能带有子功能时有效）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>2052</td><td>{&amp;Tahoma8}将不安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Available</td><td>2052</td><td>可用</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>2052</td><td>字节</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>2052</td><td>正在编译此功能的代价...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>2052</td><td>差异</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>2052</td><td>磁盘空间</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>2052</td><td>此功能将被全部删除。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>2052</td><td>此功能将继续从网络中运行</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>2052</td><td>此功能及所有子功能安装后将从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>2052</td><td>此功能及所有子功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>2052</td><td>此功能及所有子功能安装后将从网络上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>2052</td><td>此功能将在需要时安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>2052</td><td>此功能将被设置为在需要时安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>2052</td><td>此功能在需要时可进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>2052</td><td>此功能可从网络中运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>2052</td><td>此功能将不可用。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>2052</td><td>此功能可从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>2052</td><td>此功能将保留在本地硬盘驱动器中。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从网络中运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但需要时将进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>2052</td><td>此功能将继续从光盘上运行</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2]。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>2052</td><td>此功能将不安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>2052</td><td>此功能将被全部卸载，您将无法从网络中运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>2052</td><td>此功能可从光盘上运行，但被设置为需要时才进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>2052</td><td>此功能可从光盘上运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>2052</td><td>此功能从网络中运行，但在需要时将进行安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>2052</td><td>此功能从网络中运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>2052</td><td>此功能将全部卸载，您将无法从光盘上运行。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>2052</td><td>文件夹|新文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_GB</td><td>2052</td><td>GB</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_KB</td><td>2052</td><td>KB</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_MB</td><td>2052</td><td>MB</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Required</td><td>2052</td><td>要求</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>2052</td><td>剩余时间：{[1] 分 }{[2] 秒}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>2052</td><td>卷</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>2052</td><td>{&amp;Tahoma8}我不接受该许可证协议中的条款(&amp;D)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>2052</td><td>{&amp;Tahoma8}我接受该许可证协议中的条款(&amp;A)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>2052</td><td>单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>2052</td><td>[DATABASEDIR]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>2052</td><td>{&amp;MSSansBold8}数据库文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>2052</td><td>{&amp;Tahoma8}单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>2052</td><td>{&amp;MSSansBold8}目的地文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}将 [ProductName] 安装到：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>2052</td><td>最小化安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>2052</td><td>典型</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在指定的网络位置创建 [ProductName] 的服务器映象。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}输入网络位置或单击“更改”以浏览网络位置。  单击“安装”在指定的网络位置创建 [ProductName] 的服务器映象，或单击“取消”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}网络位置(&amp;N)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>2052</td><td>{&amp;MSSansBold8}网络位置</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}为产品的服务器映象指定网络位置。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseButton</td><td>2052</td><td>浏览(&amp;B)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>2052</td><td>浏览用户帐号</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>2052</td><td>选择用户列表组</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>2052</td><td>选择用户名</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>2052</td><td>{&amp;Tahoma8}要取消 [ProductName] 安装吗？</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>2052</td><td>确认密码(&amp;F):</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>2052</td><td>新用户信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>2052</td><td>新用户信息(&amp;E)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;A)...</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>2052</td><td>{&amp;Tahoma8}单击下面列表内的图标以更改功能的安装方式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>2052</td><td>{&amp;Tahoma8}功能说明</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>2052</td><td>{&amp;Tahoma8}&lt;selected feature path&gt;</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>2052</td><td>{&amp;Tahoma8}功能大小</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>2052</td><td>{&amp;Tahoma8}帮助(&amp;H)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}安装到：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>2052</td><td>{&amp;Tahoma8}当前选定项目的多行说明</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>2052</td><td>{&amp;Tahoma8}空间(&amp;S)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>2052</td><td>{&amp;Tahoma8}安装所需的磁盘空间超出了可用的磁盘空间。</td><td>0</td><td>	</td><td>-433820150</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间不足</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>2052</td><td>域或服务器(&amp;D):</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>2052</td><td>{&amp;Tahoma8}放弃(&amp;A)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>2052</td><td>{&amp;Tahoma8}&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>2052</td><td>[ProductName] 安装程序信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地安装了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>2052</td><td>启动程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>2052</td><td>显示自述文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地卸载了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>2052</td><td>只要与因特网相连就可以确保得到最新的更新。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>2052</td><td>在您购买 [ProductName] 后，有些程序文件可能已经更新。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>2052</td><td>安装程序已完成对 [ProductName] 的安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>2052</td><td>是(&amp;Y)，安装完成后检查程序更新（建议）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 要再次完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间需求</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>2052</td><td>{&amp;Tahoma8}安装选定功能所需的磁盘空间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>{&amp;Tahoma8}下列应用程序正在使用此安装程序需要更新的文件。 关闭这些应用程序并单击“重试”继续。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>2052</td><td>{&amp;Tahoma8}退出(&amp;E)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>2052</td><td>{&amp;MSSansBold8}正在使用的文件</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>2052</td><td>{&amp;Tahoma8}某些需要更新的文件当前正在使用。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsGroup</td><td>2052</td><td>用户列表组(&amp;U):</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsGroupLabel</td><td>2052</td><td>用户列表组(&amp;O):</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>2052</td><td>{&amp;Tahoma8}安装程序正在准备 InstallShield Wizard，InstallShield Wizard 将引导您完成程序安装过程，请稍候。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>2052</td><td>{&amp;MSSansBold8}许可证协议</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>2052</td><td>{&amp;Tahoma8}请仔细阅读下面的许可证协议。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>2052</td><td>指定此应用程序使用的用户帐号。 用户帐号的格式必须为“域\用户名”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>2052</td><td>{&amp;MSSansBold8}登录信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>2052</td><td>指定用户名和密码</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>2052</td><td>选取以下按钮，指定有关安装过程中要创建的新用户信息。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>2052</td><td>{&amp;Tahoma8}更改要安装的程序功能。 此选项可显示“自定义选择”对话框，在其中您可以更改安装功能的方式。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>2052</td><td>{&amp;Tahoma8}修改、修复或删除程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>2052</td><td>{&amp;TahomaBold10}修改(&amp;M)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>2052</td><td>{&amp;MSSansBold8}程序维护</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>2052</td><td>{&amp;TahomaBold10}删除(&amp;R)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>2052</td><td>{&amp;Tahoma8}从计算机中删除 [ProductName]。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>2052</td><td>{&amp;TahomaBold10}修复(&amp;P)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>2052</td><td>{&amp;Tahoma8}修复程序中的错误。 通过此选项您可修复缺少或损坏的文件、快捷方式和注册表项。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 允许修改、修复或删除 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>下列应用程序正在使用此安装程序需要更新的文件。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>2052</td><td>自动关闭并试图重新启动应用程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>2052</td><td>不要关闭应用程序。（将需要重新启动。）</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>2052</td><td>InstallShield(R) Wizard 将在您的计算机中安装 [ProductName] 的修补程序。  要继续，请单击“更新”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>2052</td><td>更新(&amp;U) &gt;</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] 的修补程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）估计剩余时间：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>2052</td><td>{&amp;MSSansBold8}正在安装 [ProductName]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>2052</td><td>已完成进度</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）秒</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>2052</td><td>{&amp;Tahoma8}状态：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>2052</td><td>{&amp;MSSansBold8}正在卸载 [ProductName]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>2052</td><td>{&amp;Tahoma8}正在卸载您选择的程序功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>2052</td><td>{&amp;Tahoma8}正在安装您选择的程序功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在卸载 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在安装 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>2052</td><td>取消(&amp;C)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>2052</td><td>请仔细阅读下面的自述文件信息。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>2052</td><td>{&amp;MSSansBold8}自述文件信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>2052</td><td>{&amp;Tahoma8}使用本机的任何人(&amp;A)（所有用户）</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>2052</td><td>{&amp;MSSansBold8}用户信息</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>2052</td><td>{&amp;Tahoma8}此应用程序的使用者：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>2052</td><td>{&amp;Tahoma8}仅限本人(&amp;M) ([USERNAME])</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>2052</td><td>{&amp;Tahoma8}单位(&amp;O)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>2052</td><td>{&amp;Tahoma8}请输入您的信息。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>2052</td><td>序列号(&amp;S)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>2052</td><td>{50}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>2052</td><td>{80}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>2052</td><td>{&amp;Tahoma8}用户姓名(&amp;U)：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将完成计算机上挂起的 [ProductName] 安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>2052</td><td>{&amp;TahomaBold10}继续执行 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在计算机上完成 [ProductName] 的安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>2052</td><td>选择域或服务器</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>2052</td><td>使用浏览按钮选择域\服务器和用户名。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>2052</td><td>显示 Windows Installer 日志</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装所有的程序功能。 （需要的磁盘空间最大）。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能和将要安装的位置。 建议高级用户使用。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>2052</td><td>{&amp;Tahoma8}选择最适合自己需要的安装类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>2052</td><td>{&amp;MSSansBold8}完整安装(&amp;O)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>2052</td><td>{&amp;MSSansBold8}自定义(&amp;S)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>2052</td><td>{&amp;MSSansBold8}最小化安装(&amp;M)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装最低要求的功能。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>2052</td><td>{&amp;Tahoma8}请选择一个安装类型。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>2052</td><td>{&amp;MSSansBold8}安装类型</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>2052</td><td>{&amp;MSSansBold8}典型(&amp;T)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 以后要再完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出该向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>2052</td><td>用户名(&amp;U):</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何安装设置，请单击“上一步”。 单击“取消”退出向导。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>2052</td><td>{&amp;Tahoma8}单击“安装”开始安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>2052</td><td>公司： [COMPANYNAME]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>2052</td><td>当前设置：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>2052</td><td>目的地文件夹：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>2052</td><td>[INSTALLDIR]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>2052</td><td>{&amp;MSSansBold8}已做好修改程序的准备</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>2052</td><td>{&amp;MSSansBold8}已做好安装程序的准备</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>2052</td><td>{&amp;MSSansBold8}已做好修复程序的准备</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>2052</td><td>[SelectedSetupType]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>2052</td><td>序列号： [ISX_SERIALNUM]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>2052</td><td>安装类型：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>2052</td><td>用户信息：</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>2052</td><td>姓名： [USERNAME]</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>2052</td><td>{&amp;Tahoma8}向导准备开始安装。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>2052</td><td>{&amp;Tahoma8}您已经选择从系统中删除此程序。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何设置，请单击“上一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>2052</td><td>{&amp;Tahoma8}单击“删除”从计算机中删除 [ProductName] 。 删除后此程序将不能再使用。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>2052</td><td>{&amp;Tahoma8}删除(&amp;R)</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>2052</td><td>{&amp;MSSansBold8}删除程序</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将要在您的计算机中安装 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>2052</td><td>警告：本程序受版权法和国际条约的保护。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>2052</td><td>对于运行 [ProductName] 系统颜色设置不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>2052</td><td>对于运行 [ProductName] 操作系统不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>2052</td><td>对于运行 [ProductName] 处理器不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>2052</td><td>对于运行 [ProductName] 内存量不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>2052</td><td>对于运行 [ProductName] 屏幕分辨率不足。</td><td>0</td><td/><td>-433820150</td></row>
		<row><td>ID_STRING1</td><td>2052</td><td>http://www.北京航天云教育科技有限公司.com</td><td>0</td><td/><td>1906668014</td></row>
		<row><td>ID_STRING2</td><td>2052</td><td>北京航天云教育科技有限公司</td><td>0</td><td/><td>1906668014</td></row>
		<row><td>ID_STRING3</td><td>1033</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-433798933</td></row>
		<row><td>ID_STRING3</td><td>2052</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-433798933</td></row>
		<row><td>ID_STRING4</td><td>1033</td><td>U4</td><td>0</td><td/><td>-433811061</td></row>
		<row><td>ID_STRING4</td><td>2052</td><td>U4</td><td>0</td><td/><td>-433811061</td></row>
		<row><td>ID_STRING5</td><td>1033</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-2136666898</td></row>
		<row><td>ID_STRING5</td><td>2052</td><td>航天云课联网(U4)</td><td>0</td><td/><td>-2136666898</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>2052</td><td>系统将不安装此功能。</td><td>0</td><td/><td>-433820150</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>8C7DCCEA-D45F-4786-9977-B123EEE31C7B</td></row>
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
		<row><td>AeroEduClass.exe1_6C52513DBC934088BD90EBC03B88B196.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>AeroEduClass.exe1_F4A6E88592564FB8AB245946C35073DE.exe</td><td/><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>AeroEduClass.exe_856E92FBC8BF422CAEF7C8C12A8C08D7.exe</td><td/><td>C:\Code\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>AeroEduClass.exe_B780C24FBB8D4704A6FC6C1841E81411.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\AeroEduClass\bin\x86\Release\AeroEduClass.exe</td><td>0</td></row>
		<row><td>Booth_Camera.exe1_572ED69BFBEE4706ADDA8CFD716418FE.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\Booth Camera U4\bin\Release\Booth Camera.exe</td><td>0</td></row>
		<row><td>Booth_Camera.exe2_4A42AE8F12734E6BBDAD4F3B7A4364BF.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\Booth Camera U4\obj\Debug\Booth Camera.exe</td><td>0</td></row>
		<row><td>Booth_Camera.exe3_2D4F2564FFAC4539911DAEBADC21496F.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\Booth Camera U4\obj\Release\Booth Camera.exe</td><td>0</td></row>
		<row><td>Booth_Camera.exe_ECD134C806074F31B02243BDB5CE34C0.exe</td><td/><td>C:\TFS\航天云教育U3软件\AeroEduClass\Booth Camera U4\bin\Debug\Booth Camera.exe</td><td>0</td></row>
		<row><td>Booth_Camera.vshos_82C684112069445F86C84B5A7310845F.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>Booth_Camera.vshos_E335F162C1A2404C88AB2DD97E714A31.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>Shortcut_C4AEF69BF49B4DBA8896D9E867492C38.exe</td><td/><td>C:\Program Files (x86)\InstallShield\2013LE\Redist\Language Independent\OS Independent\uninstall.ico</td><td>0</td></row>
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
		<row><td>EnableSwidtag</td><td>1</td></row>
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
		<row><td>ISUSLock</td><td>{F781CE52-0164-44A5-BC05-259190029817}</td></row>
		<row><td>ISUSSignature</td><td>{43FFAC96-7CA3-4722-9F3C-F208E2F7A934}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant,viewProject,viewUI,viewRelease</td></row>
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
		<row><td>DWUSLINK</td><td>CE8BD768B98CF74F8EACE7A8B9DC978FFE9BE78F79FCA7E8CEEBE71F5E6BB7E89E2B87AFFEAC</td><td/></row>
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
		<row><td>ISENABLEDWUSFINISHDIALOG</td><td/><td/></row>
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
		<row><td>LAUNCHPROGRAM</td><td>1</td><td/></row>
		<row><td>LAUNCHREADME</td><td>1</td><td/></row>
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
		<row><td>ProductCode</td><td>{BEE2196D-3DAC-4587-8736-E0388F41FF3B}</td><td/></row>
		<row><td>ProductName</td><td>航天云课联网(U4)</td><td/></row>
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
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{98B684A8-E20B-40DD-86C5-C812C1421B11}</td><td/></row>
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
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
		<row><td>AeroEduClass.exe</td><td>AeroEduClass.exe</td><td/><td>product_name</td><td>2</td></row>
		<row><td>Shortcut</td><td>NewComponent2</td><td/><td>product_name</td><td>2</td></row>
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
		<row><td>AeroEduClass.exe</td><td>product_name</td><td>##IDS_SHORTCUT_DISPLAY_NAME33##</td><td>AeroEduClass.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>AeroEduClass.exe_856E92FBC8BF422CAEF7C8C12A8C08D7.exe</td><td>1</td><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>AeroEduClass.exe1</td><td>DesktopFolder</td><td>##IDS_SHORTCUT_DISPLAY_NAME33##</td><td>AeroEduClass.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>AeroEduClass.exe1_F4A6E88592564FB8AB245946C35073DE.exe</td><td>1</td><td>1</td><td>INSTALLDIR</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>Shortcut</td><td>product_name</td><td>##IDS_SHORTCUT_DISPLAY_NAME53##</td><td>NewComponent2</td><td>[SystemFolder]msiexec.exe</td><td>/x {BEE2196D-3DAC-4587-8736-E0388F41FF3B}</td><td/><td/><td>Shortcut_C4AEF69BF49B4DBA8896D9E867492C38.exe</td><td>0</td><td>1</td><td/><td/><td/><td/><td/><td/><td/><td/></row>
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
		<row><td>ExpressDefault</td><td>Tahoma</td><td>8</td><td/><td/></row>
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
