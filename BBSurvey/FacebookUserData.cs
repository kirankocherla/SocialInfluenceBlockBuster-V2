//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BBSurvey
{
    using System;
    using System.Collections.Generic;
    
    public partial class FacebookUserData
    {
        public FacebookUserData()
        {
            this.FacebookFriend = new HashSet<FacebookFriend>();
        }
    
        public int Id { get; set; }
        public Nullable<int> ResponseId { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public string Username { get; set; }
        public string Gender { get; set; }
        public string Location { get; set; }
        public string Age { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string AuthToken { get; set; }
        public string SecurityKey1 { get; set; }
        public string SecurityKey2 { get; set; }
        public string RawResponse { get; set; }
    
        public virtual ICollection<FacebookFriend> FacebookFriend { get; set; }
        public virtual ResponseItem ResponseItem { get; set; }
    }
}
