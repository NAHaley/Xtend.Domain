using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class ExportHistory : Entity
    {
        #region constants

        private const string CREATED_BY = "ExportHistory V1";

        #endregion

        public ExportHistory(int clientId, int numberOfAccountsExported, decimal accountBalance, DateTime exportDate)
        {
            ClientId = clientId;
            NumberOfAccountsExported = numberOfAccountsExported;
            AccountBalance = accountBalance;
            ExportDate = exportDate;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public ExportHistory()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public int ClientId { get; private set; }
        public int NumberOfAccountsExported { get; private set; }
        public decimal AccountBalance { get; private set; }
        public DateTime ExportDate { get; private set; }
    }
}