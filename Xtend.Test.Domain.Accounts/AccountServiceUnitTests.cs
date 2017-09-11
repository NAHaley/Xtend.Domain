using Microsoft.VisualStudio.TestTools.UnitTesting;
using Xtend.Domain.Accounts.DataAccess.Repositories;
using Xtend.Domain.Accounts.Services;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Test.Domain.Accounts
{
    [TestClass]
    public class AccountServiceUnitTests
    {
        [TestCategory("UnitTest - AccountService - Succeeds")]
        [TestMethod]
        public void Account_Service_GetAccounts_Hundred_ExpectsSuccess()
        {
            //Arrange
            var repo = new AccountRepository();
            var target = new AccountService(repo);
            //Act
            var accounts = target.GetAccounts(AccountTestBlocks.GetClientId(), AccountTestBlocks.GetBalanceThresholdHundred());
            //Asset 
            Assert.IsTrue(accounts.Count > 0);
        }

        [TestCategory("UnitTest - AccountService - Succeeds")]
        [TestMethod]
        public void Account_Service_GetAccounts_Zero_ExpectsSuccess()
        {
            //Arrange
            var repo = new AccountRepository();
            var target = new AccountService(repo);
            //Act
            var accounts = target.GetAccounts(AccountTestBlocks.GetClientId(), AccountTestBlocks.GetBalanceThresholdZero());
            //Asset 
            Assert.IsTrue(accounts.Count > 0);
        }
    }
}
