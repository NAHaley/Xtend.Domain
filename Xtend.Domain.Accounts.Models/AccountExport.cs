using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class AccountExport : Entity
    {
        #region constants

        private const string CREATED_BY = "AccountExport V1";

        #endregion

        public AccountExport(
            int clientId, int accountNumber, decimal balance,
            int facilityId, DateTime admitDate, DateTime dischargeDate,
            int patientId, string name, string facilityName, 
            string addressLine1, string addressLine2, string city,
            string state, string zip, string firstName,
            string lastName, string middleName, string socialSecurityNumber,
            string planName, string policy, string groupNumber)
        {
            ClientId = clientId;
            AccountNumber = accountNumber;
            Balance = balance;
            FacilityId = facilityId;
            AdmitDate = admitDate;
            DischargeDate = dischargeDate;
            PatientId = patientId;
            FacilityName = facilityName;
            AddressLine1 = addressLine1;
            AddressLine2 = addressLine2;
            City = city;
            State = state;
            Zip = zip;
            FirstName = firstName;
            LastName = lastName;
            MiddleName = middleName;
            SocialSecurityNumber = socialSecurityNumber;
            PlanName = planName;
            Policy = policy;
            GroupNumber = groupNumber;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public AccountExport()
        {
        }


        // Account
        public int ClientId { get; private set; }
        public int AccountNumber { get; private set; }
        public decimal Balance { get; private set; }
        public int FacilityId { get; private set; }
        public DateTime AdmitDate { get; private set; }
        public DateTime? DischargeDate { get; private set; }
        public int PatientId { get; private set; }

        //Facility
        public string FacilityName { get; private set; }
        public string AddressLine1 { get; private set; }
        public string AddressLine2 { get; private set; }
        public string City { get; private set; }
        public string State { get; private set; }
        public string Zip { get; private set; }

        //Patient
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string MiddleName { get; private set; }
        public string SocialSecurityNumber { get; private set; }

        //Insurance
        public string PlanName { get; private set; }
        public string Policy { get; private set; }
        public string GroupNumber { get; private set; }

    }
}