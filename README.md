# CKS-PRACTICE

CKS学習用の動作確認マニフェスト

# Setup
前提 : kindインストール済

```
% kind create cluster --config multi-config.yaml
%
% kubectl get node -o wide
NAME                 STATUS   ROLES           AGE    VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE       KERNEL-VERSION      CONTAINER-RUNTIME
kind-control-plane   Ready    control-plane   102s   v1.24.0   172.18.0.4    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
kind-worker          Ready    <none>          81s    v1.24.0   172.18.0.2    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
kind-worker2         Ready    <none>          81s    v1.24.0   172.18.0.3    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
```

前提 : azure cliセットアップ済
```
% export AZ_RESOURCE_GROUP=test-group // ご自由に
% export AZ_VM_NAME=test-vm
% export VM_USERNAME=test
% ./create_vm.sh UbuntuLTS // ubuntuの場合
VirtualMachine    PublicIPAddresses    PrivateIPAddresses
----------------  -------------------  --------------------
test-vm           xx.xx.xx.xx          yy.yy.yy.yy
% ssh test@xx.xx.xx.xx
```

# Cleanup
```
% kind delete cluster
% ./delete_vm.sh
```