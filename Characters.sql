USE [GameCharacters]
GO
/****** Object:  Table [dbo].[Characters]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[id_characters] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FK_Weapon] [int] NULL,
	[FK_Power] [int] NULL,
	[FK_Lvl] [int] NULL,
	[FK_Status] [int] NULL,
	[FK_Type] [int] NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[id_characters] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LevelNPC]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelNPC](
	[id_level_NPC] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LevelNPC] PRIMARY KEY CLUSTERED 
(
	[id_level_NPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PowerCharacters]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerCharacters](
	[id_power_characters] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_PowerCharacters] PRIMARY KEY CLUSTERED 
(
	[id_power_characters] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusCharacters]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusCharacters](
	[id_status_characters] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_StatusCharacters] PRIMARY KEY CLUSTERED 
(
	[id_status_characters] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeCharacters]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeCharacters](
	[id_type_characters] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeCharacters] PRIMARY KEY CLUSTERED 
(
	[id_type_characters] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeWeapon]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeWeapon](
	[id_type_weapon] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeWeapon] PRIMARY KEY CLUSTERED 
(
	[id_type_weapon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weapon]    Script Date: 14.02.2023 23:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weapon](
	[id_weapon] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Power] [int] NULL,
	[PassiveSkill] [nvarchar](50) NULL,
	[FK_Type] [int] NULL,
 CONSTRAINT [PK_Weapon] PRIMARY KEY CLUSTERED 
(
	[id_weapon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (1, N'Агнесс', 1, 1, NULL, 1, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (2, N'Ванесса', 2, 2, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (3, N'Эллиада', 3, 3, NULL, 1, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (4, N'Ева', 4, 4, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (5, N'Ирида', 5, 1, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (6, N'Кариона', 6, 2, NULL, 1, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (7, N'Люцианна', 7, 3, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (8, N'Марианна', 8, 4, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (9, N'Наоми', 9, 1, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (10, N'Палетта', 10, 2, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (11, N'Розалия', 11, 3, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (12, N'Урания', 12, 4, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (13, N'Шиетта', 13, 1, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (14, N'Боркас', 22, 2, NULL, 2, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (15, N'Джим', 23, 3, NULL, 1, 1)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (16, N'Жеан
', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (17, N'Келлан', NULL, NULL, 2, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (18, N'Лас', NULL, NULL, 3, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (19, N'Мел', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (20, N'Рик', NULL, NULL, 2, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (21, N'Син', NULL, NULL, 3, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (22, N'Титаний', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (23, N'Харрин', NULL, NULL, 2, NULL, 2)
INSERT [dbo].[Characters] ([id_characters], [Name], [FK_Weapon], [FK_Power], [FK_Lvl], [FK_Status], [FK_Type]) VALUES (24, N'Феб', NULL, NULL, 3, NULL, 2)
SET IDENTITY_INSERT [dbo].[Characters] OFF
GO
SET IDENTITY_INSERT [dbo].[LevelNPC] ON 

INSERT [dbo].[LevelNPC] ([id_level_NPC], [Title]) VALUES (1, N'Лёгкий')
INSERT [dbo].[LevelNPC] ([id_level_NPC], [Title]) VALUES (2, N'Средний')
INSERT [dbo].[LevelNPC] ([id_level_NPC], [Title]) VALUES (3, N'Тяжёлый')
SET IDENTITY_INSERT [dbo].[LevelNPC] OFF
GO
SET IDENTITY_INSERT [dbo].[PowerCharacters] ON 

INSERT [dbo].[PowerCharacters] ([id_power_characters], [Title]) VALUES (1, N'Огонь')
INSERT [dbo].[PowerCharacters] ([id_power_characters], [Title]) VALUES (2, N'Вода')
INSERT [dbo].[PowerCharacters] ([id_power_characters], [Title]) VALUES (3, N'Воздух')
INSERT [dbo].[PowerCharacters] ([id_power_characters], [Title]) VALUES (4, N'Земля')
SET IDENTITY_INSERT [dbo].[PowerCharacters] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusCharacters] ON 

INSERT [dbo].[StatusCharacters] ([id_status_characters], [Title]) VALUES (1, N'Главный герой')
INSERT [dbo].[StatusCharacters] ([id_status_characters], [Title]) VALUES (2, N'Второстепенный')
SET IDENTITY_INSERT [dbo].[StatusCharacters] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeCharacters] ON 

INSERT [dbo].[TypeCharacters] ([id_type_characters], [Title]) VALUES (1, N'Игровой')
INSERT [dbo].[TypeCharacters] ([id_type_characters], [Title]) VALUES (2, N'НПС')
SET IDENTITY_INSERT [dbo].[TypeCharacters] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeWeapon] ON 

INSERT [dbo].[TypeWeapon] ([id_type_weapon], [Title]) VALUES (1, N'Меч')
INSERT [dbo].[TypeWeapon] ([id_type_weapon], [Title]) VALUES (2, N'Лук')
INSERT [dbo].[TypeWeapon] ([id_type_weapon], [Title]) VALUES (3, N'Топор')
INSERT [dbo].[TypeWeapon] ([id_type_weapon], [Title]) VALUES (4, N'Копьё')
INSERT [dbo].[TypeWeapon] ([id_type_weapon], [Title]) VALUES (5, N'Клинки')
SET IDENTITY_INSERT [dbo].[TypeWeapon] OFF
GO
SET IDENTITY_INSERT [dbo].[Weapon] ON 

INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (1, N'Клинки Хаоса', 150, N'Создание Фантома', 5)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (2, N'Очи Истины', 80, N'Увелечение скорости атаки', 4)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (3, N'Клятвенный Оркус', 120, N'Получение элементальных сфер', 2)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (4, N'Ифрит', 70, N'Повышение атаки на 16%', 3)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (5, N'Свет Зари', 100, N'Защита увеличвается на 25%', 1)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (6, N'Ярость Харона', 90, N'Максимальный бонус урона', 3)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (7, N'Взгляд Медузы', 80, N'Создаёт грозу, наносящая урон по площади', 4)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (8, N'Проклятье Теры', 140, N'Совершение элементальной реакции', 1)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (9, N'Око Атлантиды', 120, N'Взрывание света при нанесении физ. урона', 2)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (10, N'Бич Эринии', 160, N'Увеличен шанс вылечить активного персонажа', 3)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (11, N'Рог Борея', 50, N'Урон увеличен на 5% при падении', 5)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (12, N'Амброзия Афродиты', 90, N'Увеличение мастерство стихий', 2)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (13, N'Меч Олимпа', 130, N'Не потребляет выносливости', 1)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (22, N'Ода Анемонии	', 150, N'Увелечение силы атаки на 16%', 2)
INSERT [dbo].[Weapon] ([id_weapon], [Name], [Power], [PassiveSkill], [FK_Type]) VALUES (23, N'Кольцо Хакусин	', 100, N'Бонус урона к своей силы на 10-20%', 5)
SET IDENTITY_INSERT [dbo].[Weapon] OFF
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_LevelNPC] FOREIGN KEY([FK_Lvl])
REFERENCES [dbo].[LevelNPC] ([id_level_NPC])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_LevelNPC]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_PowerCharacters] FOREIGN KEY([FK_Power])
REFERENCES [dbo].[PowerCharacters] ([id_power_characters])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_PowerCharacters]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_StatusCharacters] FOREIGN KEY([FK_Status])
REFERENCES [dbo].[StatusCharacters] ([id_status_characters])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_StatusCharacters]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_TypeCharacters] FOREIGN KEY([FK_Type])
REFERENCES [dbo].[TypeCharacters] ([id_type_characters])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_TypeCharacters]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Weapon] FOREIGN KEY([FK_Weapon])
REFERENCES [dbo].[Weapon] ([id_weapon])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Weapon]
GO
ALTER TABLE [dbo].[Weapon]  WITH CHECK ADD  CONSTRAINT [FK_Weapon_TypeWeapon] FOREIGN KEY([FK_Type])
REFERENCES [dbo].[TypeWeapon] ([id_type_weapon])
GO
ALTER TABLE [dbo].[Weapon] CHECK CONSTRAINT [FK_Weapon_TypeWeapon]
GO
