module github.com/Portshift/dockle

go 1.16

require (
	github.com/Portshift/klar v1.9.10-0.20201118172109-371310ea259d
	github.com/containers/image/v5 v5.16.0
	github.com/d4l3k/messagediff v1.2.2-0.20180726183240-b9e99b2f9263
	github.com/docker/go-connections v0.4.0
	github.com/goodwithtech/deckoder v0.0.0-20210909145842-06c0013a5310
	github.com/goodwithtech/dockle v0.4.3
	github.com/google/go-cmp v0.5.5
	github.com/moby/term v0.0.0-20210619224110-3f7ff695adc6 // indirect
	github.com/owenrumney/go-sarif v1.0.10
	github.com/spf13/viper v1.7.1
	github.com/urfave/cli v1.22.4
	go.uber.org/zap v1.10.0
)

// kubernetes v1.18.1
replace (
	k8s.io/api => k8s.io/api v0.18.1
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.18.1
	k8s.io/apimachinery => k8s.io/apimachinery v0.18.1
	k8s.io/apiserver => k8s.io/apiserver v0.18.1
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.18.1
	k8s.io/client-go => k8s.io/client-go v0.18.1
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.18.1
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.18.1
	k8s.io/code-generator => k8s.io/code-generator v0.18.1
	k8s.io/component-base => k8s.io/component-base v0.18.1
	k8s.io/cri-api => k8s.io/cri-api v0.18.1
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.18.1
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.18.1
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.18.1
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.18.1
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.18.1
	k8s.io/kubectl => k8s.io/kubectl v0.18.1
	k8s.io/kubelet => k8s.io/kubelet v0.18.1
	k8s.io/kubernetes => k8s.io/kubernetes v1.18.1
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.18.1
	k8s.io/metrics => k8s.io/metrics v0.18.1
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.18.1
)
