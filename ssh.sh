#!/bin/bash    
# create key pair
    \rm /root/.ssh/id_rsa* -f
    ssh-keygen -t rsa -f /root/.ssh/id_rsa -P "" &>/dev/null
    rpm -qa|grep sshpass 2>&1 >/dev/null
    if [ $? -ne 0 ];then
    yum -y install sshpass
    fi

    # fenfa
    for ip in 4
    do
      echo =====================172.16.1.$ip fenfa info==========================
      sshpass -p666666 ssh-copy-id -i /root/.ssh/id_rsa.pub 192.168.83.$ip -o "StrictHostKeyChecking=no"
      echo =====================172.16.1.$ip fenfa end===========================
      echo ""
    done
