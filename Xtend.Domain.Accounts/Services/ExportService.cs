using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xtend.Domain.Accounts.Interfaces;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Domain.Accounts.Services
{
    public class ExportService : IExportService
    {

        private readonly IExportService _exportService;

        public ExportService(IExportService exportService)
        {
            _exportService = exportService;
        }

        /// <summary>
        /// Export Service - Calls the Export method of the Service passed in
        /// </summary>
        /// <param name="accountExports"></param>
        /// <returns></returns>
        public ExportHistory Export(List<AccountExport> accountExports)
        {

            var exportHistory = _exportService.Export(accountExports);

            return exportHistory;
        }
    }
}
