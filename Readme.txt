**重要**重要**重要**说三遍===========>打包U3、U4安装程序时
修改AeroEduLib/TypeDefinition.cs/_DeviceType 的值

本项目是北京航天云教育课联网平台源码:
AeroEduClassProject				
	--AeroEduClass					课联网平台项目 必须x86编译,使用Cefsharp版本47.0.3，使用管理员启动
	--航天云态度表达					航天云态度表达软件(课联网登录后启动)
AeroEduPlatformProject
	--AeroEduPlatform				硬件信息实时上报服务
	--AeroEduPlatformLib			硬件信息实时上报类库
	--OpenHardwareMonitor			硬件信息获取工具，2.0编译
	--OpenHardwareMonitorLib		硬件信息获取工具类库，2.0编译
	--ConsoleAEP
U3
	--Booth Camera					U3实物展台项目 必须x86编译
	--Record Player					U3录播项目 必须x86编译
U4
	--Booth Camera U4				U4实物展台项目 必须x86编译
	--Record Player U4				U4录播项目 必须x86编译
AeroEduClassSetupU3					U3课联网平台项目安装包
AeroEduClassSetupU4					U4课联网平台项目安装包,编译时候会报2次“Serial Number Missing”点确定即可
Update
	--UpgradePackageBuild					版本更新打包程序
	--AeroEduRegSoft						版本更新程序，需要管理员启动
AeroEduLib							常用工具类库
AeroEduRegSoft						课联网、录播、展台注册工具


注意：在生成AeroEduClassSetup项目之前，先执行“清理”，再分别手动生成AeroEduClass、Booth Camera、Record Player、航天云态度表达，最后生成该项目。
生成的安装包在：Setup1\AeroEduClassSetup\Express\SingleImage\DiskImages\DISK1\setup.exe