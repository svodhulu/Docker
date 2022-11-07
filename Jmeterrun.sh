#!bin/bash

echo "*************Running Jmeterun.sh file**********"

#git config --global http.sslverify false
#git clone https://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@github.com/svodhulu/Docker.git


#curTime= $(date+"%m-%d-%y_%H-%M-%S")
#curTime= $(echo $curTime|sed 's/-//g'|sed 's/_//g')

echo "Current time in epochtime $curTime"


./jmeter.sh -n -t /opt/apache-jmeter-5.5/bin/Docker/SampleTestScript_Google.jmx -l /opt/apache-jmeter-5.5/bin/Docker/Results_0711.jtl -e -o /opt/apache-jmeter-5.5/bin/Docker/HTML_NEW_Results_3110
 
cd Docker

sleep 1m
#Push the code
git add .
git config --global user.name "SaiKumar"
git config --global user.email "saikumar.vodhulu@qentelli.com"

git commit -m "Results"
git push


echo "********Test executed SUCCESSFULLY*******"
