    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_ConsumerScore 
        public class Sys_ConsumerScore
        {    
		                 
			//Id
			public Int32 Id {get;set;}   
                         
			//订单Id
			public String OrderId {get;set;}   
                         
			//获得积分
			public Decimal Score {get;set;}   
                         
			//获得时间
			public DateTime CreateTime {get;set;}   
                         
			//
			public Int32 ConsumerId {get;set;}   
                         
			//
			public Int32 OrgazationId {get;set;}   
               
        }    
     }

	

	