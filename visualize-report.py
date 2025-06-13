import pandas as pd
import matplotlib.pyplot as plt
import argparse

def visualize(csv_file):
    # Load CSV
    df = pd.read_csv(csv_file)

    # Preview the data
    print("\n📋 Full Data Preview:")
    print(df.head(10))  # show top 10 rows

    # Total number of processes per user
    process_count = df['user'].value_counts()
    print("\n🧾 Total Processes per User:")
    print(process_count)

    # Optional: Total CPU usage per user
    if 'cpu' in df.columns:
        cpu_usage = df.groupby('user')['cpu'].sum().sort_values(ascending=False)
        print("\n🔥 Total CPU Usage per User:")
        print(cpu_usage)
    else:
        cpu_usage = None

    # Optional: Total Memory usage per user
    if 'memory' in df.columns:
        memory_usage = df.groupby('user')['memory'].sum().sort_values(ascending=False)
        print("\n💾 Total Memory Usage per User:")
        print(memory_usage)
    else:
        memory_usage = None

    # Plotting: Processes per user
    process_count.plot(kind='bar', title="Process Count per User")
    plt.ylabel("Number of Processes")
    plt.tight_layout()
    plt.show()

    # Plotting: CPU usage per user
    if cpu_usage is not None:
        cpu_usage.plot(kind='bar', title="Total CPU Usage per User", color='orange')
        plt.ylabel("CPU (%)")
        plt.tight_layout()
        plt.show()

    # Plotting: Memory usage per user
    if memory_usage is not None:
        memory_usage.plot(kind='bar', title="Total Memory Usage per User", color='green')
        plt.ylabel("Memory (MB)")
        plt.tight_layout()
        plt.show()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Visualize process report CSV")
    parser.add_argument("csv_file", help="Path to CSV file to visualize")
    args = parser.parse_args()

    visualize(args.csv_file)