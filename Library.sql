USE [Library]
GO
SET IDENTITY_INSERT [dbo].[BookCategories] ON 

INSERT [dbo].[BookCategories] ([Id], [Category], [SubCategory]) VALUES (1, N'computer', N'algorithm')
INSERT [dbo].[BookCategories] ([Id], [Category], [SubCategory]) VALUES (2, N'mechanical', N'machine')
INSERT [dbo].[BookCategories] ([Id], [Category], [SubCategory]) VALUES (3, N'computer', N'programming languages')
INSERT [dbo].[BookCategories] ([Id], [Category], [SubCategory]) VALUES (4, N'computer', N'networking')
INSERT [dbo].[BookCategories] ([Id], [Category], [SubCategory]) VALUES (5, N'computer', N'hardware')
SET IDENTITY_INSERT [dbo].[BookCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (2, N'Data Structures and Algorithms', N'Narsimha Karumanchi', 500, 0, 1)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (3, N'Introduction to Algorithms', N'Thomas H. Cormen', 500, 0, 1)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (4, N'Introduction to Algorithms: A Creative Approach', N'Udi Manber', 500, 0, 1)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (5, N'Introduction to Algorithms: A Creative Approach', N'Udi Manber', 500, 0, 1)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (6, N'Introduction to Algorithms: A Creative Approach', N'Udi Manber', 500, 0, 1)

INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (7, N'An Introduction to Mechanics', N'David Kleppne', 1000, 0, 2)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (8, N'An Introduction to Mechanics', N'David Kleppne', 1000, 0, 2)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (9, N'Theory of Machines', N'SS Rattan', 1000, 0, 2)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (10, N'Theory of Machines', N'SS Rattan', 1000, 0, 2)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (11, N'Design of Machine Elements', N'V B Bhandari', 1200, 0, 2)

INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (12, N'Python for Everybody: Exploring Data Using Python 3', N'Charles Severance', 400, 0, 3)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (13, N'Java: A Beginner''s Guide', N'Herbert Schildt', 400, 0, 3)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (14, N'Java: A Beginner''s Guide', N'Herbert Schildt', 400, 0, 3)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (15, N'JavaScript: The Definitive Guide', N'David Flanagan', 900, 0, 3)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (16, N'The C++ Programming Language', N'Bjarne Stroustrup', 1000, 0, 3)

INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (17, N'Computer Networking: A Top Down', N'James Kurose and Keith Ross', 350, 0, 4)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (18, N'Computer Networking: A Top Down', N'James Kurose and Keith Ross', 350, 0, 4)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (19, N'Data Communications and Networking', N'Behrouz A. Forouzan', 670, 0, 4)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (20, N'Introduction to Networking: How the Internet Works', N'Charles Severance', 600, 0, 4)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (21, N'Introduction to Networking: How the Internet Works', N'Charles Severance', 600, 0, 4)

INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (22, N'Microprocessor 80386 Hardware Reference Manual', N'Intel', 2000, 0, 5)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (23, N'Microprocessor 8085', N'Ramesh Gaonkar', 2000, 0, 5)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (24, N'Operating System Concepts', N'Abraham Silberschatz and Peter Galvin', 1500, 0, 5)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (25, N'Design of the UNIX Operating Systems', N'Maurice Bach', 1500, 0, 5)
INSERT [dbo].[Books] ([Id], [Title], [Author], [Price], [Ordered], [CategoryId]) VALUES (26, N'Design of the UNIX Operating Systems', N'Maurice Bach', 1500, 0, 5)

SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SELECT * FROM [Books]
