# Goi API ky so ATTK cho tung SO_ID_YC trong file CSV.
# Cach dung: powershell -ExecutionPolicy Bypass -File ky_so.ps1 [-Csv ds_so_id_22556.csv]
# Ket qua ghi vao ket_qua_ky_so.csv (so_id, http_code, noi dung tra ve)
param([string]$Csv = "$PSScriptRoot\ds_so_id_22556.csv")
$api = "http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
$out = "$PSScriptRoot\ket_qua_ky_so.csv"
$ids = Import-Csv $Csv | ForEach-Object { $_.SO_ID_YC.Trim() } | Where-Object { $_ -match '^\d+$' }
$kq = @(); $ok = 0; $loi = 0; $n = 0
foreach ($id in $ids) {
    $n++
    try {
        $r = Invoke-WebRequest -Uri ($api + $id) -UseBasicParsing -TimeoutSec 60
        $code = [int]$r.StatusCode; $body = $r.Content
    } catch {
        $code = if ($_.Exception.Response) { [int]$_.Exception.Response.StatusCode } else { 0 }
        $body = $_.Exception.Message
    }
    if ($code -eq 200) { $ok++ } else { $loi++ }
    Write-Host "[$n] $id -> $code $body"
    $kq += [pscustomobject]@{ so_id = $id; http_code = $code; response = $body }
}
$kq | Export-Csv $out -NoTypeInformation -Encoding UTF8
Write-Host "Tong: $n | Thanh cong (HTTP 200): $ok | Loi: $loi | Chi tiet: $out"
