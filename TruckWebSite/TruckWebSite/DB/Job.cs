//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
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
