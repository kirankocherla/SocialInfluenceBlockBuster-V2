using System;
using System.Collections.Generic;
using System.Linq;

namespace BBSurveyVer2 {
   public class SIModelDS {
      #region instance fields
      private SocialInfluenceEntities _entities = null;
      #endregion

      #region public properties
      public SocialInfluenceEntities SiEntity {
         get {
            return _entities ?? (_entities = new SocialInfluenceEntities());
         }
      }
      #endregion


      public int CreateNewSession(string ipAddress) {
         using (var context = new SocialInfluenceEntities()) {
            var responseItem = new ResponseItem() {
               ExperimentId = 1,
               IPAddress = ipAddress,
               StartTime = DateTime.Now
            };

            context.ResponseItem.Add(responseItem);
            context.SaveChanges();

            var experimentData = new ExperimentData()
               {
                  ResponseId = responseItem.Id
               };

            context.ExperimentData.Add(experimentData);
            context.SaveChanges();

            return responseItem.Id;
         }
      }

      public void MarkExperimentFinished(int id) {
         using (var context = new SocialInfluenceEntities()) {
            context.ResponseItem.Single(s => s.Id == id).FinishTime = DateTime.Now;            
            context.SaveChanges();
         }
      }


      public ResponseItem GetResponseItemById(int responseItemId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.ResponseItem.SingleOrDefault(r => r.Id == responseItemId);
         }
      }

      public int SaveFacebookDataForUser(int responseId, string name, string img, string username, string gender,
                                         string location, string age, string authToken, string key1, string key2, string rawData) {
         using (var context = new SocialInfluenceEntities()) {
            var facebookUserData = new FacebookUserData() {
               ResponseId = responseId,
               Name = name,
               ImageUrl = img,
               Username = username,
               Gender = gender,
               Location = location,
               Age = age,
               AuthToken = authToken,
               SecurityKey1 = key1,
               SecurityKey2 = key2,
               CreatedDate = DateTime.Now,
               RawResponse = rawData
            };

            context.FacebookUserData.Add(facebookUserData);
            context.SaveChanges();
            return facebookUserData.Id;
         }
      }

