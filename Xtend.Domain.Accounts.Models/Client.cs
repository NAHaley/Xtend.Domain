using System;
using Xtend.Domain.Shared;


namespace Xtend.Domain.Accounts.Models
{
    public class Client : Entity
    {
        #region constants

        private const string CREATED_BY = "Client V1";

        #endregion

        public Client(string name)
        {
            Name = name;

            var dateTimeNow = Helpers.GetDate();
            SetCreated(dateTimeNow, CREATED_BY);
            SetModified(dateTimeNow, CREATED_BY);
        }

        public Client()
        {
        }

        //public int Id { get; private set; }
        public new int Id => base.Id;

        public string Name { get; private set; }
    }
}