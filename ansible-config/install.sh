#!/bin/bash
# date 2019-09-06 10:20:38
# author calllivecn <c-all@qq.com>



ansible_cfg_file="$HOME/.ansible.cfg"
if [ -f $ansible_cfg_file ];then
	echo "$ansible_cfg_file already exists."
else
	install -v -m644 ansible.cfg $ansible_cfg_file
fi


ansible_cfg="$HOME/.ansible-cfg"
if [ -d $ansible_cfg ];then
	echo "$ansible_cfg directory already exists."
else
	mkdir -v "$ansible_cfg"
	install -v -m644 hosts $ansible_cfg/
fi
