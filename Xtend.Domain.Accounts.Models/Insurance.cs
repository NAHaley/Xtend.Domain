using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class Insurance : Entity
    {
        #region constants

        private const string CREATED_BY = "Insurance V1";

        #endregion

        public Insurance(string planName, string policy, string groupNumber)
        {
            PlanName = planName;
            Policy = policy;
            GroupNumber = groupNumber;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public Insurance()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public string PlanName { get; private set; }
        public string Policy { get; private set; }
        public string GroupNumber { get; private set; }
    }
}