# DevOps-assessment-mansi
## Final project
### Project Structure
```

DevOps-assessment-mansi/
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
│   ├── backend-service.yaml
│   ├── frontend-deployment.yaml
│   ├── frontend-service.yaml
│   ├── configmap.yaml
│   ├── secret.yaml
│   └── ingress.yaml
│
├── monitoring/
│   ├── grafana/
│   ├── loki/
│   ├── prom-stack/
│   └── dashboards/
│
└── README.md
```
