using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Xtend.Domain.Accounts.Models;
using Xtend.Domain.Accounts.Services;
using Xtend.Domain.Accounts.DataAccess.Repositories;
using Xtend.Domain.Accounts.Interfaces;

namespace Xtend.WebApi.Controllers
{
    public class AccountsController : ApiController
    {
        public IEnumerable<AccountExport> GetAllAccounts()
        {
            var accountService = new AccountService(new AccountRepository());
            var accounts = accountService.GetAccounts(1, 0.00m);
            return accounts;
        }
    }
}
