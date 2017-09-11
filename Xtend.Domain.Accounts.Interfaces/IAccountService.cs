using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Domain.Accounts.Interfaces
{
    public interface IAccountService
    {
        int Create(ExportHistory exportHistory);

        List<AccountExport> GetAccounts(int clientId, decimal balanceThreshold);
    }
}
