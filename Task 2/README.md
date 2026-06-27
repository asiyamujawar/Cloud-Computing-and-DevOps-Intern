# Task 2 – Portfolio Website Docker Deployment on AWS EC2

## 1. Local Project Structure (Windows)

```text
Cloud-Computing-and-DevOps-Intern
└── Task 2
    └── portfolio-website
        ├── Dockerfile
        ├── index.html
        ├── css/
        └── js/
```

---

## 2. Create Dockerfile

Create a file named `Dockerfile` inside the `portfolio-website` folder.

```dockerfile
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80
```

---

## 3. Build Docker Image (Windows)

Navigate to the project folder:

```cmd
cd "D:\Cloud-Computing-and-DevOps-Intern\Task 2\portfolio-website"
```

Build the image:

```cmd
docker build -t portfolio-website .
```

Verify:

```cmd
docker images
```

---

## 4. Run Container Locally

If port `8080` is occupied, use `8081`:

```cmd
docker run -d -p 8081:80 --name portfolio-container portfolio-website
```

Check running containers:

```cmd
docker ps
```

Open in browser:

```text
http://localhost:8081
```

---

## 5. Push Project to GitHub

Navigate to repository root:

```cmd
cd "D:\Cloud-Computing-and-DevOps-Intern"
```

Add files:

```cmd
git add .
```

Commit:

```cmd
git commit -m "Added Task 2 portfolio website Docker deployment"
```

Pull latest changes:

```cmd
git pull origin main --allow-unrelated-histories
```

If the editor opens:

```text
Esc
:wq
Enter
```

Push:

```cmd
git push origin main
```

---

## 6. Launch AWS EC2 Instance

### Instance Configuration

| Setting               | Value             |
| --------------------- | ----------------- |
| Name                  | portfolio-server  |
| AMI                   | Ubuntu Server LTS |
| Instance Type         | t3.micro          |
| Storage               | 8 GB              |
| Auto Assign Public IP | Enable            |

### Security Group Rules

| Type        | Source              |
| ----------- | ------------------- |
| SSH (22)    | My IP               |
| HTTP (80)   | Anywhere            |
| HTTPS (443) | Anywhere (Optional) |

### Key Pair

| Setting | Value                |
| ------- | -------------------- |
| Name    | portfolio-server-key |
| Type    | RSA                  |
| Format  | .pem                 |

Download:

```text
portfolio-server-key.pem
```

---

## 7. Connect to EC2 from Windows

Open PowerShell:

```powershell
cd C:\Users\HP\Downloads
```

Connect:

```powershell
ssh -i portfolio-server-key.pem ubuntu@YOUR_PUBLIC_IP
```

Example:

```powershell
ssh -i portfolio-server-key.pem ubuntu@65.2.141.98
```

Accept fingerprint:

```text
yes
```

---

## 8. Update Server

```bash
sudo apt update
sudo apt upgrade -y
```

---

## 9. Install Docker

Install Docker:

```bash
sudo apt install docker.io -y
```

Verify:

```bash
docker --version
```

Start Docker:

```bash
sudo systemctl start docker
```

Enable Docker:

```bash
sudo systemctl enable docker
```

Check status:

```bash
sudo systemctl status docker
```

Exit status screen:

```text
q
```

---

## 10. Install Git

```bash
sudo apt install git -y
```

Verify:

```bash
git --version
```

---

## 11. Clone GitHub Repository on EC2

Clone repository:

```bash
git clone https://github.com/asiyamujawar/Cloud-Computing-and-DevOps-Intern.git
```

Navigate:

```bash
cd Cloud-Computing-and-DevOps-Intern
cd "Task 2/portfolio-website"
```

Verify files:

```bash
ls
```

Expected:

```text
Dockerfile
index.html
css
js
```

---

## 12. Build Docker Image on EC2

```bash
sudo docker build -t portfolio-website .
```

Verify:

```bash
sudo docker images
```

Expected:

```text
portfolio-website   latest
```

---

## 13. Run Container on EC2

```bash
sudo docker run -d -p 80:80 --name portfolio-container portfolio-website
```

Verify:

```bash
sudo docker ps
```

Expected:

```text
0.0.0.0:80->80/tcp
```

---

## 14. Test Inside EC2

```bash
curl http://localhost
```

You should see the website HTML.

---

## 15. Open Website Publicly

Replace the IP with your EC2 Public IPv4:

```text
http://65.2.141.98
```

---

## 16. Troubleshooting

Check container:

```bash
sudo docker ps
```

View logs:

```bash
sudo docker logs portfolio-container
```

Test locally:

```bash
curl http://localhost
```

Verify Security Group:

```text
SSH 22  -> My IP
HTTP 80 -> 0.0.0.0/0
```

---

## Outcome

* Containerized a static portfolio website using Docker.
* Stored source code in GitHub.
* Deployed the application on AWS EC2.
* Exposed the website through a public IPv4 address.
* Verified successful deployment using Docker and browser testing.
