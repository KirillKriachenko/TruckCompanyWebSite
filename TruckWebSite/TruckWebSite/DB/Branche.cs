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
    
    public partial class Branche
    {
        public Branche()
        {
            this.Car = new HashSet<Car>();
            this.Employee = new HashSet<Employee>();
        }
    
        public int BrancheId { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public string Address { get; set; }
        public int Capacity { get; set; }
    
        public virtual ICollection<Car> Car { get; set; }
        public virtual ICollection<Employee> Employee { get; set; }
    }
}