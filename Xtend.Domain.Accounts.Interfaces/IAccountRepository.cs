using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xtend.Domain.Accounts.Models;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Interfaces
{
    public interface IAccountRepository
    {
        #region Export History Methods
        //Export History Methods
        int Create(ExportHistory exportHistory);
        #endregion


        #region AccountExport Methods
        //Export History Methods
        List<AccountExport> GetAccounts(int clientId,  decimal balanceThreshold);

        #endregion


    }
}
