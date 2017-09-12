using System.Collections.Generic;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Domain.Accounts.Interfaces
{
    public interface IExportService 
    {
        ExportHistory Export(List<AccountExport> accountExports);

    }
}
