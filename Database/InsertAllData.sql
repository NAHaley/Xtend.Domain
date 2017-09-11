USE [Xtend];
GO

INSERT INTO [dbo].[tblClient]
           ([Name]           
		   ,[CreatedOn]
           ,[CreatedBy]
           ,[ModifiedOn]
           ,[ModifiedBy]
           ,[IsDeleted]
           ,[DeletedOn]
           ,[DeletedBy])
     SELECT 'GeneralHospital', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION ALL
	 SELECT 'VeteranHospital', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 ;


INSERT INTO [dbo].[tblFacility]
           ([FacilityName]
           ,[AddressLine1]
           ,[AddressLine2]
           ,[City]
           ,[State]
           ,[Zip]           
		   ,[CreatedOn]
           ,[CreatedBy]
           ,[ModifiedOn]
           ,[ModifiedBy]
           ,[IsDeleted]
           ,[DeletedOn]
           ,[DeletedBy])
     SELECT 'GH1 - Tulsa', '100 Main Street', '', 'Tulsa', 'OK', '74129', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
	 SELECT 'GH2 - Kansas City', '200 Main Street', '', 'Kansas City', 'KS', '66101', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
	 SELECT 'GH3 - Lincoln', '300 Main Street', '', 'Lincoln', 'NE', '68504', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 'VH1 - Oklahoma City', '400 Main Street', '', 'Oklahoma City', 'OK', '73101', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
	 SELECT 'VH2 - Wichita', '500 Main Street', '', 'Wichita', 'KS', '67203', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
	 SELECT 'VH3 - Omaha', '600 Main Street', '', 'Omaha', 'NE', '68105', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL;



INSERT INTO [dbo].[tblInsurance] 
	([PlanName]
	, [Policy]
	, [GroupNumber]          
	,[CreatedOn]
	,[CreatedBy]
	,[ModifiedOn]
	,[ModifiedBy]
	,[IsDeleted]
	,[DeletedOn]
	,[DeletedBy])
	SELECT 'Maximum Health','701-234','900506768', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Minimum Health','801-432','654567895', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'XTreme Health','901-556','897853282', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Frugal Health','522-465','789654258', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Platinum Health','743-758','258963145', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Gold Health','579-265' ,'548635965', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Silver Health','857-256','325698745', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 'Bronze Health','257-369','125875963', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL;




INSERT INTO [dbo].[tblPatient]
           ([FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[SocialSecurityNumber]	
		   ,[CreatedOn]
		   ,[CreatedBy]
		   ,[ModifiedOn]
		   ,[ModifiedBy]
		   ,[IsDeleted]
		   ,[DeletedOn]
		   ,[DeletedBy])

SELECT 'Peggy', 'Crump', 'Lou', '365257896', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Lemony', 'Snicket', 'Jay', '458965875', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Tom', 'Planter', 'Wall', '587425698', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Mary', 'Peoples', 'Over', '758654236', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Jack', 'Art', 'Street', '654892548', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Anne', 'Night', 'Dark', '458965875', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Brad', 'Bomb', 'Yarn', '659852457', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Autumn', 'Green', 'Sue', '125369854', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Style', 'Vintage', 'Marie', '698741269', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Harry', 'Potter', 'Grant', '897562145', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Han', 'Solo', 'Reece', '874589627', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Luke', 'Skywalker', 'Hiram', '624859731', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
UNION
SELECT 'Lucille', 'Ball', 'Gordon', '485796251', CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL;







INSERT INTO [dbo].[tblAccount]
           ([ClientId]
           ,[AccountNumber]
           ,[Balance]
           ,[FacilityId]
           ,[AdmitDate]
           ,[DischargeDate]
           ,[PatientId]
		   ,[CreatedOn]
		   ,[CreatedBy]
		   ,[ModifiedOn]
		   ,[ModifiedBy]
		   ,[IsDeleted]
		   ,[DeletedOn]
		   ,[DeletedBy])     
	 SELECT 1, 10452857, 100, 1, CURRENT_TIMESTAMP - 200, CURRENT_TIMESTAMP - 201, 1, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 1, 25487965, 200, 2, CURRENT_TIMESTAMP - 250, CURRENT_TIMESTAMP - 248, 2, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 1, 58796548, 300, 3, CURRENT_TIMESTAMP - 190, CURRENT_TIMESTAMP - 187, 3, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 58964785, 300, 4, CURRENT_TIMESTAMP - 180, CURRENT_TIMESTAMP - 172, 4, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 98742563, 50, 5, CURRENT_TIMESTAMP - 170, CURRENT_TIMESTAMP - 168, 5, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 67485421, 100, 6, CURRENT_TIMESTAMP - 160, CURRENT_TIMESTAMP - 158, 6, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 15985647, 25, 6, CURRENT_TIMESTAMP - 90, CURRENT_TIMESTAMP - 88, 7, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 1, 89756345, 400, 3, CURRENT_TIMESTAMP - 150, CURRENT_TIMESTAMP - 144, 8, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 48659721, 500, 5, CURRENT_TIMESTAMP - 140, CURRENT_TIMESTAMP - 133, 9, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 35897458, 600, 4, CURRENT_TIMESTAMP - 130, CURRENT_TIMESTAMP - 122, 10, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 2, 59874635, 700, 4, CURRENT_TIMESTAMP - 120, CURRENT_TIMESTAMP - 112, 11, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 1, 25895145, 800, 3, CURRENT_TIMESTAMP - 110, CURRENT_TIMESTAMP - 102, 12, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	 UNION
     SELECT 1, 35715982, 900, 2, CURRENT_TIMESTAMP - 100, CURRENT_TIMESTAMP - 92, 13, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL;



INSERT INTO [dbo].[tblAccountInsurance_Junction]
           ([AccountId]
           ,[InsuranceId]
		   ,[CreatedOn]
		   ,[CreatedBy]
		   ,[ModifiedOn]
		   ,[ModifiedBy]
		   ,[IsDeleted]
		   ,[DeletedOn]
		   ,[DeletedBy])
	SELECT 1, 1, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 2, 2, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 3, 3, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 4, 4, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 5, 5, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 6, 6, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 7, 7, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 8, 8, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 9, 1, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 10, 2, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 11, 3, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 12, 4, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL
	UNION
	SELECT 13, 5, CURRENT_TIMESTAMP, 'Initial Data', CURRENT_TIMESTAMP, 'Initial Data', 0, NULL, NULL;






SELECT
	*
FROM dbo.tblClient c;
SELECT
	*
FROM dbo.tblFacility f;
SELECT
	*
FROM dbo.tblPatient p;
SELECT
	*
FROM dbo.tblAccount a;
SELECT
	*
FROM dbo.tblInsurance i;
SELECT
	*
FROM dbo.tblAccountInsurance_Junction aij;
SELECT
	*
FROM dbo.tblExportHistory eh;



