## sprd flash all


### 使用SPD_DUMP刷写全量的框架

目录结构
```
\.
│  flash.bat
│
├─bin
│  │  chkfile.bat
│  │  command.exe
│  │  config.bat
│  │  flash.json
│  │  nv_flash.json
│  │  partitions.xml
│  │  sprd_imei.exe
│  │
│  ├─fdl
│  │      fdl1-sign.bin
│  │      fdl2-sign.bin
│  │
│  └─spd_dump
│      └─dev_241116
│          └─SPRD
│                  Channel.ini
│                  Channel9.dll
│                  spd_dump.exe
│
├─images
└─nv
        l_fixnv1-imei.bin
        l_fixnv2-imei.bin
```
### 文件说明
`flash.bat`
刷写框架主脚本

`chkfile.bat`
检查文件完整性和变量

`command.exe`
生成刷写脚本工具，用法见下面用法栏

`config.bat`
配置各种变量
如：厂商，版本等

`flash.json`
json格式刷写配置文件，用法见下面用法栏

`nv_flash.json`
json格式基带刷写配置文件，用法见下面用法栏

`partitions.xml`
xml格式展讯分区配置文件

`sprd_imei.exe`
读取或修改fixnv的imei工具，用法见下面用法栏

### 用法

command.exe用法
```
command.exe <JSON格式刷写配置文件> <镜像路径>
示例:command.exe flash.json images/
```
sprd_imei.exe用法
```
sprd_imei.exe <选项> <fixnv文件路径> <15位8开头IMEI>
选项:
1.patch   修改fixnv文件的IMEI，必须传入IMEI
2.read   读取fixnv文件的IMEI，无需传入IMEI
示例:spd_dump.exe patch l_fixnv1.bin 88888888888888
spd_dump.exe read l_fixnv1.bin
```
flash.json格式
```
{
   "name": "vbmeta", <-- 分区名称
   "type": "flash", <-- 操作类型，可选flash erase
   "img": "vbmeta.img" <-- 镜像名称，当类型为erase时则不需要
}
```
nv_flash.json格式(未使用)
```
{
   "name": "l_fixnv1", <-- nv分区名称
   "type": "flash", <-- 操作类型，可选flash erase
   "img": "l_fixnv1-mod.bin" <-- 镜像名称，当类型为erase时则不需要
}
```
partitions.xml格式
```
<Partition id="prodnv" size="5"/>
id值为分区名称 size值为分区大小(MB)
请使用正确顺序
```
###  目录说明
`bin`框架调用的文件夹

`bin\spd_dump`放spd_dump的文件夹

`bin\fdl`存放fdl文件的文件夹

`bin\images`放镜像的文件夹

`bin\nv`放基带分区的文件夹

### 使用项目

### [spreadtrum_flash](https://github.com/TomKing062/spreadtrum_flash)
