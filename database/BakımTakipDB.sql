USE [BakimTakip]
GO
/****** Object:  Table [dbo].[bakArizaKodlari]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakArizaKodlari](
	[ArizaKoduID] [int] IDENTITY(10001,1) NOT NULL,
	[ArizaKodu] [nvarchar](100) NULL,
	[Tur] [int] NULL,
	[Pasif] [bit] NULL,
 CONSTRAINT [PK_bakArizaKodlari] PRIMARY KEY CLUSTERED 
(
	[ArizaKoduID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakArizalar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakArizalar](
	[ArizaID] [int] NOT NULL,
	[Tarih] [smalldatetime] NULL,
	[Islem] [int] NULL,
	[Bolum] [int] NULL,
	[Makine] [int] NULL,
	[Tur] [int] NULL,
	[Personel] [nvarchar](max) NULL,
	[Vardiya] [int] NULL,
	[BaslamaSaati] [time](0) NULL,
	[BitisSaati] [time](0) NULL,
	[Durus] [int] NULL,
	[ArizaKodu] [nvarchar](max) NULL,
	[Yapilanlar] [nvarchar](max) NULL,
	[Cozuldu] [bit] NULL,
	[FormVar] [bit] NULL,
	[Kullanici] [nvarchar](250) NULL,
	[ToplamSure]  AS (datediff(minute,[BaslamaSaati],[BitisSaati])),
	[ParcaSure]  AS (datediff(minute,[BaslamaSaati],[BitisSaati])/((len([ArizaKodu])-len(replace([ArizaKodu],'-','')))+(1))),
	[ParcaDurus]  AS ([Durus]/((len([ArizaKodu])-len(replace([ArizaKodu],'-','')))+(1))),
 CONSTRAINT [PK_bakArizalar] PRIMARY KEY CLUSTERED 
(
	[ArizaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakAyarlar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakAyarlar](
	[AyarID] [int] NOT NULL,
	[KilitTarih] [date] NULL,
 CONSTRAINT [PK_bakAyarlar] PRIMARY KEY CLUSTERED 
(
	[AyarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakAylar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakAylar](
	[AyID] [int] NOT NULL,
	[Ay] [nvarchar](10) NULL,
 CONSTRAINT [PK_bakAylar] PRIMARY KEY CLUSTERED 
(
	[AyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakBolumler]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakBolumler](
	[BolumID] [int] NOT NULL,
	[Bolum] [nvarchar](50) NULL,
	[Pasif] [bit] NULL,
 CONSTRAINT [PK_bakBolumler] PRIMARY KEY CLUSTERED 
(
	[BolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakDonem]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakDonem](
	[DonemID] [int] NOT NULL,
	[Bolum] [nvarchar](50) NULL,
	[Pasif] [bit] NULL,
 CONSTRAINT [PK_bakDonem] PRIMARY KEY CLUSTERED 
(
	[DonemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakDuyurular]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakDuyurular](
	[DuyurID] [int] NOT NULL,
	[Duyuru] [nvarchar](max) NULL,
	[Yapilacak1] [nvarchar](max) NULL,
	[Yapilacak2] [nvarchar](max) NULL,
	[Yapilacak3] [nvarchar](max) NULL,
	[Yapilacak4] [nvarchar](max) NULL,
	[Yapilacak5] [nvarchar](max) NULL,
	[Yapilacak6] [nvarchar](max) NULL,
	[Yapilacak7] [nvarchar](max) NULL,
	[Yapilacak8] [nvarchar](max) NULL,
	[Yapilacak9] [nvarchar](max) NULL,
	[Yapilacak10] [nvarchar](max) NULL,
 CONSTRAINT [PK_bakDuyurular] PRIMARY KEY CLUSTERED 
(
	[DuyurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakIslem]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakIslem](
	[IslemID] [int] NOT NULL,
	[IslemTuru] [nvarchar](20) NULL,
 CONSTRAINT [PK_bakIslem] PRIMARY KEY CLUSTERED 
(
	[IslemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakIsPlani]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakIsPlani](
	[IsID] [int] NOT NULL,
	[IsTanimi] [nvarchar](250) NULL,
	[Durumu] [nvarchar](250) NULL,
	[Turu] [int] NULL,
	[Bolum] [int] NULL,
	[FormSiraNo] [int] NULL,
	[TalepTarihi] [date] NULL,
	[IstenenTarih] [date] NULL,
	[TamamlanmaTarihi] [date] NULL,
	[TakipEdenler] [nvarchar](max) NULL,
	[Yapildi] [bit] NULL,
	[Kullanici] [nvarchar](250) NULL,
	[DegısıklıkTuru] [nvarchar](250) NULL,
	[IslemTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK_bakIsPlani] PRIMARY KEY CLUSTERED 
(
	[IsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakMakineler]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakMakineler](
	[MakineID] [int] NOT NULL,
	[MakineAdi] [nvarchar](50) NULL,
	[BolumID] [int] NULL,
	[Secenek] [int] NULL,
 CONSTRAINT [PK_bakMakineler] PRIMARY KEY CLUSTERED 
(
	[MakineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakOneriler]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakOneriler](
	[OneriID] [int] NOT NULL,
	[Tarih] [smalldatetime] NULL,
	[Bolum] [int] NULL,
	[Tur] [int] NULL,
	[Personel] [int] NULL,
	[Vardiya] [int] NULL,
	[Onerı] [nvarchar](max) NULL,
	[Pasif] [bit] NULL,
 CONSTRAINT [PK_bakOneriler] PRIMARY KEY CLUSTERED 
(
	[OneriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakPeriyodikBakim]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakPeriyodikBakim](
	[PeriyodikID] [int] NOT NULL,
	[Makine] [int] NULL,
	[Tarih] [date] NULL,
	[BakimTuru] [int] NULL,
	[Personel] [nvarchar](max) NULL,
	[Vardiya] [int] NULL,
	[BaslamaSaati] [time](0) NULL,
	[BitisSaati] [time](0) NULL,
	[Yapildi] [bit] NULL,
	[Kullanici] [varchar](250) NULL,
	[Donem] [int] NULL,
	[Yapilanlar] [nvarchar](250) NULL,
 CONSTRAINT [PK_bakPeriyodikBakim] PRIMARY KEY CLUSTERED 
(
	[PeriyodikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakPersoneller]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakPersoneller](
	[PersonelID] [int] NOT NULL,
	[PersonelAdi] [nvarchar](250) NULL,
	[Tur] [int] NULL,
	[Pasif] [bit] NULL,
	[Kullanici] [nvarchar](250) NULL,
 CONSTRAINT [PK_bakPersoneller] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakTur]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakTur](
	[TurID] [int] NOT NULL,
	[Turu] [nvarchar](20) NULL,
 CONSTRAINT [PK_bakTur] PRIMARY KEY CLUSTERED 
(
	[TurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakVardiyalar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakVardiyalar](
	[VardiyaID] [int] NOT NULL,
	[Vardiya] [nvarchar](20) NULL,
 CONSTRAINT [PK_bakVardiyalar] PRIMARY KEY CLUSTERED 
(
	[VardiyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bakYillar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bakYillar](
	[YilID] [int] NOT NULL,
	[Yil] [int] NULL,
 CONSTRAINT [PK_bakYillar] PRIMARY KEY CLUSTERED 
(
	[YilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 11.10.2021 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] NOT NULL,
	[KullaniciAdi] [nvarchar](20) NULL,
	[KullaniciAdiSoyadi] [nvarchar](100) NULL,
	[KullaniciSifre] [int] NULL,
	[KullaniciGrup] [int] NULL,
	[KullaniciAtama] [int] NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
