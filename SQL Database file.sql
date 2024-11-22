CREATE TABLE [dbo].[AdminUsers] (
    [UserId]       UNIQUEIDENTIFIER NOT NULL,
    [UserNames]    NVARCHAR (50)    NOT NULL,
    [UserPassword] NVARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);
CREATE TABLE [dbo].[LecturerClaims] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [LecturerName]   NVARCHAR (100)   NOT NULL,
    [HoursWorked]    DECIMAL (5, 2)   NOT NULL,
    [HourlyRate]     DECIMAL (7, 2)   NOT NULL,
    [TotalAmount]    DECIMAL (10, 2)  NOT NULL,
    [Notes]          NVARCHAR (500)   NULL,
    [SubmissionDate] DATETIME         NOT NULL,
    [Status]         NVARCHAR (20)    DEFAULT ('Pending') NOT NULL,
    [DocumentPath]   NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Lecturers] (
    [LecturerId]    UNIQUEIDENTIFIER NOT NULL,
    [Name]          NVARCHAR (100)   NOT NULL,
    [Email]         NVARCHAR (100)   NOT NULL,
    [ContactNumber] NVARCHAR (20)    NULL,
    [Address]       NVARCHAR (200)   NULL,
    PRIMARY KEY CLUSTERED ([LecturerId] ASC)
);