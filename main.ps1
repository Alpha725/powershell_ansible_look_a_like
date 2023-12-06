
function Invoke-BulkCommand ($servers, $command_block) {
  foreach ($server in $servers) {
    Invoke-Command -ComputerName $server -ScriptBlock {
      $command_block
    }
  }
}

$severs = ("plp-vox-00", "plp-vox-01")
$commands = {
  Get-Computerinfo
}
