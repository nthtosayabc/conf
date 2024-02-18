port: 8080
socks-port: 1080
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
dns:
  enable: true
  ipv6: false
  enhanced-mode: redir-host
  listen: 127.0.0.1:7874
  nameserver:
    - 1.1.1.1
    - 1.0.0.1
  fallback:
    - https://cloudflare-dns.com/dns-query
    - https://dns.google/dns-query
  default-nameserver:
    - 8.8.8.8
    - 8.8.4.4

proxies:
  - name: SG Melbi
    server: sg-4.test3.net
    port: 443
    type: trojan
    password: 5a3c5fa0-74b4-11ee-85af-1239d0255272
    sni: m.mobilelegends.com
    skip-cert-verify: true

  - name: ID Herza
    server: id-1.test3.net
    port: 443
    type: trojan
    password: ebbc8120-bcf3-11ee-b1d8-1239d0255272
    sni: m.mobilelegends.com
    skip-cert-verify: true
    
proxy-groups:
  - name: HOWDY ⌬
    type: select
    proxies:
      - FIRST PING ⌥
      - BEST PING ⍚
      - SG Melbi
      - ID Herza

  - name: FIRST PING ⌥
    type: fallback
    url: 'http://www.gstatic.com/generate_204'
    interval: 60
    proxies:
      - SG Melbi
      - ID Herza
      
  - name: BEST PING ⍚
    type: url-test
    url: 'http://www.gstatic.com/generate_204'
    interval: 60
    proxies:
      - SG Melbi
      - ID Herza

rules:
- MATCH,HOWDY ⌬
