#!/usr/vin/env python
# coding: utf-8
"""
压缩和解压zip文件
centos:yum install p7zip.x86_64
ubuntu:apt-get install p7zip p7zip-full
"""

import os
import zipfile
import sys
import subprocess
prompt="input passwd:"

def compress(zip_file, input_dir):
	f_zip = zipfile.ZipFile(zip_file, 'w')
	input_passwd = raw_input(prompt)
	for root, dirs, files in os.walk(input_dir):
		for f in files:
		# 获取文件相对路径，在压缩包内建立相同的目录结构
			abs_path = os.path.join(os.path.join(root, f))
			rel_path = os.path.relpath(abs_path, os.path.dirname(input_dir))
			f_zip.write(abs_path, rel_path, zipfile.ZIP_STORED)
			f_zip.setpassword(input_passwd)
	f_zip.close()

def extract(zip_file, output_dir):
	f_zip = zipfile.ZipFile(zip_file, 'r')
	input_passwd = raw_input(prompt)
	# 解压所有文件到指定目录
	f_zip.extractall(output_dir,pwd=input_passwd)

  # 逐个解压文件到指定目录
  #for f in f_zip.namelist():
  #  f_zip.extract(f, os.path.join(output_dir, 'zip_dir_bak2'))

def printdir(zip_file):
  f_zip = zipfile.ZipFile(zip_file, 'r')
  print '== printdir() ============================'
  f_zip.printdir()
  #print
  #print '== namelist() ============================'
  #for f in f_zip.namelist():
  #  print f

if __name__ == '__main__':
	if len(sys.argv) != 2 or not sys.argv[1] in ["compress","print","extrack","c","p","e"]:
		print "argv avail: compress/print/extrack"
		sys.exit(0)
	zip_file = 'zip_dir.zip'
	if sys.argv[1] == "compress" or sys.argv[1] == "c":
		input_passwd = raw_input(prompt)
		os.system('7za a -p'+ input_passwd +' zip_dir.zip zip_dir/*')
	elif sys.argv[1] == "print" or sys.argv[1] == "p":
		printdir(zip_file)
	elif sys.argv[1] == "extrack" or sys.argv[1] == "e":
		extract(zip_file, 'zip_dir.bak')
