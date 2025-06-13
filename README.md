# 🛠️ Process Reporter CLI Tool

This cross-platform command-line tool generates a detailed report of running processes on your system in CSV or JSON format. Ideal for performance monitoring, security auditing, or user-specific activity insights.

---

## 📦 Features

- 🧠 Lists process name, PID, user, CPU and memory usage
- 📄 Outputs CSV or JSON
- 📊 Compatible with Excel, Google Sheets, and open-source tools
- 💻 Works from any directory
- 🚀 GitHub Actions CI integrated
- ✅ Mac, Linux and Windows support

## Design Decisions

Python because of simplicity of a task and availability of modules.

## 🚀 Installation

### On MacOS

Download the files and switch to the downloaded directory:
```bash
git clone https://github.com/AzulSyst/Tooling-Task-V2.git
cd Tooling-Task-V2
```
Activate virtual environment for Python and install required packages:
```bash
./suv-venv-activate.sh
./suv-venv-install-modules.sh
```

### On Windows and Linux

Download the files, switch to the downloaded directory and install required python packages:
```bash
git clone https://github.com/AzulSyst/Tooling-Task-V2.git
cd Tooling-Task-V2
pip install -r requirements.txt
```

## Execution

### On MacOS and Linux

```bash
./suv-process-report.sh
```

### On Windows

Enable PowerShell scripts for the current terminal session and then run the `suv-process-report.ps1`:
```PowerShell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
.\suv-process-report.ps1
```

## Manual Execution

### Install python dependencies

Mase sure python dependencies are installed as per [Installation](#Installation) instructions.

### Generate a CSV report:

```bash
python process_report.py --output-format csv
```

### Generate a JSON report in a specific path:

```bash
python process_report.py --output-format json --output-path C:\Users\YourName\Documents\report.json
```

---

## Visualization

```bash
suv-summary-report.sh
suv-visualize-report.sh
```

---

## Tests

```bash
python -m unittest discover
```


