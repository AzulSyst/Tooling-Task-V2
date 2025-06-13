# 🛠️ Process Reporter CLI Tool

This cross-platform command-line tool generates a detailed report of running processes on your system in CSV or JSON format. Ideal for performance monitoring, security auditing, or user-specific activity insights.

---

## 📦 Features

- 🧠 Lists process name, PID, user, CPU and memory usage
- 📄 Outputs CSV or JSON
- 📊 Compatible with Excel, Google Sheets, and open-source tools
- 💻 Works from any directory
- 🚀 GitHub Actions CI integrated
- ✅ Mac and Windows support

---

## 🚀 Installation

```bash
git clone https://github.com/YOUR_USERNAME/process-reporter.git
cd process-reporter
pip install -r requirements.txt
```

---

## Execution

### On MacOS

1. Run `./suv-venv-activate.sh` in order to create Virtual Environment for Python
2. Run `./suv-venv-install-modules.sh` in order to install required packages into the Virtual Environment
3. Run `./suv-process-report.sh`

### On Windows

1. Execute the following command to enable PowerShell scripts for the current terminal session:  
`Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process`  
2. Run `.\suv-process-report.ps1`

---

### Install the dependency
pip install -r requirements.txt

### Generate a CSV report:
python process_report.py --output-format csv

### Generate a JSON report in a specific path:
python process_report.py --output-format json --output-path C:\Users\YourName\Documents\report.json

### Tests:
python -m unittest discover


