import unittest
import readfiles

class TestReadFiles(unittest.TestCase):
    with open('_Sorted.txt',encoding ="utf-8") as handle:
        data = handle.read()
        unittest.TestCase.assertEqual(data, readfiles.read_file('_Sorted.txt'))
