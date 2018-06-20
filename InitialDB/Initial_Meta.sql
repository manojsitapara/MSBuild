

USE [MsbuildCXC]
GO
-- cleanup
delete from cxcmapmaster;
delete from CXCMap;
delete from FileLifeCycle;
delete from FileTypeMaster;
delete from LifeCycle;
delete from LifeCycleOverride;
delete from Schedule;


-- Process XOFilter 
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'XOFilter', N'Participant', N'XOFilter');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'ParticipantId', N'ParticipantId');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'TPAParticipantId', N'TPAParticipantId');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'StartDate', N'PlanStartDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'EndDate', N'PlanEndDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'Account', N'AcctType');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'Channel', N'Channel');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'AutoReimbursementInd', N'AutoReimbursementInd');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'SenderId', N'TPAId');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'EIN', N'EIN');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'UserDefined1', N'IdTypeCd');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'UserDefined2', N'FileLoadDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'GracePeriodEndDate', N'GracePeriodEndDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'RunOutDate', N'RunOutEndDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'CarrierId', N'CarrierId');


INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'FirstName', N'FirstName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'LastName', N'LastName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'MiddleName', N'MiddleInitial');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'LastUpdatedDate', N'LastUpdatedDate');

INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'EmployerName', N'Employer');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'GroupId', N'GroupNumber');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'TPACode', N'Directory');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'XOFilter', N'ParticipantPartialId', N'ParticipantPartialId');





-- Claim Gen
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'ClaimGen', N'Claim', N'ClaimGen');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'TPAParticipantId', N'TPAParticipantId');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'PatientLastName', N'PatientLastName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'PatientFirstName', N'PatientFirstName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'PatientMiddleName', N'PatientMiddleName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'PatientSuffix', N'PatientSuffix');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ServiceType', N'ServiceType');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ServiceFrom', N'ServiceDateStart');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ServiceTo', N'ServiceDateEnd');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'TotalPatientLiability', N'TotalPatientLiability');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ReimbursementType', N'ReimbursementType');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ClaimNumber', N'ClaimNumber');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ClaimRecordNum', N'ServiceNumber');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderId', N'ServiceProviderTaxID');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderName', N'ServiceProviderCompName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'Notes', N'ServiceDescription');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'Copay', N'AmountCoPay');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'Deductible', N'AmountDeductible');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'CoIns', N'AmountCoInsurance');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProcedureCode', N'ProcedureCode');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'CrossOverDate', N'ReimbursementDate');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'AmtCharged', N'AmountCharged');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'AmtAllowed', N'AmountAllowed');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'AmtPaid', N'AmountPaid');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderFirstName', N'ServiceProviderFirstName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderLastName', N'ServiceProviderLastName');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderAddress1', N'ServiceProviderAddress1');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderAddress2', N'ServiceProviderAddress2');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderCity', N'ServiceProviderCity');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderState', N'ServiceProviderState');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'ProviderZip', N'ServiceProviderZip');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'Provider', N'ServiceProvider');
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'ClaimGen', N'PayTheProvider', N'PayTheProvider');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','NotCovered','AmountNotCovered');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','OverBeyond','AmountOverAndBeyond');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','Id','CXCId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','Processed','Processed');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','QME','QMEValid');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','QMECode','QMEId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','DisallowedReasonCode','DisallowedReasonCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','CarrierId','CarrierId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','PayorId','ParticipantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','InNetwork','InNetwork');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','Location','Location');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','DependencyCode','DependencyCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','PatientId','PatientId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','PatientSSN','PatientSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ClaimGen','EmployerName','EmployerName');


-- Prepare To Reprocess Claims
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrepToReproc', 'PrepToReproc', 'ABCBS', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrepToReproc','PrepToReproc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrepToReproc', 'PrepToReproc', 'Prep_To_Reprocess', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'TASC', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PrepToReproc', N'PrepToReproc', N'Y', N'Y')




--Insert Jobs
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('CXC_JobsIns', 'CXC_JobsIns', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('CXC_JobsIns','CXC_JobsIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('CXC_JobsIns', 'CXC_JobsIns', 'INSERT_JOB', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, null, null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'CXC_JobsIns', N'CXC_JobsIns', N'Y', N'Y')









-- Generate Provider Report

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'ProviderReport', N'Claim', N'ProviderReport');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'ProviderId','ProviderID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'TaxId','TaxID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'NPI','NPI');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'FirstName','FirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'LastName','LastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'Zip', 'Zip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'ContactName', 'ContactName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'ContactNumber', 'ContactNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'ContactEmailId', 'ContactEmailId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'FaxNumber', 'FaxNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'Status','Status');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ProviderReport', 'LastUpdatedDate','LastUpdatedDate');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('ProviderReportGen', 'ProviderReportGen', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('ProviderReportGen','ProviderReportGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

	
INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('ProviderReportGen', 'ProviderReportGen', 'GENERATE_PROVIDERREPORT', 1, NULL, 'staging\cxc\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'ProviderReport.xml', 'GDI', null, 'ProviderReport');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('ProviderReportGen', 'ProviderReportGen', 'PUSH', 2, 'staging\cxc\out\reports', 'ftp\cxc\xo\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'Provider_Report_*.csv', null, 'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('ProviderReportGen', 'ProviderReportGen', 'ARCHIVE', 3, 'staging\cxc\out\reports', 'archive\cxc\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PROVIDER_REPORT_*.csv', null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('ProviderReportGen','ProviderReportGen','Y','Y');



--Check Fax Status

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('FaxCheck', 'FaxCheck', 'P2P', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('FaxCheck','FaxCheck',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('FaxCheck', 'FaxCheck', 'CHECK_FAX', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, null, null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('FaxCheck','FaxCheck','Y','Y');





-- Processed Flags (to be added only for Reimbursement apps and not for Substantiation related apps)
insert into Flag values('Y', 'Complete', 'CXC', 'Claim was substantiated and sent to the TPA', 'Claim');
insert into Flag values('C', 'Cancelled', 'CXC', 'Claim was canceled due to aggregation', 'Claim');

insert into Flag values('NOHIST', 'Manual', 'CXC', 'Claim history is missing for an adjustment', 'Claim');
insert into Flag values('NOPART', 'Manual', 'CXC', 'Participant SSN is missing in Claim', 'Claim');
insert into Flag values('INVGRP','Manual','CXC','Group is missing in filter file', 'Claim');

insert into Flag values('NEG', 'Manual', 'CXC', 'Claim amount is negative and there is no matching New or Adjustment Claim', 'Claim');
insert into Flag values('NOTCOV', 'Manual', 'CXC', 'Dependant is not covered', 'Claim');

insert into Flag values('INVPART', 'Manual', 'CXC', 'Employee not in Eligiblity filter', 'Claim');
insert into Flag values('INVTPAP', 'Filtered', 'CXC', 'TPA Participant ID is missing in filter file', 'Claim');
insert into Flag values('SDF', 'Filtered', 'CXC', 'Service date of Claim is outside of plan year', 'Claim');
insert into Flag values('NOEIN', 'Filtered', 'CXC', 'Employer ID is missing', 'Claim');
insert into Flag values('NOAUTO', 'Filtered', 'CXC', 'Participant has not elected Crossover', 'Claim');
insert into Flag values('NOFSA', 'Filtered', 'CXC', 'Denied Claim expense is not covered by FSA plan', 'Claim');
insert into Flag values('OTHERPR', 'Filtered', 'CXC', 'Claim has an amount in the Other Patient Responsibility field', 'Claim');
insert into Flag values('REVDEN', 'Filtered', 'CXC', 'Claim is a Reversal of a Denied Claim', 'Claim');
insert into Flag values('ZEROAMT', 'Filtered', 'CXC', 'Copay, Deductible and Coins are all zero', 'Claim');
insert into Flag values('DUP', 'Filtered', 'CXC', 'Claim is a duplicate of another Claim', 'Claim');
insert into Flag values('EXPNOTCOV', 'Filtered', 'CXC', 'Expense not covered by Plan', 'Claim');

insert into Flag values('TBD', 'Pending', 'CXC', 'Claim is being processed', 'Claim');
insert into Flag values('MERGED', 'Filtered', 'CXC', 'Multiple claim rows in carrier feed have been merged into one consolidated Claim', 'Claim');
insert into Flag values('HANDLED', 'Filtered', 'CXC', 'TPA has already handled this Claim', 'Claim');






-- P2P Status Flags
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('SUCCESS','Complete','CXC',NULL,'Fax');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PENDING','InProcess','CXC',NULL,'Fax');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('ERROR','Manual','CXC',NULL,'Fax');

insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('INVOICED','Complete','CXC',NULL,'Invoice');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PENDING','InProcess','CXC',NULL,'Invoice');

insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PAYMENTCOLLECTED','Complete','CXC',NULL,'Payment');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PROVIDERNOTIFIED','Complete','CXC',NULL,'Payment');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PENDING','InProcess','CXC',NULL,'Payment');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('RECONCILED','Complete','CXC',NULL,'Payment');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('EXPIRED','Manual','CXC',NULL,'Payment');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('CANCELED','Manual','CXC',NULL,'Payment');

insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PENDING','InProcess','CXC',NULL,'Provider');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('DUP','Filtered','CXC',NULL,'Provider');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('VALIDATED','Complete','CXC',NULL,'Provider');


insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('CARDISSUED','Complete','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('CANBEINVOICED','InProcess','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('INVOICEGENERATED','InProcess','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('INVPROV','Manual','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('NOPROVFAX','Manual','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('VALPROV','InProcess','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('SENTTOTPA','InProcess','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('TPAAPPROVED','InProcess','CXC',NULL,'Claim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('POSTED','Complete','CXC',NULL,'Claim');


insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('NOMATCH','Manual','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('DUP','Filtered','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('ZEROAMT','Filtered','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('PENDING','InProcess','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('CLAIMNOTREADY','Manual','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('POSTED','Complete','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('RECONCILED','Complete','CXC',NULL,'TPAApprovedClaim');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('VALIDATED','InProcess','CXC',NULL,'TPAApprovedClaim');




USE [MsbuildCXC]
GO


	
-- cleanup
--delete from CXCMapMaster where MapId like 'GDI%';
--delete from CXCMap where MapId like 'GDI%';
--delete from FileLifeCycle where FileTypeId like 'GDI%';
--delete from FileTypeMaster where FileTypeId like 'GDI%';
--delete from LifeCycle where CycleId like 'GDI%';
--delete from Schedule where ScheduleId like 'GDI%';
--delete from Flag where TPAId = 'GDI';




--GDI Client Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('GDICLIENT','Client','GDIClient');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','StartDate','Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','RunOutDate','Pay_Claims_Thru_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','Name','Company');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','EIN','Ext_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','CarrierId','Carrier_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','MedEmployeeOnly','Med_EE_Only');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','PayTheProvider','Med_Pay_To_Provider');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','MedDeductible','Med_Ded');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','MedCopay','Med_Copay');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','MedCoins','Med_Coins');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','PharmaEmployeeOnly','RX_EE_Only');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','PharmaDeductible','RX_Ded');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','PharmaCopay','RX_Copay');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','PharmaCoins','RX_Coins');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','Dental','Dental');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','EmployerCode','LH1_Employer_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDICLIENT','Payee','Payee');


INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'GDI', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'PULL', 1, N'ftp\GDI\tocxc\xofilter', N'staging\GDI\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_LH1_Control*.csv', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'CLIENT_FILTER', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'INSERT_CLIENT', 3, N'staging\GDI\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'GDIControl_schema.xml', 'GDI', null, 'GDIClient');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'ARCHIVE', 4, N'staging\GDI\in\xofilter', N'archive\GDI\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_LH1_Control*.csv', null, 'GDI', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_ClientIns', N'GDI_ClientIns', N'Y', N'Y');






--GDI Claims Eligibility Filter Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('GDIEligibilityFilter','Eligibility','GDIEligibilityFilter');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','EmployerCode','EmployerCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','EmployerName','EmployerName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','SubscriberFirstName','EmployeeFirstName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','SubscriberLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','SubscriberSSN','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','CoverageType','EmployeeCoverageType');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','MemberFirstName','DependantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','MemberLastName' ,'DependantLastName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','UserDefined1','DependantName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIEligibilityFilter','MemberSSN','DependantSSN');



INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'GDI', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'PULL', 1, N'ftp\GDI\tocxc\xofilter', N'staging\GDI\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_EligibilityFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'ELIGIBILITY_FILTER', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'INSERT_ELIGIBILITY_FILTER', 3, N'staging\GDI\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'EligibilityFilter_schema.xml', 'GDI', null, 'GDIEligibilityFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'ARCHIVE', 4, N'staging\GDI\in\xofilter', N'archive\GDI\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_EligibilityFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_EligibilityFilterIns', N'GDI_EligibilityFilterIns', N'Y', N'Y');








--GDI Claims NonParticipant Filter Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('GDINonParticipantFilter','Eligibility','GDINonParticipantFilter');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','CarrierId','Carrier');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','Channel','Channel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','EIN','ExternalID');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','SubscriberSSN','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','SubscriberFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','SubscriberLastName','EmployeeLastName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','MemberSSN','DependantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','MemberFirstName','DependantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','MemberLastName' ,'DependantLastName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','CoverageType','ExclusionFlag');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDINonParticipantFilter','EmployerName','EmployerName');



INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'GDI', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'PULL', 1, N'ftp\GDI\tocxc\xofilter', N'staging\GDI\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_NonParticipantFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'NONPARTICIPANT_FILTER', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'INSERT_NONPARTICIPANT_FILTER', 3, N'staging\GDI\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'NonParticipantFilter_schema.xml', 'GDI', null, 'GDINonParticipantFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'ARCHIVE', 4, N'staging\GDI\in\xofilter', N'archive\GDI\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_NonParticipantFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_NonParticipantFilterIns', N'GDI_NonParticipantFilterIns', N'Y', N'Y');









--GDI Claims Regeneration Filter Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('GDIRegenFilter','Eligibility','GDIRegenFilter');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','CarrierId','Carrier');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','Channel','Channel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','EIN','ExternalID');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','SubscriberSSN','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','SubscriberFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','SubscriberLastName','EmployeeLastName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','MemberSSN','DependantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','MemberFirstName','DependantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','MemberLastName' ,'DependantLastName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIRegenFilter','CoverageType','CoverageType');



INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'GDI', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'TRUNCATE', 1, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'REGENERATION_FILTER', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'PULL', 2, N'ftp\GDI\tocxc\xofilter', N'staging\GDI\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_RegenerationFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'INSERT_REGENERATION_FILTER', 3, N'staging\GDI\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'RegenerationFilter_schema.xml', 'GDI', null, 'GDIRegenFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'ARCHIVE', 4, N'staging\GDI\in\xofilter', N'archive\GDI\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_RegenerationFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_RegenFilterIns', N'GDI_RegenFilterIns', N'Y', N'Y');








----GDI Claims Reset Filter Insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('GDIResetFilter','Eligibility','GDIResetFilter');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','EIN','ExternalID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','SubscriberSSN','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','SubscriberFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','SubscriberLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','MemberSSN','DependantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','MemberFirstName','DependantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','MemberLastName' ,'DependantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIResetFilter','CoverageType','CoverageType');


INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'GDI', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'PULL', 1, N'ftp\GDI\tocxc\xofilter', N'staging\GDI\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_ResetFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'RESET_FILTER', null, 'GDI', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'INSERT_RESET_FILTER', 3, N'staging\GDI\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'ResetFilter_schema.xml', 'GDI', null, 'GDIResetFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'ARCHIVE', 4, N'staging\GDI\in\xofilter', N'archive\GDI\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GDI_ResetFilter*.csv', null, 'GDI', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_ResetFilterIns', N'GDI_ResetFilterIns', N'Y', N'Y');







-- GDI Post Claim Insert Process

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ClaimProc','GDI_ClaimProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'Update_PreValidateClaim', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'Validate_Claim', 2, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'Update_HPPharmaClaim', 3, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'HPHC', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'UPDATE_POSTVALIDATE', 4, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'Aetna', null, 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimProc', 'GDI_ClaimProc', 'CHECK_EXPENSECOVERAGE', 5, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI',null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ClaimProc','GDI_ClaimProc','Y','Y');




-- GDI Aggregate Claims

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ClaimAgg', 'GDI_ClaimAgg', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ClaimAgg','GDI_ClaimAgg',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ClaimAgg', 'GDI_ClaimAgg', 'Agg_Claim', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ClaimAgg', 'GDI_ClaimAgg', 'UpdateClaim_PostAgg', 2, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ClaimAgg','GDI_ClaimAgg','Y','Y');


--



-- GDI Claim Gen


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ClaimGen','GDI_ClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');



INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 1, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Anthem', null, null, '00B921');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 2, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Anthem', null, null, '364092');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN], [Program]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 3, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Tufts', null, null, '17314000','PROVNODISC');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 4, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Tufts', null, null, '17314000');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 5, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'PatAdv', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 6, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'AFI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'GEN_LH1_CLAIM', 7, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'Push_Claim', 8, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\LH1', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_LH1_*.xml', null,'GDI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimGen', 'GDI_ClaimGen', 'CLAIMARCH', 9, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_LH1_*.xml', null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ClaimGen','GDI_ClaimGen','Y','Y');




-- GDI Manual Claim Gen

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'GDIManualClaimGen', N'Claim', N'GDIManualClaimGen');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'Processed','Reason');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'PayorId','EmployeeSSN');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'PatientFirstName', 'ClaimantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'PatientLastName', 'ClaimantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'PatientSSN','ClaimantSSN');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'EIN','ExtID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'EmployerNameInControl','CompanyName');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'PlanId','PPDBAndCodes');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ClaimRecordNum','ServiceLineNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'AdjustmentNumber','AdjustmentNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ClaimType','ClaimType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'OriginatingClaimNumber','OriginatingClaimNumber');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ServiceFromStr', 'BeginDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ServiceToStr', 'EndDate');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'TotalPatientLiability', 'ClaimAmount');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'Copay', 'AmountCoPay');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'Deductible', 'AmountDeductible');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'Coins', 'AmountCoInsurance');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ProviderName', 'ProviderOrPharmacyName'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'AdjustmentType', 'AdjustmentType'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'CrossoverDateStr', 'FileDate'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'FullClaimNumber','FullClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'XOFileName', 'FileName'); 

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ReimbursementType','ReimbursementType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'ServiceType','ServiceType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'CarrierId','Carrier');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualClaimGen', 'Id', 'CXCId'); 




INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ManualClaimGen', 'GDI_ManualClaimGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ManualClaimGen','GDI_ManualClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_ManualClaimGen', 'GDI_ManualClaimGen', 'GEN_MANUALCLAIM', 1, NULL, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIManualClaim_schema.xml', 'GDI', null, 'GDIManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_ManualClaimGen', 'GDI_ManualClaimGen', 'Push_Claim', 2, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_MANUAL_*.csv', null,'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ManualClaimGen', 'GDI_ManualClaimGen', 'CLAIMARCH', 3, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_MANUAL_*.csv', null, 'GDI', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ManualClaimGen','GDI_ManualClaimGen','Y','Y');







