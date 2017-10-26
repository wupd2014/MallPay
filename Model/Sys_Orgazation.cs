    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_Orgazation 
        public class Sys_Orgazation
        {    
		                 
			//主键
			public Int32 DepId {get;set;}   
                         
			//组织机构名称
			public String DepName {get;set;}   
                         
			//组织机构代码
			public String DepCode {get;set;}   
                         
			//父级机构
			public Int32 DepParentId {get;set;}   
                         
			//状态
			public Int32 Status {get;set;}   
                         
			//是否商户
			public Int32 IsMerchant {get;set;}   
                         
			//组织结构类型
			public Int32 DepType {get;set;}   
               
        }    
     }

	

	