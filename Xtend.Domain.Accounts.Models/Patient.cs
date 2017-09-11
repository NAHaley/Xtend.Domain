using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class Patient : Entity
    {
        #region constants

        private const string CREATED_BY = "Patient V1";

        #endregion

        public Patient(string firstName, string lastName, string middleName,
            string socialSecurityNumber)
        {
            FirstName = firstName;
            LastName = lastName;
            MiddleName = middleName;
            SocialSecurityNumber = socialSecurityNumber;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public Patient()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string MiddleName { get; private set; }
        public string SocialSecurityNumber { get; private set; }
    }
}