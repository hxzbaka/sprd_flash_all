@ECHO OFF
if not exist "bin\config.bat" ECHO.配置脚本不存在，请检查文件是否完整！ && pause && exit
call bin\config.bat
:checkfile
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.正在校验文件...
if not exist "bin\chkfile.bat" ECHO.校验脚本不存在，请检查文件是否完整！ && pause && exit
if not exist "backup" mkdir backup
call bin\chkfile.bat
:menu
title %device%全量包
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.适用设备:%device%
ECHO.厂商:%oem%
ECHO.刷机包版本:%version%
ECHO.刷机包平台:%package%
ECHO.框架作者:hxzbaka
ECHO.框架版本:%package_ver%
ECHO.------------------------------------------------
ECHO.【1】刷写分区(不包括基带)
ECHO.【2】刷写所有分区(危险)
ECHO.【3】写IMEI
ECHO.【4】读IMEI
ECHO.【0】退出
set ver=null
set /p ver=请选择:
if %ver% == 1 goto flash
if %ver% == 2 goto flash
if %ver% == 3 goto flash1
if %ver% == 4 goto flash1
if %ver% == 0 exit
goto :menu
:flash
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
if %ver% == 1 ECHO.刷写分区(不包括基带) && title 刷写分区(不包括基带)
if %ver% == 2 ECHO.刷写所有分区(危险) && title 刷写所有分区(危险)
ECHO.------------------------------------------------
ECHO.【1】重新分区(完全)
ECHO.【2】不重新分区
ECHO.【0】上一级
ECHO.------------------------------------------------
ECHO.如果你没有改变过分区名称/大小，请选择不重新分区
set ver1=null
set /p ver1=请选择:
if %ver1% == 1 goto flash1
if %ver1% == 2 goto flash1
if %ver1% == 0 goto menu
goto flash

