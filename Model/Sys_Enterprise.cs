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

    public partial class Sys_Enterprise    
    {    
        //
         public Int32 Id { get; set; }
         //企业名称
         public String Name { get; set; }
         //企业法人
         public String Person { get; set; }
         //营业执照
         public String License { get; set; }
         //企业联系方式
         public String Telephone { get; set; }
         //企业注册地
         public String RegisterCity { get; set; }
         //企业所在地地
         public String Address { get; set; }
         //企业状态：续存等
         public Int32? status { get; set; }
    } 
}
