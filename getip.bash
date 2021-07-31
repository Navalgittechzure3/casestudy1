#! /bin/bash
set x

applicationId="f5e21799-6cd2-4f99-b67f-36fb4f45b438"
password="69KRVB.y0-~de9ZTrw~M04YG3a7r6.8m8o"
tenantID="c302a6a7-6ed9-4e5a-b2e3-808e5186ff69"

az login --service-principal --username "${applicationId}" --password "${password}" --tenant "${tenantID}"
az vm show -d -g ansibleRG -n ansiblevm --query publicIps -o tsv > /home/vmadmin/ip
echo "successfulll"