--GDI Manual Patient Gen
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'GDIManualPatientGen', N'Claim', N'GDIManualPatientGen');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'Processed','Reason');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'PayorId','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'PatientFirstName', 'ClaimantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'PatientLastName', 'ClaimantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'PatientSSN','ClaimantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'EIN','ExtID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'EmployerNameInControl','CompanyName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIManualPatientGen', 'CarrierId','Carrier');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ManualPatientGen', 'GDI_ManualPatientGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ManualPatientGen','GDI_ManualPatientGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_ManualPatientGen', 'GDI_ManualPatientGen', 'GEN_MANUALPATIENT', 1, NULL, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIManualPatient_schema.xml', 'GDI', null, 'GDIManualPatientGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_ManualPatientGen', 'GDI_ManualPatientGen', 'Push_Claim', 2, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_MANUAL_PATIENT_*.csv', null,'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ManualPatientGen', 'GDI_ManualPatientGen', 'CLAIMARCH', 3, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_MANUAL_PATIENT_*.csv', null, 'GDI', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ManualPatientGen','GDI_ManualPatientGen','Y','Y');




-- Aggregated Claims Report Gen

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'GDIAggReportGen', N'Claim', N'GDIAggReportGen');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ServiceRecordNum','UniqueID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'TPAParticipantId','ParticipantID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'PayorId','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'PatientFirstName', 'PatientFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'PatientLastName', 'PatientLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'PatientSSN','PatientSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'EmployerName','Employer');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'CrossoverDateStr', 'CrossoverDate'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ClaimRecordNum','ClaimSeqNum');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ServiceFromStr', 'ServiceDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ServiceType','Channel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'ReimbursementType','Reimb');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'Deductible', 'Ded');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'Copay', 'Copay');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'CoIns', 'Coins');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'NotCovered', 'NotCov');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'OverBeyond', 'OverAndBeyond');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'TotalPatientLiability', 'PatientLiability');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'Processed','StatusFlag');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'Id', 'CXCID'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'Provider', 'Provider'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'AmtCharged', 'AmountCharged'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'XOFileName', 'SourceFileName'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'CarrierId', 'Carrier'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'AdjClaimNumber', 'AlternateClaimNumber'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('GDIAggReportGen', 'AdjustmentType', 'AdjustmentType'); 





INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_AggReportGen', 'GDI_AggReportGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_AggReportGen','GDI_AggReportGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_AggReportGen', 'GDI_AggReportGen', 'GEN_AGGREPORT', 1, NULL, 'staging\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIAggClaimsReport_schema.xml', 'GDI', 'HPHC', 'GDIAggReportGen');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_AggReportGen', 'GDI_AggReportGen', 'Push_Claim', 2, 'staging\GDI\out\reports', 'ftp\GDI\fromcxc\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_AGGREPORT_*.csv', null,'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_AggReportGen', 'GDI_AggReportGen', 'CLAIMARCH', 3, 'staging\GDI\out\reports', 'archive\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_AGGREPORT_*.csv', null, 'GDI', null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_AggReportGen','GDI_AggReportGen','Y','Y');





-- GDI Audit
INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_Audit', N'GDI_Audit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_Audit', N'GDI_Audit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES (N'GDI_Audit', N'GDI_Audit', N'CXCAUDIT', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'GDI', null, null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_Audit', N'GDI_Audit', N'Y', N'Y')










----GDI PrepareForClaimReProc

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_PrepareForClaimReProc', 'GDI_PrepareForClaimReProc', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_PrepareForClaimReProc','GDI_PrepareForClaimReProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


 INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_PrepareForClaimReProc', 'GDI_PrepareForClaimReProc', 'PREPARE_FOR_CLAIMREPROC', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_PrepareForClaimReProc','GDI_PrepareForClaimReProc','Y','Y');




-- GDI Claim Gen for Reprocess

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_RClaimGen','GDI_RClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');



INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 1, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'Anthem', null, null, '00B921');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 2, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'Anthem', null, null, '364092');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN], [Program]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 3, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'Tufts', null, null, '17314000','PROVNODISC');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 4, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'Tufts', null, null, '17314000');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 5, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'PatAdv', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 6, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', 'AFI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'GEN_LH1_CLAIM_REPROCESS', 7, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'Push_Claim', 8, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\LH1', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_LH1_*.xml', null,'GDI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_RClaimGen', 'GDI_RClaimGen', 'CLAIMARCH', 9, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_LH1_*.xml', null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_RClaimGen','GDI_RClaimGen','Y','Y');




-- GDI Manual Claim Gen for Reprocess

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_RManualClaimGen', 'GDI_RManualClaimGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_RManualClaimGen','GDI_RManualClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])   
VALUES ('GDI_RManualClaimGen', 'GDI_RManualClaimGen', 'GEN_MANUALCLAIM_REPROCESS', 1, NULL, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIManualClaim_schema.xml', 'GDI', null, 'GDIManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_RManualClaimGen', 'GDI_RManualClaimGen', 'Push_Claim', 2, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_MANUAL_*.csv', null,'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_RManualClaimGen', 'GDI_RManualClaimGen', 'CLAIMARCH', 3, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_MANUAL_*.csv', null, 'GDI', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_RManualClaimGen','GDI_RManualClaimGen','Y','Y');






--GDI Manual Patient Gen for Reprocess

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_RManualPatientGen', 'GDI_RManualPatientGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_RManualPatientGen','GDI_RManualPatientGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])   
VALUES ('GDI_RManualPatientGen', 'GDI_RManualPatientGen', 'GEN_MANUALPATIENT_REPROCESS', 1, NULL, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIManualPatient_schema.xml', 'GDI', null, 'GDIManualPatientGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_RManualPatientGen', 'GDI_RManualPatientGen', 'Push_Claim', 2, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_MANUAL_PATIENT_*.csv', null,'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('GDI_RManualPatientGen', 'GDI_RManualPatientGen', 'CLAIMARCH', 3, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_MANUAL_PATIENT_*.csv', null, 'GDI', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_RManualPatientGen','GDI_RManualPatientGen','Y','Y');





-- Aggregated Claims Report Gen for Reprocess

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_RAggReportGen', 'GDI_RAggReportGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_RAggReportGen','GDI_RAggReportGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_RAggReportGen', 'GDI_RAggReportGen', 'GEN_AGGREPORT_REPROCESS', 1, NULL, 'staging\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'GDIAggClaimsReport_schema.xml', 'GDI', 'HPHC', 'GDIAggReportGen');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_RAggReportGen', 'GDI_RAggReportGen', 'Push_Claim', 2, 'staging\GDI\out\reports', 'ftp\GDI\fromcxc\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_AGGREPORT_*.csv', null,'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_RAggReportGen', 'GDI_RAggReportGen', 'CLAIMARCH', 3, 'staging\GDI\out\reports', 'archive\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REPROCESS_AGGREPORT_*.csv', null, 'GDI', null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_RAggReportGen','GDI_RAggReportGen','Y','Y');




-- CXC Audit For Reprocess
INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_RAudit', N'GDI_RAudit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_RAudit', N'GDI_RAudit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES (N'GDI_RAudit', N'GDI_RAudit', N'CXCAUDIT_REPROCESS', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'GDI', null, null, null);


INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_RAudit', N'GDI_RAudit', N'Y', N'Y')
















--Prepare LH1 claims for Re-Gen

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_PrepareClaimForReGen', 'GDI_PrepareClaimForReGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_PrepareClaimForReGen','GDI_PrepareClaimForReGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_PrepareClaimForReGen', 'GDI_PrepareClaimForReGen', 'GEN_PREPARE_CLAIM_FOR_REGEN', 1, null, null, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_PrepareClaimForReGen','GDI_PrepareClaimForReGen','Y','Y');




--Claim Gen for LH1 Claims Re-generation


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ClaimReGen','GDI_ClaimReGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 1, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Anthem', null, null, '00B921');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 2, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Anthem', null, null, '364092');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN], [Program]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 3, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Tufts', null, null, '17314000','PROVNODISC');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 4, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Tufts', null, null, '17314000');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 5, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'PatAdv', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 6, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'AFI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'GEN_LH1_CLAIM_REGEN', 7, null, 'staging\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'Push_Claim', 8, 'staging\GDI\out\claims', 'ftp\GDI\fromcxc\LH1', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REGEN_LH1_*.xml', null,'GDI', null, null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_ClaimReGen', 'GDI_ClaimReGen', 'CLAIMARCH', 9, 'staging\GDI\out\claims', 'archive\GDI\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_REGEN_LH1_*.xml', null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ClaimReGen','GDI_ClaimReGen','Y','Y');





-- CXC Audit For Regen
INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'GDI_AuditForRegen', N'GDI_AuditForRegen', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'GDI_AuditForRegen', N'GDI_AuditForRegen', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES (N'GDI_AuditForRegen', N'GDI_AuditForRegen', N'CXCAUDIT_REGEN', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'GDI', null, null, null);


INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'GDI_AuditForRegen', N'GDI_AuditForRegen', N'Y', N'Y')












--Aetna Weekly Std Medical Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('AetnaWeeklyStdMedicalClaim','Claim','AetnaWeeklyStdMedicalClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','AdjClaimNumber','OriginalClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','AdjustmentType','AdjustmentIndicator');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','AmtAllowed','CoveredAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','AmtCharged','GrossBilledAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','AmtPaid','TotalPaidAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ClaimNumber','SourceClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ClaimRecordNum','ExpenseLineNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','CoIns','CoinsuranceAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','Copay','CopayAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','Deductible','DeductibleAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','DependencyCode','MembersRelationshiptoEmployee');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','EIN','HierarchyLevel3');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','Location','PlaceofService');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','PatientFirstName','PatientFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','PatientLastName','PatientLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','PatientId','PatientAccountNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','PatientDOB','MembersDOB');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','PayorId','EmployeesSSNNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProcedureCode','CPT4ProcedureCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderAddress1', 'PaytoProviderAddress');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderAddress2', 'PaytoProviderAddress2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderCity', 'PaytoProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderId', 'ServicingProviderTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderName','BillingProviderName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderNum','ServicingProviderNPI');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderState','PaytoProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ProviderZip','PaytoProviderZip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ReimbursementDate','DateProcessed');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','RenderingProviderFirstName','ServicingProviderFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','RenderingProviderLastName','ServicingProviderLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ServiceFrom', 'DateServiceStarted');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','ServiceTo', 'DateServiceStopped');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','SubscriberId', 'NonEESSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined1', 'ClaimCategory');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined2','ServicingProviderPIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined3','ServicingProviderType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined4','BenefitIdentificationCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined5','HierarchyLevel5');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined8','HierarchyLevel6');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdMedicalClaim','UserDefined9','FSAEligibleNotCoveredAmount');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIAetnaWeeklyStdMedical_ClaimIns', 'GDIAetnaWeeklyStdMedical_ClaimIns', 'Aetna', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIAetnaWeeklyStdMedical_ClaimIns','GDIAetnaWeeklyStdMedical_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAetnaWeeklyStdMedical_ClaimIns', 'GDIAetnaWeeklyStdMedical_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Aetna', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Aetna_Med_*.txt', null, 'GDI', 'Aetna', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDIAetnaWeeklyStdMedical_ClaimIns', 'GDIAetnaWeeklyStdMedical_ClaimIns', 'INSERT_STD_MEDICAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'AetnaWeekly_Std_Medical_schema.xml', 'GDI', 'Aetna', 'AetnaWeeklyStdMedicalClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAetnaWeeklyStdMedical_ClaimIns', 'GDIAetnaWeeklyStdMedical_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Aetna_Med_*.txt', null, 'GDI', 'Aetna', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIAetnaWeeklyStdMedical_ClaimIns','GDIAetnaWeeklyStdMedical_ClaimIns','Y','Y');






--Aetna weekly Std Pharma  Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('AetnaWeeklyStdPharmaClaim','Claim','AetnaWeeklyStdPharmaClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','AdjClaimNumber','ClaimReferenceNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','AdjustmentType','AdjustmentInd');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','AmtPaid','PaidAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ClaimNumber','RXClaimId');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ClaimRecordNum','NewOrRefillCount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','DependencyCode','MembersRelationshiptoEmployee');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','EIN','HierarchyLevel3');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','PatientFirstName','PatientFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','PatientDOB','MembersDOB');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','PatientLastName','PatientLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','PayorId','EmployeesSSNNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ProviderId','PharmacyId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ProviderName','PharmacyName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ProviderZip','PharmacyZipCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','ServiceFrom','DispenseDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','SubscriberId','NonSSNEmployeeId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined1','PrescriptionNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined2','NewOrRefillCount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined3','Deductible');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined4','AHFPaidAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined5','HierarchyLevel5');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined8','HierarchyLevel6');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AetnaWeeklyStdPharmaClaim','UserDefined9','MemberOutofPocketAmt');

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIAetnaWeeklyStdPharma_ClaimIns', 'GDIAetnaWeeklyStdPharma_ClaimIns', 'Aetna', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIAetnaWeeklyStdPharma_ClaimIns','GDIAetnaWeeklyStdPharma_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAetnaWeeklyStdPharma_ClaimIns', 'GDIAetnaWeeklyStdPharma_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Aetna', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Aetna_Rx_*.txt', null, 'GDI', 'Aetna', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDIAetnaWeeklyStdPharma_ClaimIns', 'GDIAetnaWeeklyStdPharma_ClaimIns', 'INSERT_STD_PHARMA_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'AetnaWeekly_Std_Pharma_schema.xml', 'GDI', 'Aetna', 'AetnaWeeklyStdPharmaClaim', 'P');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAetnaWeeklyStdPharma_ClaimIns', 'GDIAetnaWeeklyStdPharma_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Aetna_Rx_*.txt', null, 'GDI', 'Aetna', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIAetnaWeeklyStdPharma_ClaimIns','GDIAetnaWeeklyStdPharma_ClaimIns','Y','Y');



-- AFI Eligible Expenses
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','ADJ', 'Other Eligible Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate) 
values('GDI','AFI','MC','0','DEN', 'Dental Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','DNP', 'Dental Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','DPX', 'Dental Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','LTP', 'Long Term Care Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','LTX', 'Long Term Care Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MBX', 'Medicare Part B', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MCX', 'Supplemental Health Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MDX', 'Supplemental RX Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MED', 'Medical Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MPB', 'Medicare Part B', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MPC', 'Supplemental Health Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','MPD', 'Supplemental RX Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','OEP', 'Other Employer Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','OMP', 'Other Medicare Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','PRE', 'Other Non-Employer Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','RX',  'Prescription Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','VIP', 'Vision Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','VIS', 'Vision Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','MC','0','VPX', 'Vision Premiums', 'EligibleExpense', '20141007');



--AFI Medicare Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('AFIMedicareClaim','Claim','AFIMedicareClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','PayorId','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','PatientFirstName','ClaimantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','PatientLastName','ClaimantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','PatientSSN','ClaimantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','DependencyCode','RelCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','EIN','ExtId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','UserDefined1','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','ServiceFrom','ServiceBeginDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','ServiceTo','ServiceEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','Deductible','ClaimAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('AFIMedicareClaim','PlanId','PlanCode');



INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIAFIMedicare_ClaimIns', 'GDIAFIMedicare_ClaimIns', 'AFI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIAFIMedicare_ClaimIns','GDIAFIMedicare_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAFIMedicare_ClaimIns', 'GDIAFIMedicare_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\AFI', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'AFI_Claims*.csv', null, 'GDI', 'AFI', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDIAFIMedicare_ClaimIns', 'GDIAFIMedicare_ClaimIns', 'INSERT_MEDICARE_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'AFI_schema.xml', 'GDI', 'AFI', 'AFIMedicareClaim', 'MC');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAFIMedicare_ClaimIns', 'GDIAFIMedicare_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'AFI_Claims*.csv', null, 'GDI', 'AFI', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIAFIMedicare_ClaimIns','GDIAFIMedicare_ClaimIns','Y','Y');



-- AFI Eligible Expenses

insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','ADJ', 'Other Eligible Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate) 
values('GDI','AFI','H','0','DEN', 'Dental Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','DNP', 'Dental Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','DPX', 'Dental Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','LTP', 'Long Term Care premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','LTX', 'Long Term Care premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MBX', 'Medicare Part B', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MCX', 'Supplemental Health Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MDX', 'Supplemental RX Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MED', 'Medical Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MPB', 'Medicare Part B', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MPC', 'Supplemental Health Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','MPD', 'Supplemental RX Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','OEP', 'Other Employer Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','OMP', 'Other Medicare Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','PRE', 'Other Non-Employer Premium', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','RX',  'Prescription Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','VIP', 'Vision Premiums', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','VIS', 'Vision Expenses', 'EligibleExpense', '20141007');
insert into Eligibility (TPAId,CarrierId,Channel,IsStatic, PlanId, ExpenseType,FilterType, LastUpdatedDate)
values('GDI','AFI','H','0','VPX', 'Vision Premiums', 'EligibleExpense', '20141007');






-- GDI Anthem Claim Reset
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIAnthem_ClaimReset', 'GDIAnthem_ClaimReset', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIAnthem_ClaimReset','GDIAnthem_ClaimReset',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAnthem_ClaimReset', 'GDIAnthem_ClaimReset', 'PULL', 1, 'ftp\GDI\Anthem', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'LH1*Errors*.csv', null, 'GDI', 'Anthem', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType], [EIN]) 
VALUES ('GDIAnthem_ClaimReset', 'GDIAnthem_ClaimReset', 'RESET_PROCESSEDCLAIM', 2, 'staging\GDI\in\claims', null, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'LH1ErrorReport_schema.xml', 'GDI', 'Anthem', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAnthem_ClaimReset', 'GDIAnthem_ClaimReset', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'LH1*Errors*.csv', null, 'GDI', 'Anthem', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIAnthem_ClaimReset','GDIAnthem_ClaimReset','Y','Y');




--Anthem Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('ANTHEMCLAIM','Claim','AnthemClaim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','SubscriberId','SUBSCRIBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','PayorId','SUBSCRIBER_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','EmployeeFirstName','SUB_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','EmployeeLastName','SUB_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','PatientId','MEMBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','PatientFirstName','MEMBER_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','PatientLastName','MEMBER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','PatientSSN','MEMBER_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','DependencyCode','RELATIONSHIP_TO_SUB_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','Notes','RELATIONSHIP_TO_SUB_DESC');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','EIN','EXTERNAL_ACCOUNT_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','LOB','SUBGRP_NBR');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ClaimNumber','CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ServiceFrom','SERVICE_BEGIN_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ServiceTo','SERVICE_END_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','CoIns','COINSRN_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','Copay','CPAY_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','Deductible','DDCTBL_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ReimbursementDate','PAID_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','InNetwork','NETWORK_PROVIDER_IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ServiceTypeCode','RX_IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','AdjustmentType','ADJUSTMENT_IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderFirstName','PROVIDER_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderLastName','PROVIDER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','Provider','FACILITY_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderId', 'PROVIDER_TAX_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderAddress1', 'BILL_PROVIDER_ADRS');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderCity', 'BILL_PROVIDER_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderState', 'BILL_PROVIDER_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','ProviderZip', 'BILL_PROVIDER_ZIP');


insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','UserDefined1', 'REND_PROVIDER_ADRS');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','UserDefined2', 'REND_PROVIDER_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','UserDefined3', 'REND_PROVIDER_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ANTHEMCLAIM','UserDefined4', 'REND_PROVIDER_ZIP');



INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIAnthem_ClaimIns', 'GDIAnthem_ClaimIns', 'Anthem', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIAnthem_ClaimIns','GDIAnthem_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAnthem_ClaimIns', 'GDIAnthem_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Anthem', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GRP*.csv', null, 'GDI', 'Anthem', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAnthem_ClaimIns', 'GDIAnthem_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'Anthem_schema.xml', 'GDI', 'Anthem', 'AnthemClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIAnthem_ClaimIns', 'GDIAnthem_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GRP*.csv', null, 'GDI', 'Anthem', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIAnthem_ClaimIns','GDIAnthem_ClaimIns','Y','Y');







--Cigna Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('CignaClaim','Claim','CignaClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','PayorId','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','PatientFirstName','MemberFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','PatientLastName','MemberLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','PatientSSN','MemberSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','DependencyCode','RelationshipToSubscriberCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','EIN','ExternalAccountID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ServiceFrom','ServiceBeginDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ServiceTo','ServiceEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','CoIns','CoinsuranceAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','Copay','CopayAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','Deductible','DeductibleAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ReimbursementDate','PaidDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ServiceTypeCode','PharmacyClaim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderFirstName','ProviderFirstNameOrProviderFacilityName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderLastName','ProviderLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderId', 'ProviderTaxID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderAddress1', 'ProviderAddress1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderAddress2', 'ProviderAddress2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderCity', 'ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderState', 'ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ProviderZip', 'ProviderZip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','AdjustmentType', 'TransCd');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CignaClaim','ClaimRecordNum', 'SvcLineNumber');


--Medical & Pharma feed
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDICigna_ClaimIns', 'GDICigna_ClaimIns', 'Cigna', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDICigna_ClaimIns','GDICigna_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDICigna_ClaimIns', 'GDICigna_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Cigna', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CIGNA_CLM*.txt', null, 'GDI', 'Cigna', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDICigna_ClaimIns', 'GDICigna_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'Cigna_schema.xml', 'GDI', 'Cigna', 'CignaClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDICigna_ClaimIns', 'GDICigna_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CIGNA_CLM*.txt', null, 'GDI', 'Cigna', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDICigna_ClaimIns','GDICigna_ClaimIns','Y','Y');



--Cigna Dental Feed

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDICignaDental_ClaimIns', 'GDICignaDental_ClaimIns', 'Cigna', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDICignaDental_ClaimIns','GDICignaDental_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDICignaDental_ClaimIns', 'GDICignaDental_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Cigna', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CIGNA_DEN*.txt', null, 'GDI', 'Cigna', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType], [ServiceType]) 
VALUES ('GDICignaDental_ClaimIns', 'GDICignaDental_ClaimIns', 'INSERT_DENTAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'Cigna_schema.xml', 'GDI', 'Cigna', 'CignaClaim', 'D');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDICignaDental_ClaimIns', 'GDICignaDental_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CIGNA_DEN*.txt', null, 'GDI', 'Cigna', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDICignaDental_ClaimIns','GDICignaDental_ClaimIns','Y','Y');






--ConnectiCare Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('ConnectiCareClaim','Claim','ConnectiCareClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','PayorId','Employee_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','EmployeeFirstName','Employee_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','EmployeeLastName','Employee_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','PatientFirstName','Member_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','PatientLastName','Member_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','PatientSSN','Member_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','DependencyCode','Relationship_to_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ServiceFrom','Service_Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ServiceTo','Service_End_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ReimbursementDate','Paid_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ServiceTypeCode','Pharmacy_Claim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderFirstName','Provider_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderLastName','Provider_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderId', 'Provider_Tax_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderAddress1', 'Provider_ADD1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderAddress2', 'Provider_ADD2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderCity', 'Provider_City');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderState', 'Provider_State');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ConnectiCareClaim','ProviderZip', 'Provider_ZIP');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIConnectiCareClaim_ClaimIns', 'GDIConnectiCareClaim_ClaimIns', 'CtCare', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIConnectiCareClaim_ClaimIns','GDIConnectiCareClaim_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIConnectiCareClaim_ClaimIns', 'GDIConnectiCareClaim_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\CtCare', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CTCARE_CONV*.csv', null, 'GDI', 'CtCare', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIConnectiCareClaim_ClaimIns', 'GDIConnectiCareClaim_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'ConnectiCare_schema.xml', 'GDI', 'CtCare', 'ConnectiCareClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIConnectiCareClaim_ClaimIns', 'GDIConnectiCareClaim_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'CTCARE_CONV*.csv', null, 'GDI', 'CtCare', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIConnectiCareClaim_ClaimIns','GDIConnectiCareClaim_ClaimIns','Y','Y');




--FallonHealth Medical Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('FallonHealthClaim','Claim','FallonHealthClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','AmtAllowed','ClaimAllowAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','AmtCharged','ClaimsChargeAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','AmtPaid','ClaimPaidAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ClaimRecordNum','ClaimLineNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','CoIns','ClaimCoInsAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','Copay','ClaimCoPayAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','Deductible','ClaimDeductAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','DependencyCode','SexRelCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','EIN','AccountNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','PatientId','PatientAccountNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','PayorId','SubSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','Provider','ProviderNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderAddress1','ProviderStreetAddress');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderCity','ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderId','ProviderTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderName','ProviderName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderNum','ProviderNPI');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderState','ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ProviderZip','ProviderZipCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ReimbursementDate','PaidDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','ServiceFrom','FirstServiceDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','SubscriberId','SubscriberID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','UserDefined1','ClaimPatBalanceAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','EmployeeFirstName','SubscriberFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','PatientFirstName','MemberFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','EmployeeLastName','SubscriberLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','PatientLastName','MemberLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','EmployeeMiddleName','SubscriberMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','PatientMiddleName','MemberMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FallonHealthClaim','EmployerName','AccountName');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIFallonHealth_ClaimIns', 'GDIFallonHealth_ClaimIns', 'Fallon', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIFallonHealth_ClaimIns','GDIFallonHealth_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDIFallonHealth_ClaimIns', 'GDIFallonHealth_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\FallonHealth', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_FallonHealth_*.txt', null, 'GDI', 'Fallon', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType], [ServiceType]) 
VALUES ('GDIFallonHealth_ClaimIns', 'GDIFallonHealth_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'FallonHealthMedical_schema.xml', 'GDI', 'Fallon', 'FallonHealthClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId], [MapType]) 
VALUES ('GDIFallonHealth_ClaimIns', 'GDIFallonHealth_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_FallonHealth_*.txt', null, 'GDI', 'Fallon', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIFallonHealth_ClaimIns','GDIFallonHealth_ClaimIns','Y','Y');





--HealthPlans Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('HealthPlansClaim','Claim','HealthPlansClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','PayorId','EmployeeSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','EmployeeFirstName','EmployeeFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','EmployeeLastName','EmployeeLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','PatientFirstName','MemberFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','PatientLastName','MemberLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','PatientSSN','MemberSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','DependencyCode','RelationshipToSubscriberCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','EIN','ExternalAccountID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ServiceFrom','ServiceBeginDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ServiceTo','ServiceEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','CoIns','CoinsuranceAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','Copay','CopayAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','Deductible','DeductibleAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ReimbursementDate','PaidDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ServiceTypeCode','PharmacyClaim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderFirstName','ProviderFirstNameOrProviderFacilityName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderLastName','ProviderLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderId', 'ProviderTaxID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderAddress1', 'ProviderAddress1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderAddress2', 'ProviderAddress2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderCity', 'ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderState', 'ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HealthPlansClaim','ProviderZip', 'ProviderZip');




INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIHealthPlans_ClaimIns', 'GDIHealthPlans_ClaimIns', 'HealthPlans', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIHealthPlans_ClaimIns','GDIHealthPlans_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHealthPlans_ClaimIns', 'GDIHealthPlans_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\HealthPlans', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'HealthPlans*.txt', null, 'GDI', 'HealthPlans', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHealthPlans_ClaimIns', 'GDIHealthPlans_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'HealthPlans_schema.xml', 'GDI', 'HealthPlans', 'HealthPlansClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHealthPlans_ClaimIns', 'GDIHealthPlans_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'HealthPlans*.txt', null, 'GDI', 'HealthPlans', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIHealthPlans_ClaimIns','GDIHealthPlans_ClaimIns','Y','Y');







--GDI HP Medical Claim Insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('HPMEDICALCLAIM','Claim','HPMedicalClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','PatientFirstName','Member_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','PatientLastName','Member_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','PatientSSN','Member_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','SubscriberId','HPHC_Subscriber_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','PayorId','Subscriber_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','DivisionId','Division_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderId','Provider_Tax_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderFirstName','Servicing_Provider_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderLastName','Servicing_Provider_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderName','Servicing_BEH_Facility_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ReimbursementDate','Paid_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ServiceFrom','Service_Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ServiceTo','Service_End_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderAddress1','Provider_Address1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderCity','Provider_City');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderState','Provider_State');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderZip','Provider_Zip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','ProviderAddress2','Provider_Address2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','CarrierID','Carrier_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','InNetwork','Network_Provider_Indicator');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','DependencyCode','Relationship_to_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','PayTheProvider','Group_Practice_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','GroupId','HPHC_Account_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','LOB','Adjudication_System');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','EmployeeFirstName','Subscriber_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','EmployeeLastName','Subscriber_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPMEDICALCLAIM','Notes','Relationship_to_Subscriber_Description');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIHPHCMed_ClaimIns', 'GDIHPHCMed_ClaimIns', 'HPHC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIHPHCMed_ClaimIns', 'GDIHPHCMed_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCMed_ClaimIns', 'GDIHPHCMed_ClaimIns', 'PULL', 1, 'ftp\GDI\toCXC\claims\HPHC', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'extr_gdyn_claim*.txt', null, 'GDI', 'HPHC', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCMed_ClaimIns', 'GDIHPHCMed_ClaimIns', 'INSERT_MEDICAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'HPMedical_schema.xml', 'GDI', 'HPHC', 'HPMedicalClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCMed_ClaimIns', 'GDIHPHCMed_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'extr_gdyn_claim*.txt', null, 'GDI', 'HPHC', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIHPHCMed_ClaimIns','GDIHPHCMed_ClaimIns','Y','Y');






--GDI HP Pharma Claim Insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('HPPHARMACLAIM','Claim','HPPharmaClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','PatientFirstName','Member_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','PatientLastName','Member_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','PatientSSN','Member_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','SubscriberId','HPHC_Subscriber_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','PayorId','Subscriber_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','DivisionId','Division_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','ProviderId','Pharmacy_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','ProviderName','Pharmacy_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','ReimbursementDate','Payment_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','ServiceFrom','Fill_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','AdjustmentType','Adjustment_Type');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','CarrierID','Carrier_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','DependencyCode','Relationship_to_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','AdjClaimNumber','Claim_Reversal_Reference_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','GroupId','HPHC_Account_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','EmployeeFirstName','Subscriber_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','EmployeeLastName','Subscriber_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('HPPHARMACLAIM','Notes','Relationship_to_Subscriber_Description');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIHPHCPharma_ClaimIns', 'GDIHPHCPharma_ClaimIns', 'HPHC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIHPHCPharma_ClaimIns', 'GDIHPHCPharma_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCPharma_ClaimIns', 'GDIHPHCPharma_ClaimIns', 'PULL', 1, 'ftp\GDI\toCXC\claims\HPHC', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'extr_gdyn_pharmacy*.txt', null, 'GDI', 'HPHC', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCPharma_ClaimIns', 'GDIHPHCPharma_ClaimIns', 'INSERT_PHARMA_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'HPPharma_schema.xml',  'GDI', 'HPHC', 'HPPharmaClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIHPHCPharma_ClaimIns', 'GDIHPHCPharma_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'extr_gdyn_pharmacy*.txt', null, 'GDI', 'HPHC', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIHPHCPharma_ClaimIns','GDIHPHCPharma_ClaimIns','Y','Y');





--PatientAdvocate Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('PatientAdvocateClaim','Claim','PatientAdvocateClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','UserDefined1','ChargeNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderId','BillingProviderTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderLastName','ProviderLastNameOrOrgName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderFirstName','ProviderFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderName','ProviderMiddleName');
																
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderAddress1','ProviderAddress1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderAddress2','ProviderAddress2');
																
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderZip','ProviderZip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderCity','ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ProviderState','ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','SubscriberId','InsuredID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','EmployeeLastName','InsuredLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','EmployeeFirstName','InsuredFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientId','DependentNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientFirstName','ClaimantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientLastName', 'ClaimantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientMiddleName', 'ClaimantMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientDOB', 'ClaimantDateOfBirth');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','DependencyCode', 'RelationshipCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','EIN', 'GroupID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','DivisionId', 'DivisionID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ServiceTypeCode','ClaimType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PlanId','PlanID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','InNetwork','BenefitLevel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','ServiceFrom', 'DateOfService');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','Deductible', 'Deductible');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','Coins', 'Coinsurance');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PayorId', 'InsuredSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocateClaim','PatientSSN', 'ClaimantSSN');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIPatientAdvocate_ClaimIns', 'GDIPatientAdvocate_ClaimIns', 'PatAdv', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIPatientAdvocate_ClaimIns','GDIPatientAdvocate_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIPatientAdvocate_ClaimIns', 'GDIPatientAdvocate_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\PatAdv', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Med*.txt', null, 'GDI', 'PatAdv', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDIPatientAdvocate_ClaimIns', 'GDIPatientAdvocate_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PatientAdvocate_schema.xml', 'GDI', 'PatAdv', 'PatientAdvocateClaim', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIPatientAdvocate_ClaimIns', 'GDIPatientAdvocate_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Med*.txt', null, 'GDI', 'PatAdv', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIPatientAdvocate_ClaimIns','GDIPatientAdvocate_ClaimIns','Y','Y');






--PatientAdvocate Pharma Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('PatientAdvocatePharmaClaim','Claim','PatientAdvocatePharmaClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','AdjustmentType','ChargeType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','UserDefined1','ChargeNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderId','BillingProviderTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderLastName','ProviderLastNameOrOrgName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderFirstName','ProviderFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderName','ProviderMiddleName');
																
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderAddress1','ProviderAddress1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderAddress2','ProviderAddress2');
																
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderZip','ProviderZip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderCity','ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ProviderState','ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','SubscriberId','InsuredID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','EmployeeLastName','InsuredLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','EmployeeFirstName','InsuredFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientId','DependentNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientFirstName','ClaimantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientLastName', 'ClaimantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientMiddleName', 'ClaimantMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientDOB', 'ClaimantDateOfBirth');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','DependencyCode', 'RelationshipCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','EIN', 'GroupID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','DivisionId', 'DivisionID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ServiceTypeCode','ClaimType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PlanId','PlanID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','InNetwork','BenefitLevel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','ServiceFrom', 'DateOfService');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','Deductible', 'Deductible');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','Coins', 'Coinsurance');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PayorId', 'InsuredSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PatientAdvocatePharmaClaim','PatientSSN', 'ClaimantSSN');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIPatientAdvocatePharma_ClaimIns', 'GDIPatientAdvocatePharma_ClaimIns', 'PatAdv', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIPatientAdvocatePharma_ClaimIns','GDIPatientAdvocatePharma_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIPatientAdvocatePharma_ClaimIns', 'GDIPatientAdvocatePharma_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\PatAdv', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Rx*.txt', null, 'GDI', 'PatAdv', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDIPatientAdvocatePharma_ClaimIns', 'GDIPatientAdvocatePharma_ClaimIns', 'INSERT_PHARMA_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PatientAdvocate_Pharma_schema.xml', 'GDI', 'PatAdv', 'PatientAdvocatePharmaClaim', 'P');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIPatientAdvocatePharma_ClaimIns', 'GDIPatientAdvocatePharma_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDI_Rx*.txt', null, 'GDI', 'PatAdv', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIPatientAdvocatePharma_ClaimIns','GDIPatientAdvocatePharma_ClaimIns','Y','Y');










--Tufts LRGH Parent Providers
 
 Insert into Provider (TaxId, FirstName, Address1, City, [State], Zip, AutoApprovePayment, IsActive , FaxNumber, LastUpdatedDate, [Status])
 Values ('020222150', 'LRGHEALTHCARE PROVIDERS', 'PO Box 698', 'LACONIA', 'NH', '03247', 1, 1,'4698939719', GETDATE(), 'VALIDATED');

 Insert into Provider (TaxId, FirstName,Address1,City,[State],Zip, AutoApprovePayment, IsActive , FaxNumber, LastUpdatedDate, [Status])
 Values ('020423799','LAKES REGION ANESTHESIOLOGY','PO Box 698', 'LACONIA', 'NH', '03247', 1, 1,'4698939719', GETDATE(), 'VALIDATED');

 Insert into Provider (TaxId, FirstName,Address1,City,[State],Zip, AutoApprovePayment, IsActive , FaxNumber, LastUpdatedDate, [Status])
 Values ('208146980','HILLSIDE SURGERY CENTER','PO Box 698', 'LACONIA', 'NH', '03247', 1, 1,'4698939719', GETDATE(), 'VALIDATED');
 




--Tufts Medical Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('TuftsMedicalClaim','Claim','TuftsMedicalClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ClaimNumber','CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','AdjustmentType','CLAIM_SUFFIX');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ReimbursementDate','PAY_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','SubscriberId','SUB_SUBSCRIBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','EmployeeFirstName','SUB_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined8','SUB_MIDDLE_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','EmployeeLastName','SUB_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientId','MEM_MEMBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientFirstName','MEM_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientMiddleName','MEM_MIDDLE_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientLastName','MEM_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientDOB','MEM_DATE_OF_BIRTH');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined1','CLAIM_TYPE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ServiceFrom','BEGIN_SERVICE_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ServiceTo','END_SERVICE_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','EIN','HOME_GROUP_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','GroupId','GROUP_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','EmployerName','NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PlanId','PLAN_RIDER_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined2', 'PATIENT_ACCOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','RenderingProviderFirstName', 'PROV_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','RenderingProviderLastName', 'PROV_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderNum','PAYEE_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderId','PAYEE_TAX_ID');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderFirstName','PAYEE_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined3','PAYEE_MIDDLE_INITIAL');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderLastName','PAYEE_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderAddress1','PAYEE_ADDR1_LINE_1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderAddress2','PAYEE_ADDR1_LINE_2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderCity','PAYEE_ADDR1_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderState','PAYEE_ADDR1_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderZip','PAYEE_ADDR1_ZIP_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined4','CLAIM_DETAIL_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ClaimRecordNum','CLAIM_LINE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProcedureCode','PROCEDURE_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','Location','PLACE_OF_SERVICE_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','Coins','COINSURANCE_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','Copay','COPAY_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','UserDefined5','COPAY_2_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','Deductible','DEDUCTIBLE_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','AmtPaid','PAID_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PatientSSN','MEMBER SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','ProviderName','PAYEE_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsMedicalClaim','PayorId','SUBSCRIBER_SSN');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDITuftsMedical_ClaimIns', 'GDITuftsMedical_ClaimIns', 'Tufts', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDITuftsMedical_ClaimIns','GDITuftsMedical_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


