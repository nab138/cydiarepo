rm Packages
rm Packages.bz2
rm Packages.gz
dpkg-scanpackages debs/ > Packages
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2
git add .
read commitcomment
git commit -a -m "$commitcomment"
git push