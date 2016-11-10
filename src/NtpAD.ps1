#
# Ntp Configure AD
#
function NtpAd 
{

     
    if ($y = "*successfully*")
    {
        net.exe stop w32time
    }else {
        write-host "the windows time service stop is not started"
    }    
    
    if ($y = "*successfully*")
    {
        w32tm /config /syncfromflags:manual /manualpeerlist:"0.pool.ntp.org, 1.pool.ntp.org, 2.pool.ntp.org"
    }else {
        write-host "the windows time /config"
    }  
    
    if ($y = "*successfully*")
    {
        w32tm /config /reliable:yes
        
    }else {
        write-host "the windows time  no time"
    }  
    
    $reg01 = "HKLM:\SYSTEM\ControlSet001\services\W32Time\Parameters"
    Set-ItemProperty -Path $reg01 -Name Type -Value NTP

    $reg02 = "HKLM:\SYSTEM\ControlSet001\Services\W32Time\TimeProviders\NtpClient"
    Set-ItemProperty -Path $reg02 -Name SpecialPollInterval -value 300
    $cmd = "c:\net start W32Time"
     
    if ($y = "*starting*")
    {
        net.exe start w32time
    }else {
        write-host "the windows time service stop is not started"
    }    

}