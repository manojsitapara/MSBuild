
USE [MsbuildCXC]
GO
/****** Object:  Table [dbo].[Feed]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[Channel] [nvarchar](20) NULL,
	[EIN] [nvarchar](50) NULL,
	[CrossoverDate] [date] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [UC_Feed_TPAId_Name] UNIQUE NONCLUSTERED 
(
	[TPAId] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[TaxId] [nvarchar](20) NULL,
	[NPI] [nvarchar](20) NULL,
	[MerchantCode] [nvarchar](20) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Zip] [nvarchar](20) NULL,
	[ContactName] [nvarchar](100) NULL,
	[ContactNumber] [nvarchar](10) NULL,
	[ContactEmailId] [nvarchar](20) NULL,
	[AutoApprovePayment] [varchar](1) NOT NULL,
	[IsActive] [varchar](1) NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[Status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusTrail]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusTrail](
	[Type] [nchar](30) NOT NULL,
	[Entity] [nchar](20) NOT NULL,
	[Status] [nchar](30) NOT NULL,
	[Id] [nchar](30) NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[TPAApprovedAmt] [smallmoney] NULL,
	[ClaimId] [nchar](30) NULL,
	[TotalTPAApprovedAmt] [smallmoney] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 02/24/2017 11:12:43 ******/
