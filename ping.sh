#!/bin/bash

ansible all -m ping -i inventory -e 'ansible_python_interpreter=/usr/bin/python'
