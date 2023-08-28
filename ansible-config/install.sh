#!/bin/bash
# date 2019-09-06 10:20:38
# author calllivecn <c-all@qq.com>



ansible_cfg_file="$HOME/.ansible.cfg"
if [ -f $ansible_cfg_file ];then
	echo "$ansible_cfg_file already exists."
else
	install -v -m644 ansible.cfg $ansible_cfg_file
fi


ansible_dir="$HOME/.ansible"
if [ -d $ansible_dir ];then
	echo "$ansible_dir directory already exists."
else
	mkdir -v "$ansible_dir"
	install -v -m644 hosts $ansible_dir/
fi
