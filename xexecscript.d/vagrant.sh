#!/bin/bash
#
# requires:
#  bash
#
set -e

declare chroot_dir=$1

#### virtualbox
configure_virtualbox ${chroot_dir}

#### vargrant
chroot $1 $SHELL -ex <<'EOS'
  # Vagrant Downloads
  # - http://downloads.vagrantup.com/
  # x 1.2.7
  # x 1.2.6
  # x 1.2.5
  rpm -ivh http://files.vagrantup.com/packages/0219bb87725aac28a97c0e924c310cc97831fd9d/vagrant_1.2.4_$(arch).rpm
EOS
