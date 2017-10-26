    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_QrCode 
        public class Sys_QrCode
        {    
		                 
			//
			public Int32 Id {get;set;}   
                         
			//名称
			public String Name {get;set;}   
                         
			//创建时间
			public DateTime CreateTime {get;set;}   
                         
			//关联商品Id
			public Int32 GoodsId {get;set;}   
                         
			//二维码文本信息
			public String Content {get;set;}   
                         
			//二维码状态
			public Int32 Status {get;set;}   
                         
			//二维码调用服务
			public String Url {get;set;}   
                         
			//二维码校验码
			public String Sign {get;set;}   
                         
			//二维码管理员
			public Int32 EmpId {get;set;}   
                         
			//
			public Int32 QrCodeTypeId {get;set;}   
               
        }    
     }

	

	