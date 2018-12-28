cd $1
repomanage -o . | xargs rm -rvf
createrepo -s sha -d .
cd ..
rm $1.tar.gz
tar cvzf $1.tar.gz $1
./make-installer.sh $1.tar.gz
mv install.sh $1.bin
