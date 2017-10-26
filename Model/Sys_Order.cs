    //****************************************/
    //* author:wupeide
    //* Date:2017-10-26
    //* 版权所有:wupeide
    //* Email:peide6696@163.com
    //*****************************************/
	using System;
	namespace Model 
	{
        // 数据表实体类：Sys_Order 
        public class Sys_Order
        {    
		                 
			//Id
			public Int32 Id {get;set;}   
                         
			//订单流水号
			public String OrderCode {get;set;}   
                         
			//联系人
			public String OrderConactPerson {get;set;}   
                         
			//联系方式
			public String OrderContactTel {get;set;}   
                         
			//收获地址
			public String OrderAddress {get;set;}   
                         
			//下单时间
			public DateTime CreateTime {get;set;}   
                         
			//订单金额
			public Decimal OrderTotalMoney {get;set;}   
                         
			//下单人Id
			public Int32 UserCode {get;set;}   
                         
			//优惠金额
			public Decimal OrderDisCountMoney {get;set;}   
                         
			//证件号
			public String CardId {get;set;}   
                         
			//实际金额
			public Decimal OrderRealMoney {get;set;}   
                         
			//物流信息
			public String OrderTrans {get;set;}   
                         
			//订单状态:未知付.已支付
			public Int32 OrderStatus {get;set;}   
                         
			//支付方式
			public Int32 OrderPayType {get;set;}   
               
        }    
     }

	

	