@echo off
choice /m run? 
  ipconfig /release
  ipconfig /renew
ipconfig /flushdns
 netsh int tcp set global autotuninglevel=normal
     netsh int tcp set global dca=enabled
       netsh int tcp set global netdma=enable
         netsh int tcp set global ecncapability=enabled
            netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes

netsh winsock reset

pause