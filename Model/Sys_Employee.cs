    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_Employee 
        public class Sys_Employee
        {    
		                 
			//主键
			public Int32 EmpId {get;set;}   
                         
			//姓名
			public String EmpName {get;set;}   
                         
			//性别
			public Int32 EmpSex {get;set;}   
                         
			//地址
			public String EmpAddress {get;set;}   
                         
			//登录名称
			public String EmpLoginName {get;set;}   
                         
			//密码
			public String EmpLoginPassWord {get;set;}   
                         
			//是否可用
			public Int32 EmpStatus {get;set;}   
                         
			//工号
			public String EmpCode {get;set;}   
                         
			//联系方式
			public String EmpTel {get;set;}   
                         
			//职称
			public Int32 EmpTitle {get;set;}   
                         
			//关联账户
			public Int32 AssociatedAccount {get;set;}   
               
        }    
     }

	

	