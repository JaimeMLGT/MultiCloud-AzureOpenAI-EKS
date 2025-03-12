
# MultiCloud Scenario: Using Azure Open AI in AWS EKS

This project is a MultiCloud scenario where i will be using both clouds AWS and Azure to consume the Azure Open AI service into the nodes from a cluster of EKS in AWS.

## Diagram
![alt text](https://github.com/JaimeMLGT/MultiCloud-AzureOpenAI-EKS/blob/main/AzureOpenAI%20integration.jpg)
## Tecnologies Used 
* Terraform 
* Terragrunt 
* EKS
* IAM 
* Azure Resource Group 
* Azure Open AI 
* Azure AI Model: GPT-4o-mini
* Networking Binding 


## STAR method Explanation

The **situation** here is a case scenario based on an implementation that i did on my previous job.Basically they wanted to consume the Azure Open AI models in the AWS platform. I decided to give this an extra point accessing these models inside nodes from a cluster in EKS.

The **task** here as i explained in the situation was to make the entire deployment of these components in each cloud knowing that the way i connected both was via 443 HTTPS ( no private connection needed). 

The **actions** that i took were based on the main idea of making this project very easy to deploy and destroy to avoid consuming extra resources.I decided to use Terraform as the main IaC component and i used Terragrunt to have a more organized implementation of the services.Basically in the folder modules/ is all the logic implemented for the deployment , and in each one of the eks/ and openai/ will be a simple terragrunt.hcl with the inputs to load making this very customizable and easy to deploy in any circumstance. I used IAM roles/policies to make an easy deployment but of course,it could be also refactored. The connection from Azure will be restricted , because i decided to use the Vnet approach , and when you mark this setup in the configuration of OpenAI resource basically you can add only the public IP that will comunicate with models in the Vnet.Naturally for other public IPs that could try to reach models they will not be able to reach.

As a **result** , i obtained a very easy to deploy infrastructure MultiCloud environment that is very well organized for further implementations and very reliable for any similar situation.As i said , this was a real case scenario and i lead entirely from his creation until his deployment. 

# End Credits
This program is ready to use and set up if you wanna to give it a try , so feel free to use it with responsability and don't forget to write your own values like ( VPC ID , subnets ID ...).
