
echo "��ѡ��װ��ʽ��`n1.Ĭ�ϰ�װ��usersĿ¼��   ���룺1`n2.�Զ��尲װ  ���룺2"
$input = read-host "���������֣�"

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
    $pathfile = read-host "�������ļ���ַ��"
    $env:SCOOP='$pathfile'
    [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
}
else
{
        echo "������1��2"
}
