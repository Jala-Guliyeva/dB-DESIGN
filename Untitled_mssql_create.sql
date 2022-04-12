CREATE TABLE [Students] (
	Id integer NOT NULL,
	Name string NOT NULL,
	Surname string NOT NULL,
	Age integer NOT NULL
)
GO
CREATE TABLE [Contacts] (
	Id integer NOT NULL,
	Phone integer NOT NULL,
	Gmail string NOT NULL,
	StudentId integer NOT NULL
)
GO
CREATE TABLE [Countries] (
	Name string NOT NULL,
	Population decimal NOT NULL,
	Area decimal NOT NULL,
	Id integer NOT NULL
)
GO
CREATE TABLE [Cities] (
	Id integer NOT NULL,
	Name string NOT NULL,
	Population decimal NOT NULL,
	Area decimal NOT NULL,
	CountryId integer NOT NULL
)
GO
CREATE TABLE [Courses] (
	Id integer NOT NULL,
	Name string NOT NULL
)
GO
CREATE TABLE [StudentCourse] (
	CourseId integer NOT NULL,
	StudentsId integer NOT NULL,
	Id integer NOT NULL
)
GO

ALTER TABLE [Contacts] WITH CHECK ADD CONSTRAINT [Contacts_fk0] FOREIGN KEY ([StudentId]) REFERENCES [Students]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Contacts] CHECK CONSTRAINT [Contacts_fk0]
GO


ALTER TABLE [Cities] WITH CHECK ADD CONSTRAINT [Cities_fk0] FOREIGN KEY ([CountryId]) REFERENCES [Countries]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Cities] CHECK CONSTRAINT [Cities_fk0]
GO


ALTER TABLE [StudentCourse] WITH CHECK ADD CONSTRAINT [StudentCourse_fk0] FOREIGN KEY ([CourseId]) REFERENCES [Courses]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [StudentCourse] CHECK CONSTRAINT [StudentCourse_fk0]
GO
ALTER TABLE [StudentCourse] WITH CHECK ADD CONSTRAINT [StudentCourse_fk1] FOREIGN KEY ([StudentsId]) REFERENCES [Students]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [StudentCourse] CHECK CONSTRAINT [StudentCourse_fk1]
GO

