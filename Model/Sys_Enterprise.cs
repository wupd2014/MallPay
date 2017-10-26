    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_Enterprise 
        public class Sys_Enterprise
        {    
		                 
			//
			public Int32 Id {get;set;}   
                         
			//企业名称
			public String Name {get;set;}   
                         
			//企业法人
			public String Person {get;set;}   
                         
			//营业执照
			public String License {get;set;}   
                         
			//企业联系方式
			public String Telephone {get;set;}   
                         
			//企业注册地
			public String RegisterCity {get;set;}   
                         
			//企业所在地地
			public String Address {get;set;}   
                         
			//企业状态：续存等
			public Int32 status {get;set;}   
               
        }    
     }

	

	