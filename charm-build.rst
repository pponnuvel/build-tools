# From source dir: ../<name>/src directory
charm build

# From /tmp/charm_builds
charm push <dir>
charm release cs:~pponnuvel/mysql-innodb-cluster-1 --channel candidate
charm grant cs:~pponnuvel/mysql-innodb-cluster-1 everyone --channel candidate

ponnuvel@magicbox:/tmp/charm-builds/mysql-innodb-cluster$  charm list-resources cs:mysql-innodb-cluster
RESOURCE    REVISION
mysql-shell 0

ponnuvel@magicbox:/tmp/charm-builds/mysql-innodb-cluster$ charm attach cs:~pponnuvel/mysql-innodb-cluster-1 mysql-shell=/tmp/mysql-shell.snap


https://cloud.garr.it/support/kb/juju/publish_to_jujustore/
