# The Project Components
- **GKE**
- **Kuberentes**
- **Terraform**
- **Jenkins**
- **Docker**


## 1- Terraform
 Make infrastructre OF GCP 
 
 1- vpc
 
  - one VPC
 
 2- subnets
    
   Two subnet
  
  - one subnet for managment
  
  - one subnet for restricted 
 
 
 3- managment VM 
 
  - VM contain gcloud and kubectl to deploy kubernetes 
  
  - connect command of cluster to setup the kubeconfig of cluster in vm to deal with cluster 
 
 4- firewall
 
  - allow connect by IAP only 
 
 
 4- GKE 
 
   - one cluster and 2 nodes 
   
   - private cluster and nodes
   
   - authorized network with subnet range of managment-cidr
   
 
 6- service account 
   
   Two Service account 
    
   - one for VM
   
   - one for GKE
 
 
## 2- Kubernetes 

1- deploy jenkins

  - the offical Image of Jenkins

2- deploy jenkins slave 

   - build Image of base ubnutu conatin: 
        - Docker
        
        - Kubectl 
        
        - gcloud 
        
        - helm 
        
        - Java
        
        
3- apply volumes to mount Data 

4- namespace  

5- service account 

## 3- Jenkins 

1- credinatials of:
  
   -  Dockerhub                     
  
                                           --------> to access dockerhub to pull ana push image 
   
   - cluster kube config                 
                                
                                           --------> to access cluster to deploy the yamls files
   
   - slave                                
            
                                           --------> to act salve as node to run docker , kubectl and gcloud in Pipeline
   
   - servvice account of Mangment VM  
   
                                           --------> to authenticate with gcloud 

 2- create pipeline that make:
 
   - build docker image and push it 
 
   - deploy DEPLOYMENTS by kubernetes in GKE cluster 
 
 
