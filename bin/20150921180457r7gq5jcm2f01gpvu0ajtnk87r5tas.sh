#/usr/bin
exec 2>err.log
if [ -d /tmp/tasinstall20150921180457 ]; then
	echo 'dir is exist'
else
mkdir -p /tmp/tasinstall20150921180457/linux
mkdir -p /tmp/tasinstall20150921180457/windows
mkdir -p /tmp/tasinstall20150921180457/PrimaryService
mkdir -p /tmp/tasinstall20150921180457/HistoryBuild
mkdir -p /tmp/tasinstall20150921180457/Quote
mkdir -p /tmp/tasinstall20150921180457/Report
mkdir -p /tmp/tasinstall20150921180457/SecondService
mkdir -p /tmp/tasinstall20150921180457/SQL
mkdir -p /tmp/tasinstall20150921180457/Client
mkdir -p /tmp/tasinstall20150921180457/BankSrv
fi
cd /tmp/tasinstall20150921180457/BankSrv
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_6.3.0.36_r19582_20150911012233.zip
unzip -d server_bank_6.3.0.36_r19582_20150911012233 server_bank_6.3.0.36_r19582_20150911012233.zip
cd ./server_bank_6.3.0.36_r19582_20150911012233
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_communicate_6.3.0.36_r19007_20150911010832.zip
unzip -d server_bank_communicate_6.3.0.36_r19007_20150911010832 server_bank_communicate_6.3.0.36_r19007_20150911010832.zip
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_manage_6.3.0.36_r19564_20150911012136.zip
unzip -d server_bank_manage_6.3.0.36_r19564_20150911012136 server_bank_manage_6.3.0.36_r19564_20150911012136.zip
cd ./server_bank_manage_6.3.0.36_r19564_20150911012136
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_manage\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_outin_6.3.0.36_r19488_20150910222755.zip
unzip -d server_bank_outin_6.3.0.36_r19488_20150910222755 server_bank_outin_6.3.0.36_r19488_20150910222755.zip
cd ./server_bank_outin_6.3.0.36_r19488_20150910222755
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_outin\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_query_6.3.0.36_r19563_20150911012822.zip
unzip -d server_bank_query_6.3.0.36_r19563_20150911012822 server_bank_query_6.3.0.36_r19563_20150911012822.zip
cd ./server_bank_query_6.3.0.36_r19563_20150911012822
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_query\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_task_6.3.0.36_r19566_20150910224107.zip
unzip -d server_bank_task_6.3.0.36_r19566_20150910224107 server_bank_task_6.3.0.36_r19566_20150910224107.zip
cd ./server_bank_task_6.3.0.36_r19566_20150910224107
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_task\']//url  value amqp://test:test@192.168.30.173/test 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp  value 192.168.31.25 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort  value 1521 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName  value orcl 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd  value muchinfo 
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser  value bank 
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main/server_bank_test_6.3.0.36_r16531_20150910223928.zip
unzip -d server_bank_test_6.3.0.36_r16531_20150910223928 server_bank_test_6.3.0.36_r16531_20150910223928.zip
cd ./server_bank_test_6.3.0.36_r16531_20150910223928
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'bank_test\']//url  value amqp://test:test@192.168.30.173/test 
cd ..
cd /tmp/tasinstall20150921180457/PrimaryService
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_busproxy_6.3.0.37_r19698_20150916022717.zip
unzip -d server_busproxy_6.3.0.37_r19698_20150916022717 server_busproxy_6.3.0.37_r19698_20150916022717.zip
cd ./server_busproxy_6.3.0.37_r19698_20150916022717
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_busproxy_6.3.0.37_r19698_20150916022717/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'busproxy\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //ListenPort value 10008  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_log_6.3.0.37_r19726_20150916094213.zip
unzip -d server_log_6.3.0.37_r19726_20150916094213 server_log_6.3.0.37_r19726_20150916094213.zip
cd ./server_log_6.3.0.37_r19726_20150916094213
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_log_6.3.0.37_r19726_20150916094213/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'log\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_login_6.3.0.37_r19699_20150916022217.zip
unzip -d server_login_6.3.0.37_r19699_20150916022217 server_login_6.3.0.37_r19699_20150916022217.zip
cd ./server_login_6.3.0.37_r19699_20150916022217
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_login_6.3.0.37_r19699_20150916022217/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'user\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_manage_6.3.0.37_r19697_20150915231030.zip
unzip -d server_manage_6.3.0.37_r19697_20150915231030 server_manage_6.3.0.37_r19697_20150915231030.zip
cd ./server_manage_6.3.0.37_r19697_20150915231030
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_manage_6.3.0.37_r19697_20150915231030/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'manager\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_match_6.3.0.36_r19497_20150909093457.zip
unzip -d server_match_6.3.0.36_r19497_20150909093457 server_match_6.3.0.36_r19497_20150909093457.zip
cd ./server_match_6.3.0.36_r19497_20150909093457
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_match_6.3.0.36_r19497_20150909093457/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'marketmaker\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_money_6.3.0.38_r19894_20150921021814.zip
unzip -d server_money_6.3.0.38_r19894_20150921021814 server_money_6.3.0.38_r19894_20150921021814.zip
cd ./server_money_6.3.0.38_r19894_20150921021814
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_money_6.3.0.38_r19894_20150921021814/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'money\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_newsfeed_6.3.0.37_r19724_20150916093100.zip
unzip -d server_newsfeed_6.3.0.37_r19724_20150916093100 server_newsfeed_6.3.0.37_r19724_20150916093100.zip
cd ./server_newsfeed_6.3.0.37_r19724_20150916093100
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_newsfeed_6.3.0.37_r19724_20150916093100/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'news_feed\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_order_6.3.0.37_r19679_20150916024107.zip
unzip -d server_order_6.3.0.37_r19679_20150916024107 server_order_6.3.0.37_r19679_20150916024107.zip
cd ./server_order_6.3.0.37_r19679_20150916024107
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_order_6.3.0.37_r19679_20150916024107/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'order\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_query_6.3.0.37_r19719_20150916044410.zip
unzip -d server_query_6.3.0.37_r19719_20150916044410 server_query_6.3.0.37_r19719_20150916044410.zip
cd ./server_query_6.3.0.37_r19719_20150916044410
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_query_6.3.0.37_r19719_20150916044410/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'qkernel\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_realtime_monitor_6.3.0.32_r18675_20150814144855.zip
unzip -d server_realtime_monitor_6.3.0.32_r18675_20150814144855 server_realtime_monitor_6.3.0.32_r18675_20150814144855.zip
cd ./server_realtime_monitor_6.3.0.32_r18675_20150814144855
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_realtime_monitor_6.3.0.32_r18675_20150814144855/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'realtime_monitor\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_report_6.3.0.37_r19679_20150915233908.zip
unzip -d server_report_6.3.0.37_r19679_20150915233908 server_report_6.3.0.37_r19679_20150915233908.zip
cd ./server_report_6.3.0.37_r19679_20150915233908
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_report_6.3.0.37_r19679_20150915233908/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'report\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/server_settlement_6.3.0.37_r19746_20150916113204.zip
unzip -d server_settlement_6.3.0.37_r19746_20150916113204 server_settlement_6.3.0.37_r19746_20150916113204.zip
cd ./server_settlement_6.3.0.37_r19746_20150916113204
php /var/www/html/tasintall/include/fixcfgfile.php /tmp/tasinstall20150921180457/PrimaryService/server_settlement_6.3.0.37_r19746_20150916113204/location.cfg
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'settle\']//url value amqp://test:test@192.168.30.173/test  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBIp value 192.168.31.25  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPort value 1521  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBName value orcl  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBUser value gdtas  
php /var/www/html/tasintall/include/xmlmodify.php //Services[@Name=\'DB\']//DBPwd value muchinfo  
cd ..
cd /tmp/tasinstall20150921180457/HistoryBuild
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_AppHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog" 3  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 3  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 3 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 3 
php /var/www/html/tasintall/include/xmlmodify.php //system.serviceModel//service[@name=\'Muchinfo.Quote.QuoteApplicationServiceDuplex\']//endpoint address net.tcp://0.0.0.0:808 3 
cd ..
wget ftp://test:test@192.168.20.197/build/Common/Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
unzip -d Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837 Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837.zip
cd ./Muchinfo.Quote_tas_SaveHost_1.0.4.86_r37271_20150706171837
php /var/www/html/tasintall/include/xmlmodify.php //connectionStrings//add[@name=\'SqlConnString1\'] connectionString "server=192.168.31.58;user id=as;password=muchinfo; Initial Catalog"  4  
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'DatabaseName\'] value tasquto 4  
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] address 192.168.31.25 4 
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@name=\'QIS_0\'] port 13025 4 
cd ..
cd /tmp/tasinstall20150921180457/Quote
wget ftp://test:test@192.168.20.197/build/Common/server_quote_publish_1.5.1.0_r40543_20150911172156.zip
unzip -d server_quote_publish_1.5.1.0_r40543_20150911172156 server_quote_publish_1.5.1.0_r40543_20150911172156.zip
cd ./server_quote_publish_1.5.1.0_r40543_20150911172156
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'Common' 'EnableAllWareQuote' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'Monitor' 'Port' '6378'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'IP' '127.0.0.1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'Mode' '4'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'ClientID' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_publish_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'ProtocolID' '0'
cd ..
wget ftp://test:test@192.168.20.197/build/Common/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156.zip
unzip -d server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156 server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156.zip
cd ./server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'Common' 'AutoRun' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'Common' 'OutputPublicProctocol' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'Common' 'UpdateExchageFromDB' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'Monitor' 'UseState' '3'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'IP' amqp://test:test@192.168.30.173/test
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'Port' '13025'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'Mode' '9'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'SourceType' '42'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'OutputParam1' 'ProtocolID' '8'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'IP' '192.168.31.29'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'Port' '6988'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'LoginInfoCount' '1'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'Mode' '5'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'ClientID' '2'
php /var/www/html/tasintall/include/iniupdate.php /tmp/tasinstall20150921180457/Quote/server_quote_source_marketmaker_1.5.1.0_r40543_20150911172156/Config.ini 'InputParam1' 'SourceType' '9'
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'quote\']//url value amqp://test:test@192.168.30.173/test 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBIp value 192.168.31.25 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPort value 1521 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBName value orcl 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBUser value gdtas 5
php /var/www/html/tasintall/include/xmlmodify.php  //Services[@Name=\'DB\']//DBPwd value muchinfo 5
cd ..
cd /tmp/tasinstall20150921180457/SecondService
wget ftp://test:test@192.168.20.197/build/TAS_qyexchange/Tas.BusinessManager.ServiceHost_async_6.4.0.38_r40559_20150911200132.zip
unzip -d Tas.BusinessManager.ServiceHost_async_6.4.0.38_r40559_20150911200132 Tas.BusinessManager.ServiceHost_async_6.4.0.38_r40559_20150911200132.zip
cd ./Tas.BusinessManager.ServiceHost_async_6.4.0.38_r40559_20150911200132
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] address 192.168.30.173 1
php /var/www/html/tasintall/include/xmlmodify.php //muchinfo.serviceModel//client//add[@contract=\'TasTradeService\'] port 10008 1
cd ..
cd /tmp/tasinstall20150921180457/SQL
wget ftp://test:test@192.168.20.197/build/TAS_main_linux/sql_r16.zip
cd /tmp/tasinstall20150921180457/Client
wget ftp://test:test@192.168.20.197/build/TAS/TASManage52_jilin_6.3.6.33_r40847_20150917215946.zip
wget ftp://test:test@192.168.20.197/build/TAS/Muchinfo.ClientTerminal_trade_common_6.3.2.61_r40796_20150916215011.zip
unzip -d Muchinfo.ClientTerminal_trade_common_6.3.2.61_r40796_20150916215011 Muchinfo.ClientTerminal_trade_common_6.3.2.61_r40796_20150916215011.zip
cd ./Muchinfo.ClientTerminal_trade_common_6.3.2.61_r40796_20150916215011
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Quote_RealTime_Address\'] value ChengDuRealTimeQutoServer'$'192.168.31.25:808'$'0 2
php /var/www/html/tasintall/include/xmlmodify.php //appSettings//add[@key=\'Biz_Address\'] value ChengDuExchange'$'192.168.31.25:8887'$'0 2 
cd ..
cd /tmp/tasinstall20150921180457
find . -name *.zip -exec rm -rf {} \;
mv Client HistroyBuild/ Quote/ Report/ SecondService/ SQL/ BankSrv/ windows
mv PrimaryService/ linux
zip -r TAS_main_R0013.002_win_192.168.31.25_20150921060457.zip windows
zip -r TAS_main_R0013.002_Linx_192.168.30.173_20150921060457.zip linux
cp TAS_main_R0013.002_win_192.168.31.25_20150921060457.zip /var/www/html/apphub
cp TAS_main_R0013.002_Linx_192.168.30.173_20150921060457.zip /var/www/html/apphub
rm -rf TAS_main_R0013.002_win_192.168.31.25_20150921060457.zip TAS_main_R0013.002_Linx_192.168.30.173_20150921060457.zip /tmp/tasinstall20150921180457
