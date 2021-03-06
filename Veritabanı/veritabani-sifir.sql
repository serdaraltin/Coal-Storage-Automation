USE [KomurArdiye]
GO
/****** Object:  StoredProcedure [dbo].[FirmaBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[FirmaBilgi]
@Id int

As
Begin
Select *From Firma Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[FirmaBilgiGetAd]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[FirmaBilgiGetAd]
@Ad nchar(20)

As
Begin
Select *From Firma Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[FirmaEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[FirmaEkle]
@Ad nchar(20),
@Mail nchar(20)

As
Begin
Insert Into Firma (Ad,Mail) Values(@Ad,@Mail)
End
GO
/****** Object:  StoredProcedure [dbo].[FirmaGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[FirmaGuncelle]
@Id int,
@Ad nchar(20),
@Mail nchar(20)

As
Begin
Update Firma Set Ad=@Ad,Mail=@Mail Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[Firmalar]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Firmalar]

As
Begin
Select *From Firma
End
GO
/****** Object:  StoredProcedure [dbo].[FirmaSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[FirmaSil]
@Id int


As
Begin
Delete From Firma Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriBilgi]
@Id int

As
Begin
Select *From Musteri Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriEkle]
@TcNo nchar(20),
@Ad nchar(30),
@Soyad nchar(30),
@Telefon nchar(20),
@Eposta nchar(20),
@Sehir nchar(20),
@Ilce nchar(30),
@Adres nchar(40)

As
Begin
Insert Into Musteri (TcNo,Ad,Soyad,Telefon,Eposta,Sehir,Ilce,Adres) Values(@TcNo,@Ad,@Soyad,@Telefon,@Eposta,@Sehir,@Ilce,@Adres)
End

GO
/****** Object:  StoredProcedure [dbo].[MusteriGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriGuncelle]
@Id int,
@TcNo nchar(20),
@Ad nchar(30),
@Soyad nchar(30),
@Telefon nchar(20),
@Eposta nchar(20),
@Sehir nchar(20),
@Ilce nchar(30),
@Adres nchar(40)

As
Begin
Update Musteri Set TcNo=@TcNo,Ad=@Ad,Soyad=@Soyad,Telefon=@Telefon,Eposta=@Eposta,Sehir=@Sehir,Ilce=@Ilce,Adres=@Adres
End

GO
/****** Object:  StoredProcedure [dbo].[Musteriler]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Musteriler]
As
Begin
Select *From Musteri
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriSil]
@Id int

As
Begin
Delete From Musteri Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[OdemeBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[OdemeBilgi]
@Id int

As
Begin
Select *From Odeme Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[OdemeEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[OdemeEkle]
@Musteri_Id int,
@Tutar float,
@SiparisTarih datetime,
@OdemeTarih datetime,
@FaturaNo varchar(60),
@OdemeYontem nchar(10),
@GirisTarih datetime,
@CikisTarih datetime

As
Begin
Insert Into Odeme (Musteri_Id,Tutar,SiparisTarih,OdemeTarih,FaturaNo,OdemeYontem,GirisTarih,CikisTarih) Values(@Musteri_Id,@Tutar,@SiparisTarih,@OdemeTarih,@FaturaNo,@OdemeYontem,@GirisTarih,@CikisTarih)
End

GO
/****** Object:  StoredProcedure [dbo].[OdemeGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[OdemeGuncelle]
@Id int,
@Musteri_Id int,
@Tutar float,
@SiparisTarih datetime,
@OdemeTarih datetime,
@FaturaNo varchar(60),
@OdemeYontem nchar(10),
@GirisTarih datetime,
@CikisTarih datetime

As
Begin
Update Odeme Set Musteri_Id=@Musteri_Id,Tutar=@Tutar,SiparisTarih=@SiparisTarih,OdemeTarih=@OdemeTarih,FaturaNo=@FaturaNo,OdemeYontem=@OdemeYontem,GirisTarih=@GirisTarih,CikisTarih=@CikisTarih
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[Odemeler]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Odemeler]
As
Begin
Select *From Odeme
End
GO
/****** Object:  StoredProcedure [dbo].[OdemeSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[OdemeSil]
@Id int

As
Begin
Delete From Odeme Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[Siparis_DetayEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Siparis_DetayEkle]
@Siparis_Id int,
@Urun_Id int,
@Miktar int,
@Fiyat float
As
Begin
Insert Into Siparis_Detay (Siparis_Id,Urun_Id,Miktar,Fiyat) Values(@Siparis_Id,@Urun_Id,@Miktar,@Fiyat)
End

GO
/****** Object:  StoredProcedure [dbo].[Siparis_DetayGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Siparis_DetayGuncelle]
@Id int,
@Siparis_Id int,
@Urun_Id int,
@Miktar int,
@Fiyat float
As
Begin
Update Siparis_Detay Set Siparis_Id=@Siparis_Id,Urun_Id=@Urun_Id,Miktar=@Miktar,Fiyat=@Fiyat
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[Siparis_Detaylar]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Siparis_Detaylar]
@Siparis_Id int

As
Begin
Select *From Siparis_Detay Where Siparis_Id=@Siparis_Id
End
GO
/****** Object:  StoredProcedure [dbo].[Siparis_DetaySil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Siparis_DetaySil]
@Id int

As
Begin
Delete From Siparis_Detay Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[SiparisBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisBilgi]
@Id int

As
Begin
Select *From Siparis Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisEkle]
@Musteri_Id int,
@SiparisTarih datetime,
@TeslimatTarih datetime,
@TeslimatAdres nchar(40)

As
Begin
Insert Into Siparis (Musteri_Id,SiparisTarih,TeslimatTarih,TeslimatAdres) Values(@Musteri_Id,@SiparisTarih,@TeslimatTarih,@TeslimatAdres)
End

GO
/****** Object:  StoredProcedure [dbo].[SiparisGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisGuncelle]
@Id int,
@Musteri_Id int,
@SiparisTarih datetime,
@TeslimatTarih datetime,
@TeslimatAdres nchar(40)

As
Begin
Update Siparis set Musteri_Id=@Musteri_Id,SiparisTarih=@SiparisTarih,TeslimatTarih=@TeslimatTarih,TeslimatAdres=@TeslimatAdres
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[Siparisler]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Siparisler]
As
Begin
Select *From Siparis
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisSil]
@Id int

As
Begin
Delete From Siparis Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[ToptanciBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ToptanciBilgi]
@Id int
As
Begin
Select *From Toptanci Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[ToptanciEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ToptanciEkle]
@Firma_Id int,
@Telefon nchar(20),
@Mail nchar(20),
@Adres nchar(40)
As
Begin
Insert Into Toptanci (Firma_Id,Telefon,Mail,Adres) Values(@Firma_Id,@Telefon,@Mail,@Adres)
End

GO
/****** Object:  StoredProcedure [dbo].[ToptanciGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ToptanciGuncelle]
@Id int,
@Firma_Id int,
@Telefon nchar(20),
@Mail nchar(20),
@Adres nchar(40)
As
Begin
Update Toptanci Set Firma_Id=@Firma_Id,Telefon=@Telefon,Mail=@Mail,Adres=@Adres
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[Toptancilar]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Toptancilar]
As
Begin
Select *From Toptanci
End
GO
/****** Object:  StoredProcedure [dbo].[ToptanciSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ToptanciSil]
@Id int

As
Begin
Delete From Toptanci Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[UrunBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunBilgi]
@Id int
As
Begin
Select *From Urun Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunBilgiGetAd]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunBilgiGetAd]
@UrunAd nchar(50)

As
Begin
Select *From Urun Where UrunAd=@UrunAd
End
GO
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunEkle]
@Barkod nchar(20),
@UrunAd nchar(50),
@Birim nchar(20),
@Miktar int,
@Fiyat float,
@GirisTarih datetime,
@CikisTarih datetime
As
Begin
Insert Into Urun (Barkod,UrunAd,Birim,Miktar,Fiyat,GirisTarih,CikisTarih) Values(@Barkod,@UrunAd,@Birim,@Miktar,@Fiyat,@GirisTarih,@CikisTarih)
End

GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGuncelle]
@Id nchar(20),
@Barkod nchar(20),
@UrunAd nchar(50),
@Birim nchar(20),
@Miktar int,
@Fiyat float,
@GirisTarih datetime,
@CikisTarih datetime
As
Begin
Update Urun Set Barkod=@Barkod,UrunAd=@UrunAd,Birim=@Birim,Miktar=@Miktar,Fiyat=@Fiyat,GirisTarih=@GirisTarih,CikisTarih=@CikisTarih
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelleMiktar]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGuncelleMiktar]
@Id int,
@Miktar int

As
Begin
Update Urun Set Miktar=@Miktar Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[Urunler]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Urunler]
As
Begin
Select *From Urun
End
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunSil]
@Id int

As
Begin
Delete From Urun Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[YoneticiBilgi]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiBilgi]
@Id int

As
Begin
Select *From Yonetici Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiBilgiGetAd]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiBilgiGetAd]
@KullaniciAd nchar(20)

As
Begin
Select *From Yonetici Where KullaniciAd=@KullaniciAd
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiEkle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiEkle]
@KullaniciAd nchar(20),
@Parola nchar(20)
As
Begin
Insert Into Yonetici (KullaniciAd,Parola) Values(@KullaniciAd,@Parola)
End

GO
/****** Object:  StoredProcedure [dbo].[YoneticiGuncelle]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiGuncelle]
@Id int,
@KullaniciAd nchar(20),
@Parola nchar(20)
As
Begin
Update Yonetici Set KullaniciAd=@KullaniciAd,Parola=@Parola
Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[YoneticiKontrol]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiKontrol]
@KullaniciAd nchar(20),
@Parola nchar(20)

As
Begin
Select *From Yonetici Where KullaniciAd=@KullaniciAd and Parola=@Parola
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiSil]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiSil]
@Id int

As
Begin
Delete From Yonetici Where Id=@Id
End

GO
/****** Object:  StoredProcedure [dbo].[YoneticiVarlikKontrol]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiVarlikKontrol]

As
Begin
Select *From Yonetici
End
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nchar](20) NULL,
	[Mail] [nchar](20) NULL,
 CONSTRAINT [PK_Firma] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TcNo] [nchar](20) NULL,
	[Ad] [nchar](30) NULL,
	[Soyad] [nchar](30) NULL,
	[Telefon] [nchar](20) NULL,
	[Eposta] [nchar](20) NULL,
	[Sehir] [nchar](20) NULL,
	[Ilce] [nchar](30) NULL,
	[Adres] [nchar](50) NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Odeme]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Odeme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_Id] [int] NULL,
	[Tutar] [float] NULL,
	[SiparisTarih] [datetime] NULL,
	[OdemeTarih] [datetime] NULL,
	[FaturaNo] [varchar](60) NULL,
	[OdemeYontem] [nchar](10) NULL,
	[GirisTarih] [datetime] NULL,
	[CikisTarih] [datetime] NULL,
 CONSTRAINT [PK_Odeme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Siparis]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_Id] [int] NULL,
	[SiparisTarih] [datetime] NULL,
	[TeslimatTarih] [datetime] NULL,
	[TeslimatAdres] [nchar](40) NULL,
 CONSTRAINT [PK_Siparis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siparis_Detay]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis_Detay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Siparis_Id] [int] NULL,
	[Urun_Id] [int] NULL,
	[Miktar] [int] NULL,
	[Fiyat] [float] NULL,
 CONSTRAINT [PK_Siparis_Detay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Toptanci]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toptanci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firma_Id] [int] NULL,
	[Telefon] [nchar](20) NULL,
	[Mail] [nchar](20) NULL,
	[Adres] [nchar](40) NULL,
 CONSTRAINT [PK_Toptanci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urun]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Barkod] [nchar](20) NULL,
	[UrunAd] [nchar](50) NULL,
	[Birim] [nchar](20) NULL,
	[Miktar] [int] NULL,
	[Fiyat] [float] NULL,
	[GirisTarih] [datetime] NULL,
	[CikisTarih] [datetime] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 7.03.2020 23:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nchar](20) NULL,
	[Parola] [nchar](20) NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
