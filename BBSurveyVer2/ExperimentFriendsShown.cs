//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BBSurveyVer2
{
    using System;
    using System.Collections.Generic;
    
    public partial class ExperimentFriendsShown
    {
        public int Id { get; set; }
        public Nullable<int> ResponseId { get; set; }
        public Nullable<int> ExperimentGroup { get; set; }
        public Nullable<int> FriendId { get; set; }
        public Nullable<int> Orderid { get; set; }
        public Nullable<System.DateTime> CreatedAt { get; set; }
        public string ClosenessLevel { get; set; }
        public string Location { get; set; }
        public string InterestInCommon { get; set; }
    
        public virtual ResponseItem ResponseItem { get; set; }
    }
}