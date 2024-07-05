#!/bin/bash
# Description: Install firefox extensions
cd /tmp
wget https://addons.mozilla.org/firefox/downloads/file/3687875/wappalyzer-6.5.20-fx.xpi 
wget https://addons.mozilla.org/firefox/downloads/file/3616824/foxyproxy_standard-7.5.1-an+fx.xpi 
wget https://addons.mozilla.org/firefox/downloads/file/3522727/burner_emails_easy_fast_disposable_emails-0.1.41-an+fx.xpi 
wget https://addons.mozilla.org/firefox/downloads/file/3847514/cookiestxt-0.3-fx.xpi 
wget https://addons.mozilla.org/firefox/downloads/file/3922535/simple_modify_headers-1.8.1-fx.xpi 
firefox *.xpi 
sleep 30
rm *.xpi