:flash1
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
if "%ver1%" == 1 ECHO.重新分区
if "%ver1%" == 2 ECHO.不重新分区
ECHO.------------------------------------------------
ECHO.【1】直接使用BROM刷写
ECHO.【2】使用kick刷写(部分设备不支持)
ECHO.【3】使用kickto 2刷写
ECHO.【0】上一级
ECHO.------------------------------------------------
ECHO.使用BROM刷写请将设备进入BROM模式
ECHO.使用kick刷写请确保支持CALI(boot_diag-cali_diag-dl_diag)
ECHO.使用kickto 2刷写
ECHO.后两种方法在关机状态下直接连接电脑即可，无法关机长按电源键也可以
set ver2=null
set /p ver2=请选择:
if %ver2% == 1 if %ver% == 2 goto makeimei
if %ver2% == 2 if %ver% == 2 goto makeimei
if %ver2% == 3 if %ver% == 2 goto makeimei
if %ver2% == 1 if %ver% == 3 goto makeimei1
if %ver2% == 2 if %ver% == 3 goto makeimei1
if %ver2% == 3 if %ver% == 3 goto makeimei1
if %ver2% == 1 if %ver% == 4 goto read_imei
if %ver2% == 2 if %ver% == 4 goto read_imei
if %ver2% == 3 if %ver% == 4 goto read_imei
if %ver2% == 1 goto flash2
if %ver2% == 2 goto flash2
if %ver2% == 3 goto flash2
if %ver% == 3 goto menu
if %ver% == 4 goto menu
if %ver2% == 0 goto flash
goto flash1
:flash2
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.正在生成刷写脚本...
for /f "delims=" %%i in ('bin\command.exe %cd%\%flash_src% %cd%\%image_src%') do set command=%%i
if %ver2% == 1 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command1=%command1% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec timeout 5000 read_part l_fixnv1 0 1M backup\l_fixnv1.bin read_part l_fixnv2 0 1M backup\l_fixnv2.bin
if %ver% == 2 set command1=%command1% write_part l_fixnv1 %cd%\nv\l_fixnv1-imei-mod.bin write_part l_fixnv2 %cd%\nv\l_fixnv2-imei-mod.bin 
if %ver1% == 1 set repart=true && set command1=%command1% repartition bin\partitions.xml
set command=%command1% %command%reset
ECHO.%command%
ECHO.按回车开始刷写
pause
goto flash3
:flash3
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.开始刷写...
if %ver2% == 1 ECHO.请将设备进入BROM模式并连接电脑
if %ver2% == 2 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 3 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
%command%
ECHO.刷写脚本执行完毕
pause
goto menu
:makeimei
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.开始读取IMEI
if %ver2% == 1 ECHO.请将设备进入BROM模式并连接电脑
if %ver2% == 2 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 3 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec read_part l_fixnv1 0 1m %cd%\nv\nv1.bin reset
%command3%
for /f "delims=" %%i in ('bin\sprd_imei.exe read %cd%\nv\nv1.bin') do set imei_command=%%i
ECHO.IMEI:%imei_command:*IMEI:=%
set imei=%imei_command:*IMEI:=%
if %imei_command:*IMEI:=% == "" ECHO.无法读取IMEI，请手动填入! && set /p imei=请输入正确的IMEI(15位纯数字8开头):
ECHO.开始修改IMEI
bin\sprd_imei.exe patch %cd%\nv\l_fixnv1-imei.bin %imei%
ECHO.
if not exist %cd%\nv\l_fixnv1-imei-mod.bin ECHO.nv1修改失败! && pause && goto menu
bin\sprd_imei.exe patch %cd%\nv\l_fixnv2-imei.bin %imei%
if not exist %cd%\nv\l_fixnv2-imei-mod.bin ECHO.nv2修改失败! && pause && goto menu
ECHO.修改成功
del %cd%\nv\l_fixnv1-imei-mod.bin
del %cd%\nv\l_fixnv2-imei-mod.bin
pause
goto flash2
:makeimei1
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
set /p imei=请输入正确的IMEI(15位纯数字8开头):
ECHO.开始修改IMEI
bin\sprd_imei.exe patch %cd%\nv\l_fixnv1-imei.bin %imei%
if not exist %cd%\nv\l_fixnv1-imei-mod.bin ECHO.nv1修改失败! && pause && goto makeimei1
bin\sprd_imei.exe patch %cd%\nv\l_fixnv2-imei.bin %imei%
if not exist %cd%\nv\l_fixnv2-imei-mod.bin ECHO.nv2修改失败! && pause && goto makeimei1
if %ver2% == 1 ECHO.请将设备进入BROM模式并连接电脑
if %ver2% == 2 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 3 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec write_part l_fixnv1 %cd%\nv\l_fixnv1-imei-mod.bin write_part l_fixnv2 %cd%\nv\l_fixnv2-imei-mod.bin reset
%command3%
ECHO.修改完成
del %cd%\nv\l_fixnv1-imei-mod.bin
del %cd%\nv\l_fixnv2-imei-mod.bin
pause
goto menu
:read_imei
cls
ECHO.#############################
ECHO.    ╔══╗╔╗──╔══╗╔══╗╔╗╔╗
ECHO.    ║╔═╝║║──║╔╗║║╔═╝║║║║
ECHO.    ║╚═╗║║──║╚╝║║╚═╗║╚╝║
ECHO.    ║╔═╝║║──║╔╗║╚═╗║║╔╗║
ECHO.    ║║──║╚═╗║║║║╔═╝║║║║║
ECHO.    ╚╝──╚══╝╚╝╚╝╚══╝╚╝╚╝
ECHO.#############################
ECHO.开始读取IMEI
if %ver2% == 1 ECHO.请将设备进入BROM模式并连接电脑
if %ver2% == 2 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 3 ECHO.请将设备关机并连接电脑，无法关机先连电脑再按住电源键
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec read_part l_fixnv1 0 1m %cd%\nv\nv1.bin reset
%command3%
for /f "delims=" %%i in ('bin\sprd_imei.exe read %cd%\nv\nv1.bin') do set imei_command=%%i
ECHO.IMEI:%imei_command:*IMEI:=%
ECHO.读取成功
pause
goto menu