---File patterns for Tufts medical  can either be like 'hra_medical_claim_xtract_gdi*.lst' or 'LRGH_medical_*.lst'

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDITuftsMedical_ClaimIns', 'GDITuftsMedical_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Tufts', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, '*_medical_*.lst', null, 'GDI', 'Tufts', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDITuftsMedical_ClaimIns', 'GDITuftsMedical_ClaimIns', 'INSERT_MEDICAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'TuftsMedical_schema.xml', 'GDI', 'Tufts', 'TuftsMedicalClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDITuftsMedical_ClaimIns', 'GDITuftsMedical_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, '*_medical_*.lst', null, 'GDI', 'Tufts', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDITuftsMedical_ClaimIns','GDITuftsMedical_ClaimIns','Y','Y');








--Tufts Temp Medical Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('TuftsTempMedicalClaim','Claim','TuftsTempMedicalClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','EIN','HOME_GROUP_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','SubscriberId','SUBSCRIBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','EmployeeFirstName','SUBSCRIBER_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','PatientFirstName','MEMBER_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','PatientLastName','MEMBER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','PatientId','MEMBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ClaimNumber','CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ClaimRecordNum','CLAIM_SUF_LINE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ServiceFrom','DATE_OF_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','AmtCharged','AMT_BILLED');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','AmtPaid','AMT_PAID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','Copay','AMT_COPAY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','Deductible','AMT_DEDUCTIBLE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','Coins','AMT_COINSURANCE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ReimbursementDate','PAID_DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','PayorId','SUBSCRIBER_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ProviderId','PAYEE_TIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined2','PATIENT_ACCT_NO');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','Provider','PAYEE_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','ProviderNum','PAYEE_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','RenderingProviderLastName','PROVIDER_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined1','PAYEE_ADDRESS_1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined3','PROVIDER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined4','PAYEE_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined5','PAYEE_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined8','PAYEE_ZIP');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TuftsTempMedicalClaim','UserDefined9','PROVIDER_NPI');




INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDITuftsTempMedical_ClaimIns', 'GDITuftsTempMedical_ClaimIns', 'Tufts', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDITuftsTempMedical_ClaimIns','GDITuftsTempMedical_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDITuftsTempMedical_ClaimIns', 'GDITuftsTempMedical_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Tufts', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'Temp_LRGH_Medical*.csv', null, 'GDI', 'Tufts', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDITuftsTempMedical_ClaimIns', 'GDITuftsTempMedical_ClaimIns', 'INSERT_TEMP_MEDICAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'TuftsTempMedical_schema.xml', 'GDI', 'Tufts', 'TuftsTempMedicalClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDITuftsTempMedical_ClaimIns', 'GDITuftsTempMedical_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'Temp_LRGH_Medical*.csv', null, 'GDI', 'Tufts', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDITuftsTempMedical_ClaimIns','GDITuftsTempMedical_ClaimIns','Y','Y');


--UHC claim insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('UHCClaim','Claim','UHCClaim');


insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','PayorId','Employee_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','EmployeeFirstName','Employee_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','EmployeeLastName','Employee_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','PatientFirstName','Member_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','PatientLastName','Member_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','PatientSSN','Member_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','DependencyCode','Relationship_To_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ServiceFrom','Service_Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ServiceTo','Service_End_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ServiceTypeCode','Pharmacy_Claim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderFirstName','Provider_First_Name_Or_Provider_Facility_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderLastName','Provider_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderId', 'Provider_Tax_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderAddress1', 'Provider_Address1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderAddress2', 'Provider_Address2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderCity', 'Provider_City');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderState', 'Provider_State');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ProviderZip', 'Provider_Zip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','AdjustmentType','Adjustment_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('UHCClaim','ClaimRecordNum','Service_Line_Number');



INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIUHC_ClaimIns', 'GDIUHC_ClaimIns', 'UHC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIUHC_ClaimIns','GDIUHC_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIUHC_ClaimIns', 'GDIUHC_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\UHC', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'UHC_CLAIM_*.txt', null, 'GDI', 'UHC', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDIUHC_ClaimIns', 'GDIUHC_ClaimIns', 'INSERT_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'UHC_Schema.xml', 'GDI', 'UHC', 'UHCClaim','H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIUHC_ClaimIns', 'GDIUHC_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'UHC_CLAIM_*.txt', null, 'GDI', 'UHC', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIUHC_ClaimIns','GDIUHC_ClaimIns','Y','Y');




--Valence Medical Claim Insert 

insert into CXCMapMaster (MapId, TableName, MapType) Values('ValenceMedicalClaim','Claim','ValenceMedicalClaim');


insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','PayorId','Employee_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','EmployeeFirstName','Employee_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','EmployeeLastName','Employee_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','PatientFirstName','Member_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','PatientLastName','Member_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','PatientSSN','Member_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','DependencyCode','Relationship_To_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ServiceFrom','Service_Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ServiceTo','Service_End_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ServiceTypeCode','Pharmacy_Claim');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderFirstName','Provider_First_Name_Or_Provider_Facility_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderLastName','Provider_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderId', 'Provider_Tax_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderAddress1', 'Provider_Address1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderAddress2', 'Provider_Address2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderCity', 'Provider_City');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderState', 'Provider_State');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ProviderZip', 'Provider_Zip');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','AdjustmentType','Adjustment_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValenceMedicalClaim','ClaimRecordNum','Service_Line_Number');



 
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIValenceMedical_ClaimIns', 'GDIValenceMedical_ClaimIns', 'Valence', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIValenceMedical_ClaimIns','GDIValenceMedical_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIValenceMedical_ClaimIns', 'GDIValenceMedical_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Valence', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'ValenceHealth_Medical*.txt', null, 'GDI', 'Valence', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDIValenceMedical_ClaimIns', 'GDIValenceMedical_ClaimIns', 'INSERT_MEDICAL_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'ValenceMedical_Schema.xml', 'GDI', 'Valence', 'ValenceMedicalClaim','H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIValenceMedical_ClaimIns', 'GDIValenceMedical_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'ValenceHealth_Medical*.txt', null, 'GDI', 'Valence', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIValenceMedical_ClaimIns','GDIValenceMedical_ClaimIns','Y','Y');


--Valence Pharma Claim Insert

insert into CXCMapMaster (MapId, TableName, MapType) Values('ValencePharmaClaim','Claim','ValencePharmaClaim');
 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','PayorId','Employee_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','EmployeeFirstName','Employee_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','EmployeeLastName','Employee_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','PatientFirstName','Patient_First_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','PatientLastName','Patient_Last_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','PatientSSN','Patient_SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','DependencyCode','Relationship_To_Subscriber_Code');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','EIN','External_Account_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ClaimNumber','Claim_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ClaimRecordNum','Service_Line_Number');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ServiceFrom','Service_Begin_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ServiceTo','Service_End_Date');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','Copay','Copay_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','Deductible','Deductible_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','CoIns','Coinsurance_Amount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ProviderName','Pharmacy_Name');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ValencePharmaClaim','ProviderId', 'Provider_Tax_ID');
 
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDIValencePharma_ClaimIns', 'GDIValencePharma_ClaimIns', 'Valence', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDIValencePharma_ClaimIns','GDIValencePharma_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIValencePharma_ClaimIns', 'GDIValencePharma_ClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\claims\Valence', 'staging\GDI\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'ValenceHealth_Pharma*.txt', null, 'GDI', 'Valence', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDIValencePharma_ClaimIns', 'GDIValencePharma_ClaimIns', 'INSERT_PHARMA_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'ValencePharma_Schema.xml', 'GDI', 'Valence', 'ValencePharmaClaim','P');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDIValencePharma_ClaimIns', 'GDIValencePharma_ClaimIns', 'CLAIMARCH', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'ValenceHealth_Pharma*.txt', null, 'GDI', 'Valence', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDIValencePharma_ClaimIns','GDIValencePharma_ClaimIns','Y','Y');










--Populate New Providers

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_NewProviderPopulate', 'GDI_NewProviderPopulate', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_NewProviderPopulate', 'GDI_NewProviderPopulate',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_NewProviderPopulate', 'GDI_NewProviderPopulate', 'POPULATE_NEWPROVIDER', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_NewProviderPopulate', 'GDI_NewProviderPopulate','Y','Y');








--Ins Claim TPA Approved Claims


insert into CXCMapMaster (MapId, TableName, MapType) Values('TPAApprovedClaim','Claim','TPAApprovedClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ImportFileName','ImportFileName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','CarrierId','CarrierID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','EIN','CompanyID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ClaimNumber','EOBNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','XOClaimId','CXCID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ApprovalDate','PaymentDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','TPAReferenceNumber','PaymentID');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','SubmittedAmt','OriginalAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','DeniedAmt','DeniedAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','TPAApprovedAmt','PaidAmt')

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','DiscountAmt','DiscountAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','AfterDiscountAmt','TPASubmittedAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','FullApprovedAmt','ApprovedAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','PendingAmt','PendingAmt')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','PatientResponsibilityAmt','ClaimAccountPatienRespAmt')

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ParticipantSSN','ParticiapantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ParticipantFirstName','ParticipantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ParticipantLastName','ParticipantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','RecipientName','ServiceRecipientName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ExpenseCategory','ExpenseCategory');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('TPAApprovedClaim','ExpenseType','ExpenseType');





INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ApprovedClaimIns', 'GDI_ApprovedClaimIns', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ApprovedClaimIns','GDI_ApprovedClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ApprovedClaimIns', 'GDI_ApprovedClaimIns', 'PULL', 1, 'ftp\GDI\tocxc\approvals', 'staging\GDI\in\claims',  CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'GDIApprovedClaims_*.csv', NULL, 'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ApprovedClaimIns', 'GDI_ApprovedClaimIns', 'INSERT_APPROVED_CLAIM', 2, 'staging\GDI\in\claims', NULL, CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'ApprovedClaims_schema.xml', 'GDI', null,  'TPAApprovedClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('GDI_ApprovedClaimIns', 'GDI_ApprovedClaimIns', 'ARCHIVE', 3, 'staging\GDI\in\claims', 'archive\GDI\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDIApprovedClaims_*.csv', null, 'GDI', null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ApprovedClaimIns','GDI_ApprovedClaimIns','Y','Y');



--Validate Approved Claim 

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ApprovedClaimValidate', 'GDI_ApprovedClaimValidate', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ApprovedClaimValidate','GDI_ApprovedClaimValidate',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ApprovedClaimValidate', 'GDI_ApprovedClaimValidate', 'VALIDATE_APPROVED_CLAIM', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'GDI', null, null, 'H');


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ApprovedClaimValidate','GDI_ApprovedClaimValidate','Y','Y');







--Match Approved Claims

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ApprovedClaimMatch', 'GDI_ApprovedClaimMatch', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ApprovedClaimMatch','GDI_ApprovedClaimMatch',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ApprovedClaimMatch', 'GDI_ApprovedClaimMatch', 'MATCH_APPROVED_CLAIM', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, 'H');


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ApprovedClaimMatch','GDI_ApprovedClaimMatch','Y','Y');



 
--Check Provider

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ProviderCheck', 'GDI_ProviderCheck', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ProviderCheck','GDI_ProviderCheck',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ProviderCheck', 'GDI_ProviderCheck', 'CHECK_PROVIDER', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, 'H');


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ProviderCheck','GDI_ProviderCheck','Y','Y');





--Re-Check Provider

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ProviderReCheck', 'GDI_ProviderReCheck', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ProviderReCheck','GDI_ProviderReCheck',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ProviderReCheck', 'GDI_ProviderReCheck', 'RECHECK_PROVIDER', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, 'H');


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ProviderReCheck','GDI_ProviderReCheck','Y','Y');





--Generate Invoices

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_GenerateInvoice', 'GDI_GenerateInvoice', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_GenerateInvoice','GDI_GenerateInvoice',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_GenerateInvoice', 'GDI_GenerateInvoice', 'GENERATE_INVOICE', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_GenerateInvoice','GDI_GenerateInvoice','Y','Y');







--Payment Request

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_PaymentRequest', 'GDI_PaymentRequest', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_PaymentRequest','GDI_PaymentRequest',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_PaymentRequest', 'GDI_PaymentRequest', 'REQUEST_FOR_PAYMENT', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_PaymentRequest','GDI_PaymentRequest','Y','Y');






--Send Payment Notification

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_SendPaymentNotification','GDI_SendPaymentNotification',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType],[EIN])  
VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'SEND_PAYMENT_NOTIFICATION', 1, null, 'staging\GDI\out\faxes', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', 'Tufts', null, null, '17314000');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'SEND_PAYMENT_NOTIFICATION', 2, null, 'staging\GDI\out\faxes', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'PUSH', 3, 'staging\GDI\out\faxes', 'ftp\GDI\fromCXC\payments', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_EDI835_*.txt', null,'GDI', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'ARCHIVE', 4, 'staging\GDI\out\faxes', 'archive\GDI\out\faxes', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI_EDI835_*.txt', null,'GDI', null, null, null);

--INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
--VALUES ('GDI_SendPaymentNotification', 'GDI_SendPaymentNotification', 'ARCHIVE', 2, 'staging\GDI\out\faxes', 'archive\GDI\out\faxes', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI*.html', null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_SendPaymentNotification','GDI_SendPaymentNotification','Y','Y');






--Archive Payment Notification

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ArchivePaymentNotification', 'GDI_ArchivePaymentNotification', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ArchivePaymentNotification','GDI_ArchivePaymentNotification',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('GDI_ArchivePaymentNotification', 'GDI_ArchivePaymentNotification', 'ARCHIVE', 1, 'staging\GDI\out\faxes', 'archive\GDI\out\faxes', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI*.html', null, 'GDI', null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('GDI_ArchivePaymentNotification', 'GDI_ArchivePaymentNotification', 'ARCHIVE', 2, 'staging\GDI\out\faxes', 'archive\GDI\out\faxes', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'GDI*.pdf', null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ArchivePaymentNotification','GDI_ArchivePaymentNotification','Y','Y');





--ProviderPayment Audit

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ProviderPaymentAudit', 'GDI_ProviderPaymentAudit', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ProviderPaymentAudit','GDI_ProviderPaymentAudit',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_ProviderPaymentAudit', 'GDI_ProviderPaymentAudit', 'CXCAUDIT_PROVIDERPAYMENT', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, null, 'GDI', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ProviderPaymentAudit','GDI_ProviderPaymentAudit','Y','Y');




--Generate Claim feed for hPay

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'FeedForHPay', N'Payment', N'FeedForHPay');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'Id','CXCId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'CrossoverDate','CrossoverDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'TPAId','TPAId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ServiceType','Channel');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ClaimRecordNum','ServiceLineNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'SourceClaimNumber','SourceClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ServiceFrom','ServiceDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProcedureCode','ProcedureCode');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PayorId','SubscriberSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'EmployeeFirstName','SubscriberFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'EmployeeLastName','SubscriberLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PatientSSN','PatientSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PatientFirstName','PatientFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PatientMiddleName','PatientMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PatientLastName','PatientLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'DependencyCode','RelationshipCode');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'AmtCharged','ProviderChargedAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'AmtAllowed','CarrierAllowedAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'AmtPaid','CarrierPaidAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'Copay','CopayAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'Deductible','DeductibleAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'Coins','CoinsAmt');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'TPAApprovedAmt','TPAApprovedAmt');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderId','ProviderTaxId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderName','ProviderName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderFirstName','ProviderFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderLastName','ProviderLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderAddress1','ProviderAddress1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderAddress2','ProviderAddress2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderCity','ProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderState','ProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'ProviderZip','ProviderZip');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'CardNumber','CardNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'CardVendorRequestId','PaymentReferenceNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'CardIssuedDate','CardIssuedDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('FeedForHPay', 'PaymentCanceled','PaymentCanceled');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_GenerateHPayFeed', 'GDI_GenerateHPayFeed', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_GenerateHPayFeed','GDI_GenerateHPayFeed',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_GenerateHPayFeed', 'GDI_GenerateHPayFeed', 'GENERATE_HPAY_FEED', 1, null, 'staging\cxc\out\claims', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'XOClaimsForHPay_schema.xml', 'GDI', null, 'FeedForHPay', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_GenerateHPayFeed', 'GDI_GenerateHPayFeed', 'PUSH', 2, 'staging\cxc\out\claims', 'ftp\cxc\hPay\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'XO_FEED_FOR_HPAY_GDI_*.csv', null,'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_GenerateHPayFeed', 'GDI_GenerateHPayFeed', 'ARCHIVE', 3, 'staging\cxc\out\claims', 'archive\cxc\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'XO_FEED_FOR_HPAY_GDI_*.csv', null, 'GDI', null, null);



Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_GenerateHPayFeed','GDI_GenerateHPayFeed','Y','Y');




