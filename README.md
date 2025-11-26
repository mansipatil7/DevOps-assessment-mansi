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
###🚀 AWS - VPC, EKS, IAM, EC2, ELB
###🧱 Terraform - Iac for full AWS infra
###🐳 Docker - Container images for backend and frontend
###🌐  Kubernetes - Deplyment,ingress
###📈 Prometheus - metrics collection
###📊Grafana - Dashboard for metrics/logs
###🧾 Loki - Log aggregation
