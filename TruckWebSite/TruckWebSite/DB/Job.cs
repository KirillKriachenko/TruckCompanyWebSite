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
    
    public partial class Job
    {
        public int JobId { get; set; }
        public string JobTitle { get; set; }
        public string Description { get; set; }
        public decimal Salary { get; set; }
        public string StartDate { get; set; }
        public bool Open { get; set; }
        public string Location { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}