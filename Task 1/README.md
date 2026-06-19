# 🌐 AWS Static Portfolio Website

A responsive personal portfolio website hosted on **Amazon S3** and delivered securely using **Amazon CloudFront (HTTPS)**. This project demonstrates static website hosting, cloud storage, CDN configuration, and GitHub version control.

---

# 📌 Project Objective

The objective of this project is to:

* Build a responsive single-page portfolio website using HTML, CSS, and JavaScript.
* Host the website on Amazon S3.
* Configure Amazon CloudFront to serve the website over HTTPS.
* Upload the complete project to GitHub.
* Learn the basics of cloud object storage, CDN, and static website deployment.

---

# 🚀 Features

* Responsive Design
* Hero Section
* About Me Section
* Skills Section
* Projects Section
* Contact Section
* Footer
* Smooth Scrolling
* CSS Animations
* Mobile-Friendly Layout
* HTTPS Enabled using CloudFront
* Fast Global Content Delivery

---

# 🛠️ Technologies Used

| Technology        | Purpose                       |
| ----------------- | ----------------------------- |
| HTML5             | Website Structure             |
| CSS3              | Styling and Responsive Design |
| JavaScript        | Interactive Features          |
| Git & GitHub      | Version Control               |
| Amazon S3         | Static Website Hosting        |
| Amazon CloudFront | CDN and HTTPS                 |

---

# 📂 Project Structure

```text
Portfolio/
│
├── index.html
├── styles.css
├── script.js
├── README.md

---

# ⚙️ Deployment Steps

## Step 1 – Create the Portfolio

Developed a responsive portfolio website using HTML, CSS, and JavaScript.

Sections included:

* Hero
* About
* Skills
* Projects
* Contact
* Footer

---

## Step 2 – Upload to GitHub

Initialize Git:

```bash
git init
```

Add files:

```bash
git add .
```

Commit changes:

```bash
git commit -m "Initial portfolio deployment"
```

Rename branch:

```bash
git branch -M main
```

Add remote repository:

```bash
git remote add origin https://github.com/asiyamujawar/Cloud-Computing-and-DevOps-Intern.git
---

Push the project:

```bash
git push -u origin main
```

---

## Step 3 – Create an Amazon S3 Bucket

1. Sign in to the AWS Console.
2. Open Amazon S3.
3. Create a new bucket.
4. Choose a unique bucket name.
5. Disable **Block Public Access**.
6. Create the bucket.

---

## Step 4 – Upload Website Files

Upload the following files:

* index.html
* styles.css
* script.js
* images/
* assets/

---

## Step 5 – Enable Static Website Hosting

Navigate to:

**Bucket → Properties → Static Website Hosting**

Enable:

* Static Website Hosting
* Index Document:

  ```
  index.html
  ```

---

## Step 6 – Configure Bucket Policy

Allow public read access to the website files by attaching an appropriate bucket policy.

---

## Step 7 – Create CloudFront Distribution

Configure CloudFront:

* Origin: Amazon S3 Bucket
* Viewer Protocol Policy:

  * Redirect HTTP to HTTPS
* Default Root Object:

  ```
  index.html
  ```

Wait for the distribution status to change to **Deployed**.

---

## Step 8 – Access the Website

Open the CloudFront domain name in a web browser.

Example:

```
https://dqojagmvdkhjz.cloudfront.net/
```

The website is now securely accessible over HTTPS.

---

# 📷 Screenshots Included

This repository/submission includes screenshots of:

* Amazon S3 Bucket
* Bucket Policy
* CloudFront Distribution
* Live Portfolio Website

---

# 📁 Deliverables

* Responsive Portfolio Source Code
* GitHub Repository
* Amazon S3 Hosted Website
* Amazon CloudFront HTTPS URL
* README Documentation
* Deployment Screenshots

---

# 🔗 GitHub Repository

Replace with your repository link:

```
https://github.com/asiyamujawar/Cloud-Computing-and-DevOps-Intern.git
```

---

# 🌍 Live Website

Replace with your CloudFront URL:

```
https://dqojagmvdkhjz.cloudfront.net/
```

---

# 📚 Learning Outcomes

Through this project, I learned:

* Static website hosting using Amazon S3
* CloudFront CDN configuration
* HTTPS deployment
* AWS cloud storage concepts
* Git and GitHub version control
* Responsive web development
* Website deployment best practices

---

# 👩‍💻 Author

**Asiya Mujawar**

Full Stack Developer | Cloud Computing Enthusiast

---

# 📄 License

This project is created for educational and learning purposes.
