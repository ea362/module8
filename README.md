# Module 8: Assignment - Building and Testing Web Application with FastAPI

![GitHub Actions Workflow Status](https://img.shields.io/badge/CI%2FCD-Passing-brightgreen)

---

## 📖 Overview

This project is a **FastAPI-based Calculator Application** developed as part of Module 8. The objective was to enhance a starter web application by writing comprehensive unit, integration, and end-to-end tests, implementing robust logging, and setting up a fully automated CI/CD pipeline using GitHub Actions.

---

## 🎯 Objective

Enhancing a FastAPI-based calculator application by writing unit, integration, and end-to-end tests. The project emphasizes professional software development practices, including version control, containerization, automated testing, and continuous integration.

---

## ✨ Key Features

- **Web Interface:** A clean, interactive HTML/JavaScript frontend for performing basic arithmetic operations.
- **REST API:** Robust endpoints for `add`, `subtract`, `multiply`, and `divide` using FastAPI.
- **Input Validation:** Secure handling of user inputs using Pydantic models.
- **Error Handling:** Graceful error responses with proper HTTP status codes (e.g., 400 for division by zero).
- **Logging:** Detailed operation and error logging for better debugging and monitoring.
- **Comprehensive Testing:**
  - **Unit Tests:** Validate individual arithmetic functions.
  - **Integration Tests:** Ensure API endpoints function correctly.
  - **End-to-End (E2E) Tests:** Simulate real user interactions using Playwright.
- **Containerization:** Dockerfile and Docker Compose configuration for consistent local development and deployment.
- **CI/CD Pipeline:** Automated testing and security scanning (Trivy) via GitHub Actions.

---

## 🛠️ Tech Stack

- **Backend:** Python 3.10+, FastAPI, Uvicorn
- **Data Validation:** Pydantic
- **Frontend:** HTML, CSS, JavaScript (vanilla)
- **Testing:** Pytest, Pytest-Cov, Playwright
- **Containerization:** Docker, Docker Compose
- **CI/CD:** GitHub Actions, Trivy (Security Scanner)

---

## 🚀 Getting Started

### Prerequisites
- Python 3.10 or higher
- Git
- Docker and Docker Compose (optional, but recommended)

### Clone the Repository
```bash
git clone <your-repository-url>
cd module8
```

## Set Up Virtual Environment
### Windows
```cmd
python -m venv venv
venv\Scripts\activate
```
### macOS / Linux
```bash
python3 -m venv venv
source venv/bin/activate
```

---

## Install Dependencies
```bash
pip install -r requirements.txt
```

## Install Playwright Browsers (for E2E Tests)
```bash
playwright install
```

## Run the Application
```bash
python main.py
```
Open your browser and navigate to http://localhost:8000

## Running Tests

### Run All Test Suites
```bash
pytest -v
```

Run Specific Test Suites
- Unit Tests: 
```bash
 pytest tests/unit/ -v 
 ```

- Integration Tests: 
```bash
pytest tests/integration/ -v 
```

- E2E Tests: 
```bash
 pytest tests/e2e/ -v 
```

### Generate Coverage Report
```bash
pytest --cov=app --cov-report=html
```
The HTML report will be available in the htmlcov/ directory.

## Running with Docker

### Build and Run with Docker Compose (Recommended)
```bash
docker-compose up --build
```
The application will be available at http://localhost:8000. Code changes are automatically reloaded thanks to the mounted volume.

### Build and Run with Docker
```bash
docker build -t fastapi-calculator .
docker run -p 8000:8000 fastapi-calculator
```