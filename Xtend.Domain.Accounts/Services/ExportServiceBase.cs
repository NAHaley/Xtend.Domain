using System.Collections.Generic;
using Xtend.Domain.Accounts.DataAccess.Repositories;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Domain.Accounts.Services
{
    public abstract class ExportServiceBase
    {
        public List<AccountExport> GetAccountsToExport(int clientId, decimal balanceThreshold)
        {
            var accountsToExport = new AccountService(new AccountRepository()).GetAccounts( clientId, balanceThreshold);

            return accountsToExport;
        }

    }
}
