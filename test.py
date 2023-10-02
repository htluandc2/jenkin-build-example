import unittest
import calc

class TestCalc(unittest.TestCase):
    """
    Test function for my library
    """
    def test_add_2_ints(self):
        result = calc.add2args(2, 3)
        self.assertEqual(result, 5)

    def test_add_2_floats(self):
        self.assertEqual(calc.add2args(2.0, 3.1), 5.1)

    
if __name__ == '__main__':
    unittest.main(verbosity=2)