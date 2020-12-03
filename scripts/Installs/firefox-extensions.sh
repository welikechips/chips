#!/bin/bash
# Description: Install firefox extensions

wget https://addons.mozilla.org/firefox/downloads/file/3687875/wappalyzer-6.5.20-fx.xpi \
 https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1-an+fx.xpi \
 https://addons.mozilla.org/firefox/downloads/file/3671736/hacktools-0.2.1-fx.xpi && 
firefox *.xpi 
sleep 30
rm *.xpi