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
  rpm -ivh http://files.vagrantup.com/packages/7e400d00a3c5a0fdf2809c8b5001a035415a607b/vagrant_1.2.2_$(arch).rpm
EOS
