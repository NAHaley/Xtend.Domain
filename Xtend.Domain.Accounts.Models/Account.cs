using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class Account : Entity
    {
        #region constants

        private const string CREATED_BY = "Account V1";

        #endregion

        public Account(int clientId, int accountNumber, decimal balance,
            int facilityId, DateTime admitDate, DateTime? dischargeDate,
            int patientId)
        {
            ClientId = clientId;
            AccountNumber = accountNumber;
            Balance = balance;
            FacilityId = facilityId;
            AdmitDate = admitDate;
            DischargeDate = dischargeDate;
            PatientId = patientId;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public Account()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public int ClientId { get; private set; }
        public int AccountNumber { get; private set; }
        public decimal Balance { get; private set; }
        public int FacilityId { get; private set; }
        public DateTime AdmitDate { get; private set; }
        public DateTime? DischargeDate { get; private set; }
        public int PatientId { get; private set; }
    }
}