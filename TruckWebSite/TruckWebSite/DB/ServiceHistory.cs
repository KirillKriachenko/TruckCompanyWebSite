//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TruckWebSite.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServiceHistory
    {
        public int ServiceHistoryId { get; set; }
        public decimal Value { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public int ServiceServiceId { get; set; }
    
        public virtual Service Service { get; set; }
    }
}