::框架版本
set package_ver=1.0
::设备型号
set device=sprd
::设备厂商
set oem=SPRD
::系统平台
set package=sl8541e_1h10
::包版本
set version=SPRD_SL8541E_1H10_OPM_ANDROID_20241201
::文件列表路径(如果启用)
set flash_src=bin\flash.json
::spd_dump版本
set spd_dump_ver=dev_241116
::是否全量包
set all_image=true
::是否有分区表
set part=true
::是否刷写基带分区
set nvitem=true
::引导写imei
set null_imei=true
::基带分区列表(如果启用)
set nvlist_src=bin\nv_flash.json
::镜像分区列表
set image_src=images\
::启用fdl(不启用则只能用SPRD4)
set fdl=true
::fdl路径(如果启用)
set fdl1=bin\fdl\fdl1-sign.bin
set fdl2=bin\fdl\fdl2-sign.bin
set fdl1_addr=0x5000
set fdl2_addr=0x9efffe00