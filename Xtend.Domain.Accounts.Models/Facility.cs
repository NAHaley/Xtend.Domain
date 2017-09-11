using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class Facility : Entity
    {
        #region constants

        private const string CREATED_BY = "Facility V1";

        #endregion

        public Facility(string facilityName, string addressLine1, string addressLine2,
            string city, string state, string zip)
        {
            FacilityName = FacilityName;
            AddressLine1 = addressLine1;
            AddressLine2 = addressLine2;
            City = city;
            State = state;
            Zip = zip;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public Facility()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public string FacilityName { get; private set; }
        public string AddressLine1 { get; private set; }
        public string AddressLine2 { get; private set; }
        public string City { get; private set; }
        public string State { get; private set; }
        public string Zip { get; private set; }
    }
}