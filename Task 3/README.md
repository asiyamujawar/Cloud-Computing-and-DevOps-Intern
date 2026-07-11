# 🚀 Cloud Computing & DevOps - Task 3
## CI/CD Automation for Dockerized Portfolio Website Using GitHub Actions

This project demonstrates how to automate the build and deployment of a Dockerized portfolio website using **GitHub Actions** and **Docker Hub**. Whenever code is pushed to the `main` branch, GitHub Actions automatically builds the Docker image and pushes it to Docker Hub.

---

## 📌 Objective

The objective of this task is to:

- Dockerize a portfolio website.
- Automate the Docker image build process.
- Push the Docker image to Docker Hub automatically.
- Implement a CI/CD pipeline using GitHub Actions.

---

## 🛠️ Technologies Used

- Docker
- Docker Hub
- Git
- GitHub
- GitHub Actions
- Nginx
- HTML
- CSS
- JavaScript

---

## 📁 Project Structure

```
Cloud-Computing-and-DevOps-Intern/
│
├── .github/
│   └── workflows/
│       └── docker-ci.yml
│
├── Task 3/
│   ├── Portfolio/
│   │   ├── index.html
│   │   ├── css/
│   │   ├── js/
│   │   └── images/
│   │
│   ├── Dockerfile
│   └── README.md
│
├── Task 1/
└── Task 2/
```

---

## ⚙️ Dockerfile

```dockerfile
FROM nginx:alpine

COPY Portfolio/ /usr/share/nginx/html/

EXPOSE 80
```

---

## ⚙️ GitHub Actions Workflow

Workflow file location:

```
.github/workflows/docker-ci.yml
```

### Workflow Process

1. Checkout the repository
2. Login to Docker Hub
3. Build Docker Image
4. Push Docker Image to Docker Hub

The workflow is triggered automatically whenever code is pushed to the **main** branch.

---

## 🔐 GitHub Secrets

The following repository secrets were configured:

| Secret Name | Description |
|-------------|-------------|
| DOCKER_USERNAME | Docker Hub Username |
| DOCKER_PASSWORD | Docker Hub Personal Access Token |

---

## ▶️ How to Run Locally

### Clone the repository

```bash
git clone https://github.com/<your-github-username>/<repository-name>.git
```

### Navigate to the project

```bash
cd "Task 3"
```

### Build Docker Image

```bash
docker build -t portfolio-website .
```

### Run Docker Container

```bash
docker run -d -p 8080:80 portfolio-website
```

If port **8080** is already in use:

```bash
docker run -d -p 8081:80 portfolio-website
```

---

## 🌐 Access the Website

Open your browser and visit:

```
http://localhost:8080
```

or

```
http://localhost:8081
```

---

## 🐳 Pull Image from Docker Hub

```bash
docker pull <dockerhub-username>/portfolio-website:latest
```

Example:

```bash
docker pull asiyamujawar/portfolio-website:latest
```

Run the container:

```bash
docker run -d -p 8080:80 asiyamujawar/portfolio-website:latest
```

---

## 🔄 CI/CD Pipeline Flow

```
Developer
     │
     ▼
Push Code to GitHub
     │
     ▼
GitHub Actions Triggered
     │
     ▼
Checkout Repository
     │
     ▼
Docker Login
     │
     ▼
Build Docker Image
     │
     ▼
Push Image to Docker Hub
     │
     ▼
Deployment Ready
```

---

## ✅ Output

- Docker image built successfully.
- GitHub Actions workflow executed successfully.
- Docker image pushed to Docker Hub.
- Portfolio website successfully served using an Nginx container.

---

## 📸 Screenshots

Include the following screenshots:

- GitHub Repository
- GitHub Actions (Successful Workflow)
- Docker Hub Repository
- Docker Desktop
- Running Container (`docker ps`)
- Portfolio Website in Browser

---

## 👩‍💻 Author

**Asiya Mujawar**

Cloud Computing & DevOps Internship

---

## 📄 License

This project is developed for educational and internship purposes.