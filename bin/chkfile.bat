if "%package_ver%" == "" ECHO.��ܰ汾δ���壬�����ļ��Ƿ�������&& pause && exit
if "%spd_dump_ver%" == "" ECHO.spd_dump�汾δ���壬�����ļ��Ƿ������� && pause && exit
if "%flash_src%" == "" ECHO.flash_srcδ���壬�����ļ��Ƿ������� && pause && exit
if "%null_imei%" == "true" if %nvlist_src% == "" ECHO.nvlist_srcδ���壬�����ļ��Ƿ������� && pause && exit
if "%fdl%" == "true" if "%fdl1%" == "" ECHO.fdl1·��δ���壬�����ļ��Ƿ������� && pause && exit
if "%fdl%" == "true" if "%fdl2%" == "" ECHO.fdl2·��δ���壬�����ļ��Ƿ������� && pause && exit
if "%fdl%" == "true" if "%fdl1_addr%" == "" ECHO.fdl1_addrδ���壬�����ļ��Ƿ������� && pause && exit
if "%fdl%" == "true" if "%fdl2_addr%" == "" ECHO.fdl2_addrδ���壬�����ļ��Ƿ������� && pause && exit
if "%image_src%" == "" ECHO.image_srcδ���壬�����ļ��Ƿ������� && pause && exit
::chkfile
if not exist "%flash_src%" ECHO.ˢд�ļ������ڣ������ļ��Ƿ������� && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe" ECHO.spd_dump.exe�����ڣ������ļ��Ƿ������� && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\Channel.ini" ECHO.Channel.ini�����ڣ������ļ��Ƿ������� && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\Channel9.dll" ECHO.Channel9.dll�����ڣ������ļ��Ƿ������� && pause && exit
if "%part%" == "true" if not exist "bin\partitions.xml" ECHO.partitions.xml�����ڣ������ļ��Ƿ������� && pause && exit
if "%null_imei%" == "true" if not exist "%nvlist_src%" ECHO.%nvlist_src%�����ڣ������ļ��Ƿ������� && pause && exit
if not exist "images" ECHO.�����ļ��в����ڣ������ļ��Ƿ������� && pause && exit                                                                                                  