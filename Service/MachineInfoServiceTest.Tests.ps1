using module ".\MachineInfoService.psm1"

Import-Module Pester 

# 起動方法
# Invoke-Pester .\Service\MachineInfoServiceTest.Tests.ps1

Describe "MachineInfoService" {
    Context "Get-MachineInfo" {
        It "Serial番号取得のテスト" {
            $result = [MachineInfoService]::New().getSerialNumber();
            [System.Console]::WriteLine("テスト01:SerialNumberは"+$result)
            $result | Should  -Not -BeNullOrEmpty
        }
    }
}