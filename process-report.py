#!/usr/bin/env python3

import argparse
import json
import csv
import os
import platform
import psutil
from datetime import datetime

def get_processes():
    processes = []
    # First call primes CPU percent values (optional, but good for Windows/macOS)
    for proc in psutil.process_iter():
        try:
            proc.cpu_percent(interval=0.0)
        except Exception:
            continue

    for proc in psutil.process_iter(attrs=['pid', 'name', 'username', 'cpu_percent', 'memory_percent']):
        try:
            info = proc.info
            processes.append({
                "pid": info['pid'],
                "name": info['name'] or "N/A",
                "user": info['username'] or "N/A",
                "cpu": round(info.get('cpu_percent') or 0.0, 2),
                "memory": round(info['memory_percent'] or 0.0, 2)
            })
        except (psutil.NoSuchProcess, psutil.AccessDenied):
            continue
    return processes

def write_csv(data, output_file):
    with open(output_file, mode='w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=data[0].keys())
        writer.writeheader()
        writer.writerows(data)

def write_json(data, output_file):
    with open(output_file, mode='w', encoding='utf-8') as f:
        json.dump(data, f, indent=4)

def main():
    parser = argparse.ArgumentParser(description="Generate a report of running processes (Windows/macOS/Linux).")
    parser.add_argument('--output-format', choices=['csv', 'json'], default='csv', help='Output file format (default: csv).')
    parser.add_argument('--output-path', default=None, help='Path to save the output file.')

    args = parser.parse_args()

    data = get_processes()
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    file_ext = args.output_format
    filename = f"process_report_{timestamp}.{file_ext}"

    output_path = args.output_path or os.path.join(os.getcwd(), filename)

    if args.output_format == 'csv':
        write_csv(data, output_path)
    else:
        write_json(data, output_path)

    print(f"[+] Process report generated at: {output_path}")
    print(f"[i] Platform: {platform.system()} {platform.release()}")

if __name__ == '__main__':
    main()
