	//****************************************/
	//* author:wupeide
	//* Date:2017-10-26
	//* 版权所有:wupeide
	//* Email:peide6696@163.com
	//*****************************************/
	using System;
	namespace Model 
	{
		// 数据表实体类：Sys_GoodsCategory 
		public class Sys_GoodsCategory
		{    
						 
			//
			public Int32 Id {get;set;}   
						 
			//分类名称
			public String CateName {get;set;}   
						 
			//父分类Id
			public Int32 CateParentId {get;set;}   
						 
			//是否父级
			public Boolean IsParentId {get;set;}   
						 
			//排序
			public Int32 Sort {get;set;}   
			   
		}    
	 }

	

	