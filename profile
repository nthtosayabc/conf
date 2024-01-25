#!MANAGED-CONFIG https://conf.nthtosay.workers.dev interval=604800 strict=false

[General]
dns-server = system, 8.8.8.8, 8.8.4.4, 9.9.9.9:9953
http-listen = 0.0.0.0:8080
socks5-listen = 0.0.0.0:1080
proxy-test-url = http://m.mobilelegends.com
internet-test-url = http://m.mobilelegends.com
test-timeout = 1

[Proxy]
KH 1 = vmess, 220.158.233.184, 10000, username=eab0e4aa-b746-11ee-aa48-9b7b632a5199, udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

TH 1 = vmess, 185.78.165.153, 10000, username=16a1f3f2-b2ff-11ee-862b-00163ea61c9a, udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

SG Melbi = trojan, sg-4.test3.net, 443, password=73a87be0-a4a9-11ee-922a-1239d0255272, skip-cert-verify=true, sni=m.mobilelegends.com

ID Herza = trojan, id-1.test3.net, 443, password=34e5eeb0-b747-11ee-8556-1239d0255272, skip-cert-verify=true, sni=m.mobilelegends.com

[Proxy Group]
SERVER ⎎ = select, FIRST PING ⌥, BEST PING ⍚, DIRECT, include-all-proxies = true

FIRST PING ⌥ = fallback, include-all-proxies = true, url=http://m.mobilelegends.com, interval=600, timeout=5

BEST PING ⍚ = url-test, include-all-proxies = true, url=http://m.mobilelegends.com, interval=600, tolerance=100, timeout=5

[Rule]
FINAL,SERVER ⎎