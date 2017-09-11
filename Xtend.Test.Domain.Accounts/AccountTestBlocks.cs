using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Xtend.Test.Domain.Accounts
{
    public static class AccountTestBlocks
    {
        public static int GetClientId()
        {
            return 2;
        }

        public static decimal GetBalanceThresholdHundred()
        {
            return 100.00m;
        }

        public static decimal GetBalanceThresholdZero()
        {
            return 0.00m;
        }

    }
}
