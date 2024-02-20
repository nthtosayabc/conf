#!MANAGED-CONFIG https://surfbd.nthtosay.workers.dev interval=604800 strict=false

[General]
dns-server = system, 8.8.8.8, 8.8.4.4, 9.9.9.9:9953
http-listen = 0.0.0.0:8080
socks5-listen = 0.0.0.0:1080
proxy-test-url = http://m.mobilelegends.com
internet-test-url = http://m.mobilelegends.com
test-timeout = 1

[Proxy]
KH 1 = vmess, 220.158.233.184, 10000, username=ffa34136-ccb9-11ee-99be-271832a15459, udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

TH 1 = vmess, 185.78.165.153, 10000, username=a44d93da-ccba-11ee-839e-00163ea61c9a, udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

SG 1 = vmess, sgv2ssws.6xixd.opdns.net, 80, username=eaf5e01b-f27d-44cf-94ae-87196143eef9, udp-relay=true, ws=true, ws-path=/, ws-headers=Host:m.line.me, vmess-aead=true

SG Melbi = trojan, sg-4.test3.net, 443, password=775eddd0-bd24-11ee-b2cb-1239d0255272, skip-cert-verify=true, sni=m.mobilelegends.com

ID Herza = trojan, id-1.test3.net, 443, password=34e5eeb0-b747-11ee-8556-1239d0255272, skip-cert-verify=true, sni=m.mobilelegends.com

[Proxy Group]
LIST = select, AUTO ⌥, BEST PING ⍚, DIRECT, include-all-proxies = true

AUTO ⌥ = fallback, include-all-proxies = true, url=http://m.mobilelegends.com, interval=400, timeout=5

BEST PING ⍚ = url-test, include-all-proxies = true, url=http://m.mobilelegends.com, interval=600, tolerance=100, timeout=5

[Rule]
FINAL,LIST
