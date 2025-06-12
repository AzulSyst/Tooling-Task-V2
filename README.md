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

### Install the dependency
pip install -r requirements.txt

### Generate a CSV report:
python process_report.py --output-format csv

### Generate a JSON report in a specific path:
python process_report.py --output-format json --output-path C:\Users\YourName\Documents\report.json

### Tests:
python -m unittest discover