      public FacebookUserData GetFacebookUserDataByUserId(int id) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FacebookUserData.SingleOrDefault(f => f.Id == id);
         }
      }

      public FacebookUserData GetFacebookUserDataByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            var facebookUserDatas = context.FacebookUserData.Where(f => f.ResponseId == responseId).ToList();

            return facebookUserDatas.FirstOrDefault();
         }
      }

      public int AddFriendForUser(int userId, string fbId, string name, string imageUrl, string age, string location) {
         using (var context = new SocialInfluenceEntities()) {
            var facebookFriend = new FacebookFriend() {
               UserId = userId,
               Name = name,
               ImageUrl = imageUrl,
               Age = age,
               Location = location,
               CreatedAt = DateTime.Now,
               FBID = fbId
            };

            context.FacebookFriend.Add(facebookFriend);
            context.SaveChanges();
            return facebookFriend.Id;
         }
      }

      public FacebookFriend GetFacebookFriendById(int id) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FacebookFriend.SingleOrDefault(f => f.Id == id);
         }
      }

      public IEnumerable<FacebookFriend> GetFacebookFriendByUserId(int userId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FacebookFriend.Where(f => f.UserId == userId).ToArray();
         }
      }

      public string GetServiceInfoByName(string serviceName) {
         using (var context = new SocialInfluenceEntities()) {

            var serviceVal =
               context.ExperimentServiceInfo.SingleOrDefault(s => s.ExperimentId == 1 && s.ServiceKey.ToLower() == serviceName.ToLower());

            if (serviceVal != null)
               return serviceVal.KeyValue;

            return null;
         }
      }

      public void UpdateServiceInfoByName(string serviceName, string value) {
         using (var context = new SocialInfluenceEntities()) {

            var serviceVal =
               context.ExperimentServiceInfo.SingleOrDefault(s => s.ExperimentId == 1 && s.ServiceKey.ToLower() == serviceName.ToLower());

            if (serviceVal != null) {
               serviceVal.KeyValue = value;
            }

            context.SaveChanges();
         }
      }


      public void SaveFriendsShown(List<ExperimentFriendsShown> friendsShown, int responseId) {

         int i = 0;
         using (var context = new SocialInfluenceEntities()) {
            friendsShown.ForEach(f => {
               i++;
               context.ExperimentFriendsShown.Add(new ExperimentFriendsShown()
                  {
                     ResponseId = responseId,
                     ExperimentGroup = f.ExperimentGroup,
                     Orderid = i,
                     FriendId = f.FriendId,
                     CreatedAt = DateTime.Now
                  });
            } );
            context.SaveChanges();
         }
      }

      public ExperimentFriendsShown GetExperimentShownByid(int id) {
         using (var context = new SocialInfluenceEntities()) {
            return context.ExperimentFriendsShown.SingleOrDefault(s => s.Id == id);
         }
      }

      public IEnumerable<ExperimentFriendsShown> GetExperimentShownByResponseid(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.ExperimentFriendsShown.Where(s => s.ResponseId == responseId).ToArray();
         }
      }

      public void UpdateExperimentFriendShown(int id, string closenessLevel, string location, string common) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentFriendsShown friendShownItem = context.ExperimentFriendsShown.Single(s => s.Id == id);

            friendShownItem.ClosenessLevel = closenessLevel;
            friendShownItem.Location = location;
            friendShownItem.InterestInCommon = common;

            context.SaveChanges();
         }
      }


      public int GetExperimentDataIdByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            var expData = context.ExperimentData.SingleOrDefault(s => s.ResponseId == responseId);
            if (expData != null)
               return expData.Id;

            return 0;
         }
      }

      public int UpdateExperimentDataItemWithPreviousService(int responseId, string previousService) {
         using (var context = new SocialInfluenceEntities()) {

            ExperimentData experimentData = context.ExperimentData.SingleOrDefault(s => s.ResponseId == responseId);

            if (experimentData == null) {
               context.ExperimentData.Add(new ExperimentData()
                  {
                     ResponseId = responseId,
                     PreviousService = previousService
                  });               
            }
            else {
               experimentData.PreviousService = previousService;
            }

            context.SaveChanges();
            if (experimentData != null)
               return experimentData.Id;

            throw new Exception("Response experment should never be null");
         }
      }

      public void UpdateExperimentDataForWebSiteStructure(int responseId, string structure, string filmSelection, string inspiration) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.SingleOrDefault(s => s.ResponseId == responseId);

            if (experimentData == null) {
               context.ExperimentData.Add(new ExperimentData
                  {
                     ResponseId = responseId,
                     StructureOfSite = structure,
                     FilmSelectionSite = filmSelection,
                     InspiringSite = inspiration
                  });
            }
            else {
               experimentData.StructureOfSite = structure;
               experimentData.FilmSelectionSite = filmSelection;
               experimentData.InspiringSite = inspiration;
            }

            context.SaveChanges();
         }
      }

      public void UpdateExperimentDataForOverall(int responseId, string overallEvaluation, string evaluationText, string adoptService) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.OverallEvaluationSite = overallEvaluation;
            experimentData.OpenAnswerSite = evaluationText;
            experimentData.AdoptService = adoptService;
            context.SaveChanges();
         }
      }

      public void UpdateExperimentDataForPackageAndPayment(int responseId, string package, string payment) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.Package = package;
            experimentData.PaymentType = payment;
            
            context.SaveChanges();
         }
      }

      public void UpdateExperimentDataForBasicService(int responseId, string age, string gender, int numberOfChildren, string age1, string age2, string age3, string married, string email) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.Age = age;
            experimentData.Gender = gender;
            experimentData.ChildrenCount = numberOfChildren;
            experimentData.Email = email;
            experimentData.AgeChild1 = age1;
            experimentData.AgeChild2 = age2;
            experimentData.AgeChild3 = age3;
            experimentData.MaritalStatus = married;
            context.SaveChanges();
         }
      }

      public void UpdateExperimentDataForPrizeAndNoContact(int responseId, string prizeChoice, int noContactPlease, string email) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.GiftChoice = prizeChoice;
            experimentData.DontContact = noContactPlease;
            experimentData.EmailContact = email;

            context.SaveChanges();
         }
      }

      public void UpdateExperimentDataForEmail(int responseId, string email) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.Email = email;            
            context.SaveChanges();
         }
      }

      public int CreatePageVisitLog(string page, int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            var experimentPageVisitLog = new ExperimentPageVisitLog()
               {
                  PageVisited = page, CreatedAt = DateTime.Now, ResponseId = responseId
               };
            context.ExperimentPageVisitLog.Add(experimentPageVisitLog);
            context.SaveChanges();
            return experimentPageVisitLog.Id;
         }
      }

      public bool GetBbPageVisitLogByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            var bbPageVisited = context.ExperimentPageVisitLog.SingleOrDefault(
               s =>
               s.ResponseId == responseId
               && (s.PageVisited.ToLower() == "home" || s.PageVisited.ToLower() == "inspiration"
                   || s.PageVisited.ToLower() == "inspiration"));

            return bbPageVisited != null;
         }
      }

      public IEnumerable<ExperimentDefData> GetExperimentDataDefinition() {
         using (var context = new SocialInfluenceEntities()) {
            return context.ExperimentDefData.ToArray();
         }
      }
 
      public ExperimentData GetExperimentDataByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.ExperimentData.Single(e => e.ResponseId==responseId);
         }
      }


      public void UpdateFilmCount(int responseId, string filmPerMonth, string filmMedium) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.FilmCountPerMonth = filmPerMonth;
            experimentData.HowSeeFilm = filmMedium;
            context.SaveChanges();
         }
      }

      public void UpdateFilmTypeInspiration(int responseId, string filmType, string filmInspiration) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.FilmType = filmType;
            experimentData.FilmInspiration = filmInspiration;
            context.SaveChanges();
         }
      }

      public void UpdateFilmPaymentType(int responseId, string paymentType, string other) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.PaymentType = paymentType;
            experimentData.PaymentTypeOther = other;
            context.SaveChanges();
         }
      }

      public void UpdateFilmTvSerier(int responseId, string filmTvSerie) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.UseFilmTvSerial = filmTvSerie;            
            context.SaveChanges();
         }
      }

      public int[] GetFriendIdsByUserId(int userId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FacebookFriend.Where(f => f.UserId == userId).Select(u => u.Id).ToArray();
         }
      }

      public int[] GetFriendPreChosenByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FriendsPreChosen.Where(f => f.ResponseId == responseId).Select(u => u.FriendId.Value).ToArray();
         }
      } 
      

      public int SaveFriendPreChosen(int responseId, int friendId, int indexOfDisplay) {
         using (var context = new SocialInfluenceEntities()) {
            var friend = new FriendsPreChosen()
               {
                  FriendId = friendId, ResponseId = responseId, IndexOfDisplay = indexOfDisplay
               };

            context.FriendsPreChosen.Add(friend);
            context.SaveChanges();
            return friend.Id;
         }
      }

      public int GerUserIdByResponseId(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            return context.FacebookUserData.First(s => s.ResponseId == responseId).Id;
         }
      }

      public void UpdateWebsiteFeedBack(int responseId, string websiteOverAll, string filmFindng, string bbAsService, string feedBackSiteText) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.HowIsWebsite = websiteOverAll;
            experimentData.FilmFinding = filmFindng;
            experimentData.IsGoodService = bbAsService;
            experimentData.WebsiteExperienceText = feedBackSiteText;

            context.SaveChanges();
         }
      }

      public void UpdateConsiderPrefer(int responseId, string considerWatchOnBb, string preferWatchOnBb) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.ConsiderBB = considerWatchOnBb;
            experimentData.PreferBB = preferWatchOnBb;

            context.SaveChanges();
         }
      }


      public void UpdatePossibilityNextUse(int responseId, string nextUseInThreeMonths, string nextFilmUse) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.ChancesNext3Months = nextUseInThreeMonths;
            experimentData.ChancesNextTime = nextFilmUse;

            context.SaveChanges();
         }
      }

      public void UpdateExperimentTypeAndGroup(int responseId, string experimentType, int group) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.ExperimentType = experimentType;
            experimentData.GroupType = group;

            context.SaveChanges();
         }
      }

      public void ExperimentCompleted(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.ExperimentFinished = 1;

            context.SaveChanges();
         }
      }


      public int IsPageVisited(int responseId, string textLog) {
         using (var context = new SocialInfluenceEntities()) {
            return context.ExperimentPageVisitLog.Count(s => s.ResponseId == responseId && s.PageVisited == textLog);
         }
      }


      public void UpdateRememberFriends(int responseId, string val) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.WereFriendsPics = val;
            context.SaveChanges();
         }
      }

      public void UpdateRememberFriendsNames(int responseId, string val, string names) {
         using (var context = new SocialInfluenceEntities()) {
            ExperimentData experimentData = context.ExperimentData.Single(s => s.ResponseId == responseId);
            experimentData.RememberFriendsName = val;
            experimentData.FriendsName = names;
            context.SaveChanges();
         }
      }

      public void DeletePreviousFriendsShownIfAny(int responseId) {
         using (var context = new SocialInfluenceEntities()) {
            foreach (var experiment in context.ExperimentFriendsShown.Where(r => r.ResponseId == responseId)) {
               context.ExperimentFriendsShown.Remove(experiment);
            }            
            context.SaveChanges();
         }
      }
   }
}