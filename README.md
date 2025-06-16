# 🛠️ Process Reporter CLI Tool

This cross-platform command-line tool generates a detailed report of running processes on your system in CSV format. Ideal for performance monitoring, security auditing, or user-specific activity insights.

---

## 📦 Features

- 🧠 Lists process name, PID, user, CPU and memory usage
- 📄 Outputs CSV
- 📊 Compatible with Excel, Google Sheets, and open-source tools
- 💻 Works from any directory
- 🚀 GitHub Actions CI integrated
- ✅ Mac, Linux and Windows support

## Design Decisions

Python was chosen for its simplicity and the rich ecosystem of libraries that facilitate system process inspection and CSV reporting.

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
python process_report.py
```

### Generate a report in a specific path:

```bash
python process_report.py --output-path pat/to/report.csv
```

---

## Visualization

Two types of report presentations are available:
- CLI-based *"summary"* report produced by `suv-summary-report` script
- GUI-based *"visual"* report produced by `suv-visualize-report` script

### On MacOS and Linux

```bash

./suv-summary-report.sh   <report_file.csv>
./suv-visualize-report.sh <report_file.csv>
```

### On Windows

```PowerShell
.\suv-summary-report.ps1   <report_file.csv>
.\suv-visualize-report.ps1 <report_file.csv>
```

---

## Tests

### On MacOS and Linux

```bash
./suv-test-report.sh
```

### On Windows

```PowerShell
.\suv-test-report.ps1
```

