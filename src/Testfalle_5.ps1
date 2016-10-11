<# 
       
    vcenter server snapins/module

    Name                           Port  User
    ----                           ----  ----
    cmvc-lab17ch-1.mgmt.sccloud... 443   MGMTSCC\tgdgani1

#>

connect-VIServer -name cmvc-lab17ch-1.mgmt.sccloudpoc.net -user mgmt.sccloudpoc.net\tdgani1

get-vm

<#
PowerCLI C:\Program Files (x86)\VMware\Infrastructure\vSphere PowerCLI> get-vm

Name                 PowerState Num CPUs MemoryGB
----                 ---------- -------- --------
vxlan-test-lab17ch   PoweredOff 2        4.000
drs_dummy_vm         PoweredOff 1        0.250
NSX_Controller_e0... PoweredOn  4        4.000
lab17-bgp-C-0        PoweredOn  1        0.500
....
cmdns-lab17ch-tou... PoweredOn  1        2.000
test02               PoweredOn  1        2.000
test01               PoweredOff 1        2.000


#>

Get-Cluster -Name "clu-wl-lab17ch-1" | get-vm


<#

Name                 PowerState Num CPUs MemoryGB
----                 ---------- -------- --------
srv05-prd            PoweredOn  1        4.000
srv03-dev            PoweredOn  1        4.000
srv07-testing-prd    PoweredOn  1        4.000
srv06-dev            PoweredOff 1        4.000
srv04-prd            PoweredOff 1        4.000
srv02-test           PoweredOff 1        4.000
srv01-test           PoweredOn  1        4.000


#>

<#
PowerCLI C:\> $vms = ($vm).count
PowerCLI C:\> $vms
7
#>

$vms = ($vm).count
$vms
7

vm

Get-Cluster clu-wl-lab17ch-2 | get-vm | Where-Object {$_.name -notlike "*test*"}

