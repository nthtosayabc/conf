proxies:
  - name: HTTP
    type: http
    server: 192.168.43.1
    port: 8080
  
  - name: SOCKS
    type: socks5
    server: 192.168.43.1
    port: 1080
    
proxy-groups:
  - name: Proxi
    type: select
    proxies:
      - HTTP
      - SOCKS
      
rules:
- MATCH,Proxi
