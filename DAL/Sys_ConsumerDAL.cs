//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由T4模板自动生成
//	   生成时间 2017-10-27 15:02:56 by吴培德-DAL层统一生成
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------
using Model;
using System;
using System.Collections.Generic;
namespace DAL
{   

    public partial class Sys_ConsumerDAL:BaseDAL 
    {    
		public Sys_Consumer Get(object code)
        {
            return db.SingleOrDefault<Sys_Consumer>(code);
        }
	} 
}
