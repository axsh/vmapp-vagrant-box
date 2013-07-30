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
chroot $1 $SHELL <<'EOS'
  # Vagrant Downloads
  # - http://downloads.vagrantup.com/
  rpm -ivh http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/vagrant_1.2.7_$(arch).rpm
EOS
