//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace People.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int Id { get; set; }
        public Nullable<int> IdWork { get; set; }
        public string FirstName { get; set; }
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<int> SeriesDocument { get; set; }
        public Nullable<int> NumberDocument { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public Nullable<decimal> LastSeans { get; set; }
        public Nullable<int> TypeSeans { get; set; }
        public Nullable<int> IdGender { get; set; }
    
        public virtual gender gender { get; set; }
        public virtual job job { get; set; }
    }
}
