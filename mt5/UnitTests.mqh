//+------------------------------------------------------------------+
//|                                                    UnitTests.mqh |
//|                                                        Max Lapan |
//|                                                   blog.shmuma.ru |
//+------------------------------------------------------------------+
#property copyright "Max Lapan"
#property link      "blog.shmuma.ru"


class CSuiteTester {
private:
   string name;
   int total;
   int failed;   
public:
   CSuiteTester(string _name) {
      total = 0;
      failed = 0;
      name = _name;
      
      PrintFormat("UnitTests: Suite: %s", _name);
   }
   
   void assert(bool expr, string test) {
      total++;
      if (!expr) {
         failed++;
         PrintFormat("UnitTests: test '%s' FAILED", test);
      }
      else
         PrintFormat("UnitTests: test '%s' passed", test);
   }
   
   void assertFloat(double val, double compare, string test, double threshold = 1e-3) {
      assert(MathAbs(val - compare) < threshold, test);
   }
   
   void assertFalse(bool expr, string test) {
      assert(!expr, test);
   }
   
   bool done() {
      PrintFormat("UnitTests: Suite %s, run %d tests, failed %d", name, total, failed);
      return failed == 0;
   }
};

