1. Local Project Structure (Windows)
Cloud-Computing-and-DevOps-Intern
└── Task 2
    └── portfolio-website
        ├── Dockerfile
        ├── index.html
        ├── css
        └── js
________________________________________
2. Dockerfile
Create file:
Dockerfile
Content:
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80
________________________________________
3. Build Docker Image (Windows)
Open CMD:
cd "D:\Cloud-Computing-and-DevOps-Intern\Task 2\portfolio-website"
Build:
docker build -t portfolio-website .
Verify:
docker images
________________________________________
4. Run Locally
If 8080 is occupied:
docker run -d -p 8081:80 --name portfolio-container portfolio-website
Check:
docker ps
Open:
http://localhost:8081
________________________________________
5. Push to GitHub
Go to repo root:
cd "D:\Cloud-Computing-and-DevOps-Intern"
Add files:
git add .
Commit:
git commit -m "Added Task 2 portfolio website Docker deployment"
Pull latest:
git pull origin main --allow-unrelated-histories
If editor opens:
Esc
:wq
Enter
Push:
git push origin main
Verify repo:
Cloud-Computing-and-DevOps-Intern Repository
________________________________________
6. Launch AWS EC2
Settings:
Name: portfolio-server
AMI: Ubuntu Server LTS
Instance Type: t3.micro
Storage: 8 GB
Auto Assign Public IP: Enable
Security Group:
SSH 22 -> My IP
HTTP 80 -> Anywhere
HTTPS 443 -> Anywhere (optional)
Key Pair:
Name: portfolio-server-key
Type: RSA
Format: .pem
Download:
portfolio-server-key.pem
________________________________________
7. Connect to EC2 from Windows
Open PowerShell:
cd C:\Users\HP\Downloads
Connect:
ssh -i portfolio-server-key.pem ubuntu@YOUR_PUBLIC_IP
Example:
ssh -i portfolio-server-key.pem ubuntu@65.2.141.98
Accept fingerprint:
yes
________________________________________
8. Update Server
sudo apt update
sudo apt upgrade -y
________________________________________
9. Install Docker
sudo apt install docker.io -y
Check:
docker --version
Start Docker:
sudo systemctl start docker
Enable:
sudo systemctl enable docker
Verify:
sudo systemctl status docker
Exit status screen:
q
________________________________________
10. Install Git
sudo apt install git -y
Verify:
git --version
________________________________________
11. Clone GitHub Repository on EC2
git clone https://github.com/asiyamujawar/Cloud-Computing-and-DevOps-Intern.git
Enter repository:
cd Cloud-Computing-and-DevOps-Intern
Go to Task 2:
cd "Task 2/portfolio-website"
Verify:
ls
Expected:
Dockerfile
index.html
css
js
________________________________________
12. Build Docker Image on EC2
sudo docker build -t portfolio-website .
Verify:
sudo docker images
Expected:
portfolio-website latest
________________________________________
13. Run Container on EC2
sudo docker run -d -p 80:80 --name portfolio-container portfolio-website
Verify:
sudo docker ps
Expected:
0.0.0.0:80->80/tcp
________________________________________
14. Test Inside EC2
curl http://localhost
You should see HTML content.
________________________________________
15. Open Website Publicly
Browser:
http://65.2.141.98
Replace with your Public IPv4.
________________________________________
16. If Website Doesn't Open
Check:
sudo docker ps
sudo docker logs portfolio-container
curl http://localhost
Verify Security Group:
SSH 22 -> My IP
HTTP 80 -> 0.0.0.0/0

