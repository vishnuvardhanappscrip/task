1. Steps to provision the cluster


This section guides you through deploying your EKS cluster using Terraform.

Prerequisites == >>

Terraform CLI: Install Terraform (download from terraform.io).

AWS CLI: Configured with credentials that have permissions to create EKS clusters and related AWS resources.

install git 


  == >>  Clone the code in the terminal using git (URL == >> https://github.com/vishnuvardhanappscrip/task.git)
         
         Command -- > git clone https://github.com/vishnuvardhanappscrip/task.git <path>
 
  == >>  Once you clone the code switch to terraform directory 

  == >>  Here we have .tf files  which are used to provision the eks cluster 

  == >> Run below commands to create the cluster

             terraform init 

             terraform plan

             terraform apply

  == >> Once you complete these commands , you can see your cluster in your aws account , checkout to eks service and verify the installation 


2. ArgoCD login instructions

 == >> Open your favorite browser and hit http://a968d00036b094657aa5a63595531671-2089123675.us-west-1.elb.amazonaws.com/ this url 

      Note: Since this is for demo purpose , we are running it on http instead of https, so please ignore warning message and continue with http

 == >> Credentials 

      username : admin
      password : UtTX5Mf4iWHvs2gk


3. Port-forward or public access URL for NGINX

   URL to access NGINX == >> http://a59dcec35cd5d45a0a398c22f08b1b58-1836738258.us-west-1.elb.amazonaws.com
