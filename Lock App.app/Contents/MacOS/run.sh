#!/bin/bash

echo 'IyEvYmluL2Jhc2gKY2xlYXIKZWNobyAiTG9jayBBcHAgaXMgYmVpbmcgc2V0dXAuLi4iCnNsZWVwIDIuMQpraWxsIGBwcyBhdXggfCBncmVwIGxvY2thcHAgfCBhd2sgJ3twcmludCAkMn0nIHwgZ3JlcCAtdiAkJGAKY2xlYXIKd2hpbGUgdHJ1ZQpkbwogaWYgWyAhIC1mIH4vLmxvY2stYXBwLWNvZGUgXQogdGhlbgogIGVjaG8gIlBsZWFzZSBvcGVuIHVwIHRoZSBMb2NrIEFwcCBvbiB5b3VyIGlPUyBkZXZpY2UgYW5kIGVudGVyIHRoZSBjb2RlIGRpc3BsYXllZDoiCiAgcmVhZCBjb2RlCiAgZWNobyAkY29kZSA+IH4vLmxvY2stYXBwLWNvZGUKICBlY2hvICJQbGVhc2UgZW50ZXIgeW91ciBNYWMgcGFzc3dvcmQgdG8gdW5sb2NrIHlvdXIgYWNjb3VudDoiCiAgcmVhZCBwYXNzCiAgZWNobyAkcGFzcyB8IGJhc2U2NCA+IH4vLmxvY2stYXBwLXBhc3MKICBub2h1cCBzaCAvdXNyL2xvY2FsL2Jpbi9sb2NrYXBwICYKICBjbGVhcgogIGVjaG8gIllvdXIgc3lzdGVtIGhhcyBiZWVuIHNldHVwLCB5b3UgbWF5IG5vdyB1c2UgdGhlIExvY2sgQXBwIG9uIHlvdXIgaU9TIGRldmljZS4iCiAgc2xlZXAgMgogIG9zYXNjcmlwdCAtZSAndGVsbCBhcHBsaWNhdGlvbiAiVGVybWluYWwiIHRvIGNsb3NlIHdpbmRvdyAxJwogIGV4aXQKIGZpCiByZXNwPSQoY3VybCAtcyAiaHR0cDovL3B1YmJheS5jb20vbG9ja2FwcC8/YWRtaW4mdXVpZD0kY29kZSIpCiBlY2hvICRyZXNwCiBpZiBbICIkcmVzcCIgPSAibG9jayIgXQogdGhlbgogIG9wZW4gL1N5c3RlbS9MaWJyYXJ5L0ZyYW1ld29ya3MvU2NyZWVuU2F2ZXIuZnJhbWV3b3JrL1ZlcnNpb25zL0EvUmVzb3VyY2VzL1NjcmVlblNhdmVyRW5naW5lLmFwcAogZmkKIGlmIFsgIiRyZXNwIiA9ICJ1bmxvY2siIF0KIHRoZW4KICBvc2FzY3JpcHQgLWUgJ3RlbGwgYXBwbGljYXRpb24gIlN5c3RlbSBFdmVudHMiIHRvIGtleXN0cm9rZSAiXG4iJwogIHNsZWVwIC4zCiAgb3Nhc2NyaXB0XAogLWUgJ3NldCBvayB0byBkbyBzaGVsbCBzY3JpcHQgImNhdCB+Ly5sb2NrLWFwcC1wYXNzfGJhc2U2NCAtRCInXAogLWUgJ3RlbGwgYXBwbGljYXRpb24gIlN5c3RlbSBFdmVudHMiIHRvIGtleXN0cm9rZSBvaydcCiAtZSAndGVsbCBhcHBsaWNhdGlvbiAiU3lzdGVtIEV2ZW50cyIgdG8ga2V5c3Ryb2tlIHJldHVybicKIGZpCiBzbGVlcCAxCmRvbmUK'|base64 -D> /usr/local/bin/lockapp

echo 'IyEvYmluL2Jhc2gKc3UgLSAkMSAtYyAibm9odXAgL3Vzci9sb2NhbC9iaW4vbG9ja2FwcCAmIgo='|base64 -D> /usr/local/bin/lockapp-wrapper

chmod +x /usr/local/bin/lockapp*
sudo defaults write com.apple.loginwindow LoginHook /usr/local/bin/lockapp-wrapper
rm ~/.lock-app-code ~/.lock-app-pass
osascript\
 -e 'tell application "Terminal"'\
 -e 'activate'\
 -e 'do script "sh /usr/local/bin/lockapp"'\
 -e 'end tell'
