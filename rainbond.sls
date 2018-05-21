# rainbond global config
# use ./scripts/yq maintain
# example:
# read:           ./scripts/yq r t.yml etcd.server.members[0].name
# write/update:   ./scripts/yq w t.yml etcd.server.members[0].name compute01
# more information: http://mikefarah.github.io/yq/
rbd-version: 3.5
rbd-path: /opt/rainbond
master-hostname: manage01
master-ip: 
public-ip: 
domain: xxx.goodrain.org
install-script-path: 
rbd-tag: rainbond
reg-uuid:
dns: 114.114.114.114
cli-image: rainbond/static:allcli_v3.5

rbd-pkgs:
  manage:
    - gr-docker-engine
    - nfs-utils
    - nfs-kernel-server
    - nfs-common
    - glusterfs-server
    - tar
    - ntpdate
    - wget
    - curl
    - tree
    - lsof
    - htop
    - nload
    - net-tools
    - telnet
    - rsync
    - lvm2
    - git
    - salt-ssh
    - perl
    - bind-utils
    - dstat 
    - iproute
    - bash-completion
    - salt-master
    - salt-minion

# rbd-db
database:
  mysql:
    image: rainbond/rbd-db
    version: 3.5
    host: 
    port: 3306
    user: 
    pass: 

# etcd
etcd:
  server:
    image: rainbond/etcd
    version: v3.2.13
    enabled: true
    bind:
      host: 
    token: 
    members:
    - host: 
      name: 
      port: 2379
  proxy:
    image: rainbond/etcd
    version: v3.2.13
    enabled: true

# kubernetes
kubernetes:
  cfssl:
    image: rainbond/cfssl
    version: dev
  kubecfg:
    image: rainbond/kubecfg
    version: dev
  static:
    image: rainbond/static
    version: allcli_v3.5
  api:
    image: rainbond/kube-apiserver
    version: v1.6.4
  manager:
    image: rainbond/kube-controller-manager
    version: v1.6.4
  schedule:
    image: rainbond/kube-scheduler
    version: v1.6.4

# network
network:
  calico:
    image: rainbond/calico-node
    version: v2.4.1
    enabled: true
    bind: 172.16.0.210
    net: 10.0.0.0/16

#proxy
proxy:
  runner:
    image: rainbond/runner
    version: latest
  plugins:
    image: rainbond/plugins
    version: tcm
  adapter:
    image: rainbond/adapter
    version: latest
  pause:
    image: rainbond/pause-amd64
    version: 3.0
  builder:
    image: rainbond/builder
    version: latest

# plugins
rainbond-modules:
  rbd-api:
    image: rainbond/rbd-api
    version: 3.5
  rbd-dns:       
    image: rainbond/rbd-dns
    version: 3.5
  rbd-registry: 
    image: rainbond/rbd-registry
    version: 2.3.1
  rbd-repo: 
    image: rainbond/rbd-repo
    version: 3.5
  rbd-worker: 
    image: rainbond/rbd-worker
    version: 3.5
  rbd-eventlog: 
    image: rainbond/rbd-eventlog
    version: 3.5
  rbd-entrance: 
    image: rainbond/rbd-entrance
    version: 3.5
  rbd-chaos: 
    image: rainbond/rbd-chaos
    version: 3.5
  rbd-lb: 
    image: rainbond/rbd-lb
    version: 3.5
  rbd-mq: 
    image: rainbond/rbd-mq
    version: 3.5
  rbd-webcli: 
    image: rainbond/rbd-webcli
    version: 3.5
  rbd-app-ui: 
    image: rainbond/rbd-app-ui
    version: 3.5
  prometheus: 
    image: rainbond/prometheus
    version: v2.1.0