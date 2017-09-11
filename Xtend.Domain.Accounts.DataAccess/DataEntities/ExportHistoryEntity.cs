using System;

namespace Xtend.Domain.Accounts.DataAccess.DataEntities
{
    internal class ExportHistoryEntity
    {
        public int ClientId { get; set; }
        public int NumberOfAccountsExported { get; set; }
        public decimal AccountBalance { get; set; }
        public DateTime ExportDate { get; set; }


        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? DeletedOn { get; set; }
        public string DeletedBy { get; set; }
        public bool IsDeleted { get; set; }
    }
}