-- Process WEX Transaction Log

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'WEXTransactionLog', N'Claim', N'WEXTransactionLog');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'TransactionType','TransactionType');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'TransactionID','TransactionID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'CardNumber','CardNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'MerchantLogID','MerchantLogID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'MerchantLogAmount', 'MerchantLogAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'MerchantLogDate', 'MerchantLogDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'PostingDate','PostingDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'TransactionDate','TransactionDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'MerchantAcceptorID','MerchantAcceptorID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'TotalPostedAmount','TotalPostedAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'ReferenceNumber','ReferenceNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'SICMCCCode','SICMCCCode');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'AuthorizationNumber','AuthorizationNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('WEXTransactionLog', 'OriginalTransactionID','OriginalTransactionID');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_WEXLogProc', 'GDI_WEXLogProc', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_WEXLogProc','GDI_WEXLogProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType])
VALUES ('GDI_WEXLogProc', 'GDI_WEXLogProc', 'PULL', 1, 'ftp\WEX', 'staging\Banks\WEX\in', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'groupdynamic_daily_transaction*.csv', null,  'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('GDI_WEXLogProc', 'GDI_WEXLogProc', 'PROC_WEXLOG', 2, 'staging\Banks\WEX\in', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'WEXTransactionLog.xml', 'GDI', null,'GDIClaimFromXO', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('GDI_WEXLogProc', 'GDI_WEXLogProc', 'ARCHIVE', 3, 'staging\Banks\WEX\in', 'archive\Banks\WEX\in', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'groupdynamic_daily_transaction*.csv', null, 'GDI', null, null);



Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_WEXLogProc','GDI_WEXLogProc','Y','Y');









-- Generate Payment Reconcilation Report

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'ReconcilationReport', N'Payment', N'ReconcilationReport');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'EOBNumber','EOBNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'TPAReferenceNumber','GDIPaymentNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'PaymentId','CXCPaymentNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'ProviderName','ProviderName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'CardIssuedDate','CardIssuedDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'PaymentCollectedDate','PaymentCollectedDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'ExpenseCategory','AmountCategory');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'ClaimAmount','ClaimAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'PaymentAmt','PaymentAmount');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('ReconcilationReport', 'Id','CXCID');

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('GDI_ReconReportGen', 'GDI_ReconReportGen', 'GDI', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('GDI_ReconReportGen','GDI_ReconReportGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ReconReportGen', 'GDI_ReconReportGen', 'GENERATE_PAYMENTRECONREPORT', 1, NULL, 'staging\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PaymentReconciliationReport.xml', 'GDI', null, 'ReconcilationReport');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ReconReportGen', 'GDI_ReconReportGen', 'PUSH', 2, 'staging\GDI\out\reports', 'ftp\GDI\fromcxc\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PAYMENT_RECONCILIATION_REPORT_*.csv', null,'GDI', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('GDI_ReconReportGen', 'GDI_ReconReportGen', 'ARCHIVE', 3, 'staging\GDI\out\reports', 'archive\GDI\out\reports', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PAYMENT_RECONCILIATION_REPORT_*.csv', null, 'GDI', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('GDI_ReconReportGen','GDI_ReconReportGen','Y','Y');



-- Processed flags
insert into Flag values('HOLD', 'Filtered', 'GDI', 'Put on hold for now', 'Claim'); -- this is just needed temporarily to put on-hold Tufts LRGH additional provider claims
insert into Flag values('NOCOINS', 'Filtered', 'GDI', 'Coins Flag is not set in Control File', 'Claim');
insert into Flag values('NODED', 'Filtered', 'GDI', 'Deductible Flag is not set in Control File', 'Claim');


insert into Flag values('INVPLAN', 'Manual', 'GDI', 'Missing corresponding plan in Control file', 'Claim');
insert into Flag values('GDISDF', 'Manual', 'GDI', 'Service Begin Date in the Claim is after Pay Thru Date', 'Claim');
insert into Flag values('DUP', 'Manual', 'GDI', 'Claim is a duplicate of another Claim', 'Claim');
insert into Flag values('NOPHARM', 'Manual', 'GDI', 'Does not have Pharmacy file', 'Claim');
insert into Flag values('MANAGG', 'Manual', 'GDI', 'Requires manual aggregation by TPA', 'Claim');

--insert into Flag values('INVPART', 'Manual', 'GDI', 'Subscriber is not eligible', 'Claim');
insert into Flag values('NODEPC', 'Manual', 'GDI', 'No Dependant coverage', 'Claim');

insert into Flag values('NONPART', 'Manual', 'GDI', 'Patient is a non-participant', 'Claim');
insert into Flag values('NOTFEED', 'Manual', 'GDI', 'Employer is a not participating in the Plan', 'Claim');


insert into Flag values('NONMATCH', 'Manual', 'GDI', 'Patient Name does not match with name in Eligibility', 'Claim');

insert into Flag values('PREPLAN', 'Filtered', 'GDI', 'Service Date is prior to Plan Start', 'Claim');



--Payer

SET IDENTITY_INSERT [dbo].[Payer] ON
--wex demo
INSERT [dbo].[Payer] ([PayerId], [TPAId], [BankNumber], [BankName], [CompanyNumber], [OrganizationId], [UserId], [Password], 
[CreditLimit], [IsActive], [LastUpdatedDate],
[Name],
[Address1],
[Address2],
[City],
[State],
[Zip],
[PhoneNumber],
[FaxNumber],
[EmailId],
[WebUrl],
[NoOfDaysToKeepCardActive]
) 
VALUES (10, N'GDI', N'6472', N'WEX Bank', N'25936', N'iZHzX5Rfn0g2fq0Cx07ruQ==', N'eUxeArfGbECAchh3Tape/Q==', N'BDfUufqiTuAJZLEJSPLq7Q==', 
NULL, N'1', CAST(0x0000A2DD00000000 AS DateTime),
'Group Dynamic, Inc.',
'411 US Route One',
null,
'Falmouth',
'ME',
'04105',
'(207) 781 8800',
'(207) 781 3841',
'info@gdynamic.com',
'www.gdynamic.com',
null
)






--wex prod
--INSERT [dbo].[Payer] ([PayerId], [TPAId], [BankNumber], [BankName], [CompanyNumber], [OrganizationId], [UserId], [Password],
--[CreditLimit], [IsActive], [LastUpdatedDate],
--[Name],
--[Address1],
--[Address2],
--[City],
--[State],
--[Zip],
--[PhoneNumber],
--[FaxNumber],
--[EmailId],
--[WebUrl],
--[NoOfDaysToKeepCardActive]
--) 
--VALUES (10, N'GDI', N'8673', N'WEX Bank', N'00100', N'GqNvw7zjMfFaFvQV6zvHlg==', N'eUxeArfGbECAchh3Tape/Q==', N'9cQy8NrD0+e5cMohOWBFsg==', 
--NULL, N'1', CAST(0x0000A2DD00000000 AS DateTime),
--'Group Dynamic, Inc.',
--'411 US Route One',
--null,
--'Falmouth',
--'ME',
--'04105',
--'(207) 781 8800',
--'(207) 781 3841',
--'info@gdynamic.com',
--'www.gdynamic.com',
--null
--)

SET IDENTITY_INSERT [dbo].[Payer] OFF
  
  


USE [MsbuildCXC]
GO


--PrimePay Eligibility file Insert
INSERT INTO CXCMapMaster (MapId, TableName, MapType) Values('PrimePayEligibilityFilter','Eligibility','PrimePayEligibilityFilter');

INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'BenefitEffectiveDate', 'plan_yr_start_dte')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'BenefitId', 'acct_type_cde')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'BenefitTermDate', 'plan_yr_end_dte')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'CategoryId', 'sc_cde')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'CoverageType', 'coverage_tier_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'EIN', 'user_defined_field')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'EmployerCode', 'empr_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'EmployerName', 'empr_name')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'MemberFirstName', 'dep_first_name')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'MemberID', 'dep_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'MemberLastName', 'dep_last_name')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'MemberSSN', 'dep_ssn')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'PayeeIndicator', 'provider_pay')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'PlanId', 'plan_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'SubscriberFirstName', 'first_name')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'SubscriberId', 'empe_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'SubscriberLastName', 'last_name')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'SubscriberSSN', 'empe_ssn')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'UserDefined1', 'tpa_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'UserDefined2', 'ee_claims_crossover')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'UserDefined3', 'sc_id')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('PrimePayEligibilityFilter', 'UserDefined6', 'plan_run_out_dte')

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'PrimePay', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'PULL', 1, N'ftp\PrimePay\tocxc\xofilter', N'staging\PrimePay\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'T00026_PRIMEFLEX*_SCC_AUDIT.txt', null, 'PrimePay', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'ELIGIBILITY_FILTER', null, 'PrimePay', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'INSERT_ELIGIBILITY_FILTER', 3, N'staging\PrimePay\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'EligibilityFilter_schema.xml', 'PrimePay', null, 'PrimePayEligibilityFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'ARCHIVE', 4, N'staging\PrimePay\in\xofilter', N'archive\PrimePay\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'T00026_PRIMEFLEX*_SCC_AUDIT.txt', null, 'PrimePay', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PrimePay_EligibilityFilterIns', N'PrimePay_EligibilityFilterIns', N'Y', N'Y');






--PrimePay Substantiation FilterInsert
INSERT [dbo].[CXCMapMaster](MapId, TableName, MapType) Values('PrimePaySubstantiationFilter','Eligibility','PrimePaySubstantiationFilter')

INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PrimePaySubstantiationFilter','EIN','GroupId');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PrimePaySubstantiationFilter','EmployerName','EmployerName');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PrimePaySubstantiationFilter','EmployerCode','EmployerId');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PrimePaySubstantiationFilter','UserDefined6','LastUpdatedDate');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_Substantiation_FilterIns', 'PrimePay_Substantiation_FilterIns', 'PrimePay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_Substantiation_FilterIns','PrimePay_Substantiation_FilterIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],ServiceType,EIN) 
VALUES ('PrimePay_Substantiation_FilterIns', 'PrimePay_Substantiation_FilterIns', 'PULL', 1, 'ftp\PrimePay\tocxc\xofilter', 'staging\PrimePay\in\xofilter', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_Substantiation*.csv',NULL, 'PrimePay', NULL, NULL,NULL,NULL);

INSERT LifeCycle([CycleId],[CycleName],[CycleState],[CycleStateSeq],[CycleEntryPoint],[CycleEndPoint],[CycleStartTime],[CycleEndTime],[ContinueOnError],[Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType],[ServiceType],[EIN])
VALUES('PrimePay_Substantiation_FilterIns','PrimePay_Substantiation_FilterIns','TRUNCATE',2,'',NULL,CAST(0x070046C323000000 AS Time),CAST(0x07001A7118020000 AS Time),NULL,'SUBSTANTIATION_FILTER',NULL,'PrimePay',NULL,NULL,NULL,NULL)

INSERT LifeCycle([CycleId],[CycleName],[CycleState],[CycleStateSeq],[CycleEntryPoint],[CycleEndPoint],[CycleStartTime],[CycleEndTime],[ContinueOnError],[Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType],[ServiceType],[EIN])
VALUES('PrimePay_Substantiation_FilterIns','PrimePay_Substantiation_FilterIns','INSERT_SUBSTANTIATION_FILTER',3,'staging\PrimePay\in\xofilter',NULL,CAST(0x070046C323000000 AS Time),CAST(0x07001A7118020000 AS Time),NULL,NULL,'PrimePay_Substantiation_schema.xml','PrimePay',NULL,'PrimePaySubstantiationFilter',NULL,NULL)

INSERT LifeCycle([CycleId],[CycleName],[CycleState],[CycleStateSeq],[CycleEntryPoint],[CycleEndPoint],[CycleStartTime],[CycleEndTime],[ContinueOnError],[Pattern],[ConfigFile],[TPAId],[CarrierId],[MapType],[ServiceType],[EIN])
VALUES('PrimePay_Substantiation_FilterIns','PrimePay_Substantiation_FilterIns','ARCHIVE',4,'staging\PrimePay\in\xofilter','archive\PrimePay\in\xofilter',CAST(0x070046C323000000 AS Time),CAST(0x07001A7118020000 AS Time),NULL,'PrimePay_Substantiation*.csv',NULL,'PrimePay',NULL,NULL,NULL,NULL)


INSERT FileLifeCycle([FileTypeId],[CycleId],[NotifyOnFailure],[NotifyOnSuccess])
VALUES('PrimePay_Substantiation_FilterIns','PrimePay_Substantiation_FilterIns','Y','Y')






 
 --PrimePay Post Claim Insert Process
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_ClaimProc', 'PrimePay_ClaimProc', 'PrimePay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_ClaimProc','PrimePay_ClaimProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimProc', 'PrimePay_ClaimProc', 'Validate_Claim', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay', null, null);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PrimePay_ClaimProc', 'PrimePay_ClaimProc', 'CHECK_EXPENSECOVERAGE', 2, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay',null, null, null);

	
INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PrimePay_ClaimProc', 'PrimePay_ClaimProc', 'UPDATE_POSTVALIDATE', 3, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay', null, null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_ClaimProc','PrimePay_ClaimProc','Y','Y');







--PrimePay Claim Aggregation
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_ClaimAgg', 'PrimePay_ClaimAgg', 'CXC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_ClaimAgg','PrimePay_ClaimAgg',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimAgg', 'PrimePay_ClaimAgg', 'Agg_Claim', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimAgg', 'PrimePay_ClaimAgg', 'Update_PostAgg', 2, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_ClaimAgg','PrimePay_ClaimAgg','Y','Y');







-- PrimePay Provider Gen

INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType])  VALUES ('ALGProvidersImport', 'ProviderMaster', 'ALGProvidersImport')

INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','GeneratedId','ProviderID');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','TPATPAId','TPATPAID');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','Name','ProviderName');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','Address1','ProviderAddressLine1');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','Address2','ProviderAddressLine2');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','State','ProviderState');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','City','ProviderCity');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','Zip','ProviderZip');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','PhoneNumber','ProviderPhoneNumber');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','TaxId','ProviderTaxId');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('ALGProvidersImport','Id','RecordTrackingNumber');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ProviderGen', 'PrimePay_ProviderGen', 'GEN_ALG_PROVIDERS', 1, NULL, 'staging\Primepay\out\providers', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PrimePay_ALGProvidersImport_schema.xml', 'PrimePay', NULL, 'ALGProvidersImport');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ProviderGen', 'PrimePay_ProviderGen', 'PUSH', 2, 'staging\Primepay\out\providers', 'ftp\Primepay\fromcxc\alegeus', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_ALG_Providers_*.mbi',NULL, 'PrimePay', NULL, NULL);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ProviderGen', 'PrimePay_ProviderGen', 'ARCHIVE', 3, 'staging\Primepay\out\providers', 'archive\PrimePay\out\providers', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_ALG_Providers_*.mbi',NULL, 'PrimePay', NULL, NULL);

-- Insert entry into FileLifeCycle table for PrimePay_ALG_Providers_State
Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_ProviderGen','PrimePay_ProviderGen','Y','Y');






-- PrimePay Claim Gen
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType])  VALUES ('ALGClaimsImport', 'Claim', 'ALGClaimsImport')

INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport','ReportType', 'ReportID')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'TPATPAId', 'TPATPAID')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'EmployerCode', 'TPAEmployerCode')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'SubscriberId', 'TPAEmployeeID')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'MemberId', 'TPADependentID')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'ServiceFromStr', 'DateOfServiceFrom')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'ServiceToStr', 'DateOfServiceTo')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'ClaimAmount', 'ApprovedClaimAmount')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'AccountTypeCode', 'AccountTypeCode')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'CategoryId', 'ServiceCategoryCode')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'IsAutoPayment', 'ClaimsCrossoverAutoPay')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'Provider', 'CXCGeneratedProviderID')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'EnforceAccountEffectiveDates', 'EnforceAccountEffectiveDates')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'Id', 'TrackingNumberEOB')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'ExternalClaimNumber', 'ExternalClaimNumber')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'ProviderName', 'MerchantNameProvider')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES ('ALGClaimsImport', 'Notes', 'Notes')

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_ClaimGen', 'PrimePay_ClaimGen', 'PrimePay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_ClaimGen','PrimePay_ClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');



INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimGen', 'PrimePay_ClaimGen', 'GEN_ALGCLAIM', 1, NULL, 'staging\Primepay\out\claims', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PrimePay_ALGClaimsImport_schema.xml', 'PrimePay', NULL, 'ALGClaimsImport');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimGen', 'PrimePay_ClaimGen', 'PUSH', 2, 'staging\Primepay\out\claims', 'ftp\Primepay\fromcxc\alegeus', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_ALG_Claims_*.mbi',NULL, 'PrimePay', NULL, NULL);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_ClaimGen', 'PrimePay_ClaimGen', 'ARCHIVE', 3, 'staging\Primepay\out\claims', 'archive\PrimePay\out\claims', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_ALG_Claims_*.mbi',NULL, 'PrimePay', NULL, NULL);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_ClaimGen','PrimePay_ClaimGen','Y','Y');







--PrimePay Manual Claim Gen
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'PrimePayManualClaimGen', N'Claim', N'PrimePayManualClaimGen');

INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'Processed','Reason');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ServiceType','Channel');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'EmployeeFirstName','EmployeeFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'EmployeeLastName','EmployeeLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'PayorId','EmployeeSSN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'PatientFirstName', 'PatientFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'PatientLastName', 'PatientLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'PatientSSN','PatientSSN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'EIN','EIN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ClaimNumber','ClaimNumber');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ClaimRecordNum','ServiceLineNumber');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'AdjustmentType','AdjustmentNumber');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ServiceFromStr', 'ServiceFromDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ServiceToStr', 'ServiceEndDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ProviderName', 'ProviderName'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'CrossoverDateStr', 'CrossoverDate'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'XOFileName', 'FileName'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'ReimbursementType','ReimbursementType');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'CarrierId','Carrier');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PrimePayManualClaimGen', 'Id', 'CXCId');

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_ManualClaimGen', 'PrimePay_ManualClaimGen', 'Primepay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT INTO schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
VALUES ('PrimePay_ManualClaimGen','PrimePay_ManualClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_ManualClaimGen', 'PrimePay_ManualClaimGen', 'GEN_MANUALCLAIM', 1, NULL, 'staging\Primepay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PrimePay_ManualClaim_schema.xml', 'PrimePay', null, 'PrimePayManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_ManualClaimGen', 'PrimePay_ManualClaimGen', 'GEN_MANUAL_ADJUSTMENT_CLAIM', 2, NULL, 'staging\Primepay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PrimePay_ManualClaim_schema.xml', 'PrimePay', null, 'PrimePayManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_ManualClaimGen', 'PrimePay_ManualClaimGen', 'Push_Claim', 3, 'staging\Primepay\out\claims', 'ftp\Primepay\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PRIMEPAY_MANUAL_*.csv', null,'PrimePay', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PrimePay_ManualClaimGen', 'PrimePay_ManualClaimGen', 'CLAIMARCH', 4, 'staging\Primepay\out\claims', 'archive\PrimePay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PRIMEPAY_MANUAL_*.csv', null, 'PrimePay', null, null, null);

INSERT INTO FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
VALUES ('PrimePay_ManualClaimGen','PrimePay_ManualClaimGen','Y','Y');


-- Primepay Audit Report
insert [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
values (N'PrimePay_Audit', N'PrimePay_Audit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


insert [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
values (N'PrimePay_Audit', N'PrimePay_Audit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


insert [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
values (N'PrimePay_Audit', N'PrimePay_Audit', N'CXCAUDIT', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'PrimePay', null, null, null);

insert [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
values (N'PrimePay_Audit', N'PrimePay_Audit', N'Y', N'Y')





-- PrimePay Prepare to Reprocess claims
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_Prepare_ClaimReProc', 'PrimePay_Prepare_ClaimReProc', 'PrimePay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_Prepare_ClaimReProc','PrimePay_Prepare_ClaimReProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_Prepare_ClaimReProc', 'PrimePay_Prepare_ClaimReProc', 'PREPARE_TO_REPROCESS_CLAIM', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PrimePay', null, null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_Prepare_ClaimReProc','PrimePay_Prepare_ClaimReProc','Y','Y');





--PrimePay Claim Gen Reprocess
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_RClaimGen', 'PrimePay_RClaimGen', 'PrimePay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePay_RClaimGen','PrimePay_RClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_RClaimGen', 'PrimePay_RClaimGen', 'GEN_ALGCLAIM_REPROCESS', 1, NULL, 'staging\Primepay\out\claims', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PrimePay_ALGClaimsImport_schema.xml', 'PrimePay', NULL, 'ALGClaimsImport');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_RClaimGen', 'PrimePay_RClaimGen', 'PUSH', 2, 'staging\Primepay\out\claims', 'ftp\Primepay\fromcxc\alegeus', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_Reprocess_ALG_Claims_*.mbi',NULL, 'PrimePay', NULL, NULL);


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePay_RClaimGen', 'PrimePay_RClaimGen', 'ARCHIVE', 3, 'staging\Primepay\out\claims', 'archive\PrimePay\out\claims', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay_Reprocess_ALG_Claims_*.mbi',NULL, 'PrimePay', NULL, NULL);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePay_RClaimGen','PrimePay_RClaimGen','Y','Y');





---- Primepay Manual Claim Gen for Reprocess
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePay_RManualClaimGen', 'PrimePay_RManualClaimGen', 'Primepay', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT INTO schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
VALUES ('PrimePay_RManualClaimGen','PrimePay_RManualClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_RManualClaimGen', 'PrimePay_RManualClaimGen', 'GEN_MANUALCLAIM_REPROCESS', 1, NULL, 'staging\Primepay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PrimePay_ManualClaim_schema.xml', 'PrimePay', null, 'PrimePayManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_RManualClaimGen', 'PrimePay_RManualClaimGen', 'GEN_MANUAL_ADJUSTMENT_CLAIM_REPROCESS', 2, NULL, 'staging\Primepay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PrimePay_ManualClaim_schema.xml', 'PrimePay', null, 'PrimePayManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PrimePay_RManualClaimGen', 'PrimePay_RManualClaimGen', 'Push_Claim', 3, 'staging\Primepay\out\claims', 'ftp\Primepay\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PRIMEPAY_REPROCESS_MANUAL_*.csv', null,'PrimePay', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PrimePay_RManualClaimGen', 'PrimePay_RManualClaimGen', 'CLAIMARCH', 4, 'staging\Primepay\out\claims', 'archive\PrimePay\out\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PRIMEPAY_REPROCESS_MANUAL_*.csv', null, 'PrimePay', null, null, null);



INSERT INTO FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
VALUES ('PrimePay_RManualClaimGen','PrimePay_RManualClaimGen','Y','Y');




--PrimePay Audit Report for Reprocessing
insert [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
values (N'PrimePay_RAudit', N'PrimePay_RAudit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


insert [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
values (N'PrimePay_RAudit', N'PrimePay_RAudit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


insert [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
values (N'PrimePay_RAudit', N'PrimePay_RAudit', N'CXCAUDIT_REPROCESS', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'PrimePay', null, null, null);

insert [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
values (N'PrimePay_RAudit', N'PrimePay_RAudit', N'Y', N'Y')






-- PrimePay ConnectiCare Medical &Pharma Claim Insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('CtCareClaim','Claim','CtCareClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','AmtAllowed','TP-ALLOW');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','AmtPaid','TP-PAY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','CoIns','AMTCOINS');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','ClaimNumber','CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','Copay','COPAY_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','Deductible','DEDUCT_AMOUNT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','Location','LOCATION_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','PatientId','MEMBER_NUMBER'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','ReimbursementDate','YMDPAID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','ServiceFrom','DT_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','ServiceType','RECORD-TYPE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','UserDefined1','CLAIM-TYPE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','UserDefined3','STATUS');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareClaim','UserDefined2','PRESCRIPTION-NBR');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePayConnectiCare_ClaimIns', 'PrimePayConnectiCare_ClaimIns', 'CtCare', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePayConnectiCare_ClaimIns','PrimePayConnectiCare_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayConnectiCare_ClaimIns', 'PrimePayConnectiCare_ClaimIns', 'PULL', 1, 'ftp\PrimePay\tocxc\claims\CtCare\MedicalPharma', 'staging\PrimePay\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PRIMEP*.txt', null, 'PrimePay', 'CtCare', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayConnectiCare_ClaimIns', 'PrimePayConnectiCare_ClaimIns', 'INSERT_CLAIM', 2, 'staging\PrimePay\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,NULL, 'PrimePay', 'CtCare', 'CtCareClaim');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayConnectiCare_ClaimIns', 'PrimePayConnectiCare_ClaimIns', 'CLAIMARCH', 3, 'staging\PrimePay\in\claims', 'archive\PrimePay\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PRIMEP*.txt', null, 'PrimePay', 'CtCare', null);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePayConnectiCare_ClaimIns','PrimePayConnectiCare_ClaimIns','Y','Y');






-- PrimePay ConnectiCare Behavioural Health Claim Insert
INSERT INTO CXCMapMaster (MapId, TableName, MapType) Values('CtCareUBHClaim','Claim','CtCareUBHClaim');

--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','CarrierId','CarrierID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ClaimNumber','ClaimNum');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ClaimReceiptType','ClaimReceiptType');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ClaimRecordNum','ClaimRecordNum');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','Copay','AmtCopay');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','CrossoverDate','CrossOverDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','Deductible','AmtDeduct');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','DivisionId','CCIDiv'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','EIN','CCIGroup');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','PatientFirstName','MemFname'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','PatientId','CCIMemNum');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','PatientLastName','MemLname');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderAddress1','ProvAddr1'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderAddress2','ProvAddr2');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderCity','ProvCity');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderId','ProvTaxID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderName','Payee');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderState','ProvState');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ProviderZip','ProvZip');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','RenderingProviderLastName','ProvName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ServiceFrom','U1.EffDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','ServiceTo','YMDToDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','UserDefined1','P1.ClaimPaidAs');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('CtCareUBHClaim','UserDefined2','CopayType');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePayConnectiCareUBH_ClaimIns', 'PrimePayConnectiCareUBH_ClaimIns', 'CtCare', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePayConnectiCareUBH_ClaimIns','PrimePayConnectiCareUBH_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayConnectiCareUBH_ClaimIns', 'PrimePayConnectiCareUBH_ClaimIns', 'PULL', 1, 'ftp\PrimePay\tocxc\claims\CtCare\UBH', 'staging\PrimePay\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, '*UBH*.*', NULL, 'PrimePay', 'CtCare', NULL);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PrimePayConnectiCareUBH_ClaimIns', 'PrimePayConnectiCareUBH_ClaimIns', 'INSERT_UBH_CLAIM', 2, 'staging\PrimePay\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'ConnectiCareUBH_schema.xml', 'PrimePay', 'CtCare', 'CtCareUBHClaim','H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayConnectiCareUBH_ClaimIns', 'PrimePayConnectiCareUBH_ClaimIns', 'CLAIMARCH', 3, 'staging\PrimePay\in\claims', 'archive\PrimePay\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, '*UBH*.*', NULL, 'PrimePay', 'CtCare', NULL);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePayConnectiCareUBH_ClaimIns','PrimePayConnectiCareUBH_ClaimIns','Y','Y');







--CoxHealth Claim Insert


insert into CXCMapMaster (MapId, TableName, MapType) Values('CoxHealthClaim','Claim','CoxHealthClaim');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','EIN','GroupNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','PatientId','PatientId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','PayorId','SubscriberSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','PatientFirstName','PatientFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','PatientMiddleName','PatientMiddleName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','PatientLastName','PatientLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ClaimNumber','ClaimNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ClaimRecordNum','LineNumber');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ServiceFrom','ServiceStartDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ServiceTo','ServiceEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','Deductible','Deductible');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','Copay','CoPay');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','Coins','CoInsurance');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','Notes','ProcedureDescription');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderId','MedicalProviderTaxID')
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderName','MedicalProviderName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderAddress1','MedicalProviderAddress');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderCity','MedicalProviderCity');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderState','MedicalProviderState');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('CoxHealthClaim','ProviderZip','MedicalProviderZip');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePayCoxHealth_MedicalClaimIns', 'PrimePayCoxHealth_MedicalClaimIns', 'CoxHealth', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePayCoxHealth_MedicalClaimIns','PrimePayCoxHealth_MedicalClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('PrimePayCoxHealth_MedicalClaimIns', 'PrimePayCoxHealth_MedicalClaimIns', 'PULL', 1, 'ftp\PrimePay\tocxc\claims\CoxHealth', 'staging\PrimePay\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay EOB*.xls', null, 'PrimePay', 'CoxHealth', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PrimePayCoxHealth_MedicalClaimIns', 'PrimePayCoxHealth_MedicalClaimIns', 'INSERT_CLAIM', 2, 'staging\PrimePay\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'CoxHealth_schema.xml',  'PrimePay', 'CoxHealth', 'CoxHealthClaim', 'H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType])
VALUES ('PrimePayCoxHealth_MedicalClaimIns', 'PrimePayCoxHealth_MedicalClaimIns', 'CLAIMARCH', 3, 'staging\PrimePay\in\claims', 'archive\PrimePay\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PrimePay EOB*.xls', null, 'PrimePay', 'CoxHealth', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePayCoxHealth_MedicalClaimIns','PrimePayCoxHealth_MedicalClaimIns','Y','Y');







-- PrimePay Excellus BSBC Medical Claim Insert
INSERT INTO CXCMapMaster (MapId, TableName, MapType) Values('ExcellusMedicalClaim','Claim','ExcellusMedicalClaim');

INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','AdjustmentType','AdjustmentSeqNbr');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','AmtAllowed','AllowableAmount');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','AmtCharged','AmountCharged');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','AmtPaid','LineItemPaidAmount'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ClaimNumber','ClaimID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ClaimRecordNum','Line-ItemSequenceNumber'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','CoIns','CoinsuranceAmount');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','Copay','CopayAmount');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','Deductible','DeductibleAmount'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','DependencyCode','Suffix');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','EIN','GroupID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','EmployeeFirstName','SubscriberFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','EmployeeLastName','SubscriberLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','EmployerName','GroupName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','GroupId','SubgroupID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','InNetwork','ProviderNetworkStatus');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PatientFirstName','MemberFirstName');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PatientDOB','BirthDate');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PatientLastName','MemberLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PatientSSN','MemberSSN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PayorId','SubscriberSSN');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','PayTheProvider','Provider_Pay');
--INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','Provider','CXCGeneratedProviderID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderAddress2','AddressLine2');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderCity','AddressCity');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderId','PayeeProviderTaxID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderName','PayeeProviderName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderNum','PayeeProviderNationalPractitionerID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderState','ProviderAddressStateCode');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderZip','ProviderAddressZipCode');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ReimbursementDate','ClaimPaidDateKey');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ServiceFrom','ServiceFromDateKey');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ServiceTo','ServiceToDateKey');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','SubscriberId','SubscriberID');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','UserDefined1','ClaimPayeeCode');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','UserDefined2','PatientAccountNumber');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','UserDefined3','PayeeProviderIdentifier');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) Values('ExcellusMedicalClaim','ProviderAddress1','AddressLine1');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PrimePayExcellusMedical_ClaimIns', 'PrimePayExcellusMedical_ClaimIns', 'CtCare', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PrimePayExcellusMedical_ClaimIns','PrimePayExcellusMedical_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayExcellusMedical_ClaimIns', 'PrimePayExcellusMedical_ClaimIns', 'PULL', 1, 'ftp\PrimePay\tocxc\claims\ExcellusBCBS', 'staging\PrimePay\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'HRA Medical Claims*.*', NULL, 'PrimePay', 'ExcellusBCBS', NULL);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PrimePayExcellusMedical_ClaimIns', 'PrimePayExcellusMedical_ClaimIns', 'INSERT_MEDICAL_CLAIM', 2, 'staging\PrimePay\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'Excellus_MedicalClaimRecord_schema.xml', 'PrimePay', 'ExcellusBCBS', 'ExcellusMedicalClaim','H');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PrimePayExcellusMedical_ClaimIns', 'PrimePayExcellusMedical_ClaimIns', 'CLAIMARCH', 3, 'staging\PrimePay\in\claims', 'archive\PrimePay\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'HRA Medical Claims*.*', NULL, 'PrimePay', 'ExcellusBCBS', NULL);


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PrimePayExcellusMedical_ClaimIns','PrimePayExcellusMedical_ClaimIns','Y','Y');










-- Processed flags
INSERT INTO [Flag] VALUES('SUBSTANT','Manual','PrimePay','Claim is for Substantiation only', 'Claim');

INSERT INTO [Flag] VALUES('NOEIN','Manual','PrimePay','Employer ID is missing', 'Claim');
--INSERT INTO VALUES('INVPART','Manual','PrimePay','Payor ID is missing in filter file', 'Claim');
INSERT INTO [Flag] VALUES('SDF','Manual','PrimePay','Service date of claim is outside of plan year', 'Claim');
INSERT INTO [Flag] VALUES('NOPROV','Manual','PrimePay','Provider Tax ID or Zip code is missing', 'Claim');

INSERT INTO [Flag] VALUES ('NOAUTO', 'Manual', 'PrimePay', 'Employee has not opted for auto crossover', 'Claim');
INSERT INTO [Flag] VALUES ('SPECIAL', 'Manual', 'PrimePay', 'Employee has a special Service Category code', 'Claim');
INSERT INTO [Flag] VALUES ('INVELIG', 'Manual', 'PrimePay', 'Employee or Dependent has invalid record in filter file', 'Claim');
INSERT INTO [Flag] VALUES ('NOPART', 'Manual', 'PrimePay', 'Payor ID is missing in Claim file', 'Claim');
INSERT INTO [Flag] VALUES ('NEG', 'Manual', 'PrimePay', 'Net amount is negative after aggregation', 'Claim');
INSERT INTO [Flag] VALUES ('ADJ', 'Manual', 'PrimePay', 'Net amount of adjustment claim is positive after aggregation', 'Claim');
INSERT INTO [Flag] VALUES ('INVGRP','Filtered','PrimePay','Group is missing in filter file', 'Claim');


-- P2P Status Flags
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('NOTAXIDORZIP','Filtered','PrimePay',NULL,'Provider');
insert into P2PStatus (Name, Type, TPAId, [Desc], AppliesTo) Values ('NOTIFIED','Complete','PrimePay',NULL,'Provider');



--PrimePay ProviderMaster Import
--insert into CXCMapMaster (MapId, TableName, MapType) Values('PrimePayProviderMaster','ProviderMaster','PrimePayProviderMaster');

--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','GeneratedId','PROVIDER_ID');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','Name','PROVIDER_NAME');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','Address1','ADDRESS_LINE_1');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','Address2','ADDRESS_LINE_2');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','City','PROVIDER_CITY');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','State','PROVIDER_STATE'); 
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','Zip','PROVIDER_ZIP');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','Phone','PROVIDER_PHONE');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','TaxId','PROVIDER_TAX_ID');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','TPAProviderStatus','PROVIDER_STATUS');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PrimePayProviderMaster','UserDefinedField1','TPA_ID'); 


--INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
--VALUES ('PrimePay_ProviderMasterIns', 'PrimePay_ProviderMasterIns', 'CtCare', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

--INSERT into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
--Values ('PrimePay_ProviderMasterIns','PrimePay_ProviderMasterIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


--INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
--VALUES (N'PrimePay_ProviderMasterIns', N'PrimePay_ProviderMasterIns', N'PULL', 1, N'ftp\PRIMEPAY\tocxc\xofilter', N'staging\PRIMEPAY\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PrimePay_ProviderMaster*.csv', null, 'PrimePay', null, null);

--INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
--VALUES (N'PrimePay_ProviderMasterIns', N'PrimePay_ProviderMasterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PROVIDER_MASTER', null, 'PrimePay', null, null);

--INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
--VALUES (N'PrimePay_ProviderMasterIns', N'PrimePay_ProviderMasterIns', N'INSERT_PROVIDER_MASTER', 3, N'staging\PRIMEPAY\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'PrimePay_ProviderMasterRecord_schema.xml', 'PrimePay', 'CtCare', 'PrimePayProviderMaster');

--INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
--VALUES (N'PrimePay_ProviderMasterIns', N'PrimePay_ProviderMasterIns', N'ARCHIVE', 4, N'staging\PRIMEPAY\in\xofilter', N'archive\PRIMEPAY\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PrimePay_ProviderMaster*.csv', null, 'PrimePay', null, null);

--Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
--Values ('PrimePay_ProviderMasterIns','PrimePay_ProviderMasterIns','Y','Y');




















USE [MsbuildCXC]
GO
--Metadata for PayFlex Eligibility insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('PayFlexEligibilityFilter','Eligibility','PayFlexEligibilityFilter');
 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','SubscriberMiddleName','ParticipantMiddleInitial');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','GracePeriodEndDate','GracePeriodEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','RunOutDate','RunOutDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','SubscriberSSN','ParticipantSSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','SubscriberLastName' ,'ParticipantLastName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','SubscriberId','ParticipantId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','SubscriberFirstName','ParticipantFirstName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','EmployerName','EmployerName');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','EIN' ,'Employer');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','BenefitEffectiveDate','CoverageStartDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','BenefitTermDate','CoverageEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','PlanStartDate','PlanStartDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','PlanEndDate','PlanEndDate');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','TPASubscriberId','CUMBID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexEligibilityFilter','UserDefined1','DebitCardSubstantiation');



INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'PayFlex', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'PULL', 1, N'ftp\PayFlex\tocxc\xofilter', N'staging\PayFlex\in\xofilter', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_ELI_*.PSV', null, 'PayFlex', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'ELIGIBILITY_FILTER', null, 'PayFlex', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'INSERT_ELIGIBILITY_FILTER', 3, N'staging\PayFlex\in\xofilter', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'EligibilityFilter_schema.xml', 'PayFlex', null, 'PayFlexEligibilityFilter');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'ARCHIVE', 4, N'staging\PayFlex\in\xofilter', N'archive\PayFlex\in\xofilter', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_ELI_*.PSV', null, 'PayFlex', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PayFlex_EligibilityFilterIns', N'PayFlex_EligibilityFilterIns', N'Y', N'Y');


--PayFLex GroupMap insert 
insert into CXCMapMaster (MapId, TableName, MapType) Values('PayFlexGroupMap','Groupmap','PayFlexGroupMap');
 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexGroupMap','CarrierId','CarrierId');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexGroupMap','EIN','EIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexGroupMap','GroupId','GroupId');
 

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'PayFlex', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'PULL', 1, N'ftp\PayFlex\tocxc\mapping', N'staging\PayFlex\in\mapping', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_GroupMapping_*.PSV', null, 'PayFlex', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'TRUNCATE', 2, N'', NULL, CAST(0x0700F44AA9080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'GROUP_MAP', null, 'PayFlex', null, null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'INSERT_GROUP_MAP', 3, N'staging\PayFlex\in\mapping', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'PayFlex_GroupMap_schema.xml', 'PayFlex', null, 'PayFlexGroupMap');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'ARCHIVE', 4, N'staging\PayFlex\in\mapping', N'archive\PayFlex\in\mapping', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_GroupMapping_*.PSV', null, 'PayFlex', null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PayFlex_GroupMapIns', N'PayFlex_GroupMapIns', N'Y', N'Y');


