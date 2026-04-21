# DevSecOps Project 1 - Secure CI/CD Pipeline

## Features
- Node.js app
- Dockerized (non-root user)
- GitHub Actions CI/CD
- Trivy security scanning

## Pipeline Stages
1. Build Docker image
2. Scan vulnerabilities
3. Fail on HIGH/CRITICAL issues

## Security Improvements
- Minimal base image (Alpine)
- Non-root container
- Dependency isolation

## How to Run
docker build -t devsecops-app .
docker run -p 3000:3000 devsecops-app

## Security Scan Results

Initial scan:
- 2 CRITICAL
- 9 HIGH

After fixes:
- Reduced vulnerabilities
- Updated base image
- Patched dependencies

## Lessons Learned
- Base images introduce vulnerabilities
- Dependency management is critical
- Security scans must be part of CI/CD
