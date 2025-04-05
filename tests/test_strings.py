import unittest

class TestStrings(unittest.TestCase):
    def test_upper(self):
        self.assertEqual("bonjour".upper(), "BONJOUR")

    def test_isupper(self):
        self.assertTrue("HELLO".isupper())
        self.assertFalse("Hello".isupper())
