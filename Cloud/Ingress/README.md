# Ingress Controllers for Kubernetes on Cloud environment 

#### <b> Note: There are two Helm charts in this project that can be used independently </b>
#### <b> Note: The Helm is installed has a DaemonSet </b>
#### <b> Note: If your Using the internal LB , make sure to create the LB before deployment and set the given IP in the <u>ingress-config-internal.yaml </u>lb section</b>

<br>
## <u>Installation</u><br>
#### <u>In order to install External Controller on K8S in cloud environment:</u>
1. Create namespace to deploy the helm <br>
2. helm install ingress-nginx-external ingress-nginx-external/ -n {namespace} <br>


#### <u>In order to install Internal Controller on K8S:</u>
1. Create namespace to deploy the helm <br>

2. Internal ingress require  uniqe annotation from the cloud Vendor, 
 First Verify the relevent annotation and use it in the installtion OR update the annotation in <b> ingress-config-internal.yaml </b> (currently set to Azure) file and run the script. <br>
 annotation examples: 
- Azure - ``` service.beta.kubernetes.io/azure-load-balancer-internal: "true" ```
- AWS -  ``` alb.ingress.kubernetes.io/scheme: internal ```

## <u>Using</u><br>
1. To assign each ingress to service ,just add annotation to the service: 
- External - ``` kubernetes.io/ingress.class: External-lb ```
- Internal - ``` kubernetes.io/ingress.class: internal-lb ```






