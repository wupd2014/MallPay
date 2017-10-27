USE [master]
GO
/****** Object:  Database [HfPay]    Script Date: 10/27/2017 07:57:25 ******/
CREATE DATABASE [HfPay] ON  PRIMARY 
( NAME = N'HfPay', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HfPay.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HfPay_log', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HfPay_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HfPay] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HfPay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HfPay] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HfPay] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HfPay] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HfPay] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HfPay] SET ARITHABORT OFF
GO
ALTER DATABASE [HfPay] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HfPay] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HfPay] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HfPay] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HfPay] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HfPay] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HfPay] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HfPay] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HfPay] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HfPay] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HfPay] SET  DISABLE_BROKER
GO
ALTER DATABASE [HfPay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HfPay] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HfPay] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HfPay] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HfPay] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HfPay] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HfPay] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HfPay] SET  READ_WRITE
GO
ALTER DATABASE [HfPay] SET RECOVERY FULL
GO
ALTER DATABASE [HfPay] SET  MULTI_USER
GO
ALTER DATABASE [HfPay] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HfPay] SET DB_CHAINING OFF
GO
USE [HfPay]
GO
/****** Object:  Table [dbo].[Sys_PayChannel]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_PayChannel](
	[Id] [int] NOT NULL,
	[ChannelName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SYS_PAYCHANNEL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_PayChannel', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付渠道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_PayChannel', @level2type=N'COLUMN',@level2name=N'ChannelName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付渠道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_PayChannel'
GO
/****** Object:  Table [dbo].[Sys_QrCodeType]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_QrCodeType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Sys_QrCodeType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCodeType', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCodeType', @level2type=N'COLUMN',@level2name=N'Status'
GO
/****** Object:  Table [dbo].[Sys_Order]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Order](
	[Id] [int] NOT NULL,
	[OrderCode] [nvarchar](50) NULL,
	[OrderConactPerson] [nvarchar](50) NULL,
	[OrderContactTel] [nvarchar](50) NULL,
	[OrderAddress] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[OrderTotalMoney] [decimal](18, 0) NULL,
	[UserCode] [int] NULL,
	[OrderDisCountMoney] [decimal](18, 0) NULL,
	[CardId] [nvarchar](50) NULL,
	[OrderRealMoney] [decimal](18, 0) NULL,
	[OrderTrans] [nvarchar](50) NULL,
	[OrderStatus] [int] NULL,
	[OrderPayType] [int] NULL,
 CONSTRAINT [PK_SYS_ORDER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderConactPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderContactTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收获地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderTotalMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'UserCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderDisCountMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'CardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderRealMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderTrans'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态:未知付.已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order', @level2type=N'COLUMN',@level2name=N'OrderPayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Order'
GO
/****** Object:  Table [dbo].[Sys_Orgazation]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Orgazation](
	[DepId] [int] NOT NULL,
	[DepName] [nvarchar](50) NULL,
	[DepCode] [nvarchar](10) NULL,
	[DepParentId] [int] NULL,
	[Status] [int] NULL,
	[IsMerchant] [int] NULL,
	[DepType] [int] NULL,
 CONSTRAINT [PK_SYS_ENTERPRISEORGAZATION] PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'DepId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'DepName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'DepCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级机构' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'DepParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否商户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'IsMerchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织结构类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation', @level2type=N'COLUMN',@level2name=N'DepType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业组织机构' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Orgazation'
GO
/****** Object:  Table [dbo].[Sys_GoodsCategory]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_GoodsCategory](
	[Id] [int] NOT NULL,
	[CateName] [nvarchar](50) NULL,
	[CateParentId] [int] NULL,
	[IsParentId] [bit] NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_SYS_GOODS_CATE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory', @level2type=N'COLUMN',@level2name=N'CateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父分类Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory', @level2type=N'COLUMN',@level2name=N'CateParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory', @level2type=N'COLUMN',@level2name=N'IsParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory'
GO
/****** Object:  Table [dbo].[Sys_Good]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Good](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[PriceLeft] [int] NULL,
	[PriceRight] [int] NULL,
 CONSTRAINT [PK_Sys_Good] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_EnterpriseSystemUser]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_EnterpriseSystemUser](
	[Column_15] [int] NOT NULL,
	[UserCode] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[CreateTime] [date] NULL,
	[LastLoginTime] [date] NULL,
	[LastLoginIp] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_SYS_ENTERPRISEADMINISTRATOR] PRIMARY KEY CLUSTERED 
(
	[Column_15] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'UserCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'LastLoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次登录Ip地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'LastLoginIp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'ContactPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'ContactTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业用户注册表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseSystemUser'
GO
/****** Object:  Table [dbo].[Sys_Enterprise]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Enterprise](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Person] [nvarchar](50) NULL,
	[License] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[RegisterCity] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_SYS_ENTERPRISE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业法人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'Person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业执照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'License'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业注册地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'RegisterCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业所在地地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业状态：续存等' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Enterprise'
GO
/****** Object:  Table [dbo].[Sys_ConsumerActive]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_ConsumerActive](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[Url] [nvarchar](200) NULL,
	[OrgazationId] [int] NULL,
	[CreateUserId] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CheckUserId] [int] NULL,
	[CheckTime] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Sys_ConsumerActive] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_Consumer]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Consumer](
	[Id] [int] NOT NULL,
	[LoginCode] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CardId] [nvarchar](50) NULL,
	[Score] [decimal](18, 0) NULL,
	[CreateTime] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](20) NULL,
 CONSTRAINT [PK_企业会员] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'LoginCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态：已认证、未认证、' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'CardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'ContactPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer', @level2type=N'COLUMN',@level2name=N'ContactTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业会员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Consumer'
GO
/****** Object:  Table [dbo].[Sys_GoodsProperty_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_GoodsProperty_Rela](
	[Id] [int] NOT NULL,
	[PropertyName] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[GoodsId] [int] NOT NULL,
 CONSTRAINT [PK_SYS_GOODS_PROPERTY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsProperty_Rela', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsProperty_Rela', @level2type=N'COLUMN',@level2name=N'PropertyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsProperty_Rela', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsProperty_Rela'
GO
/****** Object:  Table [dbo].[Sys_GoodsCategory_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_GoodsCategory_Rela](
	[GoodsId] [int] NULL,
	[CateId] [int] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品-分类关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsCategory_Rela'
GO
/****** Object:  Table [dbo].[Sys_Employee]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Employee](
	[EmpId] [int] NOT NULL,
	[EmpName] [nvarchar](20) NULL,
	[EmpSex] [int] NULL,
	[EmpAddress] [nvarchar](20) NULL,
	[EmpLoginName] [nvarchar](50) NULL,
	[EmpLoginPassWord] [nvarchar](50) NULL,
	[EmpStatus] [int] NULL,
	[EmpCode] [nvarchar](50) NULL,
	[EmpTel] [nvarchar](50) NULL,
	[EmpTitle] [int] NULL,
	[AssociatedAccount] [int] NULL,
 CONSTRAINT [PK_SYS_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpLoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpLoginPassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'EmpTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Employee', @level2type=N'COLUMN',@level2name=N'AssociatedAccount'
GO
/****** Object:  Table [dbo].[Sys_ConsumerScore]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_ConsumerScore](
	[Id] [int] NOT NULL,
	[OrderId] [nvarchar](50) NULL,
	[Score] [decimal](18, 0) NULL,
	[CreateTime] [date] NULL,
	[ConsumerId] [int] NOT NULL,
	[OrgazationId] [int] NULL,
 CONSTRAINT [PK_SYS_SCORE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ConsumerScore', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ConsumerScore', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获得积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ConsumerScore', @level2type=N'COLUMN',@level2name=N'Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获得时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ConsumerScore', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ConsumerScore'
GO
/****** Object:  Table [dbo].[Sys_EnterpriseOrgazation_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_EnterpriseOrgazation_Rela](
	[Id] [int] NOT NULL,
	[OrgazationId] [int] NULL,
	[EnterpriseId] [int] NULL,
 CONSTRAINT [PK_SYS_ENTERPRISEORGAZATION_RE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseOrgazation_Rela', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseOrgazation_Rela', @level2type=N'COLUMN',@level2name=N'OrgazationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseOrgazation_Rela', @level2type=N'COLUMN',@level2name=N'EnterpriseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业与组织结构关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseOrgazation_Rela'
GO
/****** Object:  Table [dbo].[Sys_EnterpriseConsumer_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_EnterpriseConsumer_Rela](
	[Id] [int] NOT NULL,
	[EnterpriseId] [int] NULL,
	[ConsumerId] [int] NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_SYS_ENTERPRISECONSUMER_RELA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseConsumer_Rela', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseConsumer_Rela', @level2type=N'COLUMN',@level2name=N'EnterpriseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseConsumer_Rela', @level2type=N'COLUMN',@level2name=N'ConsumerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseConsumer_Rela', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业会员与企业之间关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_EnterpriseConsumer_Rela'
GO
/****** Object:  Table [dbo].[Sys_OrderItem_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_OrderItem_Rela](
	[Id] [int] NOT NULL,
	[orderId] [int] NOT NULL,
	[GoodsId] [int] NOT NULL,
	[Amount] [numeric](18, 2) NULL,
	[OriginalPrice] [decimal](18, 2) NULL,
	[DisPrice] [decimal](18, 2) NULL,
	[RealPrice] [decimal](18, 2) NULL,
	[OriginalPriceTotal] [decimal](18, 2) NULL,
	[DisPriceTotal] [decimal](18, 2) NULL,
	[RealPriceTotal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Sys_OrderItem_Rela] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_GoodsSku]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_GoodsSku](
	[Id] [int] NOT NULL,
	[SkuCode] [nvarchar](50) NOT NULL,
	[GoodsId] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Sys_GoodsSKu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sku编码:(属性1：属性2：属性3)(值1：值2：值3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsSku', @level2type=N'COLUMN',@level2name=N'SkuCode'
GO
/****** Object:  Table [dbo].[Sys_GoodsPropertyOption_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_GoodsPropertyOption_Rela](
	[Id] [int] NOT NULL,
	[PropertyValue] [int] NULL,
	[PropertyId] [int] NULL,
	[GoodsId] [int] NULL,
	[PropertyCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SYS_GOODS_PROPERTYOPTION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela', @level2type=N'COLUMN',@level2name=N'PropertyValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela', @level2type=N'COLUMN',@level2name=N'PropertyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela', @level2type=N'COLUMN',@level2name=N'GoodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela', @level2type=N'COLUMN',@level2name=N'PropertyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品属性选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_GoodsPropertyOption_Rela'
GO
/****** Object:  Table [dbo].[Sys_QrCode]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_QrCode](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreateTime] [date] NULL,
	[GoodsId] [int] NULL,
	[Content] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Url] [nvarchar](50) NULL,
	[Sign] [nvarchar](50) NULL,
	[EmpId] [int] NULL,
	[QrCodeTypeId] [int] NULL,
 CONSTRAINT [PK_SYS_QRCODE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联商品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'GoodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码文本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码调用服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码校验码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'Sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode', @level2type=N'COLUMN',@level2name=N'EmpId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定二维码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QrCode'
GO
/****** Object:  Table [dbo].[Sys_OrgazationPayParamConfig]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_OrgazationPayParamConfig](
	[Id] [int] NOT NULL,
	[OrgazationId] [int] NOT NULL,
	[PayTypeId] [int] NOT NULL,
	[payParam] [nvarchar](3000) NOT NULL,
 CONSTRAINT [PK_Sys_OrgazationPayParamConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_OrgazationGoods_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_OrgazationGoods_Rela](
	[OrgId] [int] NULL,
	[GoodsId] [int] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户-商品关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrgazationGoods_Rela'
GO
/****** Object:  Table [dbo].[Sys_OrgazationEmployee_Rela]    Script Date: 10/27/2017 07:57:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_OrgazationEmployee_Rela](
	[Id] [int] NOT NULL,
	[DepId] [int] NULL,
	[EmpId] [int] NULL,
 CONSTRAINT [PK_SYS_ORGEMP_RELA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构与员工关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_OrgazationEmployee_Rela'
GO
/****** Object:  ForeignKey [FK_SYS_GOOD_SYS_GOODS_SYS_GOOD]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_GoodsCategory_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_GOOD_SYS_GOODS_SYS_GOOD] FOREIGN KEY([CateId])
REFERENCES [dbo].[Sys_GoodsCategory] ([Id])
GO
ALTER TABLE [dbo].[Sys_GoodsCategory_Rela] CHECK CONSTRAINT [FK_SYS_GOOD_SYS_GOODS_SYS_GOOD]
GO
/****** Object:  ForeignKey [FK_SYS_EMPL_SYS_ENTER_SYS_ENTE]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_Employee]  WITH CHECK ADD  CONSTRAINT [FK_SYS_EMPL_SYS_ENTER_SYS_ENTE] FOREIGN KEY([AssociatedAccount])
REFERENCES [dbo].[Sys_EnterpriseSystemUser] ([Column_15])
GO
ALTER TABLE [dbo].[Sys_Employee] CHECK CONSTRAINT [FK_SYS_EMPL_SYS_ENTER_SYS_ENTE]
GO
/****** Object:  ForeignKey [FK_Sys_ConsumerScore_Sys_Orgazation]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_ConsumerScore]  WITH CHECK ADD  CONSTRAINT [FK_Sys_ConsumerScore_Sys_Orgazation] FOREIGN KEY([OrgazationId])
REFERENCES [dbo].[Sys_Orgazation] ([DepId])
GO
ALTER TABLE [dbo].[Sys_ConsumerScore] CHECK CONSTRAINT [FK_Sys_ConsumerScore_Sys_Orgazation]
GO
/****** Object:  ForeignKey [FK_Sys_EnterpriseOrgazation_Rela_Sys_Enterprise]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_EnterpriseOrgazation_Rela]  WITH CHECK ADD  CONSTRAINT [FK_Sys_EnterpriseOrgazation_Rela_Sys_Enterprise] FOREIGN KEY([EnterpriseId])
REFERENCES [dbo].[Sys_Enterprise] ([Id])
GO
ALTER TABLE [dbo].[Sys_EnterpriseOrgazation_Rela] CHECK CONSTRAINT [FK_Sys_EnterpriseOrgazation_Rela_Sys_Enterprise]
GO
/****** Object:  ForeignKey [FK_Sys_EnterpriseOrgazation_Rela_Sys_EnterpriseOrgazation]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_EnterpriseOrgazation_Rela]  WITH CHECK ADD  CONSTRAINT [FK_Sys_EnterpriseOrgazation_Rela_Sys_EnterpriseOrgazation] FOREIGN KEY([Id])
REFERENCES [dbo].[Sys_Orgazation] ([DepId])
GO
ALTER TABLE [dbo].[Sys_EnterpriseOrgazation_Rela] CHECK CONSTRAINT [FK_Sys_EnterpriseOrgazation_Rela_Sys_EnterpriseOrgazation]
GO
/****** Object:  ForeignKey [FK_SYS_ENTE_SYS_ENTER_SYS_ENTE]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_EnterpriseConsumer_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ENTE_SYS_ENTER_SYS_ENTE] FOREIGN KEY([EnterpriseId])
REFERENCES [dbo].[Sys_Enterprise] ([Id])
GO
ALTER TABLE [dbo].[Sys_EnterpriseConsumer_Rela] CHECK CONSTRAINT [FK_SYS_ENTE_SYS_ENTER_SYS_ENTE]
GO
/****** Object:  ForeignKey [FK_SYS_ENTE_SYS_ENTER_企业会员]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_EnterpriseConsumer_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ENTE_SYS_ENTER_企业会员] FOREIGN KEY([ConsumerId])
REFERENCES [dbo].[Sys_Consumer] ([Id])
GO
ALTER TABLE [dbo].[Sys_EnterpriseConsumer_Rela] CHECK CONSTRAINT [FK_SYS_ENTE_SYS_ENTER_企业会员]
GO
/****** Object:  ForeignKey [FK_Sys_OrderItem_Rela_Sys_Good]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrderItem_Rela]  WITH CHECK ADD  CONSTRAINT [FK_Sys_OrderItem_Rela_Sys_Good] FOREIGN KEY([GoodsId])
REFERENCES [dbo].[Sys_Good] ([Id])
GO
ALTER TABLE [dbo].[Sys_OrderItem_Rela] CHECK CONSTRAINT [FK_Sys_OrderItem_Rela_Sys_Good]
GO
/****** Object:  ForeignKey [FK_Sys_OrderItem_Rela_Sys_Order]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrderItem_Rela]  WITH CHECK ADD  CONSTRAINT [FK_Sys_OrderItem_Rela_Sys_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Sys_Order] ([Id])
GO
ALTER TABLE [dbo].[Sys_OrderItem_Rela] CHECK CONSTRAINT [FK_Sys_OrderItem_Rela_Sys_Order]
GO
/****** Object:  ForeignKey [FK_Sys_GoodsSku_Sys_Good]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_GoodsSku]  WITH CHECK ADD  CONSTRAINT [FK_Sys_GoodsSku_Sys_Good] FOREIGN KEY([GoodsId])
REFERENCES [dbo].[Sys_Good] ([Id])
GO
ALTER TABLE [dbo].[Sys_GoodsSku] CHECK CONSTRAINT [FK_Sys_GoodsSku_Sys_Good]
GO
/****** Object:  ForeignKey [FK_SYS_GOOD_SYS_GOODP_SYS_GOOD]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_GoodsPropertyOption_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_GOOD_SYS_GOODP_SYS_GOOD] FOREIGN KEY([GoodsId])
REFERENCES [dbo].[Sys_GoodsProperty_Rela] ([Id])
GO
ALTER TABLE [dbo].[Sys_GoodsPropertyOption_Rela] CHECK CONSTRAINT [FK_SYS_GOOD_SYS_GOODP_SYS_GOOD]
GO
/****** Object:  ForeignKey [FK_SYS_QRCO_SYS_QRCOD_SYS_EMPL]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_QrCode]  WITH CHECK ADD  CONSTRAINT [FK_SYS_QRCO_SYS_QRCOD_SYS_EMPL] FOREIGN KEY([QrCodeTypeId])
REFERENCES [dbo].[Sys_QrCodeType] ([Id])
GO
ALTER TABLE [dbo].[Sys_QrCode] CHECK CONSTRAINT [FK_SYS_QRCO_SYS_QRCOD_SYS_EMPL]
GO
/****** Object:  ForeignKey [FK_Sys_OrgazationPayParamConfig_Sys_Orgazation]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrgazationPayParamConfig]  WITH CHECK ADD  CONSTRAINT [FK_Sys_OrgazationPayParamConfig_Sys_Orgazation] FOREIGN KEY([OrgazationId])
REFERENCES [dbo].[Sys_Orgazation] ([DepId])
GO
ALTER TABLE [dbo].[Sys_OrgazationPayParamConfig] CHECK CONSTRAINT [FK_Sys_OrgazationPayParamConfig_Sys_Orgazation]
GO
/****** Object:  ForeignKey [FK_Sys_OrgazationPayParamConfig_Sys_PayChannel]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrgazationPayParamConfig]  WITH CHECK ADD  CONSTRAINT [FK_Sys_OrgazationPayParamConfig_Sys_PayChannel] FOREIGN KEY([PayTypeId])
REFERENCES [dbo].[Sys_PayChannel] ([Id])
GO
ALTER TABLE [dbo].[Sys_OrgazationPayParamConfig] CHECK CONSTRAINT [FK_Sys_OrgazationPayParamConfig_Sys_PayChannel]
GO
/****** Object:  ForeignKey [FK_SYS_ORGG_SYS_ORGGO_SYS_ENTE]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrgazationGoods_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ORGG_SYS_ORGGO_SYS_ENTE] FOREIGN KEY([OrgId])
REFERENCES [dbo].[Sys_Orgazation] ([DepId])
GO
ALTER TABLE [dbo].[Sys_OrgazationGoods_Rela] CHECK CONSTRAINT [FK_SYS_ORGG_SYS_ORGGO_SYS_ENTE]
GO
/****** Object:  ForeignKey [FK_SYS_ORGE_SYS_ORG_E_SYS_EMPL]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrgazationEmployee_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ORGE_SYS_ORG_E_SYS_EMPL] FOREIGN KEY([EmpId])
REFERENCES [dbo].[Sys_Employee] ([EmpId])
GO
ALTER TABLE [dbo].[Sys_OrgazationEmployee_Rela] CHECK CONSTRAINT [FK_SYS_ORGE_SYS_ORG_E_SYS_EMPL]
GO
/****** Object:  ForeignKey [FK_SYS_ORGE_SYS_ORG_E_SYS_ENTE]    Script Date: 10/27/2017 07:57:26 ******/
ALTER TABLE [dbo].[Sys_OrgazationEmployee_Rela]  WITH CHECK ADD  CONSTRAINT [FK_SYS_ORGE_SYS_ORG_E_SYS_ENTE] FOREIGN KEY([DepId])
REFERENCES [dbo].[Sys_Orgazation] ([DepId])
GO
ALTER TABLE [dbo].[Sys_OrgazationEmployee_Rela] CHECK CONSTRAINT [FK_SYS_ORGE_SYS_ORG_E_SYS_ENTE]
GO
