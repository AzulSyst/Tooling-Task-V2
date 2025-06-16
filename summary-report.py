import pandas as pd
import argparse

def summarize(csv_file):
    # Load CSV
    df = pd.read_csv(csv_file)

    print("\n📋 Full Data Preview (Top 10 rows):")
    print(df.head(10).to_string(index=False))  # neat terminal formatting

    # Total number of processes per user
    process_count = df['user'].value_counts()
    process_count.index.name = None
    print("\nTotal Processes per User:")
    print(process_count.to_string())

    # Total CPU usage per user
    if 'cpu' in df.columns:
        cpu_usage = df.groupby('user')['cpu'].sum().sort_values(ascending=False)
        cpu_usage.index.name = None
        print("\nTotal CPU Usage per User:")
        print(cpu_usage.to_string())

    # Total Memory usage per user
    if 'memory' in df.columns:
        memory_usage = df.groupby('user')['memory'].sum().sort_values(ascending=False)
        memory_usage.index.name = None
        print("\nTotal Memory Usage per User:")
        print(memory_usage.to_string())

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Show terminal summary of a process CSV file")
    parser.add_argument("csv_file", help="Path to CSV file")
    args = parser.parse_args()

    summarize(args.csv_file)