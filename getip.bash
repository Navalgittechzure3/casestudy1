#/bin/bash
#az vm show -d -g ansibleRG -n ansiblevm --query publicIps -o tsv > /home/vmadmin/ip
#ssh-keygen -q -t rsa -N '' <<< ""$'\n'"y" >/dev/null 2>&1
pub_ib=`cat /home/vmadmin/ip`
echo $pub_ib
echo "ip added in inventory successfully"
echo "Copying ssh key to new machine"
sshpass -p Efb2021!2@3# ssh-copy-id  vmadmin@`cat /home/vmadmin/ip`
echo "done"
