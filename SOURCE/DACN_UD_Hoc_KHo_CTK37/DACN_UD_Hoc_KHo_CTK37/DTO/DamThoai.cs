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
    
    public partial class DamThoai
    {
        public int ID { get; set; }
        public string CauHoiKHo { get; set; }
        public string TraLoiKHo { get; set; }
        public string CauHoiViet { get; set; }
        public string TraLoiViet { get; set; }
        public Nullable<int> IDDanhMucCon { get; set; }
    
        public virtual DanhMucCon DanhMucCon { get; set; }
    }
}