SET ARITHABORT ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[Claim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileTypeId] [nvarchar](50) NULL,
	[FileInstanceId] [nvarchar](100) NULL,
	[PlanId] [nvarchar](20) NULL,
	[GroupId] [nvarchar](20) NULL,
	[SubscriberId] [nvarchar](50) NULL,
	[CarrierId] [nvarchar](20) NULL,
	[ServiceFrom] [date] NULL,
	[ServiceTo] [date] NULL,
	[ServiceType] [nvarchar](20) NULL,
	[ServiceCode] [nvarchar](20) NULL,
	[TotalPatientLiability] [money] NULL,
	[Copay] [money] NULL,
	[Deductible] [money] NULL,
	[CoIns] [money] NULL,
	[OverBeyond] [smallmoney] NULL,
	[NotCovered] [smallmoney] NULL,
	[Notes] [nvarchar](2000) NULL,
	[TPAId] [nvarchar](20) NULL,
	[TPAParticipantId] [nvarchar](50) NULL,
	[PatientSSN] [nvarchar](50) NULL,
	[PatientFirstName] [nvarchar](50) NULL,
	[PatientMiddleName] [nvarchar](50) NULL,
	[PatientLastName] [nvarchar](50) NULL,
	[PatientSuffix] [nvarchar](50) NULL,
	[ProviderId] [nvarchar](20) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[CrossOverDate] [date] NULL,
	[ReimbursementType] [nvarchar](10) NULL,
	[ClaimNumber] [nvarchar](50) NOT NULL,
	[ClaimRecordNum] [nvarchar](50) NULL,
	[AdjClaimNumber] [nvarchar](50) NULL,
	[PayorId] [nvarchar](50) NULL,
	[QME] [nchar](10) NULL,
	[QMECode] [nvarchar](50) NULL,
	[LOB] [nchar](10) NULL,
	[EIN] [nvarchar](50) NULL,
	[Program] [nvarchar](10) NULL,
	[ProcedureCode] [nvarchar](50) NULL,
	[ReimbursementDate] [date] NULL,
	[AmtCharged] [money] NULL,
	[AmtAllowed] [money] NULL,
	[AmtPaid] [money] NULL,
	[Provider] [nvarchar](100) NULL,
	[ProviderFirstName] [nvarchar](100) NULL,
	[ProviderLastName] [nvarchar](100) NULL,
	[ProviderAddress1] [nvarchar](100) NULL,
	[ProviderAddress2] [nvarchar](100) NULL,
	[ProviderCity] [nvarchar](50) NULL,
	[ProviderState] [nvarchar](50) NULL,
	[ProviderZip] [nvarchar](20) NULL,
	[PayTheProvider] [nvarchar](10) NULL,
	[DisallowedReasonCode] [nchar](10) NULL,
	[TotalPatientLiabilityZD] [nvarchar](50) NULL,
	[CacheParticipantId] [nvarchar](50) NULL,
	[RemainingAmount] [smallmoney] NULL,
	[Processed] [varchar](20) NULL,
	[ServiceTypeCode] [nvarchar](50) NULL,
	[ClaimReceiptType] [nvarchar](20) NULL,
	[TypeOfService] [nvarchar](20) NULL,
	[RemAmtUpdate] [date] NULL,
	[XOFileName] [nvarchar](100) NULL,
	[Owner] [varchar](13) NULL,
	[ProcessedDate] [datetime] NULL,
	[DivisionId] [nvarchar](20) NULL,
	[ProviderNum] [nvarchar](20) NULL,
	[PatientId] [nvarchar](50) NULL,
	[DependencyCode] [nvarchar](10) NULL,
	[Location] [nvarchar](10) NULL,
	[InNetwork] [nvarchar](5) NULL,
	[AdjustmentType] [nvarchar](10) NULL,
	[UserDefined1] [nvarchar](100) NULL,
	[UserDefined2] [nvarchar](30) NULL,
	[UserDefined3] [nvarchar](30) NULL,
	[UserDefined4] [nvarchar](30) NULL,
	[UserDefined5] [nvarchar](30) NULL,
	[UserDefined6] [datetime] NULL,
	[UserDefined7] [datetime] NULL,
	[UserDefined8] [varchar](30) NULL,
	[OtherPR] [smallmoney] NULL,
	[UserDefined9] [nvarchar](30) NULL,
	[EmployeeFirstName] [nvarchar](50) NULL,
	[EmployeeLastName] [nvarchar](50) NULL,
	[TargetSystem] [nvarchar](30) NULL,
	[SourceFileDate] [datetime] NULL,
	[SourceClaimNumber] [nvarchar](50) NULL,
	[HasDummyClaimLineNumber] [nvarchar](10) NULL,
	[RenderingProviderFirstName] [nvarchar](100) NULL,
	[RenderingProviderLastName] [nvarchar](100) NULL,
	[EmployerName] [nvarchar](100) NULL,
	[OrgReimbursementType] [nvarchar](10) NULL,
	[PatientDOB] [datetime] NULL,
	[P2PStatus] [nvarchar](20) NULL,
	[Payee] [nvarchar](30) NULL,
	[P2PLastProcessedDate] [datetime] NULL,
	[InvoiceLineId] [int] NULL,
	[BillingProviderId] [int] NULL,
	[TPAApprovedAmt] [smallmoney] NULL,
	[TotalTPAApprovedAmt] [smallmoney] NULL,
	[OrgCopay] [smallmoney] NULL,
	[OrgDeductible] [smallmoney] NULL,
	[OrgCoins] [smallmoney] NULL,
	[ExpenseBucketCoverage] [int] NULL,
	[EmployeeMiddleName] [nvarchar](50) NULL,
	[ServiceRecordNum]  AS (((((((([ClaimNumber]+'-')+[ClaimRecordNum])+'-')+[ServiceType])+'-')+[CarrierId])+'-')+[EIN]) PERSISTED NOT NULL
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [PK_Id] ON [dbo].[Claim] 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Carrierid] ON [dbo].[Claim] 
(
	[CarrierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ClaimNumber] ON [dbo].[Claim] 
(
	[ClaimNumber] ASC,
	[Processed] ASC,
	[TPAId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ClaimRcptType] ON [dbo].[Claim] 
(
	[ClaimReceiptType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_CrossOverDate] ON [dbo].[Claim] 
(
	[CrossOverDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Payorid] ON [dbo].[Claim] 
(
	[PayorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE NONCLUSTERED INDEX [IDX_Processed_Covering] ON [dbo].[Claim] 
(
	[Processed] ASC
)
INCLUDE ( [TPAId],
[ReimbursementType],
[ServiceRecordNum]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ServiceFrom] ON [dbo].[Claim] 
(
	[ServiceFrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
CREATE NONCLUSTERED INDEX [IDX_ServiceRecordNum] ON [dbo].[Claim] 
(
	[ServiceRecordNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ServiceType] ON [dbo].[Claim] 
(
	[ServiceType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_TPAid] ON [dbo].[Claim] 
(
	[TPAId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_TPAProcessed] ON [dbo].[Claim] 
(
	[TPAId] ASC,
	[Processed] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_XOFileName] ON [dbo].[Claim] 
(
	[XOFileName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vClaim]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vClaim]
AS
SELECT     Id AS CXCId, TPAParticipantId, ServiceType, ClaimNumber, ClaimRecordNum, ClaimReceiptType, ServiceFrom, ISNULL(TotalPatientLiability, 0.0) + ISNULL(Copay, 0.0) 
                      + ISNULL(Deductible, 0.0) + ISNULL(CoIns, 0.0) + ISNULL(OverBeyond, 0.0) + ISNULL(NotCovered, 0.0) AS CXCTotal, ISNULL(Deductible, 0.0) AS Ded, ISNULL(Copay, 
                      0.0) AS CP, ISNULL(CoIns, 0.0) AS CI, ISNULL(OverBeyond, 0.0) AS OB, ISNULL(NotCovered, 0.0) AS NC, ISNULL(TotalPatientLiability, 0.0) AS TPL, 
                      ReimbursementType, Processed, ProviderId, CrossOverDate, Owner, CarrierId, EIN
FROM         dbo.Claim
WHERE     (TPAId = 'TASC')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Claim"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 33
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vClaim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vClaim'
GO
/****** Object:  Trigger [LogClaimStatus]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[LogClaimStatus] 
ON [dbo].[Claim] 
FOR update AS
 if (UPDATE(TPAApprovedAmt) or UPDATE(P2PStatus))
   Begin
    set nocount on
		insert into StatusTrail ([Type], Entity, [Status], Id, ClaimId, TPAApprovedAmt, TotalTPAApprovedAmt, DateUpdated) select 'NEW','Claim', ins.P2PStatus, ins.Id, ins.Id, ins.TPAApprovedAmt, ins.TotalTPAApprovedAmt, GETDATE()  FROM inserted ins
  END
GO
/****** Object:  Table [dbo].[Snapshot]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snapshot](
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[Metric] [nvarchar](200) NOT NULL,
	[Period] [nvarchar](20) NOT NULL,
	[Value] [int] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleId] [nvarchar](50) NULL,
	[FileTypeId] [nvarchar](50) NULL,
	[ScheduleDateTime] [datetime] NULL,
	[NumberOfRetries] [int] NULL,
	[Active] [char](1) NULL,
	[DayOfWeek] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderMaster]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderMaster](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[GeneratedId] [varchar](20) NOT NULL,
	[TPAId] [varchar](20) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](20) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[TaxId] [varchar](20) NULL,
	[TPAProviderStatus] [varchar](10) NULL,
	[Status] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[UserDefinedField1] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payer]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payer](
	[PayerId] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[BankNumber] [nvarchar](30) NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[CompanyNumber] [nvarchar](30) NOT NULL,
	[OrganizationId] [nvarchar](30) NOT NULL,
	[UserId] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[CreditLimit] [smallmoney] NULL,
	[IsActive] [varchar](1) NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[FaxNumber] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[WebUrl] [nvarchar](50) NULL,
	[NoOfDaysToKeepCardActive] [int] NULL,
 CONSTRAINT [PK_Payer] PRIMARY KEY CLUSTERED 
(
	[PayerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantAudit]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantAudit](
	[TPAId] [nvarchar](50) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[Participants] [int] NULL,
	[Clients] [int] NULL,
	[Updated] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ParticipantId] [nvarchar](50) NOT NULL,
	[EIN] [nvarchar](50) NULL,
	[LegacyId] [nvarchar](20) NULL,
	[TPAParticipantId] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Account] [nvarchar](50) NULL,
	[Channel] [nchar](10) NULL,
	[AutoReimbursementInd] [nchar](10) NULL,
	[SenderId] [nchar](10) NULL,
	[Status] [int] NULL,
	[UserDefined1] [nvarchar](30) NULL,
	[UserDefined2] [nvarchar](30) NULL,
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[GracePeriodEndDate] [datetime] NULL,
	[RunOutDate] [datetime] NULL,
	[CarrierId] [nvarchar](20) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[EmployerName] [nvarchar](200) NULL,
	[GroupId] [nvarchar](20) NULL,
	[TPACode] [nvarchar](10) NULL,
	[ParticipantPartialId] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P2PStatus]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P2PStatus](
	[Name] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[Desc] [nvarchar](250) NULL,
	[AppliesTo] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[AppliesTo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monitor]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monitor](
	[weekflag] [smallint] NULL,
	[pattern] [nvarchar](50) NULL,
	[dayofweek] [smallint] NULL,
	[tpaid] [nvarchar](20) NOT NULL,
	[carrierid] [nvarchar](20) NOT NULL,
	[servicetype] [nvarchar](20) NULL,
	[dayofmonth] [smallint] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberMap]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[MemberId] [nvarchar](50) NOT NULL,
	[MemberSSN] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EIN] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[MiddleName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFirstName] [nvarchar](256) NOT NULL,
	[UserLastName] [nvarchar](256) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[Pswd] [nvarchar](100) NOT NULL,
	[EmailId] [nvarchar](100) NULL,
	[IsApproved] [bit] NOT NULL,
	[PswdQuestion] [nvarchar](256) NULL,
	[PswdAnswer] [nvarchar](128) NULL,
	[IsLockedOut] [bit] NOT NULL,
	[LockedOutDate] [datetime] NULL,
	[FailedLoginAttemptCount] [int] NOT NULL,
	[PasswordResetToken] [nvarchar](50) NULL,
	[PasswordResetExpiration] [datetime] NULL,
	[IsLoggedIn] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[IPAddress] [nvarchar](20) NULL,
	[Deactivated] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPAProfile]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPAProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BillingAddress] [nvarchar](200) NOT NULL,
	[DayOfMonth] [tinyint] NOT NULL,
	[ITContact] [nvarchar](50) NOT NULL,
	[BillingContact] [nvarchar](50) NOT NULL,
	[CXCContact] [nvarchar](50) NOT NULL,
	[MinimumCharge] [smallmoney] NOT NULL,
	[RatePerParticipant] [smallmoney] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Active] [char](1) NOT NULL,
	[Package] [nvarchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPABilling]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPABilling](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[TrackingDate] [datetime] NOT NULL,
	[ParticipantCount] [smallint] NOT NULL,
	[AmtCharged] [smallmoney] NOT NULL,
	[InvoiceDate] [datetime] NULL,
	[InvoiceNumber] [nvarchar](20) NULL,
	[PaymentDueDate] [datetime] NULL,
	[PaymentDate] [datetime] NULL,
	[AmtPaid] [smallmoney] NULL,
	[Status] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMap]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMap](
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[GroupId] [nvarchar](20) NOT NULL,
	[EIN] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flag]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flag](
	[Name] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[Desc] [nvarchar](250) NULL,
	[AppliesTo] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileTypeMaster]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileTypeMaster](
	[FileTypeId] [nvarchar](50) NULL,
	[FileTypeName] [nvarchar](50) NULL,
	[Owner] [nvarchar](50) NOT NULL,
	[IsActive] [char](1) NOT NULL,
	[ExpiresOn] [datetime] NOT NULL,
	[XMLSchemaURI] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileLifeCycle]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileLifeCycle](
	[FileTypeId] [nvarchar](50) NULL,
	[CycleId] [nvarchar](50) NULL,
	[NotifyOnFailure] [char](1) NULL,
	[NotifyOnSuccess] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileInstance]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileInstance](
	[FileInstanceId] [nvarchar](20) NOT NULL,
	[CycleId] [nvarchar](20) NOT NULL,
	[PromotesTo] [nvarchar](20) NULL,
	[PromotesIn] [int] NULL,
	[FileTypeId] [nvarchar](20) NOT NULL,
	[ScheduleId] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LifeCycleOverride]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeCycleOverride](
	[CycleId] [nvarchar](50) NULL,
	[StartTimeOffset] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LifeCycle]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeCycle](
	[CycleId] [nvarchar](50) NULL,
	[CycleName] [nvarchar](50) NULL,
	[CycleState] [nvarchar](50) NULL,
	[CycleStateSeq] [int] NOT NULL,
	[CycleEntryPoint] [nvarchar](100) NULL,
	[CycleEndPoint] [nvarchar](100) NULL,
	[CycleStartTime] [time](7) NOT NULL,
	[CycleEndTime] [time](7) NOT NULL,
	[ContinueOnError] [nchar](1) NULL,
	[Pattern] [nvarchar](50) NULL,
	[ConfigFile] [nvarchar](50) NULL,
	[TPAId] [nvarchar](20) NULL,
	[CarrierId] [nvarchar](20) NULL,
	[MapType] [nvarchar](50) NULL,
	[ServiceType] [nvarchar](20) NULL,
	[EIN] [nvarchar](50) NULL,
	[Program] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Type] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Desc] [nvarchar](250) NULL,
	[On] [nvarchar](250) NOT NULL,
	[At] [nvarchar](10) NOT NULL,
	[Command] [nvarchar](100) NULL,
	[Enabled] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eligibility]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eligibility](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NULL,
	[Channel] [nvarchar](20) NULL,
	[Account] [nvarchar](20) NULL,
	[EIN] [nvarchar](50) NULL,
	[CoverageType] [nvarchar](20) NULL,
	[IsStatic] [nvarchar](10) NOT NULL,
	[RecordType] [nvarchar](10) NULL,
	[PersonNumber] [smallint] NULL,
	[SubscriberId] [nvarchar](50) NULL,
	[SubscriberSSN] [nvarchar](50) NULL,
	[SubscriberEmploymentDate] [date] NULL,
	[SubscriberRetirementDate] [date] NULL,
	[MemberSSN] [nvarchar](50) NULL,
	[MemberFirstName] [nvarchar](50) NULL,
	[MemberMiddleName] [nvarchar](50) NULL,
	[MemberLastName] [nvarchar](50) NULL,
	[MemberDateOfBirth] [date] NULL,
	[MemberMaritalStatus] [nvarchar](10) NULL,
	[MemberSex] [nvarchar](10) NULL,
	[RelationshipCode] [nvarchar](10) NULL,
	[MailingAddress1] [nvarchar](100) NULL,
	[MailingAddress2] [nvarchar](100) NULL,
	[MailingCity] [nvarchar](50) NULL,
	[MailingState] [nvarchar](50) NULL,
	[MailingZip] [nvarchar](20) NULL,
	[ResidenceAddress1] [nvarchar](100) NULL,
	[ResidenceAddress2] [nvarchar](100) NULL,
	[ResidenceCity] [nvarchar](50) NULL,
	[ResidenceState] [nvarchar](50) NULL,
	[ResidenceZip] [nvarchar](50) NULL,
	[PayeeSSN] [nvarchar](50) NULL,
	[PayeeFirstName] [nvarchar](50) NULL,
	[PayeeLastName] [nvarchar](50) NULL,
	[GroupId] [nvarchar](20) NULL,
	[DivisionId] [nvarchar](20) NULL,
	[BranchId] [nvarchar](20) NULL,
	[BenefitId] [nvarchar](20) NULL,
	[CategoryId] [nvarchar](20) NULL,
	[PlanId] [nvarchar](20) NULL,
	[PlanType] [nvarchar](10) NULL,
	[PlanStartDate] [date] NULL,
	[BenefitEffectiveDate] [date] NULL,
	[BenefitTermDate] [date] NULL,
	[BenefitTermReasonCode] [nvarchar](50) NULL,
	[CoverageCode] [nvarchar](10) NULL,
	[VersionIndicator] [nvarchar](10) NULL,
	[PayeeIndicator] [nvarchar](10) NULL,
	[StatusIndicator] [nvarchar](10) NULL,
	[IneligibleIndicator] [nvarchar](10) NULL,
	[EntitlementIndicator] [nvarchar](10) NULL,
	[XOFileName] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[UserDefined1] [nvarchar](100) NULL,
	[UserDefined2] [nvarchar](30) NULL,
	[UserDefined3] [nvarchar](30) NULL,
	[UserDefined4] [nvarchar](30) NULL,
	[UserDefined5] [nvarchar](30) NULL,
	[UserDefined6] [date] NULL,
	[UserDefined7] [date] NULL,
	[FilterType] [nvarchar](20) NULL,
	[SubscriberFirstName] [nvarchar](50) NULL,
	[SubscriberLastName] [nvarchar](50) NULL,
	[EmployerCode] [nvarchar](50) NULL,
	[EmployerName] [nvarchar](100) NULL,
	[HasEmbeddedPlan] [nvarchar](20) NULL,
	[MemberPhoneNumber] [nvarchar](20) NULL,
	[ExpenseType] [nvarchar](50) NULL,
	[MemberId] [nvarchar](50) NULL,
	[GracePeriodEndDate] [date] NULL,
	[RunoutDate] [date] NULL,
	[SubscriberMiddleName] [nvarchar](50) NULL,
	[PlanEndDate] [date] NULL,
	[TPASubscriberId] [nvarchar](50) NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_FilterType] ON [dbo].[Eligibility] 
(
	[TPAId] ASC,
	[FilterType] ASC,
	[SubscriberSSN] ASC,
	[MemberFirstName] ASC,
	[MemberLastName] ASC,
	[MemberSSN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DebitCardTransaction]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitCardTransaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[TPAParentTransactionId] [nvarchar](20) NOT NULL,
	[TPATransactionId] [nvarchar](20) NOT NULL,
	[XOFileName] [nvarchar](100) NOT NULL,
	[CrossoverDate] [date] NOT NULL,
	[Channel] [nvarchar](20) NOT NULL,
	[ServiceDate] [date] NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[Amt] [money] NOT NULL,
	[EIN] [nvarchar](20) NOT NULL,
	[EmployerName] [nvarchar](100) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[ParticipantSSN] [nvarchar](50) NULL,
	[ParticipantId] [nvarchar](50) NULL,
	[ParticipantFirstName] [nvarchar](50) NOT NULL,
	[ParticipantMiddleName] [nvarchar](50) NULL,
	[ParticipantLastName] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](20) NULL,
	[IsSubstantiated] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
	[ChannelCode] [varchar](20) NULL,
 CONSTRAINT [PK_DebitCardTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  SqlAssembly [CXCUDF]    Script Date: 02/24/2017 11:12:43 ******/
CREATE ASSEMBLY [CXCUDF]
AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103009C6FE4500000000000000000E00002210B0108000012000000060000000000004E300000002000000040000000004000002000000002000004000000000000000400000000000000008000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000F42F000057000000004000005803000000000000000000000000000000000000006000000C0000007C2F00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E7465787400000054100000002000000012000000020000000000000000000000000000200000602E7273726300000058030000004000000004000000140000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001800000000000000000000000000004000004200000000000000000000000000000000303000000000000048000000020005004C240000300B000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B300400310000000100001100002804000006800100000400DE200A007201000070066F1000000A7229000070066F1100000A281200000A0B067A002A00000001100000000001000E0F002013000001133003003D000000020000110002281300000A16FE010C082D09007E1400000A0B2B24027E010000046F1500000A7E010000046F1600000A28050000060A06281700000A0B2B00072A000000133003003D000000020000110002281300000A16FE010C082D09007E1400000A0B2B2402281800000A0A067E010000046F1500000A7E010000046F1600000A28060000060B2B00072A000000133005007B0000000300001100722D0000700A72450000700B725D0000700C190D7265000070130420000100001305281900000A11046F1A00000A1306281900000A076F1A00000A13070611070809731B00000A1308110811051E5B6F1C00000A1309731D00000A130A110A11096F1E00000A00110A11066F1F00000A00110A130B2B00110B2A001B300400FE0000000400001100022C0B026F2000000A16FE022B0116130611062D0B7287000070732100000A7A032C08038E6916FE022B0116130611062D0B729B000070732100000A7A042C08048E6916FE022B0116130611062D0B72A3000070732100000A7A140A140B00731D00000A0B07036F1E00000A0007046F1F00000A0007076F1500000A076F1600000A6F2200000A0C732300000A0A060817732400000A0D0009732500000A1304001104026F2600000A0000DE14110414FE01130611062D0811046F2700000A00DC0000DE120914FE01130611062D07096F2700000A00DC0000DE14000714FE01130611062D07076F2800000A0000DC00066F2900000A13052B0011052A0000012800000200A1000DAE001400000000020098002EC600120000000002005F007DDC0014000000001B3004000F0100000500001100022C08028E6916FE022B0116130711072D0B72A9000070732100000A7A032C08038E6916FE022B0116130711072D0B729B000070732100000A7A042C08048E6916FE022B0116130711072D0B72A3000070732100000A7A140A140B00731D00000A0A06036F1E00000A0006046F1F00000A0006066F1500000A066F1600000A6F2A00000A0C02732B00000A0D00090816732400000A1304001104732C00000A130511056F2D00000A0BDE14110514FE01130711072D0811056F2700000A00DC0000DE14110414FE01130711072D0811046F2700000A00DC0000DE120914FE01130711072D07096F2700000A00DC0000DE14000614FE01130711072D07066F2800000A0000DC000713062B0011062A00013400000200A2000AAC001400000000020098002CC400140000000002008D004FDC00120000000002005C0096F20014000000001E02282E00000A2A42534A4201000100000000000C00000076322E302E35303732370000000005006C00000074030000237E0000E0030000E004000023537472696E677300000000C0080000C0000000235553008009000010000000234755494400000090090000A001000023426C6F620000000000000002000001571502000900000000FA2533001600000100000024000000020000000100000007000000080000002E0000000D00000005000000010000000100000000000A00010000000000060032002B00060056003900060021010F01060038010F01060055010F01060074010F0106008D010F010600A6010F010600C1010F010600DC010F0106001402F50106002802F501060036020F0106004F020F0106007F026C023F00930200000600C202A2020600E202A202060007032B0006002C032B0006004E033900060070032B000600A40398030600BF0339000600D30339000600F9032B0006000F04390006003A04300406004704390006005404300406005B04390006006C04300406007904300406008A042B000600BC0430040600C904300400000000010000000000010001000100000015001E00050001000100310066000A00502000000000911871000E000100A020000000009600780012000100EC200000000096008000120002003821000000009100880017000300C021000000009100A3001C000300F422000000009100BC00260006004424000000008618D7003000090000000100DD0000000100E60000000100F30000000200FD0000000300010100000100040100000200FD000000030001011900D70034002100D70034002900D70034003100D70034003900D70034004100D70034004900D70034005100D70034005900D70039006100D70034006900D70034007100D70034007900D7003E008900D70044009100D700300099001103490099001D034900A10033034D00A1003A035B00A10048036000A90061036300A90069036300B10078036800B10087037500B900AD037B00B900B6038000C100D7008600C900B6038F001100D7003000A900DF039500A900E7039500A100EE03B000D100D7003400A9002004B400E100D7003000E900D700BD000101D700C700090184043400110196043000A9009E043000E100A4046300A900AC04B400E100D70095001901D700C7002101D40449000900D70030002E000B00EF002E00130002012E001B0002012E00230008012E002B00EF002E00330017012E003B0002012E004B0002012E00530038012E00630062012E006B006F012E00730078012E007B00810155006E009B00CD00DE0004800000010000000000000000000000000000030000020000000000000000000000010022000000000000000000003C4D6F64756C653E004358435544462E646C6C00536563757269747900435843006D73636F726C69620053797374656D004F626A6563740053797374656D2E53656375726974792E43727970746F6772617068790052696A6E6461656C4D616E61676564006D7952696E6A6461656C002E6363746F7200456E637279707400446563727970740067657452696A6E6461656C4D616E61676564496E7374616E636500656E6372797074537472696E67546F42797465735F4145530064656372797074537472696E6746726F6D42797465735F414553002E63746F7200706C61696E53747200656E6372797074656453747200706C61696E54657874004B657900495600636970686572546578740053797374656D2E5265666C656374696F6E00417373656D626C795469746C6541747472696275746500417373656D626C794465736372697074696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E41747472696275746500417373656D626C79436F6D70616E7941747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7943756C747572654174747269627574650053797374656D2E52756E74696D652E496E7465726F70536572766963657300436F6D56697369626C65417474726962757465004775696441747472696275746500417373656D626C7956657273696F6E41747472696275746500417373656D626C7946696C6556657273696F6E4174747269627574650053797374656D2E446961676E6F73746963730044656275676761626C6541747472696275746500446562756767696E674D6F6465730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650043584355444600457863657074696F6E006765745F4D657373616765006765745F537461636B547261636500537472696E6700436F6E6361740049734E756C6C4F72456D70747900456D7074790053796D6D6574726963416C676F726974686D006765745F4B6579006765745F495600436F6E7665727400546F426173653634537472696E670046726F6D426173653634537472696E670053797374656D2E5465787400456E636F64696E67006765745F555446380047657442797465730050617373776F72644465726976654279746573004465726976654279746573007365745F4B6579007365745F4956006765745F4C656E67746800417267756D656E744E756C6C457863657074696F6E004943727970746F5472616E73666F726D00437265617465456E63727970746F720053797374656D2E494F004D656D6F727953747265616D0043727970746F53747265616D0053747265616D0043727970746F53747265616D4D6F64650053747265616D57726974657200546578745772697465720057726974650049446973706F7361626C6500446973706F736500436C65617200546F417272617900437265617465446563727970746F720053747265616D52656164657200546578745265616465720052656164546F456E6400000000274500720072006F007200200069006E002000530065006300750072006900740079002E000A0000030A000017350021003900540023003800340030002A004D00370000173400290032004A0030004D005E00390024004100310000074D004400350000214900400035004C00320050003100530024004E0021002A005000240041005200001370006C00610069006E00540065007800740000074B0065007900000549005600001563006900700068006500720054006500780074000000851ACB0987D48A4A83E552ACD8C0B4630008B77A5C561934E08903061209030000010400010E0E04000012090900031D050E1D051D050900030E1D051D051D0503200001042001010E042001010205200101114104200101080320000E0700040E0E0E0E0E050702124D0E040001020E02060E0420001D050500010E1D050607031D050E020500011D050E040000125D0520011D050E082004010E1D050E080520011D0508052001011D0514070C0E0E0E080E081D051D0512611D051209120903200008082002126D1D051D05092003011279126D117D05200101127910070712711209126D12751280811D050210070812090E126D1271127512808D0E021201000D436C6173734C6962726172793100000501000000000E0100094D6963726F736F667400002001001B436F7079726967687420C2A9204D6963726F736F6674203230313000002901002431306234333763302D636233632D343231622D616664382D61613037633966366439353900000C010007312E302E302E3000000801000701000000000801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F777301000000009C6FE45000000000020000005A000000982F000098110000525344536A3E1532F7C2164193A7833B9DEC2ECC01000000483A5C6765657468615C7574696C69746965735C53716C536572766572417373656D626C795C4358435544465C6F626A5C44656275675C4358435544462E7064620000001C30000000000000000000003E300000002000000000000000000000000000000000000000000000303000000000000000000000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF2500204000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100000001800008000000000000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058400000000300000000000000000000000334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B00460020000010053007400720069006E006700460069006C00650049006E0066006F0000003C020000010030003000300030003000340062003000000034000A00010043006F006D00700061006E0079004E0061006D006500000000004D006900630072006F0073006F0066007400000044000E000100460069006C0065004400650073006300720069007000740069006F006E000000000043006C006100730073004C0069006200720061007200790031000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E003000000038000B00010049006E007400650072006E0061006C004E0061006D00650000004300580043005500440046002E0064006C006C00000000005C001B0001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020004D006900630072006F0073006F0066007400200032003000310030000000000040000B0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000004300580043005500440046002E0064006C006C00000000003C000E000100500072006F0064007500630074004E0061006D0065000000000043006C006100730073004C0069006200720061007200790031000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000C000000503000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE
GO
/****** Object:  Table [dbo].[CXCMapMaster]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CXCMapMaster](
	[MapId] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[MapType] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CXCMap]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CXCMap](
	[MapId] [nvarchar](50) NULL,
	[TableColumnName] [nvarchar](50) NOT NULL,
	[ColumnName] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Control]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[ServiceType] [nvarchar](20) NULL,
	[EIN] [nvarchar](50) NULL,
	[EmployerName] [nvarchar](100) NULL,
	[DivisionId] [nvarchar](20) NULL,
	[PlanId] [nvarchar](20) NULL,
	[PlanName] [nvarchar](50) NULL,
	[PPDBNumber] [nvarchar](20) NULL,
	[StartDate] [datetime] NULL,
	[RunOutDate] [datetime] NOT NULL,
	[HasCoinsurance] [nvarchar](10) NULL,
	[PlanIsBasedOnCoinsurance] [nvarchar](10) NULL,
	[PlanIsBasedOnDivision] [nvarchar](10) NULL,
	[PlanIsBasedOnCopay] [nvarchar](10) NULL,
	[HasDeductible] [nvarchar](10) NULL,
	[HasMedCopay] [nvarchar](10) NULL,
	[HasPharmaCopay] [nvarchar](10) NULL,
	[SSNIsEmbedded] [nvarchar](10) NULL,
	[CopayReductionAmount] [money] NULL,
	[PayTheProvider] [nvarchar](10) NULL,
	[HasPharmacyFile] [nvarchar](10) NULL,
	[TargetSystem] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsolidatedClaim]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsolidatedClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CrossoverDate] [date] NOT NULL,
	[XOFileName] [nvarchar](100) NOT NULL,
	[ServiceFrom] [date] NOT NULL,
	[ServiceTo] [date] NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[Channel] [nvarchar](20) NOT NULL,
	[EIN] [nvarchar](20) NOT NULL,
	[ClaimNumber] [nvarchar](50) NOT NULL,
	[ReimbursementType] [nvarchar](10) NOT NULL,
	[Copay] [money] NULL,
	[Deductible] [money] NULL,
	[Coins] [money] NULL,
	[OtherPR] [money] NULL,
	[Status] [nvarchar](20) NULL,
	[BalanceAmt] [money] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[ParticipantSSN] [nvarchar](50) NULL,
	[ParticipantId] [nvarchar](50) NULL,
	[ParticipantFirstName] [nvarchar](50) NULL,
	[ParticipantMiddleName] [nvarchar](50) NULL,
	[ParticipantLastName] [nvarchar](50) NULL,
	[PatientSSN] [nvarchar](50) NULL,
	[PatientId] [nvarchar](50) NULL,
	[PatientFirstName] [nvarchar](50) NOT NULL,
	[PatientMiddleName] [nvarchar](50) NULL,
	[PatientLastName] [nvarchar](50) NOT NULL,
	[ProviderId] [nvarchar](20) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[ProviderCity] [nvarchar](50) NULL,
	[ProviderState] [nvarchar](20) NULL,
	[GroupId] [nvarchar](20) NULL,
 CONSTRAINT [PK_ConsolidatedClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Client]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[ServiceType] [nvarchar](20) NULL,
	[Account] [nvarchar](50) NULL,
	[EIN] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[GroupId] [nvarchar](20) NULL,
	[PlanId] [nvarchar](20) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[RunOutDate] [datetime] NOT NULL,
	[TargetSystem] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[PayTheProvider] [nvarchar](10) NULL,
	[EmployerCode] [nvarchar](50) NULL,
	[Payee] [nvarchar](30) NULL,
	[MedEmployeeOnly] [nvarchar](10) NULL,
	[MedCopay] [nvarchar](10) NULL,
	[MedDeductible] [nvarchar](10) NULL,
	[MedCoins] [nvarchar](10) NULL,
	[PharmaEmployeeOnly] [nvarchar](10) NULL,
	[PharmaCopay] [nvarchar](10) NULL,
	[PharmaDeductible] [nvarchar](10) NULL,
	[PharmaCoins] [nvarchar](10) NULL,
	[Dental] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimReasonCodes]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimReasonCodes](
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](400) NULL,
	[QMEInd] [nvarchar](50) NULL,
	[DateUpdated] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimBackup]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimBackup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileTypeId] [nvarchar](50) NULL,
	[FileInstanceId] [nvarchar](100) NULL,
	[PlanId] [nvarchar](20) NULL,
	[GroupId] [nvarchar](20) NULL,
	[SubscriberId] [nvarchar](50) NULL,
	[CarrierId] [nvarchar](20) NULL,
	[ServiceFrom] [date] NULL,
	[ServiceTo] [date] NULL,
	[ServiceType] [nvarchar](20) NULL,
	[ServiceCode] [nvarchar](20) NULL,
	[TotalPatientLiability] [smallmoney] NULL,
	[Copay] [smallmoney] NULL,
	[Deductible] [smallmoney] NULL,
	[CoIns] [smallmoney] NULL,
	[OverBeyond] [smallmoney] NULL,
	[NotCovered] [smallmoney] NULL,
	[Notes] [nvarchar](2000) NULL,
	[TPAId] [nvarchar](20) NULL,
	[TPAParticipantId] [nvarchar](50) NULL,
	[PatientSSN] [nvarchar](50) NULL,
	[PatientFirstName] [nvarchar](50) NULL,
	[PatientMiddleName] [nvarchar](50) NULL,
	[PatientLastName] [nvarchar](50) NULL,
	[PatientSuffix] [nvarchar](50) NULL,
	[ProviderId] [nvarchar](20) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[CrossOverDate] [date] NULL,
	[ReimbursementType] [nchar](10) NULL,
	[ClaimNumber] [nvarchar](50) NOT NULL,
	[ClaimRecordNum] [nvarchar](50) NULL,
	[AdjClaimNumber] [nvarchar](50) NULL,
	[PayorId] [nvarchar](50) NULL,
	[QME] [nchar](10) NULL,
	[QMECode] [nvarchar](50) NULL,
	[LOB] [nchar](10) NULL,
	[EIN] [nvarchar](50) NULL,
	[Program] [nchar](10) NULL,
	[ProcedureCode] [nvarchar](50) NULL,
	[ReimbursementDate] [date] NULL,
	[AmtCharged] [money] NULL,
	[AmtAllowed] [smallmoney] NULL,
	[AmtPaid] [smallmoney] NULL,
	[Provider] [nvarchar](100) NULL,
	[ProviderFirstName] [nvarchar](100) NULL,
	[ProviderLastName] [nvarchar](100) NULL,
	[ProviderAddress1] [nvarchar](100) NULL,
	[ProviderAddress2] [nvarchar](100) NULL,
	[ProviderCity] [nvarchar](50) NULL,
	[ProviderState] [nvarchar](50) NULL,
	[ProviderZip] [nvarchar](20) NULL,
	[PayTheProvider] [nchar](10) NULL,
	[DisallowedReasonCode] [nchar](10) NULL,
	[TotalPatientLiabilityZD] [nvarchar](50) NULL,
	[CacheParticipantId] [nvarchar](50) NULL,
	[RemainingAmount] [smallmoney] NULL,
	[Processed] [varchar](7) NULL,
	[ServiceTypeCode] [nvarchar](50) NULL,
	[ClaimReceiptType] [nvarchar](20) NULL,
	[TypeOfService] [nvarchar](20) NULL,
	[RemAmtUpdate] [date] NULL,
	[XOFileName] [nvarchar](100) NULL,
	[Owner] [varchar](13) NULL,
	[ProcessedDate] [datetime] NULL,
	[DivisionId] [nvarchar](20) NULL,
	[ProviderNum] [nvarchar](20) NULL,
	[PatientId] [nvarchar](50) NULL,
	[DependencyCode] [nvarchar](10) NULL,
	[Location] [nvarchar](10) NULL,
	[InNetwork] [nvarchar](5) NULL,
	[AdjustmentType] [nvarchar](10) NULL,
	[UserDefined1] [nvarchar](100) NULL,
	[UserDefined2] [nvarchar](30) NULL,
	[UserDefined3] [nvarchar](30) NULL,
	[UserDefined4] [nvarchar](30) NULL,
	[UserDefined5] [nvarchar](30) NULL,
	[UserDefined6] [datetime] NULL,
	[UserDefined7] [datetime] NULL,
	[UserDefined8] [varchar](30) NULL,
	[OtherPR] [smallmoney] NULL,
	[UserDefined9] [nvarchar](30) NULL,
	[EmployeeFirstName] [nvarchar](50) NULL,
	[EmployeeLastName] [nvarchar](50) NULL,
	[TargetSystem] [nvarchar](30) NULL,
	[SourceFileDate] [datetime] NULL,
	[SourceClaimNumber] [nvarchar](50) NULL,
	[HasDummyClaimLineNumber] [nvarchar](10) NULL,
	[RenderingProviderFirstName] [nvarchar](100) NULL,
	[RenderingProviderLastName] [nvarchar](100) NULL,
	[EmployerName] [nvarchar](100) NULL,
	[OrgReimbursementType] [nvarchar](10) NULL,
	[PatientDOB] [datetime] NULL,
	[ServiceRecordNum] [nvarchar](143) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimArchive]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimArchive](
	[ArchiveDate] [datetime] NOT NULL,
	[Id] [int] NOT NULL,
	[FileTypeId] [nvarchar](50) NULL,
	[FileInstanceId] [nvarchar](50) NULL,
	[PlanId] [nvarchar](20) NULL,
	[GroupId] [nvarchar](20) NULL,
	[SubscriberId] [nvarchar](50) NULL,
	[CarrierId] [nvarchar](20) NULL,
	[ServiceFrom] [date] NULL,
	[ServiceTo] [date] NULL,
	[ServiceType] [nvarchar](20) NULL,
	[ServiceCode] [nvarchar](20) NULL,
	[TotalPatientLiability] [money] NULL,
	[Copay] [money] NULL,
	[Deductible] [money] NULL,
	[CoIns] [money] NULL,
	[OverBeyond] [smallmoney] NULL,
	[NotCovered] [smallmoney] NULL,
	[Notes] [nvarchar](2000) NULL,
	[TPAId] [nvarchar](20) NULL,
	[TPAParticipantId] [nvarchar](50) NULL,
	[PatientSSN] [nvarchar](50) NULL,
	[PatientFirstName] [nvarchar](50) NULL,
	[PatientMiddleName] [nvarchar](50) NULL,
	[PatientLastName] [nvarchar](50) NULL,
	[PatientSuffix] [nvarchar](50) NULL,
	[ProviderId] [nvarchar](20) NULL,
	[ProviderName] [nvarchar](100) NULL,
	[CrossOverDate] [date] NULL,
	[ReimbursementType] [nvarchar](10) NULL,
	[ClaimNumber] [nvarchar](50) NOT NULL,
	[ClaimRecordNum] [nvarchar](50) NULL,
	[AdjClaimNumber] [nvarchar](50) NULL,
	[PayorId] [nvarchar](50) NULL,
	[QME] [nchar](10) NULL,
	[QMECode] [nvarchar](50) NULL,
	[LOB] [nchar](10) NULL,
	[EIN] [nvarchar](50) NULL,
	[Program] [nvarchar](10) NULL,
	[ProcedureCode] [nvarchar](50) NULL,
	[ReimbursementDate] [date] NULL,
	[AmtCharged] [money] NULL,
	[AmtAllowed] [money] NULL,
	[AmtPaid] [money] NULL,
	[Provider] [nvarchar](100) NULL,
	[ProviderFirstName] [nvarchar](100) NULL,
	[ProviderLastName] [nvarchar](100) NULL,
	[ProviderAddress1] [nvarchar](100) NULL,
	[ProviderAddress2] [nvarchar](100) NULL,
	[ProviderCity] [nvarchar](50) NULL,
	[ProviderState] [nvarchar](50) NULL,
	[ProviderZip] [nvarchar](20) NULL,
	[PayTheProvider] [nvarchar](10) NULL,
	[DisallowedReasonCode] [nchar](10) NULL,
	[TotalPatientLiabilityZD] [nvarchar](50) NULL,
	[CacheParticipantId] [nvarchar](50) NULL,
	[RemainingAmount] [smallmoney] NULL,
	[Processed] [varchar](20) NULL,
	[ServiceTypeCode] [nvarchar](50) NULL,
	[ClaimReceiptType] [nvarchar](20) NULL,
	[TypeOfService] [nvarchar](20) NULL,
	[RemAmtUpdate] [date] NULL,
	[XOFileName] [nvarchar](100) NULL,
	[Owner] [varchar](13) NULL,
	[ProcessedDate] [datetime] NULL,
	[DivisionId] [nvarchar](20) NULL,
	[ProviderNum] [nvarchar](20) NULL,
	[PatientId] [nvarchar](50) NULL,
	[DependencyCode] [nvarchar](10) NULL,
	[Location] [nvarchar](10) NULL,
	[InNetwork] [nvarchar](5) NULL,
	[AdjustmentType] [nvarchar](10) NULL,
	[UserDefined1] [nvarchar](100) NULL,
	[UserDefined2] [nvarchar](30) NULL,
	[UserDefined3] [nvarchar](30) NULL,
	[UserDefined4] [nvarchar](30) NULL,
	[UserDefined5] [nvarchar](30) NULL,
	[UserDefined6] [datetime] NULL,
	[UserDefined7] [datetime] NULL,
	[UserDefined8] [varchar](30) NULL,
	[OtherPR] [smallmoney] NULL,
	[UserDefined9] [nvarchar](30) NULL,
	[EmployeeFirstName] [nvarchar](50) NULL,
	[EmployeeLastName] [nvarchar](50) NULL,
	[TargetSystem] [nvarchar](30) NULL,
	[SourceFileDate] [datetime] NULL,
	[SourceClaimNumber] [nvarchar](50) NULL,
	[HasDummyClaimLineNumber] [nvarchar](10) NULL,
	[RenderingProviderFirstName] [nvarchar](100) NULL,
	[RenderingProviderLastName] [nvarchar](100) NULL,
	[EmployerName] [nvarchar](100) NULL,
	[OrgReimbursementType] [nvarchar](10) NULL,
	[PatientDOB] [datetime] NULL,
	[P2PStatus] [nvarchar](20) NULL,
	[Payee] [nvarchar](30) NULL,
	[P2PLastProcessedDate] [datetime] NULL,
	[InvoiceLineId] [int] NULL,
	[BillingProviderId] [int] NULL,
	[TPAApprovedAmt] [smallmoney] NULL,
	[TotalTPAApprovedAmt] [smallmoney] NULL,
	[OrgCopay] [smallmoney] NULL,
	[OrgDeductible] [smallmoney] NULL,
	[OrgCoins] [smallmoney] NULL,
	[ExpenseBucketCoverage] [int] NULL,
	[EmployeeMiddleName] [nvarchar](50) NULL,
	[ServiceRecordNum] [nvarchar](143) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckSum]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckSum](
	[TPaid] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NULL,
	[ServiceType] [nvarchar](20) NULL,
	[Type] [nvarchar](20) NULL,
	[SubType] [nvarchar](20) NULL,
	[ProcessedDate] [datetime] NOT NULL,
	[CrossoverDate] [datetime] NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[RowCount] [int] NOT NULL,
	[TotalAmount1] [money] NOT NULL,
	[TotalAmount2] [money] NULL,
	[UserDefined1] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarrierTrail]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarrierTrail](
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[FirstCrossoverDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
	[GroupCount] [smallint] NULL,
	[ParticipantCount] [smallint] NULL,
	[ClaimCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTrail]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrail](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[ProcessedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Approval]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approval](
	[TPAApprovalId] [int] IDENTITY(1,1) NOT NULL,
	[SourceFileName] [nvarchar](200) NOT NULL,
	[CrossoverDate] [datetime] NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NOT NULL,
	[Channel] [nvarchar](20) NOT NULL,
	[EIN] [nvarchar](50) NOT NULL,
	[ClaimNumber] [nvarchar](50) NOT NULL,
	[ServiceLineNumber] [nvarchar](5) NOT NULL,
	[TPAReferenceNumber] [nvarchar](50) NULL,
	[XOClaimId] [int] NOT NULL,
	[ApprovalDate] [datetime] NOT NULL,
	[SubmittedAmt] [smallmoney] NULL,
	[TPAApprovedAmt] [smallmoney] NOT NULL,
	[DeniedAmt] [smallmoney] NULL,
	[Note] [nvarchar](200) NULL,
	[Status] [nvarchar](30) NULL,
	[LastProcessedDate] [datetime] NULL,
	[ParticipantSSN] [nvarchar](50) NULL,
	[ParticipantFirstName] [nvarchar](50) NULL,
	[ParticipantMiddleName] [nvarchar](50) NULL,
	[ParticipantLastName] [nvarchar](50) NULL,
	[RecipientName] [nvarchar](100) NULL,
	[ExpenseCategory] [nvarchar](30) NULL,
	[ExpenseType] [nvarchar](50) NULL,
	[ImportFileName] [nvarchar](200) NOT NULL,
	[DiscountAmt] [smallmoney] NULL,
	[AfterDiscountAmt] [smallmoney] NOT NULL,
	[FullApprovedAmt] [smallmoney] NULL,
	[PendingAmt] [smallmoney] NULL,
	[PatientResponsibilityAmt] [smallmoney] NULL,
 CONSTRAINT [PK_Approval] PRIMARY KEY CLUSTERED 
(
	[TPAApprovalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[DecryptValue]    Script Date: 02/24/2017 11:12:43 ******/
CREATE FUNCTION [dbo].[DecryptValue](@encryptedValue [nvarchar](50))
RETURNS [nvarchar](50) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [CXCUDF].[CXC.Security].[Decrypt]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(1000,1) NOT NULL,
	[PayerId] [int] NOT NULL,
	[MerchantCode] [nvarchar](20) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[TotalAmt] [money] NULL,
	[Status] [nvarchar](30) NOT NULL,
	[Note] [nvarchar](200) NULL,
	[ProviderId] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[InvoiceLineId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[TPAId] [nvarchar](20) NULL,
	[Amt] [smallmoney] NULL,
	[ClaimId] [int] NOT NULL,
 CONSTRAINT [PK_InvoiceLine] PRIMARY KEY CLUSTERED 
(
	[InvoiceLineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubstantiatedTransaction]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubstantiatedTransaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TPAId] [nvarchar](20) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[TPAParentTransactionId] [nvarchar](20) NOT NULL,
	[TPATransactionId] [nvarchar](20) NOT NULL,
	[CarrierId] [nvarchar](20) NULL,
	[Channel] [nvarchar](20) NOT NULL,
	[EIN] [nvarchar](20) NOT NULL,
	[ConsolidatedClaimId] [int] NOT NULL,
	[ClaimNumber] [nvarchar](30) NOT NULL,
	[Amt] [money] NOT NULL,
	[Status] [nvarchar](20) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
	[MatchingRule] [nvarchar](20) NULL,
	[SubstantiationOrder] [int] NOT NULL,
 CONSTRAINT [PK_SubstantiatedTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_Participants]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Participants]
AS
SELECT     SenderId, CarrierId, CONVERT(date, GETDATE()) AS Updated, COUNT(DISTINCT EIN) AS Clients, COUNT(DISTINCT TPAParticipantId) AS Participants
FROM         dbo.Participant
GROUP BY SenderId, CarrierId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Participant"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Participants'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Participants'
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Trigger [LogApprovalStatus]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[LogApprovalStatus]
ON [dbo].[Approval]
FOR update AS
 if ( UPDATE(Status))
   Begin
     set nocount on
	insert into StatusTrail ([Type], Entity, [Status], Id, ClaimId, TPAApprovedAmt, DateUpdated) select 'NEW','Approval', ins.Status, ins.TPAApprovalId, ins.XOClaimId, ins.TPAApprovedAmt, GETDATE()  FROM inserted ins
  END
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[CardNumber] [nvarchar](100) NOT NULL,
	[CardSecurityCode] [nvarchar](50) NOT NULL,
	[CardExpirationDate] [datetime] NOT NULL,
	[EmailPIN] [nvarchar](50) NULL,
	[PaymentAmt] [money] NULL,
	[CardIssuedDate] [datetime] NOT NULL,
	[PaymentCollectedDate] [datetime] NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Note] [nvarchar](200) NULL,
	[ProviderId] [int] NOT NULL,
	[CardVendorRequestId] [nvarchar](30) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[TPAId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fax]    Script Date: 02/24/2017 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fax](
	[FaxId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentId] [int] NOT NULL,
	[FaxServerName] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TransactionId] [nvarchar](20) NOT NULL,
	[StatusCode] [nvarchar](20) NULL,
	[Status] [nvarchar](20) NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Fax] PRIMARY KEY CLUSTERED 
(
	[FaxId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__CarrierTr__LastU__1ED998B2]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[CarrierTrail] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF_ClaimReasonCodes_DateUpdated]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[ClaimReasonCodes] ADD  CONSTRAINT [DF_ClaimReasonCodes_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
/****** Object:  Default [DF__Client__LastUpda__1A14E395]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Client] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF__MemberMap__LastU__1CF15040]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[MemberMap] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF__Snapshot__LastUp__20C1E124]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Snapshot] ADD  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  ForeignKey [FK_Claim_Feed]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Claim]  WITH NOCHECK ADD  CONSTRAINT [FK_Claim_Feed] FOREIGN KEY([TPAId], [XOFileName])
REFERENCES [dbo].[Feed] ([TPAId], [Name])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_Feed]
GO
/****** Object:  ForeignKey [FK_Claim_InvoiceLine]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Claim]  WITH NOCHECK ADD  CONSTRAINT [FK_Claim_InvoiceLine] FOREIGN KEY([InvoiceLineId])
REFERENCES [dbo].[InvoiceLine] ([InvoiceLineId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_InvoiceLine]
GO
/****** Object:  ForeignKey [FK_Claim_Provider]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Claim]  WITH NOCHECK ADD  CONSTRAINT [FK_Claim_Provider] FOREIGN KEY([BillingProviderId])
REFERENCES [dbo].[Provider] ([ProviderId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_Provider]
GO
/****** Object:  ForeignKey [FK_Fax_Payment]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Fax]  WITH CHECK ADD  CONSTRAINT [FK_Fax_Payment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
GO
ALTER TABLE [dbo].[Fax] CHECK CONSTRAINT [FK_Fax_Payment]
GO
/****** Object:  ForeignKey [FK_Invoice_Payer]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Payer] FOREIGN KEY([PayerId])
REFERENCES [dbo].[Payer] ([PayerId])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Payer]
GO
/****** Object:  ForeignKey [FK_Invoice_Provider]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Provider] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Provider] ([ProviderId])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Provider]
GO
/****** Object:  ForeignKey [FK_InvoiceLine_Claim]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLine_Claim] FOREIGN KEY([ClaimId])
REFERENCES [dbo].[Claim] ([Id])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [FK_InvoiceLine_Claim]
GO
/****** Object:  ForeignKey [FK_InvoiceLine_Invoice]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLine_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[InvoiceLine] CHECK CONSTRAINT [FK_InvoiceLine_Invoice]
GO
/****** Object:  ForeignKey [FK_Payment_Invoice]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Invoice]
GO
/****** Object:  ForeignKey [FK_Payment_Provider]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Provider] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Provider] ([ProviderId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Provider]
GO
/****** Object:  ForeignKey [FK_SubstantiatedTransaction_ConsolidatedClaim]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[SubstantiatedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SubstantiatedTransaction_ConsolidatedClaim] FOREIGN KEY([ConsolidatedClaimId])
REFERENCES [dbo].[ConsolidatedClaim] ([Id])
GO
ALTER TABLE [dbo].[SubstantiatedTransaction] CHECK CONSTRAINT [FK_SubstantiatedTransaction_ConsolidatedClaim]
GO
/****** Object:  ForeignKey [FK_SubstantiatedTransaction_DebitCardTransaction]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[SubstantiatedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SubstantiatedTransaction_DebitCardTransaction] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[DebitCardTransaction] ([Id])
GO
ALTER TABLE [dbo].[SubstantiatedTransaction] CHECK CONSTRAINT [FK_SubstantiatedTransaction_DebitCardTransaction]
GO
/****** Object:  ForeignKey [FK_UserRole_Role]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
/****** Object:  ForeignKey [FK_UserRole_User]    Script Date: 02/24/2017 11:12:43 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO

