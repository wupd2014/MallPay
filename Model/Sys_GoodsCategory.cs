//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由T4模板自动生成
//	   生成时间 2017-10-27 10:25:21 by吴培德
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
namespace My.Model
{   

    public partial class Sys_GoodsCategory    
    {    
        //
         public Int32 Id { get; set; }
         //分类名称
         public String CateName { get; set; }
         //父分类Id
         public Int32? CateParentId { get; set; }
         //是否父级
         public Boolean? IsParentId { get; set; }
         //排序
         public Int32? Sort { get; set; }
    } 
}
