# パソコンの情報を取得するクラス
# 
class machineInfoService{
   
    [String] $cpuName
    [String] $modelName
 
    [String] getMemorySize(){
         Return  Get-WmiObject -Class Win32_PhysicalMemory | %{ $_.Capacity} | Measure-Object -Sum | %{ ($_.sum /1024/1024/1024).toString()}
     }
 
     [String] getModelName(){
         return (Get-WmiObject Win32_ComputerSystemProduct).name
     }
 
     [String] getCpuName(){
           return @((Get-WmiObject Win32_Processor).Name)[0]
     }
 
     [String] getSerialNumber(){
         return (Get-WmiObject Win32_BIOS).SerialNumber;
     }
 
     [String] getOS(){
       $OS = (Get-WmiObject Win32_OperatingSystem).Caption
       $SP = (Get-WmiObject Win32_OperatingSystem).ServicePackMajorVersion
       if( $SP -ne 0 ){ $OS += "SP" + $SP }
       return $OS
     }
 
     [String] getHostName(){
       return hostname;
     }
 
 }
 
 
 