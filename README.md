# CKS-PRACTICE

CKS学習用の動作確認マニフェスト

# Setup
前提 : kindインストール済み

```
% kind create cluster --config multi-config.yaml
%
% kubectl get node -o wide
NAME                 STATUS   ROLES           AGE    VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE       KERNEL-VERSION      CONTAINER-RUNTIME
kind-control-plane   Ready    control-plane   102s   v1.24.0   172.18.0.4    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
kind-worker          Ready    <none>          81s    v1.24.0   172.18.0.2    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
kind-worker2         Ready    <none>          81s    v1.24.0   172.18.0.3    <none>        Ubuntu 21.10   5.10.124-linuxkit   containerd://1.6.4
```

# Cleanup
```
% kind delete cluster
```