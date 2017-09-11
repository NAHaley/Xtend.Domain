using System;

namespace Xtend.Domain.Accounts.DataAccess.DataEntities
{
    internal class PatientEntity
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public string SocialSecurityNumber { get; set; }

        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? DeletedOn { get; set; }
        public string DeletedBy { get; set; }
        public bool IsDeleted { get; set; }
    }
}