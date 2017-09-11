using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Xtend.Domain.Accounts.DataAccess.Repositories;
using Xtend.Domain.Accounts.Models;

namespace Xtend.Test.Domain.Accounts
{
    [TestClass]
    public class AccountRepositoryUnitTests
    {
        [TestCategory("UnitTest - AccountRepository - Succeeds")]
        [TestMethod]
        public void Account_Repository_GetAccounts_Hundred_ExpectsSuccess()
        {
            //Arrange
            var target = new AccountRepository();
            //Act
            var accounts = target.GetAccounts(AccountTestBlocks.GetClientId(), AccountTestBlocks.GetBalanceThresholdHundred());
            //Asset 
            Assert.IsTrue(accounts.Count > 0);
        }

        [TestCategory("UnitTest - AccountRepository - Succeeds")]
        [TestMethod]
        public void Account_Repository_GetAccounts_Zero_ExpectsSuccess()
        {
            //Arrange
            var target = new AccountRepository();
            //Act
            var accounts = target.GetAccounts(AccountTestBlocks.GetClientId(), AccountTestBlocks.GetBalanceThresholdZero());
            //Asset 
            Assert.IsTrue(accounts.Count > 0);
        }

    }
}