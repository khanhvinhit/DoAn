//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DACN_UD_Hoc_KHo_CTK37.DTO
{
    using System;
    using System.Collections.Generic;
    
    public partial class DichVietKHo
    {
        public int ID { get; set; }
        public string Viet { get; set; }
        public string KHo { get; set; }
        public Nullable<int> IDDanhMucCon { get; set; }
    
        public virtual DanhMucCon DanhMucCon { get; set; }
    }
}
