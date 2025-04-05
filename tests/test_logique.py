import unittest

class TestLogique(unittest.TestCase):
    def test_bool(self):
        self.assertTrue(5 > 3)
        self.assertFalse(2 > 10)
