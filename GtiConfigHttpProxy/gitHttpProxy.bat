set IPAdress=127.0.0.1
set /p portNumber=Input port number if set proxy, else unconfig proxy.

if defined portNumber (
	echo config proxy. IP is %IPAdress%:%portNumber%
	git config --global http.proxy http://%IPAdress%:%portNumber%
	git config --global https.proxy https://%IPAdress%:%portNumber%
	) else (
	echo unconfig proxy
	git config --global --unset http.proxy
	git config --global --unset https.proxy
	)

pause