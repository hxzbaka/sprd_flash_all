if "%package_ver%" == "" ECHO.框架版本未定义，请检查文件是否完整！&& pause && exit
if "%spd_dump_ver%" == "" ECHO.spd_dump版本未定义，请检查文件是否完整！ && pause && exit
if "%flash_src%" == "" ECHO.flash_src未定义，请检查文件是否完整！ && pause && exit
if "%null_imei%" == "true" if %nvlist_src% == "" ECHO.nvlist_src未定义，请检查文件是否完整！ && pause && exit
if "%fdl%" == "true" if "%fdl1%" == "" ECHO.fdl1路径未定义，请检查文件是否完整！ && pause && exit
if "%fdl%" == "true" if "%fdl2%" == "" ECHO.fdl2路径未定义，请检查文件是否完整！ && pause && exit
if "%fdl%" == "true" if "%fdl1_addr%" == "" ECHO.fdl1_addr未定义，请检查文件是否完整！ && pause && exit
if "%fdl%" == "true" if "%fdl2_addr%" == "" ECHO.fdl2_addr未定义，请检查文件是否完整！ && pause && exit
if "%image_src%" == "" ECHO.image_src未定义，请检查文件是否完整！ && pause && exit
::chkfile
if not exist "%flash_src%" ECHO.刷写文件不存在，请检查文件是否完整！ && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe" ECHO.spd_dump.exe不存在，请检查文件是否完整！ && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\Channel.ini" ECHO.Channel.ini不存在，请检查文件是否完整！ && pause && exit
if not exist "bin\spd_dump\%spd_dump_ver%\SPRD\Channel9.dll" ECHO.Channel9.dll不存在，请检查文件是否完整！ && pause && exit
if "%part%" == "true" if not exist "bin\partitions.xml" ECHO.partitions.xml不存在，请检查文件是否完整！ && pause && exit
if "%null_imei%" == "true" if not exist "%nvlist_src%" ECHO.%nvlist_src%不存在，请检查文件是否完整！ && pause && exit
if not exist "images" ECHO.镜像文件夹不存在，请检查文件是否完整！ && pause && exit                                                                                                  