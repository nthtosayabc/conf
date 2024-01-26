### surfboard
Auto update `managed-config` [profile](https://raw.githubusercontent.com/nthtosay1/conf/main/surfboard/profile)

External proxy `policy-path` [proxy](https://raw.githubusercontent.com/nthtosay1/conf/main/surfboard/proxy)


local share `WIFI`
```
[Proxy]
HTTP = http, 192.168.43.1, 8080
SOCKS = socks5, 192.168.43.1, 1080

[Proxy Group]
PROXI = select, include-all-proxies = true

[Rule]
SUBNET,ROUTER:192.168.43.1,SOCKS
SUBNET,TYPE:CELLULAR,DIRECT
SUBNET,TYPE:WIFI,DIRECT
FINAL,PROXI
```

