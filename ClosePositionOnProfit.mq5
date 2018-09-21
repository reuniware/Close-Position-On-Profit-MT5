//+------------------------------------------------------------------+
//|                                        ClosePositionOnProfit.mq5 |
//|                                Copyright 2018, InvestDataSystems |
//|                 https://tradingbot.wixsite.com/robots-de-trading |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, InvestDataSystems"
#property link      "https://tradingbot.wixsite.com/robots-de-trading"
#property version   "1.00"
#include <Trade\Trade.mqh>
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---

  }

CTrade trade;
double profit;
input double profitToReach=5;
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   PositionSelect(Symbol());
   profit=PositionGetDouble(POSITION_PROFIT);
//printf("profit = "+DoubleToString(profit));
   if(profit>=profitToReach)
     {
      trade.PositionClose(Symbol());
     }

  }
//+------------------------------------------------------------------+
