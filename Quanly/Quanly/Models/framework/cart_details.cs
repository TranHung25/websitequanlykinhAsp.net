//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Quanly.Models.framework
{
    using System;
    using System.Collections.Generic;
    
    public partial class cart_details
    {
        public int id_cart_details { get; set; }
        public Nullable<int> code_cart { get; set; }
        public Nullable<int> id_sanpham { get; set; }
        public Nullable<int> soluongmua { get; set; }
    
        public virtual sanpham sanpham { get; set; }
    }
}
