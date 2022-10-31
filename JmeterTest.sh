#!bin/bash
git config --global http.sslverify false
git clone https://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@github.com/svodhulu/Docker.git

curTime= $(date+"%m-%d-%y_%H-%M-%S")
curTime= $(echo $curTime|sed 's/-//g'|sed 's/_//g')

./jmeter.sh -n -t /opt/apache-jmeter-5.5/bin/Docker/SampleTestScript_Google.jmx -l /opt/apache-jmeter-5.5/bin/Docker/$curTime_Results_3110.jtl -e -o /opt/apache-jmeter-5.5/bin/Docker/HTML_NEW_Results_3110
 
 
#Push the code
git config --global user.email "saikumar.vodhulu@qentelli.com"
git config --global user.name "SaiKumar"
git commit -m "Results"
git push