using System;

namespace Xtend.Domain.Accounts.DataAccess.DataEntities
{
    internal class InsuranceEntity
    {
        public string PlanName { get; set; }
        public string Policy { get; set; }
        public string GroupNumber { get; set; }


        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? DeletedOn { get; set; }
        public string DeletedBy { get; set; }
        public bool IsDeleted { get; set; }
    }
}