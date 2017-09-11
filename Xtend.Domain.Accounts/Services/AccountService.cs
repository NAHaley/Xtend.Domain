using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xtend.Domain.Accounts.Interfaces;
using Xtend.Domain.Accounts.Models;


namespace Xtend.Domain.Accounts.Services
{
    public class AccountService : IAccountService
    {
        private readonly IAccountRepository _repo;

        public AccountService(IAccountRepository accountRepository)
        {
            _repo = accountRepository;
        }

        public int Create(ExportHistory exportHistory)
        {
            throw new NotImplementedException();
        }

        public List<ExportHistory> GetExportHistories(int clientId)
        {
            throw new NotImplementedException();
        }

        public List<AccountExport> GetAccounts(int clientId, decimal balanceThreshold)
        {

            var accounts = _repo.GetAccounts(clientId, balanceThreshold);

            return accounts;
        }
    }
}