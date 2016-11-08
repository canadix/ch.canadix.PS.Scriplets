#Vmware VCenter

#Get-Vm

Add-PSSnapin *vmware*


get-vm srv06-dev | get-view | select name,@{name="CpuFeatureMask";expression={$_.config.CpuFeatureMask}} 