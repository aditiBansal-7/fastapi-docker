# FastAPI Dockerized Application

This project contains a FastAPI application, containerized using Docker and deployed using GitHub Actions.

## 🚀 Installation and Running Locally

1. Clone the repository:
git clone https://github.com/<aditiBansal-7>/fastapi-docker.git cd fastapi-docker

markdown
Copy
Edit
2. Install dependencies:
pip install -r requirements.txt

markdown
Copy
Edit
3. Run the FastAPI server:
uvicorn main:app --host 0.0.0.0 --port 8000

shell
Copy
Edit

## 🐳 Building and Running the Docker Image

1. Build the Docker image:
docker build -t fastapi-app .

markdown
Copy
Edit
2. Run the container:
docker run -p 8000:8000 fastapi-app

markdown
Copy
Edit

## 🔄 GitHub Actions Workflow

The `DockerBuild.yml` workflow:
- Runs on every push
- Builds the Docker image
- Pushes it to Docker Hub

## 🔑 Setting up Docker Token & GitHub Secrets

1. Generate a Docker Token:
- Go to [Docker Hub](https://hub.docker.com/)
- Navigate to **Account Settings** → **Security** → **Access Tokens**
- Click **Generate Token** and copy the token.

2. Add Secret in GitHub:
- Go to **GitHub Repository** → **Settings** → **Secrets** → **Actions**
- Click **New Repository Secret**
- Name it `DOCKERTOKEN` and paste the copied token.

3. The workflow will now authenticate and push the image to Docker Hub.

## 📌 Submission Details

- **GitHub Repository:** [GitHub Repo Link](https://github.com/<your-github-username>/fastapi-docker)
- **Docker Hub Image:** [Docker Hub Link](https://hub.docker.com/r/<your-dockerhub-username>/fastapi-app)
🔹 Replace <your-github-username> and <your-dockerhub-username> with your actual usernames.

✅ Next Steps in VS Code
1️⃣ Initialize Git Repository

sh
Copy
Edit
git init
git add .
git commit -m "Initial commit"
git branch -M main
2️⃣ Push to GitHub

sh
Copy
Edit
git remote add origin https://github.com/<your-github-username>/fastapi-docker.git
git push -u origin main