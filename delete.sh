#!/bin/bash
set -e

F="
.bazelrc
.github
.kazelcfg.json
BUILD.bazel
CHANGELOG-1.10.md
CHANGELOG.md
CONTRIBUTING.md
Makefile
Makefile.generated_files
OWNERS
OWNERS_ALIASES
SUPPORT.md
WORKSPACE
api
build
cluster
cmd/clicheck
cmd/cloud-controller-manager
cmd/gendocs
cmd/genkubedocs
cmd/genman
cmd/genswaggertypedocs
cmd/genutils
cmd/genyaml
cmd/hyperkube
cmd/importverifier
cmd/kubeadm
cmd/kubemark
cmd/linkcheck
code-of-conduct.md
docs
examples
hack
labels.yaml
logo
pkg/auth/authorizer
pkg/cloudprovider/providers
pkg/controller/nodeipam/ipam/adapter.go
pkg/controller/nodeipam/ipam/cloud_cidr_allocator.go
pkg/controller/nodeipam/ipam/controller.go
pkg/credentialprovider/aws
pkg/credentialprovider/azure
pkg/credentialprovider/gcp
pkg/credentialprovider/rancher
pkg/kubelet/dockershim
pkg/kubelet/gpu/nvidia
pkg/kubelet/network/hairpin
pkg/kubelet/network/kubenet
pkg/kubelet/rkt
pkg/util/filesystem/fakefs.go
pkg/volume/aws_ebs
pkg/volume/azure_dd
pkg/volume/azure_file
pkg/volume/cephfs
pkg/volume/cinder
pkg/volume/fc
pkg/volume/flocker
pkg/volume/gce_pd
pkg/volume/glusterfs
pkg/volume/iscsi
pkg/volume/photon_pd
pkg/volume/portworx
pkg/volume/quobyte
pkg/volume/rbd
pkg/volume/scaleio
pkg/volume/storageos
pkg/volume/vsphere_volume
plugin/pkg/admission/admit
plugin/pkg/admission/alwayspullimages
plugin/pkg/admission/antiaffinity
plugin/pkg/admission/defaulttolerationseconds
plugin/pkg/admission/deny
plugin/pkg/admission/eventratelimit
plugin/pkg/admission/exec
plugin/pkg/admission/extendedresourcetoleration
plugin/pkg/admission/gc
plugin/pkg/admission/imagepolicy
plugin/pkg/admission/initialresources
plugin/pkg/admission/limitranger
plugin/pkg/admission/namespace
plugin/pkg/admission/noderestriction
plugin/pkg/admission/persistentvolume
plugin/pkg/admission/podnodeselector
plugin/pkg/admission/podpreset
plugin/pkg/admission/podtolerationrestriction
plugin/pkg/admission/priority
plugin/pkg/admission/resourcequota
plugin/pkg/admission/security
plugin/pkg/admission/securitycontext
plugin/pkg/admission/storage/storageobjectinuseprotection
staging/src/k8s.io/apiserver/pkg/admission/plugin/webhook/mutating
staging/src/k8s.io/apiserver/pkg/admission/plugin/webhook/validating
staging/src/k8s.io/apiserver/pkg/authorization/authorizerfactory/delegating.go
staging/src/k8s.io/apiserver/pkg/server/options/audit.go
staging/src/k8s.io/apiserver/pkg/server/options/authentication.go
staging/src/k8s.io/apiserver/pkg/server/options/authorization.go
staging/src/k8s.io/apiserver/pkg/storage/storagebackend/factory/etcd2.go
staging/src/k8s.io/apiserver/plugin/pkg/audit
staging/src/k8s.io/apiserver/plugin/pkg/authenticator/token
staging/src/k8s.io/apiserver/plugin/pkg/authorizer/webhook
staging/src/k8s.io/client-go/plugin/pkg/client/auth/azure
staging/src/k8s.io/client-go/plugin/pkg/client/auth/gcp
staging/src/k8s.io/client-go/plugin/pkg/client/auth/openstack
staging/src/k8s.io/sample-apiserver
staging/src/k8s.io/sample-controller
test
third_party/BUILD
third_party/OWNERS
third_party/etcd.BUILD
third_party/forked/etcd221
third_party/forked/etcd237
third_party/forked/golang/LICENSE
third_party/forked/golang/PATENTS
third_party/forked/golang/go
third_party/forked/golang/reflect
third_party/forked/golang/template
third_party/forked/shell2junit
third_party/htpasswd
third_party/intemp
third_party/protobuf
third_party/swagger-ui
translations
"

./hack/update-codegen.sh
git add pkg/generated/openapi/zz_generated.openapi.go
git rm -r $F
rm -rf $F
git commit -m "Generated: Delete files"
