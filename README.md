# DevOps-assessment-mansi
## Final project
### Project Structure
```

📦DevOps-assessment-mansi/
│
├── terraform/               
│   ├── main.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
│        ├── vpc/
│        └── eks/
│
├── docker/
│   ├── backend/
│   │   ├── Dockerfile
│   │   ├── app.py
│   │   └── requirements.txt
│   └── frontend/
│       ├── Dockerfile
│       └── index.html
│
├── k8s/                      
│   ├── backend-deployment.yaml
│   ├── frontend-deployment.yaml
│   └── ingress.yaml
│   
│   
│   
│   
│
├── monitoring/
│   ├── grafana/
│   ├── loki/
│   └── prometheus/
│   
│
└── README.md
```
#### 🚀 AWS - VPC, EKS, IAM, EC2, ELB
#### 🧱 Terraform - Iac for full AWS infra
#### 🐳 Docker - Container images for backend and frontend
#### 🌐  Kubernetes - Deplyment,ingress
#### 📈 Prometheus - metrics collection
#### 📊Grafana - Dashboard for metrics/logs
#### 🧾 Loki - Log aggregation


### Infrastructure (Terraform) AWS

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/a9d1a73b-b308-4ee1-bc7c-be19498d8bf0" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/3b6599f1-6a8e-4efa-9d43-51a827fec8c9" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/480408f3-ae9c-4767-8bfc-38d6bf389ce6" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/c0c96cc6-9258-4236-9ff2-c9190ca33d89" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/079b9899-06cb-4ef2-bcba-71effb108470" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/0cd5c7df-8ad5-423b-9eeb-14867918c8ed" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/05233907-839a-42de-a056-d1727ad7854a" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/3a1e1f99-e855-4cab-9a4a-f6fa7e2725fd" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/4ec35a34-6f3b-4239-843d-6a9e224e0264" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/78f25e75-5e1b-40c9-87b7-f2e9583e4b5c" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/e80dbc70-befc-4759-b8a1-db3f6df1c90e" />


### Application Deployemnt (Docker + Kubernetes)

#### 1 Write application code
##### Backend
##### Frontend

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/a30b5e53-880e-40da-ac4d-0c12011c33c8" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/9d75f86b-e99a-41b6-8688-1a91788c4adb" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/a8760ea4-932f-4e64-b2fb-0c18c68654cf" />

#### 2 Push Docker images to Dockerhub

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/af08ce05-eaa4-40d2-a299-12a33227d9df" />


#### 3 Deploy application to kubernetes

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/4dc164a7-3783-4016-880e-1894ebaa03a2" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/c3c26dc9-388e-4d2b-9704-aae625b5dd27" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/92f0d908-6e2c-421f-86a4-0016d5dbae12" />


#### 4 Configure ingress tp route traffic

##### This allowed frontend to call backend 

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/ea65a449-abe7-4fc5-a599-a00b3ff67b25" />

### Set up Observability

##### Installed: metrics + logs viewed in Grfana

 ###### Prometheus -> metrics
 ###### Gafana -> dashboards
 ###### Loki -> logs
 ###### Fluentbit -> log collection
  
 
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/44cdb717-156f-4c7e-b274-7236a4acf124" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/82f7c582-7beb-4194-aca2-fb100e0988bc" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/c1249298-346b-47b5-a4c9-c399cc37d835" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/9d567f88-586f-449e-908d-8e69339f3e47" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/c0cbd92f-9dd9-44c8-8da3-685d25613441" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/56d61ca1-5de3-4516-bd63-408961b2b9e1" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/feb4a025-5a5b-4775-9975-d69ae402fdb4" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/6f70b574-85c6-4e87-8ce6-91932b53cfc4" />


<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/484d9abe-0130-46de-8969-0bf59b68755b" />

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/949c855b-4d51-470a-8a25-9f76f06917e1" />


### Debugging Section

##### 1. CrashLoopBackOff – Wrong Command
```
command: ["python", "main.py"] → file is app.py.
```






