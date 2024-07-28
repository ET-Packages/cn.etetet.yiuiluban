set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\.Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\Assets\Editor\Luban\Base

dotnet %GEN_CLIENT% ^
    -t client ^
    -c cs-simple-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=%WORKSPACE%\Scripts\Model\Client\ConfigGen ^
    -x outputDataDir=%WORKSPACE%\Assets\Config\Json

pause