//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由T4模板自动生成
//	   生成时间 2017-10-27 09:54:29 by吴培德
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
namespace My.Model
{   

    /// <summary>
    /// 实体-Sys_Consumer 
    /// </summary>
    public partial class Sys_Consumer    
    {    
        //Id
          public Int32 Id { get; set; }
          //LoginCode
          public String LoginCode { get; set; }
          //PassWord
          public String PassWord { get; set; }
          //Status
          public Int32? Status { get; set; }
          //CardId
          public String CardId { get; set; }
          //Score
          public Decimal? Score { get; set; }
          //CreateTime
          public String CreateTime { get; set; }
          //Tel
          public String Tel { get; set; }
          //Address
          public String Address { get; set; }
          //ContactPerson
          public String ContactPerson { get; set; }
          //ContactTel
          public String ContactTel { get; set; }
    } 
}
