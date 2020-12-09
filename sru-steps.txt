pull-lp-source ceph bionic # for 12.2.13

sudo add-apt-repository cloud-archive:stein
sudo apt update
apt source ceph # for 13.2.9

quilt new bug186543.patch
for each file; do 
  - quilt add somefile
  - change somefile
done
quilt refresh
quilt header -e --dep3
dch -i
debuild -S -d 
debdiff <old dsc> <new dsc>
