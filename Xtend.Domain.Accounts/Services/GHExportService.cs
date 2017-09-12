using System;
using System.Collections.Generic;
using Xtend.Domain.Accounts.Interfaces;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Domain.Accounts.Services
{
    public class GhExportService : ExportServiceBase, IExportService
    {
        private int ClientId { get; set; }
        private decimal BalanceThreshold { get; set; }

        public GhExportService(int clientId, decimal balanceThreshold)
        {
            ClientId = clientId;
            BalanceThreshold = balanceThreshold;
        }

        public ExportHistory Export(List<AccountExport> accountExports)
        {
            ExportHistory exportHistory = new ExportHistory();
            var accountsToExport = GetAccountsToExport(ClientId, BalanceThreshold);

            // Export Code that is specific to GH goes here
            // Needs Fleshed out a lot

            return exportHistory;

        }
    }
}
