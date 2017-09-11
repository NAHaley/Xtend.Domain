using System;

namespace Xtend.Domain.Shared
{
    public abstract class Entity
    {
        #region constants

        private const string ModifiedByConst = "Domain Services Entity V1.0";

        #endregion

        #region properties

        public int Id { get; private set; }
        public DateTime CreatedOn { get; private set; }
        public string CreatedBy { get; private set; }
        public DateTime ModifiedOn { get; private set; }
        public string ModifiedBy { get; private set; }
        public bool IsDeleted { get; private set; }
        public DateTime? DeletedOn { get; private set; }
        public string DeletedBy { get; private set; }
        protected virtual bool Destroy { get; private set; }
        public virtual bool IsDirty { get; private set; }

        #endregion

        #region constructors

        protected Entity()
        {
        }

        #endregion

        #region methods

        /// <summary>
        /// Returns True or False based on the ID being set to 0.
        /// If ID is set to 0 or DecimalID is set to 0.00, then MarkedForCreation() returns true to signify Creating a new record
        /// If ID is not 0 or DecimalID is not 0, then this is an existing record
        /// </summary>
        /// <returns></returns>
        internal bool MarkedForCreation()
        {
            bool markedForCreation = Id == 0;

            return markedForCreation;
        }

        /// <summary>
        /// Sets the DeletedOn, DeletedBy and IsDeleted properties of the Entity.
        /// Also calls SetDirty() to signify that a change has been made.
        /// </summary>
        /// <param name="deletedBy"></param>
        public virtual void DeleteEntity(string deletedBy)
        {
            IsDeleted = true;
            SetDirty();
            DateTime deletedDate = Helpers.GetDate();
            SetModified(deletedDate, deletedBy);
            SetDeleted(deletedDate, deletedBy, IsDeleted);
        }

        /// <summary>
        /// Sets the IsDeleted property of the Entity to false, thus signifying that the record
        /// is to be treated as if it is Active and not deleted.
        /// Also calls SetDirty() to signify that a change has been made.
        /// </summary>
        /// <param name="unDeletedBy"></param>
        public virtual void UnDeleteEntity(string unDeletedBy)
        {
            IsDeleted = false;
            SetDirty();
            DateTime modifiedDate = Helpers.GetDate();
            DateTime? unDeletedDate = modifiedDate;
            SetModified(modifiedDate, unDeletedBy);
            SetDeleted(unDeletedDate, unDeletedBy, IsDeleted);
        }

        /// <summary>
        /// Sets the Destroy property on the Entity to True.
        /// Sets the entity up for a hard delete.
        /// Also calls SetDirty() to signify that a change has been made.
        /// </summary>
        public virtual void DestroyEntity()
        {
            Destroy = true;
        }

        /// <summary>
        /// Convenience method for a hard delete of this entity.
        /// </summary>
        /// <returns>this.Destroy boolean</returns>
        public bool MarkedForDestruction()
        {
            return Destroy;
        }

        /// <summary>
        /// Sets the IsDirty property of the Entity.
        /// </summary>
        protected void SetDirty()
        {
            IsDirty = true;
        }

        /// <summary>
        /// Sets the Integer Id of the Entity
        /// </summary>
        /// <param name="id"></param>
        protected internal void SetIdentity(int id)
        {
            Id = id;
        }


        /// <summary>
        /// Sets the ModifiedOn and ModifiedBy properties of the Entity.
        /// </summary>
        /// <param name="dateTime"></param>
        /// <param name="modifiedBy"></param>
        protected internal void SetModified(DateTime dateTime, string modifiedBy)
        {
            ModifiedBy = modifiedBy;
            ModifiedOn = dateTime;
        }

        /// <summary>
        /// Sets the CreatedOn and CreatedBy properties of the Entity.
        /// Also does a SetModified.
        /// </summary>
        /// <param name="dateTime"></param>
        /// <param name="createdBy"></param>
        protected internal void SetCreated(DateTime dateTime, string createdBy)
        {
            CreatedBy = createdBy;
            CreatedOn = dateTime;
        }

        /// <summary>
        /// Archive the Entity. Sets the DeletedOn and DeletedBy and IsDeleted properties of the entity. 
        /// (does not delete from the database)
        /// Also does a SetModified
        /// </summary>
        /// <param name="dateTime"></param>
        /// <param name="deletedBy"></param>
        /// <param name="isDeleted"></param>
        protected internal void SetDeleted(DateTime? dateTime, string deletedBy, bool isDeleted)
        {
            DeletedBy = deletedBy;
            DeletedOn = dateTime;
            IsDeleted = isDeleted;
        }

        #endregion
    }
}