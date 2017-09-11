using System;

namespace Xtend.Domain.Accounts.DataAccess.DataEntities
{
    internal class AccountEntity
    {
        public int ClientId { get; set; }
        public int AccountNumber { get; set; }
        public decimal Balance { get; set; }
        public int FacilityId { get; set; }
        public DateTime AdmitDate { get; set; }
        public DateTime? DischargeDate { get; set; }
        public int PatientId { get; set; }


        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? DeletedOn { get; set; }
        public string DeletedBy { get; set; }
        public bool IsDeleted { get; set; }
    }
}