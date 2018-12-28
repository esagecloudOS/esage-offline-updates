* Rename the directory abiquo-upgrade-2.x.x using the current release name

* put binary RPMs in abiquo-upgrade-2.x.x directory

* Sign packages with Abiquo's key

* use createrepo inside abiquo-upgrade-2.x.x

    cd abiquo_upgrade_2.x.x && createrepo -s sha -d .

* tweak install.sh.in changing ABI_VERSION and SUPPORTED_VERSION
  values

* create a tarball from abiquo-upgrade-2.x.x

  tar czf abiquo-upgrade-2.x.x.tar.gz abiquo-upgrade-2.x.x

* run  make-installer.sh
    
    make-installer.sh abiquo-upgrade-2.x.x.tar.gz

* rename install.sh to whatever you want

    mv install.sh abiquo-upgrade-2.x.x.bin
