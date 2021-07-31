#/bin/bash
az vm show -d -g ansibleRG -n ansiblevm --query publicIps -o tsv > /home/vmadmin/ip
pub_ib=`cat /home/vmadmin/ip`
echo $pub_ib
echo "ip added in inventory successfully"
echo "Copying ssh key to new machine"
sshpass -p Efb2021!2@3# ssh-copy-id  vmadmin@`cat /home/vmadmin/ip`
if [ $? -eq 0 ]; then
        echo "Copied key successfully "
else
        echo "key copying failed"
fi
