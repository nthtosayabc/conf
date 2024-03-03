#!MANAGED-CONFIG https://surfbd.nthtosay.workers.dev interval=604800 strict=false

[General]
dns-server = system, 8.8.8.8, 8.8.4.4, 9.9.9.9:9953
http-listen = 0.0.0.0:8080
socks5-listen = 0.0.0.0:1080
test-timeout = 1

[Proxy]
KH 1 = vmess, 220.158.233.184, 10000, username=3d2b2ade-d956-11ee-9525-bb7c9a1f7f28 ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

TH 1 = vmess, 185.78.165.153, 10000, username=8a1c59b2-d956-11ee-8959-00163ea61c9a ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

SG-HE 1 = trojan, sg1-trojan.bonds.id, 443, password=fcfeace0-d956-11ee-8d39-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com

SG Melbi = trojan, sg-4.test3.net, 443, password=35bbbfe0-d59e-11ee-8a72-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com


[Proxy Group]
LIST SERVER = select, AUTO ID, BEST PING, include-all-proxies = true

AUTO ID = fallback, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=400, timeout=5

BEST PING = url-test, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=600, tolerance=100, timeout=5

[Rule]
FINAL,LIST SERVER

[Panel]
menu = title="Profile Update", content="7day",  style=info