#!/usr/bin/env bash
# Goi API ky so ATTK cho tung SO_ID_YC trong file CSV.
# Cach dung: ./ky_so.sh [file_csv]   (mac dinh: ds_so_id_22556.csv)
# Ket qua ghi vao ket_qua_ky_so.csv (so_id, http_code, noi dung tra ve)
set -u
cd "$(dirname "$0")"
CSV="${1:-ds_so_id_22556.csv}"
API="http://sign.abic.com.vn/bancaapi/attk/sign?b_so_id="
OUT="ket_qua_ky_so.csv"
echo "so_id,http_code,response" > "$OUT"
ok=0; loi=0; n=0
for id in $(tail -n +2 "$CSV" | tr -d '\r"' | grep -E '^[0-9]+$'); do
  n=$((n+1))
  resp=$(curl -sS --max-time 60 -w $'\n%{http_code}' "${API}${id}" 2>&1)
  code=$(printf '%s' "$resp" | tail -n1)
  body=$(printf '%s' "$resp" | sed '$d' | tr '\n\r,' '   ')
  echo "${id},${code},${body}" >> "$OUT"
  if [ "$code" = "200" ]; then ok=$((ok+1)); else loi=$((loi+1)); fi
  echo "[$n] $id -> $code $body"
done
echo "Tong: $n | Thanh cong (HTTP 200): $ok | Loi: $loi | Chi tiet: $OUT"
