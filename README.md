# How To Push a Docker Image to Microsoft Azure ACR With Azure Devops Pipelines
Docker has become a widely used tool for packaging and deploying applications in containers. Microsoft Azure provides a fully managed private Docker registry called Azure Container Registry (ACR) that allows you to store and manage your Docker images in the cloud. In this blog post, I will show you how to build and push Docker images to ACR using Azure DevOps Pipelines.

![image](https://user-images.githubusercontent.com/113396342/214197044-f24375ff-87ae-48dc-b244-2a072fb6374f.png)
#

Project TaskPrerequisites ;
- Azure Account
- Azure Devops Account
#

Before we begin, you will need to create an ACR instance in your Azure subscription. You can do this using the Azure CLI, Azure Portal, Azure Resource Manager (ARM) templates, or IAC (Terraform). In this example, I used Terraform to create the resource group and ACR. You can check out my Terraform codes on GitHub at https://github.com/hkaanturgut/Building-and-Pushing-Docker-images-to-Azure-container-Registry-With-Azure-DevOps-Pipeline/tree/main/azure_terraspace_ecr.


Next, I have my Python app and Dockerfile. You can check it out on GitHub at https://github.com/hkaanturgut/Building-and-Pushing-Docker-images-to-Azure-container-Registry-With-Azure-DevOps-Pipeline/tree/main/pyhton.app%20docker
#
I then created an organization and project on Azure DevOps at https://dev.azure.com/. 

![image](https://user-images.githubusercontent.com/113396342/214197244-93718998-2f6c-43d2-8891-9d14ed4e3eba.png)
#
Once my project was created, I navigated to the Pipeline section and selected GitHub as my code repository.

![image](https://user-images.githubusercontent.com/113396342/214197337-9e82ecaa-3360-4434-a4b7-8019b76f7021.png)
#

At the next step , from the Select tab I chose my repository.

![image](https://user-images.githubusercontent.com/113396342/214197409-5f25c028-b866-4586-a8da-3268c8cef536.png)
#

I then chose the Docker option for building and pushing the image to ACR. I selected my ACR instance that I created earlier, and the pipeline automatically named my image. You can change the name to your preference.

![image](https://user-images.githubusercontent.com/113396342/214197447-8bb9ef3b-33b4-42c1-a853-2c6492e85701.png)
#

The magic happened when Azure DevOps automatically created a pipeline from my code.

![image](https://user-images.githubusercontent.com/113396342/214197478-8e4bb04f-377a-45bc-9d21-e26c40bc46cd.png)
#
I saved and ran it, and my image was successfully created and pushed to my ACR. The pipeline YAML file was also automatically pushed to my GitHub repository.

![image](https://user-images.githubusercontent.com/113396342/214197507-1cbc2d06-90a0-4980-9175-25127a3c0f50.png)

![image](https://user-images.githubusercontent.com/113396342/214197523-572e50c0-f2d7-4c1a-8d9a-1ed3271aa972.png)
#
And there you have it, your image has been deployed to ACR.

![image](https://user-images.githubusercontent.com/113396342/214197537-1e23f626-3fe4-49fe-bcbc-693a252593a7.png)

![image](https://user-images.githubusercontent.com/113396342/214197547-5c971114-243c-4018-ad2c-bd7eeb51e602.png)
#
In this article, we explored a method for pushing Docker images to Azure Container Registry (ACR) using Azure DevOps Pipelines. 

And there you have it, your image has been deployed to ACR. With this method, you can easily build and push Docker images to ACR using Azure DevOps Pipelines without the need for additional services such as Azure CodeBuild or CodeDeploy. Additionally, this approach remains within the free tier of Azure, and you have the flexibility to switch to different cloud providers if necessary. The next step would be to utilize these Docker images in the cloud, such as setting up a website in an Azure Virtual Machine and further reducing overall cloud costs.

Thanks for reading! Stay tuned for more updates and tutorials on this topic.
