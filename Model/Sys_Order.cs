//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由T4模板自动生成
//	   生成时间 2017-10-27 15:02:43 by吴培德
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
namespace Model
{   

    public partial class Sys_Order    
    {    
        //Id
         public Int32 Id { get; set; }
         //订单流水号
         public String OrderCode { get; set; }
         //联系人
         public String OrderConactPerson { get; set; }
         //联系方式
         public String OrderContactTel { get; set; }
         //收获地址
         public String OrderAddress { get; set; }
         //下单时间
         public DateTime? CreateTime { get; set; }
         //订单金额
         public Decimal? OrderTotalMoney { get; set; }
         //下单人Id
         public Int32? UserCode { get; set; }
         //优惠金额
         public Decimal? OrderDisCountMoney { get; set; }
         //证件号
         public String CardId { get; set; }
         //实际金额
         public Decimal? OrderRealMoney { get; set; }
         //物流信息
         public String OrderTrans { get; set; }
         //订单状态:未知付.已支付
         public Int32? OrderStatus { get; set; }
         //支付方式
         public Int32? OrderPayType { get; set; }
    } 
}
