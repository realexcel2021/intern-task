## Task instructions for DevOps Intern Role

### Setup a kubernetes cluster using kind 
1. Write a simple bash script that deploys a [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)  cluster locally
2. Download the kubeconfig for the cluster and store in a safe place, we will use it much later in the next steps

### Deploy a sample Node.js app using terraform

1. When kind is up and running, dockerize a simple hello world [express](https://expressjs.com/en/starter/hello-world.html) and deploy to dockerhub
2. create a kubernetes deployment manifest to deploy the Node.js to the kind cluste but don't apply it yet
3. using the [kubectl terraform provider](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs), write a terraform code to deploy the kubectl manifest to the kind cluster 

### Bonus

1. Using the [kube-prometheus stack](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md), using [terraform helm provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs), setup monitoring and observability for the prometheus cluster.

### Submission

1. Create a repository with all your code in it
2. Send an email to task_submission@ignite.dev on or before 02/17/2024
   
### Code Explanation

In directory structure, the `/terraform` folder is where the terraform configuraion to apply the kubernetes manifests are

`/kind` folder contains the kind `kind-config.yml` file and a script to spin up a kind cluster and install kind if kind is not found on the hast machine

