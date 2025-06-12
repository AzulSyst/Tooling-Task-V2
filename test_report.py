import unittest
import os
import json
import csv
from process_report import get_processes, write_csv, write_json

class TestProcessReport(unittest.TestCase):

    def setUp(self):
        self.sample_data = get_processes()
        self.test_csv = 'test_output.csv'
        self.test_json = 'test_output.json'

    def tearDown(self):
        if os.path.exists(self.test_csv):
            os.remove(self.test_csv)
        if os.path.exists(self.test_json):
            os.remove(self.test_json)

    def test_get_processes_returns_list(self):
        self.assertIsInstance(self.sample_data, list)
        self.assertGreater(len(self.sample_data), 0)
        required_keys = {'pid', 'name', 'user', 'cpu', 'memory'}
        for proc in self.sample_data:
            self.assertTrue(required_keys.issubset(proc.keys()))

    def test_write_csv_creates_file(self):
        write_csv(self.sample_data, self.test_csv)
        self.assertTrue(os.path.exists(self.test_csv))
        with open(self.test_csv, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            rows = list(reader)
            self.assertGreater(len(rows), 0)

    def test_write_json_creates_file(self):
        write_json(self.sample_data, self.test_json)
        self.assertTrue(os.path.exists(self.test_json))
        with open(self.test_json, 'r', encoding='utf-8') as f:
            data = json.load(f)
            self.assertIsInstance(data, list)
            self.assertGreater(len(data), 0)

if __name__ == '__main__':
    unittest.main()