--PayFlex debit card transaction
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'PayFlexTransaction', N'Transaction', N'PayFlexTransaction')

INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'TPATransactionId', N'TransactionId')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ServiceDate', N'ServiceDate')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'TransactionDate', N'TransactionDate')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'Amt', N'Amount')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ProviderName', N'ProviderName')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ParticipantSSN', N'ParticipantSSN')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ParticipantId', N'ParticipantId')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ParticipantFirstName', N'ParticipantFirstName')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ParticipantMiddleName', N'ParticipantMiddleInitial')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ParticipantLastName', N'ParticipantLastName')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'EIN', N'EmployerId')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'EmployerName', N'EmployerName')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'TPAParentTransactionId', N'ClaimId')
INSERT [dbo].[CXCMap] ([MapId], [TableColumnName], [ColumnName]) VALUES (N'PayFlexTransaction', N'ChannelCode', N'Channel')

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', N'PayFlex', N'Y', CAST(N'2009-12-31 00:00:00.000' AS DateTime), NULL)

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', CAST(N'2010-05-12 17:00:00.000' AS DateTime), 3, N'N', N'0,1,2,3,4,5,6')

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', N'PULL', 1, N'ftp\PayFlex\toCXC\transactions', N'staging\PayFlex\in\transactions', CAST(N'00:00:00' AS Time), CAST(N'00:15:00' AS Time), NULL, N'PF_TRA_*.psv', NULL, N'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', N'INSERT_TRANSACTION', 2, N'staging\PayFlex\in\transactions', NULL, CAST(N'00:01:00' AS Time), CAST(N'00:15:00' AS Time), NULL, NULL, N'PayFlex_Transaction_Schema.xml', N'PayFlex', NULL, N'PayFlexTransaction', NULL, NULL)

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', N'ARCHIVE', 3, N'staging\PayFlex\in\transactions', N'archive\PayFlex\in\transactions', CAST(N'00:02:00' AS Time), CAST(N'00:15:00' AS Time), NULL, N'PF_TRA_*.psv', NULL, N'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) VALUES (N'PayFlex_TransactionIns', N'PayFlex_TransactionIns', N'Y', N'Y')



--PayFlex Check Duplicate Transactions

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_CheckDuplicateTransaction', 'PayFlex_CheckDuplicateTransaction', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_CheckDuplicateTransaction','PayFlex_CheckDuplicateTransaction',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');
 
INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateTransaction', 'PayFlex_CheckDuplicateTransaction', 'CHECK_DUPLICATE_TRANSACTION', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', null, null, null); 

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_CheckDuplicateTransaction','PayFlex_CheckDuplicateTransaction','Y','Y');



-- Validate debit card transaction
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_TransactionProc', 'PayFlex_TransactionProc', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_TransactionProc','PayFlex_TransactionProc',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlex_TransactionProc', 'PayFlex_TransactionProc', 'VALIDATE_TRANSACTION', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_TransactionProc','PayFlex_TransactionProc','Y','Y');





-- Process PayFlex Substantiation Feed  
INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayFlex_SubstantiationProc', 'PayFlex_SubstantiationProc', 'PULL', 1, 'ftp\PayFlex\toCXC\transactions', 'staging\PayFlex\in\transactions', CAST(N'00:00:00' AS Time), CAST(N'00:15:00' AS Time), NULL, 'PF_PFSUBstantiatedClaims_*.psv', NULL, 'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayFlex_SubstantiationProc', 'PayFlex_SubstantiationProc', 'PROCESS_SUBSTANTIATED_TRANSACTION', 2, 'staging\PayFlex\in\transactions', NULL, CAST(N'00:01:00' AS Time), CAST(N'00:15:00' AS Time), NULL, NULL, 'PayFlex_Substantiation_Schema.xml', 'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayFlex_SubstantiationProc', 'PayFlex_SubstantiationProc', 'ARCHIVE', 3, 'staging\PayFlex\in\transactions', 'archive\PayFlex\in\transactions', CAST(N'00:02:00' AS Time), CAST(N'00:15:00' AS Time), NULL, 'PF_PFSUBstantiatedClaims_*.psv', NULL, 'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES ('PayFlex_SubstantiationProc', 'PayFlex_SubstantiationProc', 'PayFlex', 'Y', CAST('2009-12-31 00:00:00.000' AS DateTime), NULL)


INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) VALUES ('PayFlex_SubstantiationProc', 'PayFlex_SubstantiationProc', 'Y', 'Y')






-- Match Claims with Transactions
INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_ClaimMatch', N'PayFlex_ClaimMatch', N'PayFlex', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PayFlex_ClaimMatch', N'PayFlex_ClaimMatch', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES (N'PayFlex_ClaimMatch', N'PayFlex_ClaimMatch', N'MATCH_CLAIM', 1, NULL, NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, null, 'PayFlex', null, null, null);

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PayFlex_ClaimMatch', N'PayFlex_ClaimMatch', N'Y', N'Y');




----- Generate Transaction file for Substantiated Transactions
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) 
values ('PayFlexSubstantiatedTransactionGen', 'SubstantiatedTransaction', 'PayFlexSubstantiatedTransactionGen')

INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PayFlexSubstantiatedTransactionGen','TransactionType','TransactionType');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PayFlexSubstantiatedTransactionGen','TPAParentTransactionId','ClaimId');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PayFlexSubstantiatedTransactionGen','TPATransactionId','TransactionID');
INSERT [dbo].[CXCMap]  (MapId, TableColumnName, ColumnName) Values('PayFlexSubstantiatedTransactionGen','NoteDetails','NoteDetails');

Insert LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
values ('PayFlex_Substantiated_TransactionsGen', 'PayFlex_Substantiated_TransactionsGen', 'GEN_SUBSTANT_TRANSACTION', 1, NULL, 'staging\Payflex\out\transactions', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'PayFlex_Substantiated_Transaction_Gen_schema.xml', 'PayFlex', NULL, 'PayFlexSubstantiatedTransactionGen');

Insert LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
values ('PayFlex_Substantiated_TransactionsGen', 'PayFlex_Substantiated_TransactionsGen', 'PUSH', 2, 'staging\Payflex\out\transactions', 'ftp\Payflex\fromcxc\transactions', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_MAT_*.psv',NULL, 'PayFlex', NULL, NULL);

Insert LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
values ('PayFlex_Substantiated_TransactionsGen', 'PayFlex_Substantiated_TransactionsGen', 'ARCHIVE', 3, 'staging\Payflex\out\transactions', 'archive\PayFlex\out\transactions', CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_MAT_*.psv',NULL, 'PayFlex', NULL, NULL);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
values ('PayFlex_Substantiated_TransactionsGen','PayFlex_Substantiated_TransactionsGen','Y','Y');




-----Generate Transaction Substantiation Audit Report----
insert [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
values (N'PayFlexTransactions_Audit', N'PayFlexTransactions_Audit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


insert [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
values (N'PayFlexTransactions_Audit', N'PayFlexTransactions_Audit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


insert [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
values (N'PayFlexTransactions_Audit', N'PayFlexTransactions_Audit', N'CXCTRANSACTIONAUDIT', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'PayFlex', null, null, null);

insert [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
values (N'PayFlexTransactions_Audit', N'PayFlexTransactions_Audit', N'Y', N'Y')

--PayFlex Check Duplicate Claims

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_CheckDuplicateClaim','PayFlex_CheckDuplicateClaim',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');
 
INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 1, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'DELDEN', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 2, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'HCSC', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 3, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'Aetna', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 4, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'HBCBS', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 5, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'BCBSKC', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 6, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'BCBS', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 7, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'EYEMED', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 8, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'Kaiser', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 9, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'UHC', null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
VALUES ('PayFlex_CheckDuplicateClaim', 'PayFlex_CheckDuplicateClaim', 'CHECK_DUPLICATE_CLAIM', 10, null, NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', 'UPMC', null, null);    


Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_CheckDuplicateClaim','PayFlex_CheckDuplicateClaim','Y','Y');



--PayFlex claim validation
INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayFlex_ClaimProc', 'PayFlex_ClaimProc', 'VALIDATE_CLAIM', 1, NULL, NULL, CAST(N'00:00:00' AS Time), CAST(N'00:15:00' AS Time), NULL, NULL, NULL, 'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES ('PayFlex_ClaimProc', 'PayFlex_ClaimProc', 'PayFlex', 'Y', CAST('2009-12-31 00:00:00.000' AS DateTime), NULL)

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) VALUES ('PayFlex_ClaimProc', 'PayFlex_ClaimProc', 'Y', 'Y')




--PayFlex claim Aggregation
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_ClaimAgg', 'PayFlex_ClaimAgg', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_ClaimAgg','PayFlex_ClaimAgg',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlex_ClaimAgg', 'PayFlex_ClaimAgg', 'Agg_Claim', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', null, null);

INSERT into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_ClaimAgg','PayFlex_ClaimAgg','Y','Y');




-- Insert Consolidate claim.
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_Consolidated_ClaimIns', 'PayFlex_Consolidated_ClaimIns', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
VALUES ('PayFlex_Consolidated_ClaimIns','PayFlex_Consolidated_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlex_Consolidated_ClaimIns', 'PayFlex_Consolidated_ClaimIns', 'CONSOLIDATE_CLAIM', 1, NULL, NULL, CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, null, 'PayFlex', null, null);

INSERT into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_Consolidated_ClaimIns','PayFlex_Consolidated_ClaimIns','Y','Y');




-- Validate Consolidated Claims
INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayFlex_ConsolidatedClaimProc', 'PayFlex_ConsolidatedClaimProc', 'VALIDATE_CONSOLIDATED_CLAIM', 1, NULL, NULL, CAST(N'00:00:00' AS Time), CAST(N'00:15:00' AS Time), NULL, NULL, NULL, 'PayFlex', NULL, NULL, NULL, NULL)

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES ('PayFlex_ConsolidatedClaimProc', 'PayFlex_ConsolidatedClaimProc', 'PayFlex', 'Y', CAST('2009-12-31 00:00:00.000' AS DateTime), NULL)

INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) VALUES ('PayFlex_ConsolidatedClaimProc', 'PayFlex_ConsolidatedClaimProc', 'Y', 'Y')




----- Generate Manual Claim file for PayFlex 
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES (N'PayFlexManualClaimGen', N'Claim', N'PayFlexManualClaimGen');

INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'Status','Reason');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'CrossoverDateStr', 'CrossoverDate'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'XOFileName', 'XOFileName'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ServiceFrom', 'ServiceFrom');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'CarrierId','CarrierId');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'Channel','Channel');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'EIN','EIN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ClaimNumber','ClaimNumber');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ReimbursementType','ReimbursementType');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ParticipantSSN','ParticipantSSN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ParticipantFirstName','ParticipantFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ParticipantLastName','ParticipantLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'PatientFirstName', 'PatientFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'PatientLastName', 'PatientLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'ProviderName', 'ProviderName'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'Copay', 'Copay'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'Deductible', 'Deductible'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'Coins', 'Coins'); 
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualClaimGen', 'OtherPR', 'OtherPR'); 



INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_ManualClaimGen', 'PayFlex_ManualClaimGen', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT INTO schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
VALUES ('PayFlex_ManualClaimGen','PayFlex_ManualClaimGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_ManualClaimGen', 'PayFlex_ManualClaimGen', 'GEN_MANUALCLAIM', 1, NULL, 'staging\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PayFlex_ManualClaim_schema.xml', 'PayFlex', null, 'PayFlexManualClaimGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_ManualClaimGen', 'PayFlex_ManualClaimGen', 'Push_Claim', 2, 'staging\PayFlex\out\manual', 'ftp\PayFlex\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PayFlex_MANUAL_*.csv', null,'PayFlex', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PayFlex_ManualClaimGen', 'PayFlex_ManualClaimGen', 'CLAIMARCH', 3, 'staging\PayFlex\out\manual', 'archive\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PayFlex_MANUAL_*.csv', null, 'PayFlex', null, null, null);


INSERT INTO FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
VALUES ('PayFlex_ManualClaimGen','PayFlex_ManualClaimGen','Y','Y');







--Generate PayFlex Manual Employee file
INSERT [dbo].[CXCMapMaster] ([MapId], [TableName], [MapType]) VALUES ('PayFlexManualEmployeeGen', 'Claim', 'PayFlexManualEmployeeGen');

INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'Status','Reason');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'ParticipantFirstName','EmployeeFirstName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'ParticipantLastName','EmployeeLastName');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'ParticipantSSN','EmployeeSSN');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'EIN','EmployerId');
INSERT INTO CXCMap (MapId, TableColumnName, ColumnName) VALUES('PayFlexManualEmployeeGen', 'CarrierId','Carrier');


INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_ManualEmployeeGen', 'PayFlex_ManualEmployeeGen', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT INTO schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_ManualEmployeeGen','PayFlex_ManualEmployeeGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_ManualEmployeeGen', 'PayFlex_ManualEmployeeGen', 'GEN_MANUALEMPLOYEE', 1, NULL, 'staging\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PayFlexManualEmployee_schema.xml', 'PayFlex', null, 'PayFlexManualEmployeeGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_ManualEmployeeGen', 'PayFlex_ManualEmployeeGen', 'Push_Claim', 2, 'staging\PayFlex\out\manual', 'ftp\PayFlex\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_MANUAL_EMPLOYEE_*.csv', null,'PayFlex', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PayFlex_ManualEmployeeGen', 'PayFlex_ManualEmployeeGen', 'CLAIMARCH', 3, 'staging\PayFlex\out\manual', 'archive\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_MANUAL_EMPLOYEE_*.csv', null, 'PayFlex', null, null, null);

INSERT INTO FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
VALUES ('PayFlex_ManualEmployeeGen','PayFlex_ManualEmployeeGen','Y','Y');






-----Generate Claims Audit Report
insert [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
values (N'PayFlexClaims_Audit', N'PayFlexClaims_Audit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)


insert [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
values (N'PayFlexClaims_Audit', N'PayFlexClaims_Audit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


insert [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
values (N'PayFlexClaims_Audit', N'PayFlexClaims_Audit', N'CXCCLAIMAUDIT', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'PayFlex', null, null, null);

insert [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
values (N'PayFlexClaims_Audit', N'PayFlexClaims_Audit', N'Y', N'Y')






--PayFlex Manual Employee Gen for Reprocessing
INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlex_RManualEmployeeGen', 'PayFlex_RManualEmployeeGen', 'PayFlex', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlex_RManualEmployeeGen','PayFlex_RManualEmployeeGen',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_RManualEmployeeGen', 'PayFlex_RManualEmployeeGen', 'GEN_MANUALEMPLOYEE_REPROCESS', 1, NULL, 'staging\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, null, 'PayFlexManualEmployee_schema.xml', 'PayFlex', null, 'PayFlexManualEmployeeGen', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType])  
VALUES ('PayFlex_RManualEmployeeGen', 'PayFlex_RManualEmployeeGen', 'Push_Claim', 2, 'staging\PayFlex\out\manual', 'ftp\PayFlex\fromcxc\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_REPROCESS_MANUAL_EMPLOYEE_*.csv', null,'PayFlex', null, null, null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES ('PayFlex_RManualEmployeeGen', 'PayFlex_RManualEmployeeGen', 'CLAIMARCH', 3, 'staging\PayFlex\out\manual', 'archive\PayFlex\out\manual', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,'PF_REPROCESS_MANUAL_EMPLOYEE_*.csv', null, 'PayFlex', null, null, null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlex_RManualEmployeeGen','PayFlex_RManualEmployeeGen','Y','Y');






-----Generate Claims Audit Report during Reprocess
insert [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
values (N'PayFlexClaims_RAudit', N'PayFlexClaims_RAudit', N'CXC', N'Y', CAST(0x00011D5800000000 AS DateTime), NULL)

insert [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
values (N'PayFlexClaims_RAudit', N'PayFlexClaims_RAudit', CAST(0x00009D8E00000000 AS DateTime), 1, N'N', N'1,2,3,4,5,6')


insert [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType], [ServiceType]) 
values (N'PayFlexClaims_RAudit', N'PayFlexClaims_RAudit', N'CXCCLAIMAUDIT_REPROCESS', 1, NULL, NULL, CAST(0x070050CFDF960000 AS Time), CAST(0x0700969203970000 AS Time), NULL, null, null, 'PayFlex', null, null, null);

insert [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
values (N'PayFlexClaims_RAudit', N'PayFlexClaims_RAudit', N'Y', N'Y')




--Aetna Traditional Claim insert
insert into CXCMapMaster (MapId, TableName, MapType) Values('PayFlexAetnaTradClaimsInsert','Claim','PayFlexAetnaTradClaimsInsert');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','AdjustmentType','ADJMNT-IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','AmtCharged','CLAIM-TOTAL-SUBMITTED-EXPENSES');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','AmtPaid','CLAIM-TOTAL-PAID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ClaimNumber','ACAS-CLAIM-NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ClaimRecordNum' ,'ACAS-CLAIM-SEGMENT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','EmployeeFirstName','CLAIM-FIRST-NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','EmployeeLastName','CLAIM-LAST-NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','EIN' ,'PAYFLEX-CUSTOMER-NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','InNetwork','PAR-IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','PatientFirstName','CLAIM-CLAIMANT-NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','PatientId','ACAS-DEPENDENT-ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','PayorId','PAYFLEX-SUBSCRIBER-SSN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderAddress1','ACAS-BILL-PROV-ADDR-LN1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderAddress2','ACAS-BILL-PROV-ADDR-LN2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderCity','ACAS-BILL-PROV-CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderId','ACAS-BILL-PROV-TAX-ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderName','ACAS-PROV-TIN-NAME-FIRST');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderNum','ACAS-BILL-PROV-ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderState','ACAS-BILL-PROV-STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ProviderZip','ACAS-BILL-PROV-ZIP');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','RenderingProviderFirstName','ACAS-PRV-FRST-NM');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','RenderingProviderLastName','ACAS-PRV-LAST-NM');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ServiceFrom' ,'CLAIM-RECEIVED-DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ServiceTypeCode','CLAIM-TYPE-OF-SERVICE-CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','SubscriberId','CL-PA-ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','TotalPatientLiability','ACAS-PATIENT-RESP-AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','UserDefined1','RCLAIM-FSA-IND');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','ReimbursementDate','CLAIM-ECI-DATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexAetnaTradClaimsInsert','DivisionId','CLAIM-ACCT-CONTROL-NUMBER');





INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayFlexAetTrad_ClaimIns', 'PayFlexAetTrad_ClaimIns', 'Aetna', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayFlexAetTrad_ClaimIns','PayFlexAetTrad_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlexAetTrad_ClaimIns', 'PayFlexAetTrad_ClaimIns', 'PULL', 1, 'ftp\PayFlex\tocxc\claims\Aetna', 'staging\PayFlex\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PF_AetTrad_*.txt', null, 'PayFlex', 'Aetna', null);

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlexAetTrad_ClaimIns', 'PayFlexAetTrad_ClaimIns', 'INSERT_TRAD_CLAIM', 2, 'staging\PayFlex\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL,NULL,'Aetna_Traditional_schema.xml', 'PayFlex', 'Aetna', 'PayFlexAetnaTradClaimsInsert');

INSERT LifeCycle (CycleId, CycleName, CycleState, CycleStateSeq, CycleEntryPoint, CycleEndPoint, CycleStartTime, CycleEndTime, ContinueOnError, [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES ('PayFlexAetTrad_ClaimIns', 'PayFlexAetTrad_ClaimIns', 'CLAIMARCH', 3, 'staging\PayFlex\in\claims', 'archive\PayFlex\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PF_AetTrad_*.txt', null, 'PayFlex', 'Aetna', null);

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayFlexAetTrad_ClaimIns','PayFlexAetTrad_ClaimIns','Y','Y');




-- Insert DeltaDental Claim.
insert into CXCMapMaster (MapId, TableName, MapType) Values('DeltaDentalClaimInsert','Claim','DeltaDentalClaimInsert');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','AdjClaimNumber','ORIGINAL_CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','AdjustmentType','ADJUSTMENT_INDICATOR');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','AmtAllowed','NEGOTIATED_RATE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','AmtCharged','CHARGED_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','AmtPaid' ,'BENEFITS_PAID_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ClaimNumber' ,'CLAIM_NUMBER'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','UserDefined4','COINSURANCE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','UserDefined2','COPAY_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','UserDefined3' ,'DEDUCTIBLE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','EmployeeFirstName','MEMBER_FIRST_NAME');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','EmployeeMiddleName','MEMBER_MID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','EmployeeLastName','MEMBER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','EmployerName' ,'GROUP_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','EIN','GROUP_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','TotalPatientLiability','PATIENT_RESPONSIBILITY_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PatientFirstName','PATIENT_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PatientId' ,'PATIENT_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PatientDOB','PATIENT_DOB');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PatientMiddleName','PATIENT_MID');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PatientSuffix','PATIENT_SUFFIX');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','PayorId','MEMBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProcedureCode','PROCEDURE_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderAddress1' ,'PAYTO_ADDRESS_1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderAddress2','PAYTO_ADDRESS_2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderCity','PAYTO_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderFirstName','PAYTO_PROVIDER_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderId','PAYTO_PROVIDER_FTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderLastName' ,'PAYTO_PROVIDER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderName','PAYTO_PROVIDER_FACILITY_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderNum','PAYTO_PROVIDER_ID_NPI');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ProviderState','PAYTO_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ReimbursementDate','ADJUDICTED');

--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','RenderingProviderFirstName','PAYTO_PROVIDER_FIRST_NAME');
--insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','RenderingProviderLastName' ,'PAYTO_PROVIDER_LAST_NAME');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ServiceFrom' ,'BEGIN_DATE_OF_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ServiceTo','END_DATE_OF_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','ServiceTypeCode','CLAIM_TYPE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('DeltaDentalClaimInsert','UserDefined1','PAYTO_PROVIDER_MID');


INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', N'PayFlex', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', N'PULL', 1, N'ftp\PayFlex\toCXC\claims\DeltaDental', N'staging\PayFlex\in\claims', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_*DeltaDental_*.txt', null, 'PayFlex', 'DELDEN', null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', N'INSERT_CLAIM', 2, N'staging\PayFlex\in\claims', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'DeltaDental_ClaimRecord_schema.xml', 'PayFlex', 'DELDEN', 'DeltaDentalClaimInsert', 'D');

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', N'ARCHIVE', 3, N'staging\PayFlex\in\claims', N'archive\PayFlex\in\claims', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_*DeltaDental_*.txt', null, 'PayFlex', 'DELDEN', null);


INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PayFlex_DeltaDental_ClaimIns', N'PayFlex_DeltaDental_ClaimIns', N'Y', N'Y');



-- Insert HCSC Claim
insert into CXCMapMaster values('HCSCClaimInsert','Claim','HCSCClaimInsert')

insert into CXCMap values('HCSCClaimInsert','AdjustmentType','FSA-Claim-Adj-IND')
insert into CXCMap values('HCSCClaimInsert','ClaimNumber','FSA-Claim-ID')
insert into CXCMap values('HCSCClaimInsert','AmtCharged','FSA-TOTAL-BILL-CHARGE')
insert into CXCMap values('HCSCClaimInsert','AmtPaid','FSA-TOTAL-BENE-PAID-AMT')
insert into CXCMap values('HCSCClaimInsert','ClaimRecordNum','FSA-RECORD-SEQ')
insert into CXCMap values('HCSCClaimInsert','UserDefined4','FSA-TOTAL-CLAIM-COINS')
insert into CXCMap values('HCSCClaimInsert','UserDefined2','FSA-TOTAL-CLAIM-COPAY')
insert into CXCMap values('HCSCClaimInsert','UserDefined3','FSA-Total-CLAIM-DEDUCTIBLE')
insert into CXCMap values('HCSCClaimInsert','EIN','FSA-GROUP')
insert into CXCMap values('HCSCClaimInsert','EmployeeFirstName','FSA-Subcriber-First-Name')
insert into CXCMap values('HCSCClaimInsert','EmployeeMiddleName','FSA-Subscriber-MI-Initial')
insert into CXCMap values('HCSCClaimInsert','EmployeeLastName','FSA-Subscriber-Last-NAME')
insert into CXCMap values('HCSCClaimInsert','GroupId',' FSA-GROUP')
insert into CXCMap values('HCSCClaimInsert','PatientFirstName','FSA-Patient-First-Name')
insert into CXCMap values('HCSCClaimInsert','PatientLastName','FSA-Patient-Last-NAME')
insert into CXCMap values('HCSCClaimInsert','PatientMiddleName','FSA-Patient-MI-Initial')
insert into CXCMap values('HCSCClaimInsert','PayorId','FSA-SSN')
insert into CXCMap values('HCSCClaimInsert','PlanId','FSA-GROUP-HSCC')
insert into CXCMap values('HCSCClaimInsert','ProviderAddress1','FSA-Provider-Address')
insert into CXCMap values('HCSCClaimInsert','ProviderCity','FSA-Provider-city')
insert into CXCMap values('HCSCClaimInsert','ProviderId','FSA-Provider-TAX-ID')
insert into CXCMap values('HCSCClaimInsert','ProviderName','FSA-Provider-name')
insert into CXCMap values('HCSCClaimInsert','ProviderNum','FSA-Provider-NPI')
insert into CXCMap values('HCSCClaimInsert','ProviderState','FSA-Provider-State')
insert into CXCMap values('HCSCClaimInsert','ProviderZip','FSA-Provider-Zip')
insert into CXCMap values('HCSCClaimInsert','ReimbursementDate','FSA-DISP-DATE')
insert into CXCMap values('HCSCClaimInsert','ServiceFrom','FSA-DT-SVC-FR')
insert into CXCMap values('HCSCClaimInsert','ServiceTo','FSA-DT-SVC-TO')
insert into CXCMap values('HCSCClaimInsert','ServiceTypeCode','FSA-COVERAGE-TYPE')
insert into CXCMap values('HCSCClaimInsert','SubscriberId','FSA-Subscriber-NO')
insert into CXCMap values('HCSCClaimInsert','TotalPatientLiability','FSA-Patient-Resp-AMT')
insert into CXCMap values('HCSCClaimInsert','UserDefined1','FSA-TPA-Number')

INSERT FileTypeMaster (FileTypeId, FileTypeName, Owner, IsActive, ExpiresOn, XMLSchemaURI) 
VALUES ('PayflexHCSC_ClaimIns', 'PayflexHCSC_ClaimIns', 'HCSC', 'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

insert into schedule (ScheduleId , FileTypeId, ScheduleDateTime, NumberOfRetries, Active, [DayOfWeek]) 
Values ('PayflexHCSC_ClaimIns','PayflexHCSC_ClaimIns',  CAST(0x00009D8E00000000 AS DateTime), 3,'N','1,2,3,4,5,6');


INSERT [LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayflexHCSC_ClaimIns', 'PayflexHCSC_ClaimIns', 'PULL', 1, 'ftp\PayFlex\toCXC\claims\HCSC', 'staging\PayFlex\in\claims', CAST(0x0700000000000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PF_*HCSC_*.txt', NULL, 'PayFlex', 'HCSC', NULL, NULL, NULL)

INSERT [LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayflexHCSC_ClaimIns', 'PayflexHCSC_ClaimIns', 'INSERT_CLAIM', 2, 'staging\PayFlex\in\claims', NULL, CAST(0x070046C323000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, NULL, 'HCSC_schema.xml', 'PayFlex', 'HCSC', 'HCSCClaimInsert', NULL, NULL)

INSERT [LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern], [ConfigFile], [TPAId], [CarrierId], [MapType], [ServiceType], [EIN]) 
VALUES ('PayflexHCSC_ClaimIns', 'PayflexHCSC_ClaimIns', 'ARCHIVE', 3, 'staging\PayFlex\in\claims', 'archive\PayFlex\in\claims', CAST(0x07008C8647000000 AS Time), CAST(0x07001A7118020000 AS Time), NULL, 'PF_*HCSC_*.txt', NULL, 'PayFlex', 'HCSC', NULL, NULL, NULL)

Insert into FileLifeCycle (FileTypeId, CycleId,NotifyOnFailure, NotifyOnSuccess)
Values ('PayflexHCSC_ClaimIns','PayflexHCSC_ClaimIns','Y','Y');



-- Insert PayFlex Carrier Claim.
insert into CXCMapMaster (MapId, TableName, MapType) Values('PayFlexCarrierClaimInsert','Claim','PayFlexCarrierClaimInsert');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','AdjClaimNumber','ORIGINAL_CLAIM_NUMBER');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','AdjustmentType','ADJUSTMENT_INDICATOR');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','AmtAllowed','NEGOTIATED_RATE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','AmtCharged','CHARGED_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','AmtPaid' ,'BENEFITS_PAID_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ClaimNumber' ,'CLAIM_NUMBER'); 
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','CoIns','COINSURANCE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','Copay','COPAY_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','Deductible' ,'DEDUCTIBLE_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','EmployeeFirstName','MEMBER_FIRST_NAME');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','EmployeeMiddleName','MEMBER_MID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','EmployeeLastName','MEMBER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','EmployerName' ,'GROUP_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','EIN','GROUP_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','TotalPatientLiability','PATIENT_RESPONSIBILITY_AMT');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PatientFirstName','PATIENT_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PatientId' ,'PATIENT_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PatientDOB','PATIENT_DOB');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PatientMiddleName','PATIENT_MID');


insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PatientSuffix','PATIENT_SUFFIX');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','PayorId','MEMBER_ID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProcedureCode','PROCEDURE_CODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderAddress1' ,'BILLTO_ADDRESS_1');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderAddress2','BILLTO_ADDRESS_2');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderCity','BILLTO_CITY');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderFirstName','BILLTO_PROVIDER_FIRST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderId','BILLTO_PROVIDER_FTIN');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderLastName' ,'BILLTO_PROVIDER_LAST_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderName','BILLTO_PROVIDER_FACILITY_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderNum','BILLTO_PROVIDER_ID_NPI');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderState','BILLTO_STATE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ProviderZip','BILLTO_ZIPCODE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ReimbursementDate','ADJUDICTED');

insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ServiceFrom' ,'BEGIN_DATE_OF_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ServiceTo','END_DATE_OF_SERVICE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','ServiceTypeCode','CLAIM_TYPE');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','UserDefined1','BILLTO_PROVIDER_MID');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','CarrierId','PAYER_NAME');
insert into CXCMap (MapId, TableColumnName, ColumnName) Values('PayFlexCarrierClaimInsert','Program','TRADING_PARTNER_CODE');


-- Insert PayFlex Carrier Claim.

INSERT [dbo].[FileTypeMaster] ([FileTypeId], [FileTypeName], [Owner], [IsActive], [ExpiresOn], [XMLSchemaURI]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', N'PayFlex', N'Y', CAST(0x00009CF000000000 AS DateTime), NULL);

INSERT [dbo].[Schedule] ([ScheduleId], [FileTypeId], [ScheduleDateTime], [NumberOfRetries], [Active], [DayOfWeek]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', CAST(0x00009D74011826C0 AS DateTime), 3, N'N', N'0,1,2,3,4,5,6');


INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', N'PULL', 1, N'ftp\PayFlex\toCXC\claims\PayFlex', N'staging\PayFlex\in\claims', CAST(0x070068C461080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_*PayFlex_*.psv', null, 'PayFlex', 'OtherCarriers', null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType],[ServiceType]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', N'INSERT_CLAIM', 2, N'staging\PayFlex\in\claims', NULL, CAST(0x070080D1F0080000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', null, 'PayFlexCarrier_ClaimRecord_schema.xml', 'PayFlex', 'OtherCarriers', 'PayFlexCarrierClaimInsert', null);

INSERT [dbo].[LifeCycle] ([CycleId], [CycleName], [CycleState], [CycleStateSeq], [CycleEntryPoint], [CycleEndPoint], [CycleStartTime], [CycleEndTime], [ContinueOnError], [Pattern],[ConfigFile],[TPAId], [CarrierId],[MapType]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', N'ARCHIVE', 3, N'staging\PayFlex\in\claims', N'archive\PayFlex\in\claims', CAST(0x0700C69414090000 AS Time), CAST(0x070082357A0A0000 AS Time), N' ', 'PF_*PayFlex_*.psv', null, 'PayFlex', 'OtherCarriers', null);


INSERT [dbo].[FileLifeCycle] ([FileTypeId], [CycleId], [NotifyOnFailure], [NotifyOnSuccess]) 
VALUES (N'PayFlex_Carrier_ClaimIns', N'PayFlex_Carrier_ClaimIns', N'Y', N'Y');





-- Processed Flags
--Claim
insert into Flag values('NOPART', 'Filtered', 'PayFlex', 'Participant SSN is missing in Claim', 'Claim');
insert into Flag values('ZEROAMT', 'Filtered', 'PayFlex', 'Copay, Deductible and Coins are all zero', 'Claim');
insert into Flag values('DUP', 'Filtered', 'PayFlex', 'Claim is a duplicate of another Claim', 'Claim');
insert into Flag values('ADJ', 'Filtered', 'PayFlex', 'Claim is an Adjustment of another Claim', 'Claim');
insert into Flag values('NEG', 'Filtered', 'PayFlex', 'Claim is a Reversal of another Claim', 'Claim');
insert into Flag values('TBD', 'Pending', 'PayFlex', 'Claim is being processed', 'Claim');
INSERT INTO Flag VALUES('CONSOLIDATED', 'Complete', 'PayFlex', 'Claim Lines have been consolidated', 'Claim');


--Consolidated Claim
INSERT INTO Flag VALUES('OLD', 'Filtered', 'PayFlex', 'ServiceDate of Claim is earlier than Substantiation start', 'ConsolidatedClaim');
INSERT INTO Flag VALUES('INVGRP', 'Manual', 'PayFlex', 'Employer/Group is missing in Eligibility Filter', 'ConsolidatedClaim');
INSERT INTO Flag VALUES('NOSUBSTANT', 'Manual', 'PayFlex', 'Employee does not have a plan for Substantiation', 'ConsolidatedClaim');
--INSERT INTO Flag VALUES('NOTNEW', 'Manual', 'PayFlex', 'Claim is either an adjustment, or has a net negative amount', 'ConsolidatedClaim');
INSERT INTO Flag VALUES('ONLYCOPAY', 'Filtered', 'PayFlex', 'Claim has only Copay', 'ConsolidatedClaim');
INSERT INTO Flag VALUES('TOBEMATCHED', 'Pending', 'PayFlex', 'Claim yet to be successfully matched with Transaction(s)', 'ConsolidatedClaim');
INSERT INTO Flag VALUES('MATCHED', 'Complete', 'PayFlex', 'Claim successfully matched with one or more Transaction(s)', 'ConsolidatedClaim');


--Debit Card Transaction
INSERT INTO Flag VALUES('OLDTRAN', 'Filtered', 'PayFlex', 'ServiceDate of Transaction is earlier than Substantiation start', 'Transaction');
INSERT INTO Flag VALUES('DUP', 'Filtered', 'PayFlex', 'Is a duplicate of another Transaction', 'Transaction');
INSERT INTO Flag VALUES('INVGRP','Filtered', 'PayFlex', 'Employer/Group is missing in Eligibility Filter', 'Transaction')
--INSERT INTO Flag VALUES('OTC', 'Filtered', 'PayFlex', 'Is an over-the-counter Transaction', 'Transaction');
INSERT INTO Flag VALUES('INELIGCHNL', 'Filtered', 'PayFlex', 'Is not an eligible Channel', 'Transaction');
INSERT INTO Flag VALUES('INVCHNL', 'Filtered', 'PayFlex', 'Is not a valid Channel', 'Transaction');
INSERT INTO Flag VALUES('NOSUBSTANT', 'Filtered', 'PayFlex', 'Transaction date outside of plan year', 'Transaction');



INSERT INTO Flag VALUES('TOBESUBSTANTIATED', 'Pending', 'PayFlex', 'Transaction not considered for Substantiation', 'Transaction');
INSERT INTO Flag VALUES('NOCLAIMS', 'Pending', 'PayFlex', 'There are no unmatched claims for this ParticipantSSN', 'Transaction');
INSERT INTO Flag VALUES('NOMATCH', 'Pending', 'PayFlex', 'Transaction could not be Substantiated', 'Transaction');


INSERT INTO Flag VALUES('TPASUBSTANT', 'Complete', 'PayFlex', 'Transaction substantiated by TPA', 'Transaction');
INSERT INTO Flag VALUES('CXCSUBSTANT', 'Complete', 'PayFlex', 'Transaction substantiated by CXC', 'Transaction');


--Substantiation Transaction
INSERT INTO Flag VALUES('TBD', 'Pending', 'PayFlex', 'Subtantiated Transaction not sent to TPA yet', 'SubstantiatedTrans');
INSERT INTO Flag VALUES('Y', 'Complete', 'PayFlex', 'Subtantiated Transaction sent to TPA', 'SubstantiatedTrans');




