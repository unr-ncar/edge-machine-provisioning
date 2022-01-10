# To Run the provisioning of this repo do the following
``` bash
   # ensure you have access to the kubernetes cluster and the kube-system namespace
   cd utils/

   # this will grab certificates that are relevant for fetching implemented containers related to the improject
   ./getsecret.sh 

   # now to provision machines
   cd ..
   ansible-playbook playbook.yml -kK --ask-vault-pass

```