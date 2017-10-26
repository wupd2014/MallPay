    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_Consumer 
        public class Sys_Consumer
        {    
		                 
			//主键
			public Int32 Id {get;set;}   
                         
			//用户名
			public String LoginCode {get;set;}   
                         
			//密码
			public String PassWord {get;set;}   
                         
			//用户状态：已认证、未认证、
			public Int32 Status {get;set;}   
                         
			//身份证
			public String CardId {get;set;}   
                         
			//积分值
			public Decimal Score {get;set;}   
                         
			//创建时间
			public String CreateTime {get;set;}   
                         
			//联系方式
			public String Tel {get;set;}   
                         
			//联系地址
			public String Address {get;set;}   
                         
			//紧急联系人
			public String ContactPerson {get;set;}   
                         
			//紧急联系电话
			public String ContactTel {get;set;}   
               
        }    
     }

	

	