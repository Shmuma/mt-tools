mt-tools
========

Metatrader misc tools

# MT5

## IndicatorsOnArray

* iRSIOnArray - implementation of RSI calculated from array's data

## UnitTests

Extremely simple unit testing framework. Example usage:

```
   CSuiteTester tester("CLevel");
   CLevel level(10, DIR_ANY);

   tester.assert(level.getDir() == DIR_ANY, "dir");
   tester.assertFloat(level.getLevel(), 10, "level");
   
   tester.assert(level.parse("-30"), "parse(-30)");   
   tester.assert(level.getDir() == DIR_DOWN, "dir(-)");
   tester.assertFloat(level.getLevel(), 30.0, "level(30)");

   return tester.done();
```
