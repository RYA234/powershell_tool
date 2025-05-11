using module ".\MachineInfoService.psm1"

Import-Module Pester 

# �N�����@
# Invoke-Pester .\Service\MachineInfoServiceTest.Tests.ps1

Describe "MachineInfoService" {
    Context "Get-MachineInfo" {
        It "Serial�ԍ��擾�̃e�X�g" {
            $result = [MachineInfoService]::New().getSerialNumber();
            [System.Console]::WriteLine("�e�X�g01:SerialNumber��"+$result)
            $result | Should  -Not -BeNullOrEmpty
        }
    }
}