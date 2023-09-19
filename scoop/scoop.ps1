
echo "请选择安装方式：`n1.默认安装，users目录下   输入：1`n2.自定义安装  输入：2"
$input = read-host "请输入数字："

if ($input = 1)
{   Try{
            iwr -useb get.scoop.sh | iex
    }Catch{
            iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex
        }finally{
            exit
            }
    
}
elseif ($input = 2)
{
    $pathfile = read-host "请输入文件地址："
    $env:SCOOP='$pathfile'
    [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
}
else
{
        echo "请输入1或2"
}
