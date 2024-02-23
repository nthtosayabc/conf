#!MANAGED-CONFIG https://surfbd.nthtosay.workers.dev interval=604800 strict=false

[General]
dns-server = system, 8.8.8.8, 8.8.4.4, 9.9.9.9:9953
http-listen = 0.0.0.0:8080
socks5-listen = 0.0.0.0:1080
test-timeout = 1

[Proxy]
KH 1 = vmess, 220.158.233.184, 10000, username=63933598-d250-11ee-b48d-8b3667319614 ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

TH 1 = vmess, 185.78.165.153, 10000, username=a8b726b0-d251-11ee-ba40-00163ea61c9a ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

SG Melbi = trojan, sg-4.test3.net, 443, password=775eddd0-bd24-11ee-b2cb-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com

ID Herza = trojan, id-1.test3.net, 443, password=13b36800-d026-11ee-a100-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com

[Proxy Group]
LIST = select, AUTO ⌥, BEST PING ⍚, include-all-proxies = true

AUTO ⌥ = fallback, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=400, timeout=5

BEST PING ⍚ = url-test, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=600, tolerance=100, timeout=5

[Rule]
FINAL,LIST