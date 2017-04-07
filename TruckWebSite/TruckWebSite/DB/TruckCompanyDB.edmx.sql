
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/26/2017 15:49:23
-- Generated from EDMX file: C:\Users\ZeusAC\Source\Repos\TruckCompanyWebSite\TruckWebSite\TruckWebSite\DB\TruckCompanyDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [C:\USERS\ZEUSAC\DOCUMENTS\TRUCKDB.MDF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BrancheCar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarSet] DROP CONSTRAINT [FK_BrancheCar];
GO
IF OBJECT_ID(N'[dbo].[FK_BrancheEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeSet] DROP CONSTRAINT [FK_BrancheEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeSchedule]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeSet] DROP CONSTRAINT [FK_EmployeeSchedule];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeJob]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmployeeSet] DROP CONSTRAINT [FK_EmployeeJob];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceCar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarSet] DROP CONSTRAINT [FK_ServiceCar];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceServiceHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ServiceHistorySet] DROP CONSTRAINT [FK_ServiceServiceHistory];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerService]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ServiceSet] DROP CONSTRAINT [FK_CustomerService];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CarSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarSet];
GO
IF OBJECT_ID(N'[dbo].[BrancheSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BrancheSet];
GO
IF OBJECT_ID(N'[dbo].[EmployeeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployeeSet];
GO
IF OBJECT_ID(N'[dbo].[ScheduleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScheduleSet];
GO
IF OBJECT_ID(N'[dbo].[JobSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobSet];
GO
IF OBJECT_ID(N'[dbo].[ServiceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServiceSet];
GO
IF OBJECT_ID(N'[dbo].[ServiceHistorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServiceHistorySet];
GO
IF OBJECT_ID(N'[dbo].[CustomerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CarSet'
CREATE TABLE [dbo].[CarSet] (
    [CarId] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Brand] nvarchar(max)  NOT NULL,
    [Year] int  NOT NULL,
    [Kilometrs] decimal(18,0)  NOT NULL,
    [Plate] nvarchar(max)  NOT NULL,
    [Photo] nvarchar(max)  NULL,
    [BrancheBrancheId] int  NOT NULL,
    [ServiceServiceId] int  NOT NULL
);
GO

-- Creating table 'BrancheSet'
CREATE TABLE [dbo].[BrancheSet] (
    [BrancheId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Capacity] int  NOT NULL
);
GO

-- Creating table 'EmployeeSet'
CREATE TABLE [dbo].[EmployeeSet] (
    [EmployeeId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Birthday] nvarchar(max)  NOT NULL,
    [PhoneNumber] int  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [BrancheBrancheId] int  NOT NULL,
    [Schedule_ScheduleId] int  NOT NULL,
    [Job_JobId] int  NOT NULL
);
GO

-- Creating table 'ScheduleSet'
CREATE TABLE [dbo].[ScheduleSet] (
    [ScheduleId] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL
);
GO

-- Creating table 'JobSet'
CREATE TABLE [dbo].[JobSet] (
    [JobId] int IDENTITY(1,1) NOT NULL,
    [JobTitle] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Salary] decimal(18,0)  NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL,
    [Open] bit  NOT NULL,
    [Location] nvarchar(max)  NULL
);
GO

-- Creating table 'ServiceSet'
CREATE TABLE [dbo].[ServiceSet] (
    [ServiceId] int IDENTITY(1,1) NOT NULL,
    [ServieType] nvarchar(max)  NOT NULL,
    [CustomerCustomerId] int  NOT NULL
);
GO

-- Creating table 'ServiceHistorySet'
CREATE TABLE [dbo].[ServiceHistorySet] (
    [ServiceHistoryId] int IDENTITY(1,1) NOT NULL,
    [Value] decimal(18,0)  NOT NULL,
    [StartDate] nvarchar(max)  NOT NULL,
    [EndDate] nvarchar(max)  NOT NULL,
    [ServiceServiceId] int  NOT NULL
);
GO

-- Creating table 'CustomerSet'
CREATE TABLE [dbo].[CustomerSet] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Birthday] nvarchar(max)  NOT NULL,
    [PhoneNumber] int  NOT NULL,
    [Address] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CarId] in table 'CarSet'
ALTER TABLE [dbo].[CarSet]
ADD CONSTRAINT [PK_CarSet]
    PRIMARY KEY CLUSTERED ([CarId] ASC);
GO

-- Creating primary key on [BrancheId] in table 'BrancheSet'
ALTER TABLE [dbo].[BrancheSet]
ADD CONSTRAINT [PK_BrancheSet]
    PRIMARY KEY CLUSTERED ([BrancheId] ASC);
GO

-- Creating primary key on [EmployeeId] in table 'EmployeeSet'
ALTER TABLE [dbo].[EmployeeSet]
ADD CONSTRAINT [PK_EmployeeSet]
    PRIMARY KEY CLUSTERED ([EmployeeId] ASC);
GO

-- Creating primary key on [ScheduleId] in table 'ScheduleSet'
ALTER TABLE [dbo].[ScheduleSet]
ADD CONSTRAINT [PK_ScheduleSet]
    PRIMARY KEY CLUSTERED ([ScheduleId] ASC);
GO

-- Creating primary key on [JobId] in table 'JobSet'
ALTER TABLE [dbo].[JobSet]
ADD CONSTRAINT [PK_JobSet]
    PRIMARY KEY CLUSTERED ([JobId] ASC);
GO

-- Creating primary key on [ServiceId] in table 'ServiceSet'
ALTER TABLE [dbo].[ServiceSet]
ADD CONSTRAINT [PK_ServiceSet]
    PRIMARY KEY CLUSTERED ([ServiceId] ASC);
GO

-- Creating primary key on [ServiceHistoryId] in table 'ServiceHistorySet'
ALTER TABLE [dbo].[ServiceHistorySet]
ADD CONSTRAINT [PK_ServiceHistorySet]
    PRIMARY KEY CLUSTERED ([ServiceHistoryId] ASC);
GO

-- Creating primary key on [CustomerId] in table 'CustomerSet'
ALTER TABLE [dbo].[CustomerSet]
ADD CONSTRAINT [PK_CustomerSet]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BrancheBrancheId] in table 'CarSet'
ALTER TABLE [dbo].[CarSet]
ADD CONSTRAINT [FK_BrancheCar]
    FOREIGN KEY ([BrancheBrancheId])
    REFERENCES [dbo].[BrancheSet]
        ([BrancheId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BrancheCar'
CREATE INDEX [IX_FK_BrancheCar]
ON [dbo].[CarSet]
    ([BrancheBrancheId]);
GO

-- Creating foreign key on [BrancheBrancheId] in table 'EmployeeSet'
ALTER TABLE [dbo].[EmployeeSet]
ADD CONSTRAINT [FK_BrancheEmployee]
    FOREIGN KEY ([BrancheBrancheId])
    REFERENCES [dbo].[BrancheSet]
        ([BrancheId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BrancheEmployee'
CREATE INDEX [IX_FK_BrancheEmployee]
ON [dbo].[EmployeeSet]
    ([BrancheBrancheId]);
GO

-- Creating foreign key on [Schedule_ScheduleId] in table 'EmployeeSet'
ALTER TABLE [dbo].[EmployeeSet]
ADD CONSTRAINT [FK_EmployeeSchedule]
    FOREIGN KEY ([Schedule_ScheduleId])
    REFERENCES [dbo].[ScheduleSet]
        ([ScheduleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeSchedule'
CREATE INDEX [IX_FK_EmployeeSchedule]
ON [dbo].[EmployeeSet]
    ([Schedule_ScheduleId]);
GO

-- Creating foreign key on [Job_JobId] in table 'EmployeeSet'
ALTER TABLE [dbo].[EmployeeSet]
ADD CONSTRAINT [FK_EmployeeJob]
    FOREIGN KEY ([Job_JobId])
    REFERENCES [dbo].[JobSet]
        ([JobId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeJob'
CREATE INDEX [IX_FK_EmployeeJob]
ON [dbo].[EmployeeSet]
    ([Job_JobId]);
GO

-- Creating foreign key on [ServiceServiceId] in table 'CarSet'
ALTER TABLE [dbo].[CarSet]
ADD CONSTRAINT [FK_ServiceCar]
    FOREIGN KEY ([ServiceServiceId])
    REFERENCES [dbo].[ServiceSet]
        ([ServiceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceCar'
CREATE INDEX [IX_FK_ServiceCar]
ON [dbo].[CarSet]
    ([ServiceServiceId]);
GO

-- Creating foreign key on [ServiceServiceId] in table 'ServiceHistorySet'
ALTER TABLE [dbo].[ServiceHistorySet]
ADD CONSTRAINT [FK_ServiceServiceHistory]
    FOREIGN KEY ([ServiceServiceId])
    REFERENCES [dbo].[ServiceSet]
        ([ServiceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceServiceHistory'
CREATE INDEX [IX_FK_ServiceServiceHistory]
ON [dbo].[ServiceHistorySet]
    ([ServiceServiceId]);
GO

-- Creating foreign key on [CustomerCustomerId] in table 'ServiceSet'
ALTER TABLE [dbo].[ServiceSet]
ADD CONSTRAINT [FK_CustomerService]
    FOREIGN KEY ([CustomerCustomerId])
    REFERENCES [dbo].[CustomerSet]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerService'
CREATE INDEX [IX_FK_CustomerService]
ON [dbo].[ServiceSet]
    ([CustomerCustomerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------