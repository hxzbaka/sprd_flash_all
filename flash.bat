@ECHO OFF
if not exist "bin\config.bat" ECHO.���ýű������ڣ������ļ��Ƿ������� && pause && exit
call bin\config.bat
:checkfile
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.����У���ļ�...
if not exist "bin\chkfile.bat" ECHO.У��ű������ڣ������ļ��Ƿ������� && pause && exit
call bin\chkfile.bat
:menu
title VP10ȫ����
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.�����豸:%device%
ECHO.����:%oem%
ECHO.ˢ�����汾:%version%
ECHO.ˢ����ƽ̨:%package%
ECHO.�������:hxzbaka
ECHO.��ܰ汾:%package_ver%
ECHO.------------------------------------------------
ECHO.��1��ˢд����(����������)
ECHO.��2��ˢд���з���(Σ��)
ECHO.��3��дIMEI
ECHO.��4����IMEI
ECHO.��0���˳�
set ver=null
set /p ver=��ѡ��:
if %ver% == 1 goto flash
if %ver% == 2 goto flash
if %ver% == 3 goto flash1
if %ver% == 4 goto flash1
if %ver% == 0 exit
goto :menu
:flash
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
if %ver% == 1 ECHO.ˢд����(����������) && title ˢд����(����������)
if %ver% == 2 ECHO.ˢд���з���(Σ��) && title ˢд���з���(Σ��)
ECHO.------------------------------------------------
ECHO.��1�����·���(��ȫ)
ECHO.��2�������·���
ECHO.��0����һ��
ECHO.------------------------------------------------
ECHO.�����û�иı����������/��С����ѡ�����·���
set ver1=null
set /p ver1=��ѡ��:
if %ver1% == 1 goto flash1
if %ver1% == 2 goto flash1
if %ver1% == 0 goto menu
goto flash

:flash1
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
if "%ver1%" == 1 ECHO.���·���
if "%ver1%" == 2 ECHO.�����·���
ECHO.------------------------------------------------
ECHO.��1��ֱ��ʹ��BROMˢд
ECHO.��2��ʹ��kickˢд(�����豸��֧��)
ECHO.��3��ʹ��kickto 2ˢд
ECHO.��0����һ��
ECHO.------------------------------------------------
ECHO.ʹ��BROMˢд�뽫�豸����BROMģʽ
ECHO.ʹ��kickˢд��ȷ��֧��CALI(boot_diag-cali_diag-dl_diag)
ECHO.ʹ��kickto 2ˢд
ECHO.�����ַ����ڹػ�״̬��ֱ�����ӵ��Լ��ɣ��޷��ػ�������Դ��Ҳ����
set ver2=null
set /p ver2=��ѡ��:
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
if %ver2% == 0 goto flash
goto flash1
:flash2
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.��������ˢд�ű�...
for /f "delims=" %%i in ('bin\command.exe %cd%\%flash_src% %cd%\%image_src%') do set command=%%i
if %ver2% == 1 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command1=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command1=%command1% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec timeout 5000
if %ver% == 2 set command1=%command1% write_part l_fixnv1 %cd%\nv\l_fixnv1-imei-mod.bin write_part l_fixnv2 %cd%\nv\l_fixnv2-imei-mod.bin 
if %ver1% == 1 set repart=true && set command1=%command1% repartition bin\partitions.xml
set command=%command1% %command%reset
ECHO.%command%
ECHO.���س���ʼˢд
pause
goto flash3
:flash3
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.��ʼˢд...
if %ver2% == 1 ECHO.�뽫�豸����BROMģʽ�����ӵ���
if %ver2% == 2 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 2 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
%command%
ECHO.ˢд�ű�ִ�����
pause
goto menu
:makeimei
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.��ʼ��ȡIMEI
if %ver2% == 1 ECHO.�뽫�豸����BROMģʽ�����ӵ���
if %ver2% == 2 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 3 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec read_part l_fixnv1 0 1m %cd%\nv\nv1.bin reset
%command3%
for /f "delims=" %%i in ('bin\sprd_imei.exe read %cd%\nv\nv1.bin') do set imei_command=%%i
ECHO.IMEI:%imei_command:*IMEI:=%
set imei=%imei_command:*IMEI:=%
if %imei_command:*IMEI:=% == "" ECHO.�޷���ȡIMEI�����ֶ�����! && set /p imei=��������ȷ��IMEI(15λ������8��ͷ):
ECHO.��ʼ�޸�IMEI
bin\sprd_imei.exe patch %cd%\nv\l_fixnv1-imei.bin %imei%
if not exist %cd%\nv\l_fixnv1-imei-mod.bin ECHO.nv1�޸�ʧ��! && pause && goto menu
bin\sprd_imei.exe patch %cd%\nv\l_fixnv2-imei.bin %imei%
if not exist %cd%\nv\l_fixnv2-imei-mod.bin ECHO.nv2�޸�ʧ��! && pause && goto menu
ECHO.�޸ĳɹ�
del %cd%\nv\l_fixnv1-imei-mod.bin
del %cd%\nv\l_fixnv2-imei-mod.bin
pause
goto flash2
:makeimei1
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
set /p imei=��������ȷ��IMEI(15λ������8��ͷ):
ECHO.��ʼ�޸�IMEI
bin\sprd_imei.exe patch %cd%\nv\l_fixnv1-imei.bin %imei%
if not exist %cd%\nv\l_fixnv1-imei-mod.bin ECHO.nv1�޸�ʧ��! && pause && goto makeimei1
bin\sprd_imei.exe patch %cd%\nv\l_fixnv2-imei.bin %imei%
if not exist %cd%\nv\l_fixnv2-imei-mod.bin ECHO.nv2�޸�ʧ��! && pause && goto makeimei1
if %ver2% == 1 ECHO.�뽫�豸����BROMģʽ�����ӵ���
if %ver2% == 2 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 3 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec write_part l_fixnv1 %cd%\nv\l_fixnv1-imei-mod.bin write_part l_fixnv2 %cd%\nv\l_fixnv2-imei-mod.bin reset
%command3%
ECHO.�޸����
del %cd%\nv\l_fixnv1-imei-mod.bin
del %cd%\nv\l_fixnv2-imei-mod.bin
pause
goto menu
:read_imei
cls
ECHO.#############################
ECHO.    �X�T�T�[�X�[�����X�T�T�[�X�T�T�[�X�[�X�[
ECHO.    �U�X�T�a�U�U�����U�X�[�U�U�X�T�a�U�U�U�U
ECHO.    �U�^�T�[�U�U�����U�^�a�U�U�^�T�[�U�^�a�U
ECHO.    �U�X�T�a�U�U�����U�X�[�U�^�T�[�U�U�X�[�U
ECHO.    �U�U�����U�^�T�[�U�U�U�U�X�T�a�U�U�U�U�U
ECHO.    �^�a�����^�T�T�a�^�a�^�a�^�T�T�a�^�a�^�a
ECHO.#############################
ECHO.��ʼ��ȡIMEI
if %ver2% == 1 ECHO.�뽫�豸����BROMģʽ�����ӵ���
if %ver2% == 2 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 3 ECHO.�뽫�豸�ػ������ӵ��ԣ��޷��ػ����������ٰ�ס��Դ��
if %ver2% == 1 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300
if %ver2% == 2 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kick
if %ver2% == 3 set command3=bin\spd_dump\%spd_dump_ver%\SPRD\spd_dump.exe --wait 300 --kickto 2
set command3=%command3% fdl %fdl1% %fdl1_addr% fdl %fdl2% %fdl2_addr% exec read_part l_fixnv1 0 1m %cd%\nv\nv1.bin reset
%command3%
for /f "delims=" %%i in ('bin\sprd_imei.exe read %cd%\nv\nv1.bin') do set imei_command=%%i
ECHO.IMEI:%imei_command:*IMEI:=%
ECHO.��ȡ�ɹ�
pause
goto menu
