using System;
using System.Collections.Generic;
using System.Linq;
using Dapper;
using Xtend.Domain.Accounts.Models;
using Xtend.Domain.Accounts.Interfaces;
using Xtend.Domain.Shared;

namespace Xtend.Domain.Accounts.DataAccess.Repositories
{
    public class AccountRepository : IAccountRepository
    {
        public int Create(ExportHistory exportHistory)
        {
            // Add a record to ExportHistory
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get Accounts by Client ID and also by Balance Threshold if it is greater than 0
        /// </summary>
        /// <param name="clientId"></param>
        /// <param name="balanceThreshold"></param>
        /// <returns>List of Accounts for Export</returns>
        public List<AccountExport> GetAccounts(int clientId, decimal balanceThreshold)
        {

            const string selectStatement = @"SELECT a.ClientId, a.AccountNumber, a.Balance
                                    , a.FacilityId, a.AdmitDate, a.DischargeDate
                                    , a.PatientId, f.FacilityName
                                    , f.AddressLine1, f.AddressLine2, f.City
                                    , f.State, f.Zip, p.FirstName
                                    , p.LastName, p.MiddleName, p.SocialSecurityNumber
	                                , aij.AccountId, aij.InsuranceId, i.PlanName
	                                , i.Policy, i.GroupNumber
                        FROM dbo.tblAccount a WITH (NOLOCK)
                        JOIN dbo.tblClient c WITH (NOLOCK) ON a.ClientId = c.Id
                        JOIN dbo.tblFacility f WITH (NOLOCK) ON a.FacilityId = f.Id
                        JOIN dbo.tblPatient p WITH (NOLOCK) ON a.PatientId = p.Id
                        JOIN dbo.tblAccountInsurance_Junction aij ON a.Id = aij.AccountId
                        JOIN dbo.tblInsurance i ON aij.InsuranceId = i.Id";

            object parameters;
            string whereClause;
            if (balanceThreshold > 0)
            {
                // If the balanceThreshold > 0 then get accounts with balances greater than the balanceThreshold
                whereClause = @"WHERE (a.ClientId = @ClientId) AND (a.IsDeleted = @IsDeleted) AND (a.Balance > @BalanceThreshold)";
                parameters = new { ClientId = clientId, IsDeleted = 0, BalanceThreshold = balanceThreshold };
            }
            else
            {
                // Don't consider the Balance
                whereClause = @"WHERE (a.ClientId = @ClientId) AND (a.IsDeleted = @IsDeleted)";
                parameters = new { ClientId = clientId, IsDeleted = 0 };
            }

            const string orderClause = @"Order by a.ClientId, a.FacilityId";

            var sql = $"{selectStatement} {whereClause} {orderClause}";

            List<AccountExport> accounts;
            using (var conn = Helpers.GetConnection())
            {
                conn.Open();
                accounts = conn.Query<AccountExport>(sql, parameters).ToList();
                conn.Close();
                //if (items != null)
                //{
                //    foreach (var item in items)
                //    {
                //        categories.Add(CategoryMapper.MapToDomainEntity(item));
                //    }
                //}
            }
            return accounts;
        }

    }
}
