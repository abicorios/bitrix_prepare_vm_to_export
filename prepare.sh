#!/bin/bash
sed -Ei 's/^(PasswordAuthentication) (no)/\1 yes/' /etc/ssh/sshd_config
service sshd restart
echo 'bitrix:github123' | chpasswd
echo 'root:github123' | chpasswd
usermod -aG vboxsf bitrix

